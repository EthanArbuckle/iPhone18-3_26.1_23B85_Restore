void sub_1003B8D4C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_6:

    goto LABEL_7;
  }

  v7 = Strong;
  v8 = [Strong view];
  if (v8)
  {
    v3 = v8;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    if (swift_dynamicCastClass())
    {
      sub_1002EC064(a2, a3);

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003B8E4C()
{
  v0 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*(v1 + 104))(v3, enum case for TTRRemindersListItemStateTracker.CellState.displayed(_:), v0);
    TTRRemindersListItemStateTracker.fullfil(_:of:)();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003B8F84(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_10076B850);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for REMHashtagLabelSpecifier();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = Strong;
  v15 = [Strong view];
  if (!v15)
  {
LABEL_16:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v3 = v15;
  type metadata accessor for TTRIAccountsListsTreeView(0);
  if (!swift_dynamicCastClass())
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_1002EFA60(a3);
  if (v16 != 2 && (v16 & 1) != 0)
  {
    type metadata accessor for TTRIAccountsListsTagsSectionHeaderView();
    if (swift_dynamicCastClass())
    {
      v17 = a2;
      static REMHashtagLabelSpecifier.empty.getter();
      sub_1002EA7D4(v8);
      v18 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
      if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
      {
        sub_1000079B4(v8, &qword_10076B850);
      }

      else if (swift_getEnumCaseMultiPayload() == 2)
      {
        (*(v10 + 8))(v12, v9);
        v19 = sub_100058000(&qword_10076B858);
        (*(v10 + 32))(v12, &v8[*(v19 + 48)], v9);
        v20 = type metadata accessor for TTRAccountsListsViewModel.Item();
        (*(*(v20 - 8) + 8))(v8, v20);
      }

      else
      {
        sub_1003DEF7C(v8, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
      }

      sub_100399C20(v12);

      (*(v10 + 8))(v12, v9);
    }
  }
}

void sub_1003B92F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003B9350(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10042BF78(a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B93C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1000B939C(a2);
    v6 = v5;

    return (v6 >> 8) & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B942C(uint64_t a1, uint64_t (**a2)(char *, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1003CCB6C(a1, a2);

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B94A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1000B939C(a1);
    v7 = v6;

    v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v9 = *(v8 - 8);
    if (v7)
    {
      (*(*(v8 - 8) + 16))(a2, a1, v8);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    return (*(v9 + 56))(a2, v10, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003B95A0(uint64_t a1@<X0>, uint64_t (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1003CCD88(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003B961C@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v7 = a2(0);
    v8 = *(v7 - 8);
    (*(v8 + 16))(a3, a1, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003B96F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000BA1D8(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003B976C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_6:

    goto LABEL_7;
  }

  v5 = Strong;
  v6 = [Strong view];
  if (v6)
  {
    v2 = v6;
    type metadata accessor for TTRIAccountsListsTreeView(0);
    if (swift_dynamicCastClass())
    {
      sub_1002ED9A4(a2, 0);

      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003B9864(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1003CD2A0(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003B98E0()
{
  v0 = sub_100058000(&unk_10076B7C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRIAccountsListsSelection(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_10000794C(result + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_lastAppliedSelection, v2, &unk_10076B7C0);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      return sub_1000079B4(v2, &unk_10076B7C0);
    }

    else
    {
      sub_1003DEF14(v2, v6, type metadata accessor for TTRIAccountsListsSelection);
      sub_1000B551C(v6, 0, 0);

      return sub_1003DEF7C(v6, type metadata accessor for TTRIAccountsListsSelection);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003B9ABC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a2, v3);
    v9 = (*(v4 + 88))(v6, v3);
    if (v9 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v4 + 96))(v6, v3);
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 8))(v6, v10);
LABEL_9:

      return;
    }

    if (v9 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.account(_:) || (v9 != enum case for TTRAccountsListsViewModel.Item.list(_:) ? (v11 = v9 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:)) : (v11 = 1), !v11 ? (v12 = v9 == enum case for TTRAccountsListsViewModel.Item.group(_:)) : (v12 = 1), v12 || v9 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:)))
    {
      (*(v4 + 8))(v6, v3);
      goto LABEL_9;
    }

    if (v9 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_9;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1003B9E3C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003B9E90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = sub_10000C36C((result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
    v6 = *(*v5 + 72);
    v7 = *(*v5 + 80);
    sub_10000C36C((*v5 + 48), v6);
    (*(v7 + 8))(v6, v7);
    v8 = sub_10025C730(a2);

    __chkstk_darwin(v9);
    v12[2] = v4;
    v12[3] = a2;
    sub_100399264(sub_1003DE828, v12, v8);

    sub_100003540(0, &qword_10076BC40);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [objc_opt_self() configurationWithActions:isa];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BA010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a4(a2);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BA08C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a2, v3);
    v9 = (*(v4 + 88))(v6, v3);
    if (v9 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v4 + 96))(v6, v3);
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 8))(v6, v10);
LABEL_9:

      return;
    }

    if (v9 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.account(_:) || (v9 != enum case for TTRAccountsListsViewModel.Item.list(_:) ? (v11 = v9 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:)) : (v11 = 1), !v11 ? (v12 = v9 == enum case for TTRAccountsListsViewModel.Item.group(_:)) : (v12 = 1), v12 || v9 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:)))
    {
      (*(v4 + 8))(v6, v3);
      goto LABEL_9;
    }

    if (v9 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v9 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_9;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }

  __break(1u);
}

void *sub_1003BA40C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    result = *(a1 + qword_10078A540);
    if (result)
    {
      v6 = sub_10042122C(a2, [result isEditing]);

      return (v6 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1003BA4A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem] = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BA504()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000B021C();
    sub_1000B7230(1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BA564()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem] = 0;
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003BA5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_10000794C(a4, a1, a7);
    return a5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BA64C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v5 = *(a1 + 16);
    v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v7 = *(v6 - 8);
    if (v5)
    {
      (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    return (*(v7 + 56))(a2, v8, 1, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BA744@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  if (a2)
  {
LABEL_3:
    v9 = sub_10041F1C4(0, a3);
    v10 = v9[2];
    if (v10)
    {
      v11 = v10 - 1;
      v12 = v9;
      v13 = type metadata accessor for TTRRemindersListViewModel.Item();
      v14 = *(v13 - 8);
      (*(v14 + 16))(a4, v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, v13);

      return (*(v14 + 56))(a4, 0, 1, v13);
    }

LABEL_9:

    goto LABEL_11;
  }

  v15 = sub_10041F1C4(0, a1)[2];

  v16 = sub_10041F1C4(1, a1)[2];

  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  if (!v16)
  {
    v17 = sub_10041F1C4(0, a3);
    if (v17[2])
    {
      v18 = v17;
      v19 = type metadata accessor for TTRRemindersListViewModel.Item();
      v20 = *(v19 - 8);
      (*(v20 + 16))(a4, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v19);

      return (*(v20 + 56))(a4, 0, 1, v19);
    }

    goto LABEL_9;
  }

LABEL_11:
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  return (*(*(v21 - 8) + 56))(a4, 1, 1, v21);
}

void *sub_1003BA9C8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BAA1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void *sub_1003BAA6C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BAAC0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v4 = v2[3];
    v3 = v2[4];
    sub_10000C36C(v2, v4);
    LOBYTE(v3) = (*(*(v3 + 8) + 304))(v4);

    return v3 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BAB5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BABAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BAC20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BAC70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_10;
  }

  v1 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController))
  {
LABEL_10:
    __break(1u);
    return;
  }

  sub_100069648();

  v2 = [v1 parentViewController];
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
      v4 = v3;
    }

    else
    {
      v4 = v1;
      v1 = v3;
    }
  }
}

uint64_t sub_1003BAD50(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_10043CD94(a2);
    v6 = v5;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BADCC(char *a1, uint64_t a2, double a3, double a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_1003CD6A0(a1, a2, a3, a4);
    v11 = v10;

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BAE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v8 = v7[3];
    v9 = v7[4];
    sub_10000C36C(v7, v8);
    (*(*(v9 + 8) + 848))(a2, a3, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BAF10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BAF60()
{
  v0 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
    swift_beginAccess();
    sub_10000D184(v2, v4 + v6, &qword_100772140);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003BB088(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1000FA02C(a2);
    v6 = v5;

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BB0F0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BB144(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BB1C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BB21C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003BB274(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1000FA380(a1, a2);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BB2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1003CE350(a1, a2, a3);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BB378(uint64_t a1)
{
  v2 = v1;
  *(v1 + qword_100771740) = a1;

  v4 = *(v1 + qword_100771730);
  if (a1)
  {
    v5 = *(a1 + 16);

    v6 = v5(v4);

    if (v6)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = v4;
    v7 = 0;
  }

  [v4 setDataSource:v7];

  v9 = v2 + qword_100771760;
  v10 = *(v2 + qword_100771760);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  return sub_100100898(v10);
}

uint64_t sub_1003BB454(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t), uint64_t a5, void (*a6)(void, void, void, void, uint64_t, uint64_t))
{
  v11 = v6;
  v14 = (v11 + qword_100771778);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  *v14 = a1;
  if (a2)
  {
    v22 = a6;
    v17 = qword_100771788;
    *(v11 + qword_100771788) = 0;
    if (*(v16 + 16) <= *(a1 + 16) >> 3)
    {
      swift_bridgeObjectRetain_n();

      a4(v16);
      v18 = a1;
    }

    else
    {
      swift_bridgeObjectRetain_n();

      v18 = a3(v16, a1);
    }

    if (*(v15 + 16) <= *(v18 + 16) >> 3)
    {
      a4(v15);
    }

    else
    {
      (a3)(v15);
    }

    if (*(a1 + 16) <= *(v16 + 16) >> 3)
    {
      a4(a1);
      v20 = v16;
    }

    else
    {
      v20 = a3(a1, v16);
    }

    if (*(v15 + 16) <= *(v20 + 16) >> 3)
    {
      a4(v15);
    }

    else
    {
      (a3)(v15);
    }

    __chkstk_darwin(v21);
    v22(0, 0, 0, 0, v11, a5);

    *(v11 + v17) = 1;
  }

  else
  {
  }

  return result;
}

uint64_t sub_1003BB6A0()
{
  v1 = v0;

  TTRAnyTreeViewCollapsedStatesPersisting.collapsedTreeViewItemIDsChangePublisher.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&unk_100781750);
  sub_10000E188(&qword_100770088, &unk_100781750);
  v2 = Publisher.sink(receiveCompletion:receiveValue:)();

  *(v1 + qword_100771790) = v2;
}

uint64_t sub_1003BB7D8()
{
  v1 = v0;

  TTRAnyTreeViewCollapsedStatesPersisting.collapsedTreeViewItemIDsChangePublisher.getter();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100781990);
  sub_10000E188(&qword_100781998, &qword_100781990);
  v2 = Publisher.sink(receiveCompletion:receiveValue:)();

  *(v1 + qword_100771790) = v2;
}

id sub_1003BB910(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[qword_100771708] = 0;
  *&v2[qword_100771710] = 0;
  swift_unknownObjectWeakInit();
  v7 = qword_100771720;
  sub_100058000(&unk_100781770);
  swift_allocObject();
  v16 = TTRTreeViewCollapsedStatesInMemoryPersistence.init()();
  sub_100058000(&unk_1007809C0);
  swift_allocObject();
  sub_10000E188(&unk_100781780, &unk_100781770);
  *&v2[v7] = TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
  *&v2[qword_100771740] = 0;
  *&v2[qword_100771748] = 0;
  *&v2[qword_100771750] = 0;
  *&v2[qword_100771758] = 0;
  v8 = &v2[qword_100771760];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[24] = 0;
  *(v8 + 2) = 0;
  v2[qword_100771768] = 0;
  *&v2[qword_100771770] = 0;
  v9 = &v2[qword_100771778];
  *v9 = &_swiftEmptySetSingleton;
  *(v9 + 1) = &_swiftEmptySetSingleton;
  *&v2[qword_100771780] = &_swiftEmptySetSingleton;
  v2[qword_100771788] = 1;
  *&v2[qword_100771790] = 0;
  v10 = qword_100771798;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&v2[v10] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  swift_unknownObjectUnownedInit();
  *&v2[qword_100771730] = a2;
  v11 = &v2[qword_100771738];
  *(v11 + 3) = sub_100003540(0, &qword_100771B60);
  *(v11 + 4) = &off_1007320F8;
  *v11 = a2;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_1003BB6A0();

  return v13;
}

id sub_1003BBBAC(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[qword_100771708] = 0;
  *&v2[qword_100771710] = 0;
  swift_unknownObjectWeakInit();
  v7 = qword_100771720;
  sub_100058000(&unk_1007819C8);
  swift_allocObject();
  v16 = TTRTreeViewCollapsedStatesInMemoryPersistence.init()();
  sub_100058000(&qword_10076BD60);
  swift_allocObject();
  sub_10000E188(&qword_1007819D8, &unk_1007819C8);
  *&v2[v7] = TTRAnyTreeViewCollapsedStatesPersisting.init<A>(base:)();
  *&v2[qword_100771740] = 0;
  *&v2[qword_100771748] = 0;
  *&v2[qword_100771750] = 0;
  *&v2[qword_100771758] = 0;
  v8 = &v2[qword_100771760];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[24] = 0;
  *(v8 + 2) = 0;
  v2[qword_100771768] = 0;
  *&v2[qword_100771770] = 0;
  v9 = &v2[qword_100771778];
  *v9 = &_swiftEmptySetSingleton;
  *(v9 + 1) = &_swiftEmptySetSingleton;
  *&v2[qword_100771780] = &_swiftEmptySetSingleton;
  v2[qword_100771788] = 1;
  *&v2[qword_100771790] = 0;
  v10 = qword_100771798;
  type metadata accessor for TTRListContentsPrefetchExtender();
  swift_allocObject();
  *&v2[v10] = TTRListContentsPrefetchExtender.init(prefetchCountNeeded:)();
  swift_unknownObjectUnownedInit();
  *&v2[qword_100771730] = a2;
  v11 = &v2[qword_100771738];
  *(v11 + 3) = sub_100003540(0, &qword_100771B60);
  *(v11 + 4) = &off_1007320F8;
  *v11 = a2;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_1003BB7D8();

  return v13;
}

id sub_1003BBE4C()
{
  *(v0 + qword_100771740) = 0;

  v1 = qword_100771730;
  [*(v0 + qword_100771730) setDataSource:0];
  v2 = v0 + qword_100771760;
  v3 = *(v0 + qword_100771760);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_100100898(v3);
  *(v0 + qword_100771748) = 0;

  *(v0 + qword_100771750) = 0;

  [*(v0 + v1) setPrefetchDataSource:0];
  *(v0 + qword_100771758) = 0;

  [*(v0 + v1) setDelegate:0];
  v4 = qword_100771708;
  v5 = *(v0 + qword_100771708);
  *(v0 + qword_100771708) = 0;

  if (*(v0 + v4))
  {
    swift_unknownObjectWeakAssign();
    v6 = *(v0 + v4);
  }

  else
  {
    v6 = 0;
  }

  [*(v0 + v1) setDragDelegate:v6];
  v7 = qword_100771710;
  v8 = *(v0 + qword_100771710);
  *(v0 + qword_100771710) = 0;

  if (*(v0 + v7))
  {
    swift_unknownObjectWeakAssign();
    v9 = *(v0 + v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + v1);

  return [v10 setDropDelegate:v9];
}

unint64_t sub_1003BC088(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  a2();
  v10 = a3(a1);

  if (!v10)
  {
    return 0;
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v20 = (a2)();
    v21 = a4(v10, v20);

    if (v21)
    {
      (a2)(v22);
      v24 = v23;
      if (*(v23 + 16))
      {
        v25 = a5(v10);
        if (v26)
        {
          v27 = *(*(v24 + 56) + 8 * v25);

          return v27;
        }
      }

LABEL_24:
    }

    else
    {
    }

    return 0;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = *(v12 + 64);
  if (v13 >> 62)
  {
LABEL_29:
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  while (1)
  {
    if (v14 == v15)
    {

      goto LABEL_24;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = v15;
      v18 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 16);
      v19 = *(v10 + 16);
      swift_unknownObjectRelease();
      v15 = v17;
      if (v18 == v19)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*(*(v13 + 8 * v15 + 32) + 16) == *(v10 + 16))
    {
      break;
    }

LABEL_10:
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_28;
    }
  }

  v17 = v15;
LABEL_21:

  return v17;
}

uint64_t sub_1003BC308@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a2, v13, &qword_100772140);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v49 = a1;
    (*(v15 + 32))(v17, v13, v14);
    v26 = v3;
    sub_1000C84C8();
    a2 = sub_1000F2C50(v17, v27);

    if (!a2)
    {
LABEL_9:
      (*(v15 + 8))(v17, v14);
      v23 = *(v15 + 56);
      v24 = v53;
      v25 = 1;
      return v23(v24, v25, 1, v14);
    }

    v28 = qword_1007A84C0;
    swift_beginAccess();
    v29 = v51;
    v30 = a2 + v28;
    v31 = v52;
    (*(v51 + 16))(v8, v30, v52);
    v32 = (*(v29 + 88))(v8, v31);
    if (v32 != enum case for TTRITreeViewExpandedState.notExpandable(_:))
    {
      if (v32 != enum case for TTRITreeViewExpandedState.collapsed(_:))
      {
        if (v32 != enum case for TTRITreeViewExpandedState.expanded(_:))
        {
          goto LABEL_32;
        }

        swift_beginAccess();
        v41 = *(a2 + 64);
        if (!(v41 >> 62))
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_19;
        }

LABEL_28:
        v42 = _CocoaArrayWrapper.endIndex.getter();
        if ((v42 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_30;
        }

LABEL_19:
        v43 = v49;
        if ((v49 & 0x8000000000000000) == 0 && v42 > v49)
        {
          swift_beginAccess();
          v44 = *(a2 + 64);
          if ((v44 & 0xC000000000000001) != 0)
          {
LABEL_30:
            v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_24;
          }

          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) > v43)
          {
            v45 = *(v44 + 8 * v43 + 32);

LABEL_24:
            swift_endAccess();

            (*(v15 + 8))(v17, v14);
            v46 = *(*v45 + 144);
            swift_beginAccess();
            v47 = v45 + v46;
            v48 = v53;
            (*(v15 + 16))(v53, v47, v14);

            v23 = *(v15 + 56);
            v24 = v48;
            goto LABEL_5;
          }

          __break(1u);
LABEL_32:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        goto LABEL_8;
      }

      v34 = *(v26 + qword_100771740);
      if (v34)
      {
        v35 = *(v34 + 16);

        if (v35(v36))
        {
          Strong = swift_unknownObjectUnownedLoadStrong();
          v38 = v50;
          (*(v15 + 16))(v50, v17, v14);
          v52 = v17;
          v39 = *(v15 + 56);
          v39(v38, 0, 1, v14);
          v40 = v53;
          (*(v34 + 48))(Strong, v49, v38);

          sub_1000079B4(v38, &qword_100772140);
          (*(v15 + 8))(v52, v14);

          return (v39)(v40, 0, 1, v14);
        }
      }
    }

LABEL_8:

    goto LABEL_9;
  }

  sub_1000079B4(v13, &qword_100772140);
  v18 = sub_1000C84C8();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (*(v18 + 16) <= a1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = *(v18 + 16 * a1 + 32);

  v20 = *(*v19 + 144);
  swift_beginAccess();
  v21 = v19 + v20;
  v22 = v53;
  (*(v15 + 16))(v53, v21, v14);

  v23 = *(v15 + 56);
  v24 = v22;
LABEL_5:
  v25 = 0;
  return v23(v24, v25, 1, v14);
}

uint64_t sub_1003BC960(uint64_t a1)
{
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B40);
  v7 = __chkstk_darwin(v6 - 8);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v10, &unk_100771B40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &unk_100771B40);
    v15 = sub_1000C8504();

    v16 = *(v15 + 16);

    return v16;
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = v1;
  sub_1000C8504();
  v19 = sub_1000F4DB4(v14, v18);

  if (!v19)
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  v20 = v14;
  v21 = qword_1007A84C0;
  swift_beginAccess();
  v22 = v33;
  (*(v33 + 16))(v5, &v19[v21], v3);
  v23 = (*(v22 + 88))(v5, v3);
  if (v23 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
LABEL_5:

    (*(v12 + 8))(v20, v11);
    return 0;
  }

  if (v23 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    v24 = *(v17 + qword_100771740);
    if (v24)
    {
      v25 = *(v24 + 16);

      if (v25(v26))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v28 = *(*v19 + 144);
        swift_beginAccess();
        v29 = v32;
        (*(v12 + 16))(v32, &v19[v28], v11);
        (*(v12 + 56))(v29, 0, 1, v11);
        v16 = (*(v24 + 32))(Strong, v29);

        sub_1000079B4(v29, &unk_100771B40);
        (*(v12 + 8))(v20, v11);

        return v16;
      }
    }

    goto LABEL_5;
  }

  if (v23 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    swift_beginAccess();
    v30 = *(v19 + 8);
    if (v30 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    (*(v12 + 8))(v20, v11);
    return v16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003BCE6C(uint64_t a1)
{
  v3 = type metadata accessor for TTRITreeViewExpandedState();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v10, &qword_100772140);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_100772140);
    v15 = sub_1000C84C8();

    v16 = *(v15 + 16);

    return v16;
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = v1;
  sub_1000C84C8();
  v19 = sub_1000F2C50(v14, v18);

  if (!v19)
  {
    (*(v12 + 8))(v14, v11);
    return 0;
  }

  v20 = v14;
  v21 = qword_1007A84C0;
  swift_beginAccess();
  v22 = v33;
  (*(v33 + 16))(v5, &v19[v21], v3);
  v23 = (*(v22 + 88))(v5, v3);
  if (v23 == enum case for TTRITreeViewExpandedState.notExpandable(_:))
  {
LABEL_5:

    (*(v12 + 8))(v20, v11);
    return 0;
  }

  if (v23 == enum case for TTRITreeViewExpandedState.collapsed(_:))
  {
    v24 = *(v17 + qword_100771740);
    if (v24)
    {
      v25 = *(v24 + 16);

      if (v25(v26))
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v28 = *(*v19 + 144);
        swift_beginAccess();
        v29 = v32;
        (*(v12 + 16))(v32, &v19[v28], v11);
        (*(v12 + 56))(v29, 0, 1, v11);
        v16 = (*(v24 + 32))(Strong, v29);

        sub_1000079B4(v29, &qword_100772140);
        (*(v12 + 8))(v20, v11);

        return v16;
      }
    }

    goto LABEL_5;
  }

  if (v23 == enum case for TTRITreeViewExpandedState.expanded(_:))
  {
    swift_beginAccess();
    v30 = *(v19 + 8);
    if (v30 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    (*(v12 + 8))(v20, v11);
    return v16;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1003BD378()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v49 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v34 - v7;
  v8 = type metadata accessor for IndexPath();
  v50 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*(v0 + qword_100771730) indexPathsForVisibleRows];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v48 = *(v14 + 16);
  if (!v48)
  {
LABEL_33:

    return;
  }

  v15 = 0;
  v47 = v50 + 16;
  v35 = (v39 + 16);
  v43 = (v50 + 8);
  v44 = (v39 + 56);
  v41 = (v39 + 32);
  v42 = (v39 + 48);
  v16 = _swiftEmptyArrayStorage;
  v40 = v3;
  v36 = v0;
  v37 = v11;
  v45 = v14;
  v46 = v4;
  while (v15 < *(v14 + 16))
  {
    v51 = v16;
    (*(v50 + 16))(v11, v14 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v15, v8);
    v17 = sub_1000C84C8();
    v18 = *(v17 + 16);
    v19 = IndexPath.section.getter();
    if (v19 < 0 || v19 >= v18)
    {

LABEL_22:

      v28 = 1;
      v27 = v46;
      goto LABEL_23;
    }

    v20 = IndexPath.section.getter();
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    if (v20 >= *(v17 + 16))
    {
      goto LABEL_36;
    }

    v21 = *(v17 + 16 * v20 + 40);
    if (v21 >> 62)
    {
      v33 = _CocoaArrayWrapper.endIndex.getter();
      if (v33 < 0)
      {
        goto LABEL_37;
      }

      v22 = v33;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = IndexPath.row.getter();
    if ((v23 & 0x8000000000000000) != 0 || v23 >= v22)
    {

      v3 = v40;
      goto LABEL_22;
    }

    v24 = IndexPath.row.getter();
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v25 = *(v21 + 8 * v24 + 32);
    }

    v26 = *(*v25 + 144);
    swift_beginAccess();
    v3 = v40;
    v27 = v46;
    (*v35)(v40, v25 + v26, v46);

    v28 = 0;
LABEL_23:
    v14 = v45;
    v16 = v51;
    (*v44)(v3, v28, 1, v27);
    (*v43)(v11, v8);
    if ((*v42)(v3, 1, v27) == 1)
    {
      sub_1000079B4(v3, &qword_100772140);
    }

    else
    {
      v29 = *v41;
      v30 = v38;
      (*v41)(v38, v3, v27);
      v29(v49, v30, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100547094(0, v16[2] + 1, 1, v16);
      }

      v32 = v16[2];
      v31 = v16[3];
      if (v32 >= v31 >> 1)
      {
        v16 = sub_100547094(v31 > 1, v32 + 1, 1, v16);
      }

      v11 = v37;
      v16[2] = v32 + 1;
      v29(v16 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v32, v49, v27);
      v3 = v40;
    }

    if (v48 == ++v15)
    {
      goto LABEL_33;
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
LABEL_39:
  __break(1u);
}

void *sub_1003BD960(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C84C8();
  v10 = sub_1000F2C50(a1, v9);

  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = sub_1000C84C8();
  sub_1000C7C0C(v10, v11, v13, v14, v12 & 1, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1000079B4(v4, &unk_100771B10);
    return _swiftEmptyArrayStorage;
  }

  result = (*(v6 + 32))(v8, v4, v5);
  if (*(v10 + 48) == 1)
  {
    v20 = 0;
    result = sub_10023C598(v10, &v20);
    v16 = v20;
    *(v10 + 40) = v20;
    *(v10 + 48) = 0;
  }

  else
  {
    v16 = *(v10 + 40);
  }

  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    __chkstk_darwin(result);
    *(&v19 - 2) = v8;
    v18 = sub_1003996D0(sub_1003DF120, (&v19 - 4), 0, v17);

    (*(v6 + 8))(v8, v5);
    return v18;
  }

  return result;
}

void sub_1003BDC08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t), uint64_t a5, void (*a6)(void, void, void, void, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_100766FC8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_1007716F0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "TTRITreeViewTableAdapter: updating for collapsed states change", v16, 2u);
    }

    sub_1003BB454(a1, 1, a3, a4, a5, a6);
  }
}

uint64_t sub_1003BDD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(char *), uint64_t (*a8)(uint64_t, uint64_t, BOOL, uint64_t), void (*a9)(char *, uint64_t), void (*a10)(char *, uint64_t))
{
  v124 = a8;
  v133 = a7;
  v140 = a6;
  v141 = a2;
  v128 = a3;
  v115 = a10;
  v118 = a9;
  v123 = a4(0);
  v12 = *(v123 - 8);
  v13 = __chkstk_darwin(v123);
  v114 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v113 = &v113 - v16;
  v17 = __chkstk_darwin(v15);
  v117 = &v113 - v18;
  __chkstk_darwin(v17);
  v116 = &v113 - v19;
  v20 = a5(0);
  v21 = __chkstk_darwin(v20);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v129 = &v113 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v113 - v27;
  __chkstk_darwin(v26);
  v130 = &v113 - v30;
  v31 = a1 + 56;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(a1 + 56);
  v35 = (v32 + 63) >> 6;
  v137 = v29 + 32;
  v138 = v29 + 16;
  v122 = (v12 + 16);
  v121 = (v12 + 32);
  v120 = (v12 + 8);
  v139 = v29;
  v136 = (v29 + 8);

  v37 = 0;
  v134 = v20;
  v135 = v23;
  v131 = v28;
  v126 = a1;
  if (v34)
  {
    while (1)
    {
LABEL_8:
      v39 = v139;
      v40 = v130;
      (*(v139 + 16))(v130, *(a1 + 48) + *(v139 + 72) * (__clz(__rbit64(v34)) | (v37 << 6)), v20);
      v41 = (*(v39 + 32))(v28, v40, v20);
      v42 = v140(v41);
      v44 = v43;
      v46 = v45;
      if (*(v43 + 16) && (v132 = v42, v47 = v133(v28), (v48 & 1) != 0))
      {
        v127 = v46;
        v49 = *(*(v44 + 56) + 8 * v47);
        v50 = v49 & 0xC000000000000001;
        if ((v49 & 0xC000000000000001) != 0)
        {
          v125 = v49 & 0xC000000000000001;
          v51 = __CocoaSet.startIndex.getter();
          v53 = v52;
          v54 = __CocoaSet.endIndex.getter();
          v56 = v55;
          LODWORD(v119) = static __CocoaSet.Index.== infix(_:_:)();

          v57 = v54;
          v50 = v125;
          sub_10000FBA0(v57, v56, 1);
          if ((v119 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v58 = 0;
          v59 = (v49 + 56);
          v51 = 1 << *(v49 + 32);
          v60 = (v51 + 63) >> 6;
          while (1)
          {
            v62 = *v59++;
            v61 = v62;
            if (v62)
            {
              break;
            }

            v58 -= 64;
            if (!--v60)
            {
              v53 = *(v49 + 36);

              goto LABEL_21;
            }
          }

          v125 = v49 & 0xC000000000000001;
          v63 = __clz(__rbit64(v61));
          v119 = v51;
          v53 = *(v49 + 36);

          if (v63 - v51 != v58)
          {
            v51 = v63 - v58;
            v50 = v125;
LABEL_26:
            v64 = v50 != 0;
            v65 = v124(v51, v53, v50 != 0, v49);
            sub_10000FBA0(v51, v53, v64);

            v66 = *(*v65 + 144);
            swift_beginAccess();
            v67 = v65 + v66;
            v68 = v117;
            v69 = v123;
            (*v122)(v117, v67, v123);

            v70 = v116;
            (*v121)(v116, v68, v69);
            v118(v70, 5);
            (*v120)(v70, v69);
            v20 = v134;
            v23 = v135;
            a1 = v126;
            goto LABEL_23;
          }

          v50 = v125;
          v51 = v119;
        }

LABEL_21:
        sub_10000FBA0(v51, v53, v50 != 0);

        v20 = v134;
        a1 = v126;
      }

      else
      {
      }

      v23 = v135;
LABEL_23:
      v34 &= v34 - 1;
      v28 = v131;
      result = (*v136)(v131, v20);
      if (!v34)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v38 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v38);
    ++v37;
    if (v34)
    {
      v37 = v38;
      goto LABEL_8;
    }
  }

  v71 = v128;
  v72 = v128 + 56;
  v73 = 1 << *(v128 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v128 + 56);
  v76 = (v73 + 63) >> 6;

  for (i = 0; v75; result = (*v136)(v23, v20))
  {
LABEL_34:
    v79 = v139;
    v80 = v129;
    (*(v139 + 16))(v129, *(v71 + 48) + *(v139 + 72) * (__clz(__rbit64(v75)) | (i << 6)), v20);
    v81 = (*(v79 + 32))(v23, v80, v20);
    v82 = v140(v81);
    v84 = v83;
    v86 = v85;
    if (*(v83 + 16) && (v87 = v133(v23), (v88 & 1) != 0))
    {
      v89 = *(*(v84 + 56) + 8 * v87);
      v90 = v89 & 0xC000000000000001;
      v131 = v86;
      v132 = v82;
      if ((v89 & 0xC000000000000001) != 0)
      {
        v91 = __CocoaSet.startIndex.getter();
        v93 = v92;
        v94 = __CocoaSet.endIndex.getter();
        v130 = (v89 & 0xC000000000000001);
        v96 = v95;
        LODWORD(v127) = static __CocoaSet.Index.== infix(_:_:)();

        v97 = v96;
        v90 = v130;
        sub_10000FBA0(v94, v97, 1);
        if ((v127 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v98 = 0;
        v99 = (v89 + 56);
        v100 = 1 << *(v89 + 32);
        v101 = (v100 + 63) >> 6;
        while (1)
        {
          v103 = *v99++;
          v102 = v103;
          if (v103)
          {
            break;
          }

          v98 -= 64;
          if (!--v101)
          {
            v93 = *(v89 + 36);
            v91 = 1 << *(v89 + 32);

            goto LABEL_46;
          }
        }

        v130 = (v89 & 0xC000000000000001);
        v104 = __clz(__rbit64(v102));
        v127 = v100;
        v105 = v104 - v100;
        v93 = *(v89 + 36);

        if (v105 != v98)
        {
          v91 = v104 - v98;
          v90 = v130;
LABEL_51:
          v106 = v90 != 0;
          v107 = v124(v91, v93, v90 != 0, v89);
          sub_10000FBA0(v91, v93, v106);

          v108 = *(*v107 + 144);
          swift_beginAccess();
          v109 = v107 + v108;
          v110 = v114;
          v111 = v123;
          (*v122)(v114, v109, v123);

          v112 = v113;
          (*v121)(v113, v110, v111);
          v115(v112, 5);
          (*v120)(v112, v111);
          v71 = v128;
          v20 = v134;
          v23 = v135;
          goto LABEL_48;
        }

        v90 = v130;
        v91 = v127;
      }

LABEL_46:
      sub_10000FBA0(v91, v93, v90 != 0);

      v71 = v128;
      v23 = v135;
    }

    else
    {
    }

    v20 = v134;
LABEL_48:
    v75 &= v75 - 1;
  }

  while (1)
  {
    v78 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v78 >= v76)
    {
    }

    v75 = *(v72 + 8 * v78);
    ++i;
    if (v75)
    {
      i = v78;
      goto LABEL_34;
    }
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_1003BE7D0(uint64_t result, void (*a2)(uint64_t))
{
  v3 = *(v2 + qword_10078A548);
  if (v3)
  {
    *&v3[qword_100771720] = result;
    v5 = v3;

    v6 = TTRAnyTreeViewCollapsedStatesPersisting.fetchCollapsedTreeViewItemIDs()();
    v7 = qword_100771778;
    swift_beginAccess();
    *&v5[v7] = v6;

    a2(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003BE898(char a1)
{
  v1[qword_10078A558] = 0;
  if ((a1 & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1003DA560;
    *(v5 + 24) = v4;
    v9[4] = sub_100026410;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100026440;
    v9[3] = &unk_100725300;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

  result = *&v1[qword_10078A540];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return [result performBatchUpdates:0 completion:0];
}

uint64_t sub_1003BEA54()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = TTRAccountsListsViewModel.numberOfChildren(of:)();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BEAE0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10000C36C((result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
    v3 = *(*v2 + 72);
    v4 = *(*v2 + 80);
    sub_10000C36C((*v2 + 48), v3);
    sub_10045E42C(v3, v4);
    swift_getObjectType();
    v5 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
    v7 = v6;
    swift_unknownObjectRelease();
    v9[3] = swift_getObjectType();
    v9[4] = *(v7 + 8);
    v9[0] = v5;
    v8 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();

    sub_100004758(v9);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BEBE0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    TTRAccountsListsViewModel.child(_:of:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BEC80()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10000C36C((result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
    v3 = *(*v2 + 72);
    v4 = *(*v2 + 80);
    sub_10000C36C((*v2 + 48), v3);
    sub_10045E42C(v3, v4);
    swift_getObjectType();
    v5 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
    v7 = v6;
    swift_unknownObjectRelease();
    v8[3] = swift_getObjectType();
    v8[4] = *(v7 + 8);
    v8[0] = v5;
    dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();

    return sub_100004758(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BED90()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return (TTRAccountsListsViewModel.Item.isExpandable.getter() & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BEDEC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_10000C36C((result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
    v3 = *(*v2 + 72);
    v4 = *(*v2 + 80);
    sub_10000C36C((*v2 + 48), v3);
    sub_10045E42C(v3, v4);
    swift_getObjectType();
    v5 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isItemExpandable(_:)();

    swift_unknownObjectRelease();
    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BEEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = a4(a1, a2);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BEF38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1000F8318(a2);
    v6 = v5;

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = a4(a1, a2);

    return v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003BF020()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BF078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_100437CBC(a2);
    v6 = v5;

    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BF0F4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_canMoveItemReturnValueTempOverrides);
    swift_beginAccess();
    v10 = *(v9 + 24);

    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v11 = sub_1000A9AF8(v6, v10);

    (*(v4 + 8))(v6, v3);
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v13 = *&v8[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
      v14 = *&v8[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
      sub_10000C36C(&v8[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v13);
      v12 = (*(*(v14 + 8) + 568))(a2, v13);
    }

    return v12 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BF294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a5;
  v53 = a2;
  v7 = sub_100058000(&qword_1007819C0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v57 = type metadata accessor for Logger();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100771B40);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - v20;
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = v18;
    v49 = a6;
    v50 = v11;
    v51 = v8;
    v52 = v7;
    *(*&Strong[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker] + 16) = 0;
    v47 = Strong;
    v46 = *&Strong[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_presenter];
    sub_100058000(&unk_10076BAA0);
    v25 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10062D400;
    v29 = *(v26 + 16);
    v29(v28 + v27, v53, v25);
    v29(v23, v54, v25);
    (*(v26 + 56))(v23, 0, 1, v25);
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v30 = v57;
    v31 = sub_100003E30(v57, qword_100782E90);
    (*(v56 + 16))(v55, v31, v30);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062F800;
    *(inited + 32) = 1835365481;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = Array.description.getter();
    *(inited + 56) = v33;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 49;
    *(inited + 88) = 0xE100000000000000;
    v54 = v23;
    sub_10000794C(v23, v21, &unk_100771B40);
    if ((*(v26 + 48))(v21, 1, v25) == 1)
    {
      sub_1000079B4(v21, &unk_100771B40);
      v34 = (inited + 96);
      *(inited + 120) = &type metadata for String;
    }

    else
    {
      sub_1003DF088(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
      v35 = TTRTreeStorageItem.treeItemDescription.getter();
      v37 = v36;
      (*(v26 + 8))(v21, v25);
      v34 = (inited + 96);
      *(inited + 120) = &type metadata for String;
      if (v37)
      {
        *v34 = v35;
LABEL_9:
        *(inited + 104) = v37;
        *(inited + 128) = 50;
        *(inited + 136) = 0xE100000000000000;
        *(inited + 168) = &type metadata for Int;
        *(inited + 144) = v49;
        sub_100008E04(inited);
        swift_setDeallocating();
        sub_100058000(&unk_10076BA70);
        swift_arrayDestroy();
        v38 = v55;
        sub_10000FD44();

        (*(v56 + 8))(v38, v57);
        v39 = v54;
        v40 = v48;
        sub_10000794C(v54, v48, &unk_100771B40);
        sub_1003DF088(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
        TTRTreeLocation.init(parent:index:)();

        v41 = v50;
        TTRAccountsListsViewModel.unadjustInsertionLocation(_:forMoving:)();

        v42 = v51;
        v43 = *(v51 + 8);
        v44 = v52;
        v43(v13, v52);
        (*(v42 + 32))(v13, v41, v44);
        TTRTreeLocation.parent.getter();
        v45 = TTRTreeLocation.index.getter();
        sub_100439410(v28, v40, v45, 0, 1);

        sub_1000079B4(v40, &unk_100771B40);
        v43(v13, v44);
        sub_1000079B4(v39, &unk_100771B40);

        return;
      }
    }

    *v34 = 7104878;
    v37 = 0xE300000000000000;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1003BFA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a5;
  v22 = a6;
  v20 = a2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = (result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v12 = v11[3];
    v13 = v11[4];
    v19[1] = sub_10000C36C(v11, v12);
    sub_100058000(&qword_100772150);
    v14 = type metadata accessor for TTRRemindersListViewModel.Item();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10062D400;
    v18 = *(v15 + 16);
    v18(v17 + v16, v20, v14);
    v18(v8, v21, v14);
    (*(v15 + 56))(v8, 0, 1, v14);
    (*(*(v13 + 8) + 600))(v17, v8, v22, 1, 1, v12);

    return sub_1000079B4(v8, &qword_100772140);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003BFC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a5(a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003BFCE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v6 = v5[3];
    v7 = v5[4];
    sub_10000C36C(v5, v6);
    (*(*(v7 + 8) + 520))(a2, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003BFD84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v47 = a2;
  v49 = a3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B10);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v44 - v14;
  __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v18 - 8);
  v20 = &v44 - v19;
  v48 = a1;
  v21 = [a1 sourceIndexPath];
  if (v21)
  {
    v22 = v21;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = *(v6 + 56);
    v23(v17, 0, 1, v5);
  }

  else
  {
    v23 = *(v6 + 56);
    v23(v17, 1, 1, v5);
  }

  sub_10000794C(v17, v15, &unk_100771B10);
  if ((*(v6 + 48))(v15, 1, v5) == 1)
  {
    sub_1000079B4(v17, &unk_100771B10);
    v24 = type metadata accessor for TTRAccountsListsViewModel.Item();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  }

  else
  {
    v44 = v23;
    v45 = v12;
    v46 = v3;
    (*(v6 + 32))(v8, v15, v5);
    v25 = sub_1000C8504();
    v26 = sub_1001D6ABC(v8, v25);

    if (v26)
    {
      v27 = *(*v26 + 144);
      swift_beginAccess();
      v28 = type metadata accessor for TTRAccountsListsViewModel.Item();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v20, v26 + v27, v28);

      (*(v29 + 56))(v20, 0, 1, v28);
    }

    else
    {
      v30 = type metadata accessor for TTRAccountsListsViewModel.Item();
      (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
    }

    v12 = v45;
    (*(v6 + 8))(v8, v5);
    sub_1000079B4(v17, &unk_100771B10);
    v23 = v44;
  }

  v31 = v48;
  v32 = [v48 dragItem];
  v33 = [v31 sourceIndexPath];
  if (v33)
  {
    v34 = v33;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  v23(v12, v35, 1, v5);
  v36 = sub_100058000(&unk_10076BDA0);
  v37 = v49;
  sub_10000794C(v20, v49 + v36[10], &unk_100771B40);
  [v31 previewSize];
  v39 = v38;
  v41 = v40;
  sub_1000079B4(v20, &unk_100771B40);
  *v37 = v32;
  result = sub_100016588(v12, v37 + v36[9], &unk_100771B10);
  v43 = (v37 + v36[11]);
  *v43 = v39;
  v43[1] = v41;
  return result;
}

uint64_t sub_1003C02F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = sub_100058000(&qword_100772140);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v45 - v20;
  v49 = a1;
  v22 = [a1 sourceIndexPath];
  if (v22)
  {
    v23 = v22;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v6 + 56);
    v24(v17, 0, 1, v5);
  }

  else
  {
    v24 = *(v6 + 56);
    v24(v17, 1, 1, v5);
  }

  sub_10000794C(v17, v14, &unk_100771B10);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    sub_1000079B4(v17, &unk_100771B10);
    v25 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  }

  else
  {
    v45 = v24;
    v46 = v11;
    v47 = v3;
    (*(v6 + 32))(v8, v14, v5);
    v26 = sub_1000C84C8();
    v27 = sub_1001D6ABC(v8, v26);

    if (v27)
    {
      v28 = *(*v27 + 144);
      swift_beginAccess();
      v29 = type metadata accessor for TTRRemindersListViewModel.Item();
      v30 = *(v29 - 8);
      (*(v30 + 16))(v21, v27 + v28, v29);

      (*(v30 + 56))(v21, 0, 1, v29);
    }

    else
    {
      v31 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
    }

    v11 = v46;
    (*(v6 + 8))(v8, v5);
    sub_1000079B4(v17, &unk_100771B10);
    v24 = v45;
  }

  v32 = v49;
  v33 = [v49 dragItem];
  v34 = [v32 sourceIndexPath];
  if (v34)
  {
    v35 = v34;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v24(v11, v36, 1, v5);
  v37 = sub_100058000(&unk_1007818E0);
  v38 = v50;
  sub_10000794C(v21, v50 + v37[10], &qword_100772140);
  [v32 previewSize];
  v40 = v39;
  v42 = v41;
  sub_1000079B4(v21, &qword_100772140);
  *v38 = v33;
  result = sub_100016588(v11, v38 + v37[9], &unk_100771B10);
  v44 = (v38 + v37[11]);
  *v44 = v40;
  v44[1] = v42;
  return result;
}

void *sub_1003C085C(uint64_t (*a1)(void))
{
  result = a1(0);
  if (result[2])
  {
    return result;
  }

  v3 = [*(v1 + qword_100780BE8) items];
  sub_100058000(&unk_100781900);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:

    return _swiftEmptyArrayStorage;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
        swift_unknownObjectRetain();
      }

      ++v6;
      v8 = [v7 dragItem];
      swift_unknownObjectRelease();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v5 != v6);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_1003C0A14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    a4(a1, a2);
  }
}

uint64_t sub_1003C0A8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v5 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    v6 = Strong;
    sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v4);
    v7 = (*(*(v5 + 8) + 560))(a2, v4);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void sub_1003C0B40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1003C3C78();
    if (v2)
    {
      v3 = v2;
      [v2 endEditing:1];
    }
  }
}

uint64_t sub_1003C0BB0@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = sub_100058000(qword_100780EF0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v16 - v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    HIBYTE(v16) = 0;

    v9 = v8;
    sub_1001ABDBC(a1, a1, &v16 + 7, v9, v6);
    v10 = *&v9[OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker];

    if (*v6 == 1)
    {
      *(v10 + 16) = (*(v10 + 16) | HIBYTE(v16)) & 1;
    }

    v11 = type metadata accessor for TTRITreeViewDropProposal(0);
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    return sub_1003DEF14(v6, a2, type metadata accessor for TTRITreeViewDropProposal);
  }

  else
  {
    v13 = type metadata accessor for TTRITreeViewDropProposal(0);
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = *(v13 + 20);
    v15 = sub_100058000(&qword_100780DC0);
    result = (*(*(v15 - 8) + 56))(&a2[v14], 1, 4, v15);
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1003C0DBC@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = v8;
    sub_1001AE02C(a1, a1, v9, v6);

    return sub_1003DEF14(v6, a2, type metadata accessor for TTRITreeViewDropProposal);
  }

  else
  {
    v11 = *(v4 + 20);
    v12 = sub_100058000(&qword_100780DC0);
    result = (*(*(v12 - 8) + 56))(&a2[v11], 1, 4, v12);
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1003C0F0C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker;
    v3 = *(result + OBJC_IVAR____TtC9Reminders31TTRIAccountsListsViewController_dropExceedsMaximumNumberOfPinnedListsTracker);
    if (*(v3 + 16) == 1)
    {
      sub_10043FA6C();
      v3 = *&v1[v2];
    }

    *(v3 + 16) = 0;
  }

  return result;
}

void sub_1003C0FA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController);
    if (v2)
    {
      v3 = v2;
      sub_1005CA044();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003C1018(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = (result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v9 = v8[3];
    v10 = v8[4];
    sub_10000C36C(v8, v9);
    (*(*(v10 + 8) + 512))(a2, v9);
    v11 = type metadata accessor for TTRRemindersListViewModel.Reminder();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v5, 1, v11) == 1)
    {

      sub_1000079B4(v5, &qword_100772738);
      return 0;
    }

    else
    {
      v13 = TTRRemindersListViewModel.Reminder.title.getter();

      (*(v12 + 8))(v5, v11);
      return v13;
    }
  }

  return result;
}

uint64_t sub_1003C11C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = a4(a2);

  return v8;
}

uint64_t sub_1003C1248()
{
  swift_beginAccess();

  return 0;
}

uint64_t sub_1003C1298()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100781340);
  v1 = sub_100003E30(v0, qword_100781340);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1003C1388()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v4 = *&v3[qword_10078A548];
  if (v4)
  {
    v5 = v4;
    sub_1003BBE4C();
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for TTRIRemindersListContentViewController()
{
  result = qword_100781418;
  if (!qword_100781418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003C1744()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  sub_1003C1B94();
  v2 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate + 8] = &off_1007250B8;
  swift_unknownObjectWeakAssign();
  v3 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v4 = *&v3[qword_10078A540];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v4 setBackgroundView:v2];

  v5 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView;
  v6 = *&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(type metadata accessor for TTRIRemindersListScrollingController());
  v9 = v1;
  v10 = sub_1005CB108(v9, v6, sub_1003DE448, v7);

  v11 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController;
  v12 = *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController];
  *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController] = v10;
  v13 = v10;

  if (!*(*&v1[v5] + qword_10078A548))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  swift_unknownObjectWeakAssign();

  v14 = *&v9[v11];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  sub_1005C98E0();

  v16 = *(*&v1[v5] + qword_10078A540);
  if (v16)
  {
    type metadata accessor for TTRIChromelessToolbarUpdater();
    swift_allocObject();
    v17 = v16;
    v18 = TTRIChromelessToolbarUpdater.init(scrollView:)();
    sub_1003DF088(&qword_100781888, type metadata accessor for TTRIRemindersListContentViewController);
    swift_unknownObjectRetain();
    TTRIChromelessToolbarUpdater.delegate.setter();
    *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_chromelessToolbarUpdater] = v18;

    v19 = [objc_allocWithZone(PKHoverInteraction) initWithDelegate:v9];
    v20 = *&v1[v5];
    [v20 addInteraction:v19];

    v21 = *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
    v22 = sub_10000C36C(&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v21);
    v23 = swift_allocObject();
    v24 = swift_unknownObjectWeakInit();
    v25 = __chkstk_darwin(v24);
    v27 = (&v33 - v26);
    (*(v28 + 16))(&v33 - v26, v22, v21, v25);
    v29 = *v27;
    v35 = type metadata accessor for TTRIRemindersListPresenter();
    v36 = &off_1007275A0;
    *&v34 = v29;
    type metadata accessor for TTRIRemindersListAutomaticSubtaskSelectionController();
    v30 = swift_allocObject();
    v31 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
    v32 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    sub_100005FD0(&v34, v30 + 16);
    *(v30 + 56) = sub_1003DE450;
    *(v30 + 64) = v23;
    *&v9[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController] = v30;

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1003C1B94()
{
  v1 = v0;
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  static TTRAccesibility.RemindersList.ID.RemindersTable.getter();
  v3 = String._bridgeToObjectiveC()();

  [v2 setAccessibilityIdentifier:v3];

  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView;
  v5 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
  v6 = objc_allocWithZone(UIView);
  v7 = v5;
  v8 = [v6 init];
  v9 = *&v7[qword_10078A540];
  if (!v9)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v9 setTableFooterView:v8];

  v10 = *(*&v1[v4] + qword_10078A540);
  if (!v10)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  [v10 setRowHeight:UITableViewAutomaticDimension];
  v11 = *(*&v1[v4] + qword_10078A540);
  if (!v11)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v11 setEstimatedRowHeight:46.0];
  v12 = *(*&v1[v4] + qword_10078A540);
  if (!v12)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v12 setSectionHeaderTopPadding:0.0];
  v13 = *(*&v1[v4] + qword_10078A540);
  if (!v13)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v13 setSectionHeaderHeight:28.0];
  v14 = *(*&v1[v4] + qword_10078A540);
  if (!v14)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v14 setSectionFooterHeight:28.0];
  v15 = *(*&v1[v4] + qword_10078A540);
  if (!v15)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v15 setKeyboardDismissMode:4];
  v16 = *(*&v1[v4] + qword_10078A540);
  if (!v16)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v16 setAllowsSelectionDuringEditing:1];
  v17 = *(*&v1[v4] + qword_10078A540);
  if (!v17)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v17 setAllowsMultipleSelectionDuringEditing:1];
  v18 = *(*&v1[v4] + qword_10078A540);
  if (!v18)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v18 setAlwaysBounceVertical:1];
  v103 = v4;
  v19 = *(*&v1[v4] + qword_10078A540);
  if (!v19)
  {
    goto LABEL_48;
  }

  [v19 setDragInteractionEnabled:1];
  sub_1003D6F00(&qword_100781970, &unk_10063D3B0, &qword_100781978);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006329D0;
  *(inited + 32) = type metadata accessor for TTRIRemindersListReminderCell();
  *(inited + 40) = type metadata accessor for TTRIRemindersListCompletedCell();
  *(inited + 48) = type metadata accessor for TTRIRemindersListHashtagCollectionCell(0);
  *(inited + 56) = type metadata accessor for TTRIRemindersListTemplateStatusCell();
  *(inited + 64) = type metadata accessor for TTRIRemindersListPublicTemplatePreviewStatusCell();
  *(inited + 72) = type metadata accessor for TTRIRemindersListTipCell();
  *(inited + 80) = type metadata accessor for TTRIRemindersListEditableSectionCell();
  *(inited + 88) = type metadata accessor for TTRIRemindersListRecentlyDeletedDisclaimerCell();
  sub_1003D6F00(&qword_100781960, &unk_10063D3A0, &qword_100781968);
  v102 = swift_initStackObject();
  *(v102 + 32) = type metadata accessor for TTRIRemindersListSectionHeader();
  for (i = 32; i != 96; i += 8)
  {
    v22 = *&v1[v103];
    static UITableViewCell.tableViewCellIdentifier.getter();
    v23 = *&v22[qword_10078A540];
    if (!v23)
    {
      __break(1u);
      goto LABEL_38;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = v23;
    v26 = String._bridgeToObjectiveC()();

    [v25 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v26];
  }

  v27 = *&v1[v103];
  static UITableViewHeaderFooterView.headerFooterViewIdentifier.getter();
  v28 = *&v27[qword_10078A540];
  if (!v28)
  {
    goto LABEL_49;
  }

  v29 = swift_getObjCClassFromMetadata();
  v30 = v28;
  v31 = String._bridgeToObjectiveC()();

  [v30 registerClass:v29 forHeaderFooterViewReuseIdentifier:v31];

  swift_setDeallocating();
  v32 = *&v1[v103];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = v32;
  sub_1001D4E84();
  v36 = v35;

  if (v36)
  {
    v37 = &v36[OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514];
    v38 = *&v36[OBJC_IVAR____TtC9Reminders30TTRIRemindersListTreeTableView_ownerViewControllerFor52010514];
    *v37 = sub_1003DE468;
    v37[1] = v33;

    sub_1000301AC(v38);
  }

  v39 = *&v1[v103];
  sub_100058000(&qword_100781890);
  swift_allocObject();
  v40 = v1;
  v41 = v39;
  v42 = sub_1003DA58C();

  v43 = *&v41[qword_10078A548];
  if (!v43)
  {
    goto LABEL_50;
  }

  v44 = v43;
  sub_1003BB378(v42);

  v45 = *&v1[v103];
  sub_100058000(&qword_100781898);
  v46 = swift_allocObject();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46[2] = sub_1003DF100;
  v46[3] = v47;
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46[4] = sub_1003DE470;
  v46[5] = v48;
  v49 = *(v45 + qword_10078A548);
  if (!v49)
  {
    goto LABEL_51;
  }

  *(v49 + qword_100771748) = v46;

  v50 = *&v1[v103];
  sub_100058000(&qword_1007818A0);
  v51 = swift_allocObject();
  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51[2] = sub_1003DF100;
  v51[3] = v52;
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51[4] = sub_1003DE4A0;
  v51[5] = v53;
  v54 = *&v50[qword_10078A548];
  if (!v54)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  *&v54[qword_100771750] = v51;
  v55 = v50;
  v56 = v54;

  v57 = *&v56[qword_100771730];
  v58 = v51[2];

  v59 = v57;
  v60 = v58();

  if (v60)
  {
    v61 = v56;
  }

  else
  {
    v61 = 0;
  }

  [v59 setPrefetchDataSource:{v61, v102}];

  v62 = *&v1[v103];
  sub_100058000(&qword_1007818A8);
  swift_allocObject();
  v63 = v40;
  v64 = v62;
  v65 = sub_1003D93E4();

  sub_100058000(&qword_1007818B0);
  swift_allocObject();
  v66 = v63;

  v67 = sub_1003DA1E0();

  *(v65 + 592) = v67;

  v68 = *&v64[qword_10078A548];
  if (!v68)
  {
    goto LABEL_53;
  }

  *&v68[qword_100771758] = v65;

  v69 = v68;

  v70 = *&v69[qword_100771730];
  v71 = *(v65 + 16);

  v72 = v70;
  v73 = v71();

  if (v73)
  {
    v74 = v69;
  }

  else
  {
    v74 = 0;
  }

  [v72 setDelegate:v74];

  v75 = *&v1[v103];
  v76 = objc_allocWithZone(sub_100058000(&qword_1007818B8));
  v77 = v66;
  v78 = v75;
  v79 = sub_1003DCF8C();

  v80 = *&v78[qword_10078A548];
  if (!v80)
  {
    goto LABEL_54;
  }

  v81 = qword_100771708;
  v82 = *&v80[qword_100771708];
  *&v80[qword_100771708] = v79;
  v83 = v79;
  v84 = v80;

  if (*&v80[v81])
  {
    swift_unknownObjectWeakAssign();
    v85 = *&v80[v81];
  }

  else
  {
    v85 = 0;
  }

  [*&v84[qword_100771730] setDragDelegate:v85];

  v86 = *&v1[v103];
  v87 = objc_allocWithZone(sub_100058000(&qword_1007818C0));
  v88 = v77;
  v89 = v86;
  v90 = sub_1003DC9C4();

  v91 = *&v89[qword_10078A548];
  if (!v91)
  {
    goto LABEL_55;
  }

  v92 = qword_100771710;
  v93 = *&v91[qword_100771710];
  *&v91[qword_100771710] = v90;
  v94 = v90;
  v95 = v91;

  if (*&v91[v92])
  {
    swift_unknownObjectWeakAssign();
    v96 = *&v91[v92];
  }

  else
  {
    v96 = 0;
  }

  [*&v95[qword_100771730] setDropDelegate:v96];

  v97 = *&v1[v103];
  sub_100058000(&unk_1007818C8);
  v98 = swift_allocObject();
  v99 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98[2] = sub_1003DF100;
  v98[3] = v99;
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98[4] = sub_1003DE4A8;
  v98[5] = v100;
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98[6] = sub_1003DE4B0;
  v98[7] = v101;
  *(v97 + qword_10078A550) = v98;
}

uint64_t sub_1003C26C4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = a1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1003DE458;
    *(v6 + 24) = v5;
    aBlock[4] = sub_100068444;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100725698;
    v7 = _Block_copy(aBlock);
    v8 = v3;

    [v4 performWithoutAnimation:v7];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1003C2868(uint64_t a1, char a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1003C28E0(a2 & 1, a1, a3 & 1);
  }
}

void sub_1003C28E0(char a1, uint64_t a2, char a3)
{
  v6 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v6 - 8);
  v8 = &v63 - v7;
  v69 = type metadata accessor for IndexPath();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v63 - v11;
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v67 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v18 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v63 - v22;
  v24 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v25 = v24;
  if (a1)
  {
    (*(v16 + 16))(v23, a2, v15);
    (*(v16 + 56))(v23, 0, 1, v15);
    v26 = *&v25[qword_10078A548];
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      sub_1000E0004(v23, 1, 0);
      if (a3)
      {
        sub_10000794C(v23, v20, &qword_100772140);
        if ((*(v16 + 48))(v20, 1, v15) == 1)
        {

          sub_1000079B4(v23, &qword_100772140);
          v29 = v20;
LABEL_25:
          sub_1000079B4(v29, &qword_100772140);
          return;
        }

        v54 = v67;
        (*(v16 + 32))(v67, v20, v15);
        v55 = sub_1003BD960(v54);
        v56 = v55[2];
        if (v56)
        {
          v64 = v23;
          v65 = v16;
          v66 = v15;
          v68 = v27;
          v57 = v69;
          v58 = v71 + 16;
          v71 = *(v71 + 16);
          v72 = qword_100771730;
          v59 = *(v58 + 64);
          v63 = v55;
          v60 = v55 + ((v59 + 32) & ~v59);
          v70 = *(v58 + 56);
          do
          {
            (v71)(v14, v60, v57);
            v61 = *&v72[v28];
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v58 - 8))(v14, v57);
            [v61 selectRowAtIndexPath:isa animated:1 scrollPosition:{0, v63}];

            v60 = &v70[v60];
            --v56;
          }

          while (v56);

          v27 = v68;
          v16 = v65;
          v15 = v66;
          v23 = v64;
        }

        else
        {
        }

        (*(v16 + 8))(v67, v15);
      }

      else
      {
      }

      v29 = v23;
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_27;
  }

  v68 = v24;
  v30 = *&v24[qword_10078A548];
  if (!v30)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v31 = a3;
  v32 = v30;
  v33 = sub_1000C84C8();
  v35 = v34;
  v37 = v36;
  v39 = sub_1000F2C50(a2, v38);
  v40 = v69;
  if (!v39)
  {

    v41 = v71;
    (*(v71 + 56))(v8, 1, 1, v40);
LABEL_13:
    sub_1000079B4(v8, &unk_100771B10);
    v45 = v68;
    if ((a3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  sub_1000C73C4(v39, v37 & 1, v33, v35, v8);

  v41 = v71;
  if ((*(v71 + 48))(v8, 1, v40) == 1)
  {
    goto LABEL_13;
  }

  v42 = v72;
  (*(v41 + 32))(v72, v8, v40);
  v43 = *&v32[qword_100771730];
  v44 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v43 deselectRowAtIndexPath:v44 animated:1];

  (*(v41 + 8))(v42, v40);
  v45 = v68;
  if ((v31 & 1) == 0)
  {
LABEL_10:

    return;
  }

LABEL_14:
  v46 = v32;
  v67 = sub_1003BD960(a2);
  v47 = v67[2];
  v48 = v70;
  if (v47)
  {
    v71 = *(v41 + 16);
    v72 = qword_100771730;
    v49 = v67 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v50 = *(v41 + 72);
    v51 = (v41 + 8);
    do
    {
      (v71)(v48, v49, v40);
      v52 = *&v72[v46];
      v53 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*v51)(v48, v40);
      [v52 deselectRowAtIndexPath:v53 animated:1];

      v49 += v50;
      --v47;
    }

    while (v47);
  }
}

void sub_1003C308C(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  ObjectType = swift_getObjectType();
  if ([v3 isEditing] != v6)
  {
    v25.receiver = v3;
    v25.super_class = ObjectType;
    objc_msgSendSuper2(&v25, "setEditing:animated:", v6, a2 & 1);
    if (a1)
    {
      v8 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
      v9 = *&v8[qword_10078A540];
      if (!v9)
      {
        goto LABEL_17;
      }

      v10 = [v9 isEditing];

      if (v10 && v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem] == 1)
      {
        v11 = *(*&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] + qword_10078A540);
        if (!v11)
        {
LABEL_20:
          __break(1u);
          return;
        }

        [v11 setEditing:0 animated:a2 & 1];
      }
    }

    v12 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    v13 = *&v12[qword_10078A540];
    if (v13)
    {
      [v13 setEditing:a1 & 1 animated:a2 & 1];

      v15 = *&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
      if ((a1 & 1) == 0)
      {
        v20 = *&v15[qword_10078A548];
        if (v20)
        {
          v21 = v15;
          v22 = v20;
          sub_1000CC908();

          goto LABEL_14;
        }

        goto LABEL_19;
      }

      __chkstk_darwin(v14);
      v24[2] = v3;
      v17 = *&v16[qword_10078A548];
      if (v17)
      {
        v18 = v16;
        v19 = v17;
        sub_1000CBA8C(sub_1003DE440, v24);

LABEL_14:
        v23 = *&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
        sub_1003BE898(a2 & 1);

        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_1003C32D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v12 = v11[3];
  v13 = v11[4];
  sub_10000C36C(v11, v12);
  (*(*(v13 + 8) + 544))(a1, v12);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140);
    v14 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v15 = v11[3];
    v16 = v11[4];
    sub_10000C36C(v11, v15);
    v14 = (*(*(v16 + 8) + 536))(v10, v15);
    (*(v8 + 8))(v10, v7);
  }

  return v14 & 1;
}

void sub_1003C3538()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_firstVisibleItemToRestore;
  swift_beginAccess();
  sub_10000794C(&v0[v11], v6, &qword_100772140);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140);
    return;
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 56))(v3, 1, 1, v7);
  swift_beginAccess();
  sub_10000D184(v3, &v0[v11], &qword_100772140);
  swift_endAccess();
  if ([v0 isViewLoaded])
  {
    v12 = v0;
    v13 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    [v13 layoutBelowIfNeeded];

    v14 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView;
    v15 = *&v12[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
    sub_1000E5C98(v10, 1, 0);

    v16 = *(*&v12[v14] + qword_10078A540);
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    UIViewController.scrollContentScrollViewToAvoidPartiallyCollapsedNavBarIfNeeded(_:animated:wantsDispatchAsync:)(v17, 0, 1);
  }

  (*(v8 + 8))(v10, v7);
}

void sub_1003C3868(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a1 & 1);
  v3 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v4 = *&v3[qword_10078A540];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [v4 isEditing];

  if (!v5)
  {
    return;
  }

  v6 = *(*&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] + qword_10078A540);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v6 setEditing:0 animated:0];
}

char *sub_1003C3A28(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView);
  if (*(a1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView + 32))
  {
    v2 = [objc_opt_self() mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = v1[2];
    v10 = v1[3];
    v4 = *v1;
    v6 = v1[1];
  }

  v11 = objc_allocWithZone(type metadata accessor for TTRIRemindersListTreeView());
  *&v11[qword_10078A540] = 0;
  *&v11[qword_10078A548] = 0;
  *&v11[qword_10078A550] = 0;
  v11[qword_10078A558] = 0;
  v26.receiver = v11;
  v26.super_class = sub_100058000(&unk_100781760);
  v12 = objc_msgSendSuper2(&v26, "initWithFrame:", v4, v6, v8, v10);
  v13 = *((swift_isaMask & *v12) + 0x90);
  v14 = v12;
  v15 = v13(0);
  v16 = *(v14 + qword_10078A540);
  *(v14 + qword_10078A540) = v15;
  v17 = v15;

  [v17 setAutoresizingMask:18];
  [v17 setPreservesSuperviewLayoutMargins:1];
  [v14 addSubview:v17];

  objc_allocWithZone(sub_100058000(&qword_10076BB70));
  v18 = v14;
  v19 = v17;
  v20 = sub_1003BB910(v18, v19);
  v21 = qword_10078A548;
  v22 = *&v18[qword_10078A548];
  *&v18[qword_10078A548] = v20;

  v23 = &off_100719448;
  if (!*&v18[v21])
  {
    v23 = 0;
  }

  *&v19[OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate + 8] = v23;
  swift_unknownObjectWeakAssign();

  v24 = v18;
  sub_1001D50A4();

  return v24;
}

uint64_t sub_1003C3C78()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v10 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v9 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C(v8, v10);
  (*(*(v9 + 8) + 296))(v17, v10);
  sub_10000C36C(v17, v17[3]);
  TTRRemindersListEditingState.editingItem.getter();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &qword_100772140);
    sub_100004758(v17);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_100004758(v17);
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v12 = *(result + qword_10078A548);
  if (v12)
  {
    v13 = result;
    v14 = v12;
    v15 = sub_1000DE654(v7);

    (*(v5 + 8))(v7, v4);
    result = 0;
    if (v15)
    {
      type metadata accessor for TTRIRemindersListReminderCell();
      result = swift_dynamicCastClass();
      if (!result)
      {

        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C3EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  v40 = type metadata accessor for TTREditingStateOption.InputType();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = v6;
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_1007817E8);
  v11 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  (*(v8 + 16))(v10, a1, v7);
  TTRRemindersListHighlightTarget.TargetItem.init(item:includesChildren:)();
  sub_1003C48A4(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  v15 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v16 = *&v15[qword_10078A548];
  if (!v16)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v15;
  v18 = v16;
  v19 = sub_1000DE654(a1);

  v20 = a1;
  if (v19)
  {
    swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v22 = v21;
      if (sub_1003C4478(v3, a1))
      {
        swift_getObjectType();
        dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();
        v42 = v19;
        v43 = v22;
        sub_100058000(&unk_10078A360);
        swift_allocObject();
        Promise.init(value:)();
        return;
      }
    }
  }

  v23 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController;
  v24 = *(v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController);
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = v24;
  sub_1005C9C70(a1);

  v27 = v39;
  v26 = v40;
  (*(v5 + 16))(v39, v41, v40);
  v28 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = swift_allocObject();
  (*(v5 + 32))(v29 + v28, v27, v26);
  v30 = zalgo.getter();
  sub_100058000(&unk_1007817F0);
  v31 = dispatch thunk of Promise.then<A>(on:closure:)();

  v32 = *(v3 + v23);
  if (v32)
  {
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = v32;
    sub_10050999C(v20, sub_1003DD838, v34, sub_1003DD840, v35, 1, v31, 1, 3);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v37 = zalgo.getter();
    dispatch thunk of Promise.always(on:closure:)();

    return;
  }

LABEL_12:
  __break(1u);
}

void *sub_1003C4478(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v32 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v29 = v26 - v5;
  v30 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v9 = *(result + qword_10078A548);
  if (v9)
  {
    v10 = result;
    v11 = v9;
    sub_1003BD378();
    v13 = v12;

    v14 = 0;
    if (v13)
    {
      result = v13;
    }

    else
    {
      result = _swiftEmptyArrayStorage;
    }

    v34 = result[2];
    v15 = (v2 + 8);
    v26[0] = v6 + 8;
    v26[1] = v6 + 16;
    v27 = result;
    v17 = v28;
    v16 = v29;
    while (1)
    {
      v18 = v14;
      if (v34 == v14)
      {
LABEL_9:
        v25 = v34 != v18;

        return v25;
      }

      if (v14 >= result[2])
      {
        break;
      }

      v19 = v30;
      (*(v6 + 16))(v17, result + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14++, v30);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v20 = v31;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      v21 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
      v22 = *v15;
      v23 = v20;
      v24 = v32;
      (*v15)(v23, v32);
      v22(v16, v24);
      (*(v6 + 8))(v17, v19);
      result = v27;
      if (v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C4754(void **a1)
{
  v1 = *a1;
  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100781340);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Begin editing title of cell of item-to-edit.", v5, 2u);
  }

  swift_getObjectType();
  dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();
  sub_100058000(&unk_10078A360);
  swift_allocObject();
  v6 = v1;
  return Promise.init(value:)();
}

void sub_1003C48A4(uint64_t a1)
{
  v2 = v1;
  v43 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v4 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100058000(&unk_100781800);
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v9 = v38 - v8;
  v10 = sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v11 = *(*v10 + 72);
  v12 = *(*v10 + 80);
  sub_10000C36C((*v10 + 48), v11);
  sub_10045E42C(v11, v12);
  swift_getObjectType();
  v13 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v15 = v14;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v38[2] = ObjectType;
  v45[3] = ObjectType;
  v17 = *(v15 + 8);
  v45[4] = v17;
  v45[0] = v13;
  v18 = *(a1 + 16);
  if (v18)
  {
    v38[0] = v17;
    v38[1] = v2;
    v44 = _swiftEmptyArrayStorage;
    sub_1004A1BC8(0, v18, 0);
    v19 = v44;
    v21 = *(v4 + 16);
    v20 = v4 + 16;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v39 = *(v20 + 56);
    v40 = v21;
    v41 = v20;
    v23 = (v20 - 8);
    do
    {
      v24 = v43;
      v40(v6, v22, v43);
      v25 = *(v42 + 48);
      TTRRemindersListHighlightTarget.TargetItem.item.getter();
      v26 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
      (*v23)(v6, v24);
      v9[v25] = v26 & 1;
      v44 = v19;
      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        sub_1004A1BC8(v27 > 1, v28 + 1, 1);
        v19 = v44;
      }

      v19[2] = v28 + 1;
      ObjectType = sub_100016588(v9, v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, &unk_100781800);
      v22 += v39;
      --v18;
    }

    while (v18);
  }

  __chkstk_darwin(ObjectType);
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_1003DF088(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item);
  v29 = TTRTreeContentsQueryable.ancestorsToExpand<A>(forRevealing:transform:isExpanded:itemExpandedStateIsUnknownIfParentIsCollapsed:)();

  sub_100004758(v45);
  if (*(v29 + 16))
  {
    if (qword_100767240 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100003E30(v30, qword_100781340);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = *(v29 + 16);

      _os_log_impl(&_mh_execute_header, v31, v32, "TTRIRemindersListContentViewController: expand ancestors to reveal target item {count: %ld}", v33, 0xCu);
    }

    else
    {
    }

    v34 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    __chkstk_darwin(v34);
    v36 = *(v35 + qword_10078A548);
    if (v36)
    {
      v37 = v36;
      sub_1001A0494(0, 0, 0, 0, v37, sub_1003DD858);
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

uint64_t sub_1003C4E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

char *sub_1003C4E78(uint64_t a1)
{
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&result[qword_10078A548];
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = sub_1000CAD68(a1);

    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C4EFC(uint64_t a1, uint64_t a2, int a3)
{
  v35 = a3;
  v34 = a2;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v3;
  v12 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v13 = *&v12[qword_10078A548];
  if (!v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v12;
  v15 = v13;
  v16 = sub_1000DE654(a1);

  v39 = _swiftEmptyArrayStorage;
  v33 = v16;
  if (v16)
  {
    v17 = a1;
    type metadata accessor for TTRIRemindersListReminderCell();
    if (!swift_dynamicCastClass())
    {
LABEL_6:
      v19 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    v18 = v16;
    if (TTRIRemindersListReminderCell.isViewModelValid.getter())
    {

      goto LABEL_6;
    }

    (*(v9 + 104))(v11, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v8);
    TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v9 + 8))(v11, v8);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    (*(v9 + 104))(v11, enum case for TTRRemindersListItemStateTracker.CellState.displayed(_:), v8);
    TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v9 + 8))(v11, v8);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v17 = a1;
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v19 = v39;
LABEL_14:
  sub_100058000(&qword_1007845B0);
  v38 = v19;
  sub_100058000(&qword_100781840);
  sub_10000E188(&qword_100781848, &qword_100781840);
  static Promise.all<A>(_:)();
  v20 = v36;
  (*(v6 + 16))(v36, v17, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v20, v5);
  v23 = zalgo.getter();
  v24 = dispatch thunk of Promise.then<A>(on:closure:)();

  v25 = *(v37 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController);
  if (v25)
  {
    v26 = v25;

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v29 = v34;
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10050BBFC(v17, sub_1003DF0E4, v28, sub_1003DF138, v30, v35 & 1, v24, 1, 3);

    swift_allocObject();
    swift_unknownObjectWeakInit();

    v31 = zalgo.getter();
    dispatch thunk of Promise.always(on:closure:)();

    return;
  }

LABEL_17:
  __break(1u);
}

id sub_1003C5520()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong parentViewController];

  return v2;
}

id sub_1003C5594(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1003C55F8()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  static TTRAccesibility.RemindersList.Rotor.CompletedTasks.getter();
  v1 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = sub_1003DE1A4;
  v3[4] = v1;
  v4 = objc_allocWithZone(UIAccessibilityCustomRotor);

  v5 = String._bridgeToObjectiveC()();

  v9[4] = sub_1003DF108;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1002C4478;
  v9[3] = &unk_100725508;
  v6 = _Block_copy(v9);
  v7 = [v4 initWithName:v5 itemSearchBlock:v6];

  _Block_release(v6);

  return v7;
}

uint64_t sub_1003C57CC(uint64_t a1)
{
  v19 = type metadata accessor for TTRReminderCellStyle();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v13 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v14);
  (*(*(v13 + 8) + 512))(a1, v14);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772738);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    TTRRemindersListViewModel.Reminder.style.getter();
    v15 = TTRReminderCellStyle.hasCompletedState.getter();
    (*(v3 + 8))(v5, v19);
    if (v15)
    {
      v16 = TTRRemindersListViewModel.Reminder.isCompleted.getter();
      (*(v10 + 8))(v12, v9);
      return v16 & 1;
    }

    (*(v10 + 8))(v12, v9);
  }

  return 2;
}

id sub_1003C5A70()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  static TTRAccesibility.RemindersList.Rotor.IncompleteTasks.getter();
  v1 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = sub_1003DE19C;
  v3[4] = v1;
  v4 = objc_allocWithZone(UIAccessibilityCustomRotor);

  v5 = String._bridgeToObjectiveC()();

  v9[4] = sub_1003DF108;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1002C4478;
  v9[3] = &unk_1007254B8;
  v6 = _Block_copy(v9);
  v7 = [v4 initWithName:v5 itemSearchBlock:v6];

  _Block_release(v6);

  return v7;
}

uint64_t sub_1003C5C44(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  LODWORD(a1) = sub_1003C57CC(a1);

  return (a1 != 2) & (a1 ^ 1);
}

id sub_1003C5C9C()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  static TTRAccesibility.RemindersList.Rotor.OverdueTasks.getter();
  v1 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = sub_1003DE168;
  v3[4] = v1;
  v4 = objc_allocWithZone(UIAccessibilityCustomRotor);

  v5 = String._bridgeToObjectiveC()();

  v9[4] = sub_1003DE170;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1002C4478;
  v9[3] = &unk_100725468;
  v6 = _Block_copy(v9);
  v7 = [v4 initWithName:v5 itemSearchBlock:v6];

  _Block_release(v6);

  return v7;
}

uint64_t sub_1003C5E70(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = *&Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
  v11 = *&Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
  sub_10000C36C(&Strong[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v10);
  (*(*(v11 + 8) + 512))(a1, v10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1000079B4(v4, &qword_100772738);
    v12 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v12 = TTRRemindersListViewModel.Reminder.showsAsOverdue.getter();

    (*(v6 + 8))(v8, v5);
  }

  return v12 & 1;
}

void sub_1003C608C()
{
  sub_1003C6168();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003C6168()
{
  if (!qword_100780930)
  {
    type metadata accessor for TTRRemindersListViewModel.Item();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100780930);
    }
  }
}

void *sub_1003C61C0()
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v1[qword_10078A540];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = [result hasActiveDrag];

  if (v3)
  {
    return 0;
  }

  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView;
  result = *(*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView) + qword_10078A540);
  if (!result)
  {
    goto LABEL_9;
  }

  if ([result hasActiveDrop])
  {
    return 0;
  }

  result = *(*(v0 + v4) + qword_10078A540);
  if (result)
  {
    return ([result isEditing] ^ 1);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1003C628C()
{
  v1 = v0;
  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100781340);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Cancel any hover detection once the cell starts being edited", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilHoverCleanupAction);
  if (*(v6 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v6 + 56) = 0;
}

char *sub_1003C63B0(char a1, char a2, double a3, double a4)
{
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v9 = *&result[qword_10078A540];
  if (v9)
  {
    v10 = result;
    v11 = v9;

    type metadata accessor for TTRIShowRemindersScrollViewInsetsUpdater();
    inited = swift_initStackObject();
    swift_unknownObjectWeakInit();
    inited[5] = 2;
    inited[6] = 0;
    inited[7] = 0;
    inited[8] = 0;
    swift_unknownObjectWeakAssign();

    inited[3] = sub_100290088;
    inited[4] = 0;
    sub_1005F55D8(a1 & 1, a2 & 1, a3, a4);
    swift_setDeallocating();
    return swift_unknownObjectWeakDestroy();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C64AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a3;
  v19[1] = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v10 = v12;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    while (1)
    {
      v10(v8, v13, v4, v6);
      v15 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
      v16 = *&v15[qword_10078A548];
      if (!v16)
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      (v19[0])(v8, 100);

      (*(v11 - 8))(v8, v4);
      v13 += v14;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

__n128 sub_1003C6630(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView;
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = *(a1 + 32);
  return result;
}

uint64_t sub_1003C6650()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController))
  {
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003C66E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell);
  v2 = v1;
  return v1;
}

uint64_t sub_1003C672C()
{
  sub_100058000(&unk_100781790);
  v1 = *(sub_100058000(&qword_100772140) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10062D400;
  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3 + v2, &qword_100772140);
  sub_100058000(&qword_1007817A0);
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10000E188(&qword_1007817A8, &qword_1007817A0);
  v5 = Sequence.removingNils<A>()();

  return v5;
}

void sub_1003C68B0(void *a1)
{
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&v2[qword_10078A540];
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    [a1 setContentScrollView:v5 forEdge:5];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C6948()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  sub_1003BE898(0);
}

double sub_1003C69B4()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v2 = *&v0[qword_10078A540];
  if (v2)
  {
    v3 = v0;
    v4 = v2;

    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = v6;
    v14 = v8;
    v15 = v10;
    v16 = v12;

    return CGRectGetHeight(*&v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1003C6A6C(char a1)
{
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&result[qword_10078A548];
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = sub_1000DEE9C(a1 & 1);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003C6AEC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController);
  if (v4)
  {
    v7 = v4;
    v8 = TTRIShowRemindersEditableCellScrollingTarget.resolvedTargetsToTry.getter();
    __chkstk_darwin(v8);
    v11[2] = v9;
    v11[3] = a2;
    sub_1005CA660(sub_1003DA558, v11, a3 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C6BA0()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v1 = *&v0[qword_10078A540];
  if (v1)
  {
    v2 = v0;
    v3 = v1;

    UIScrollView.bottomInsetRelativeToBounds(forAvoidingKeyboardWith:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003C6C38()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_chromelessToolbarUpdater))
  {

    TTRIChromelessToolbarUpdater.updateForToolbarVisibilityChange()();
  }

  return result;
}

char *sub_1003C6C90(uint64_t a1)
{
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&result[qword_10078A548];
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = sub_1000CAD68(a1);

    return (v6 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003C6D40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v6 = *&v5[qword_10078A548];
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    sub_1001A0494(0, 0, 0, 0, v8, a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003C6DE0()
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);

  sub_1003BE7D0(v0, sub_1003BB6A0);
}

uint64_t sub_1003C6E64()
{
  result = [v0 isViewLoaded];
  if (result)
  {
    v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    result = *&v2[qword_10078A540];
    if (result)
    {
      v3 = [result hasActiveDrag];

      if (v3)
      {
        return 1;
      }

      result = *(*&v0[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] + qword_10078A540);
      if (result)
      {
        return [result hasActiveDrop];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1003C6F1C(uint64_t a1)
{
  v3 = type metadata accessor for TTRTreeViewAnimationByType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100781870);
  v26 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_100058000(&qword_100781878);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if ([v1 isViewLoaded])
  {
    v25 = v4;
    v15 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    (*(v11 + 16))(v14, a1, v10);
    v16 = (*(v11 + 88))(v14, v10);
    if (v16 == enum case for TTRTreeViewUpdates.incremental<A>(_:))
    {
      (*(v11 + 96))(v14, v10);
      v17 = *(sub_100058000(&qword_100781880) + 48);
      v18 = v26;
      (*(v26 + 32))(v9, v14, v7);
      v19 = v25;
      (*(v25 + 32))(v6, &v14[v17], v3);
      v20 = TTRTreeDiffResult.isEmpty.getter();
      if (v20)
      {

        (*(v19 + 8))(v6, v3);
LABEL_10:
        (*(v18 + 8))(v9, v7);
        return;
      }

      __chkstk_darwin(v20);
      *(&v25 - 6) = TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:);
      *(&v25 - 5) = 0;
      *(&v25 - 4) = v9;
      *(&v25 - 3) = v15;
      *(&v25 - 2) = v6;
      v23 = *&v15[qword_10078A548];
      if (v23)
      {
        v24 = v23;
        sub_1001A0494(0, 0, 0, 0, v24, sub_1003DE430);

        (*(v25 + 8))(v6, v3);
        goto LABEL_10;
      }
    }

    else
    {
      if (v16 != enum case for TTRTreeViewUpdates.reload<A>(_:))
      {
LABEL_14:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v21 = *&v15[qword_10078A548];
      if (v21)
      {
        v22 = v21;
        sub_1000C7F48();

        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

void sub_1003C732C(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v46 - v7;
  v8 = sub_100058000(&qword_10076FA28);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = &v46 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100781860);
  __chkstk_darwin(v18 - 8);
  v57 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v46 - v21;
  v22 = 0;
  v23 = *(a1 + 16);
  v53 = (v9 + 32);
  v54 = (v15 + 32);
  v49 = (v9 + 8);
  v50 = v23;
  v47 = a1;
  v48 = (v15 + 8);
  v51 = v5;
  v24 = v23 == 0;
  if (v23)
  {
    goto LABEL_3;
  }

LABEL_2:
  v25 = sub_100058000(&qword_100781868);
  v26 = v57;
  (*(*(v25 - 8) + 56))(v57, 1, 1, v25);
  v58 = v23;
  v27 = v59;
  while (1)
  {
    v31 = v26;
    v32 = v56;
    sub_100016588(v31, v56, &qword_100781860);
    v33 = sub_100058000(&qword_100781868);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {
      break;
    }

    v34 = *(v33 + 48);
    v35 = *(v33 + 64);
    (*v54)(v17, v32, v14);
    v36 = *v53;
    (*v53)(v27, v32 + v34, v8);
    v36(v11, v32 + v35, v8);
    v37 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    v38 = TTRDerivedTreeLocation.index.getter();
    v39 = v52;
    TTRDerivedTreeLocation.parent.getter();
    v40 = TTRDerivedTreeLocation.index.getter();
    v41 = v51;
    v42 = v40;
    TTRDerivedTreeLocation.parent.getter();
    v43 = *&v37[qword_10078A548];
    if (!v43)
    {
      goto LABEL_13;
    }

    v44 = v43;
    sub_1000D4848(v17, v38, v39, v42, v41);

    sub_1000079B4(v41, &qword_100772140);
    sub_1000079B4(v39, &qword_100772140);
    v45 = *v49;
    (*v49)(v11, v8);
    v45(v59, v8);
    (*v48)(v17, v14);
    v23 = v50;
    v22 = v58;
    v24 = v58 >= v50;
    if (v58 == v50)
    {
      goto LABEL_2;
    }

LABEL_3:
    v26 = v57;
    if (v24)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v28 = sub_100058000(&qword_100781868);
    v29 = *(v28 - 8);
    sub_10000794C(v47 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, v26, &qword_100781868);
    v30 = __OFADD__(v22, 1);
    v58 = v22 + 1;
    v27 = v59;
    if (v30)
    {
      goto LABEL_12;
    }

    (*(v29 + 56))(v26, 0, 1, v28);
  }
}

void *sub_1003C78EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = sub_100058000(&unk_100781850);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for TTREditingStateOption.InputType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v12[qword_10078A540];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = [result isEditing];

  if (v14)
  {
    if ([v3 isEditing])
    {
      if (qword_100767240 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_100781340);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRIShowRemindersViewController: trying to start editing a reminder while in edit mode", v18, 2u);
      }

      goto LABEL_11;
    }

    result = *(*&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView] + qword_10078A540);
    if (result)
    {
      [result setEditing:0 animated:1];
      goto LABEL_11;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_11:
  sub_10000794C(a2, v7, &unk_100781850);
  v19 = *(v9 + 48);
  if (v19(v7, 1, v8) == 1)
  {
    (*(v9 + 104))(v11, enum case for TTREditingStateOption.InputType.unspecified(_:), v8);
    if (v19(v7, 1, v8) != 1)
    {
      sub_1000079B4(v7, &unk_100781850);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  sub_1003C3EF0(v21, v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_1003C7C3C(uint64_t a1)
{
  v2 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v3 = *&v2[qword_10078A548];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v2;
  v5 = v3;
  v9 = sub_1000DE654(a1);

  if (!v9)
  {
    goto LABEL_6;
  }

  type metadata accessor for TTRIRemindersListReminderCell();
  if (!swift_dynamicCastClass())
  {

LABEL_6:
    if (qword_100767240 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_100781340);
    v9 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v9, v7, "Tried createAndStartEditingNewHashtag but there is no cell containing the Reminder Item specified", v8, 2u);
    }

    goto LABEL_10;
  }

  TTRIRemindersListReminderCell.createAndStartEditingNewHashtag()();
LABEL_10:
}

void sub_1003C7DB8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v8 - 8);
  v10 = &v85 - v9;
  v106 = type metadata accessor for IndexPath();
  v11 = *(v106 - 8);
  __chkstk_darwin(v106);
  v91 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v112 - 8);
  v14 = __chkstk_darwin(v112);
  v107 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v1 viewIfLoaded];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = UIView.firstResponderDescendant.getter();

  v90 = v18;
  if (!v18)
  {
    return;
  }

  v104 = *(a1 + 16);
  if (!v104)
  {
    goto LABEL_86;
  }

  v20 = *(v13 + 16);
  v19 = v13 + 16;
  v102 = a1 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
  v21 = (v5 + 8);
  v22 = 0;
  v23 = *(v19 + 56);
  v100 = v21;
  v101 = v23;
  v98 = (v11 + 56);
  v88 = (v11 + 48);
  v87 = (v11 + 32);
  v86 = (v11 + 8);
  v24 = v20;
  v103 = v19;
  v97 = (v19 - 8);
  v95 = v4;
  v94 = v7;
  v99 = v10;
  v93 = v20;
  while (1)
  {
    v25 = v107;
    v24(v107, v102 + v101 * v22, v112);
    v109 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    v26 = *&v109[qword_10078A548];
    if (!v26)
    {
      goto LABEL_95;
    }

    v108 = v26;
    v110 = sub_1000C84C8();
    v111 = v27;
    v29 = v28;
    v31 = v30;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (!*(v29 + 16) || (v113 = v29, v32 = sub_1003AB294(v7), (v33 & 1) == 0))
    {

      (*v100)(v7, v4);
LABEL_18:
      (*v97)(v25, v112);
      v50 = v99;
      (*v98)(v99, 1, 1, v106);
      goto LABEL_19;
    }

    v34 = *(*(v113 + 56) + 8 * v32);
    v35 = *v100;

    v35(v7, v4);
    v36 = v34 & 0xC000000000000001;
    v96 = v22;
    if ((v34 & 0xC000000000000001) != 0)
    {
      v37 = __CocoaSet.startIndex.getter();
      v39 = v38;
      v40 = __CocoaSet.endIndex.getter();
      v42 = v41;
      v43 = static __CocoaSet.Index.== infix(_:_:)();
      sub_10000FBA0(v40, v42, 1);
      if (v43)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v44 = 0;
      v45 = (v34 + 56);
      v37 = 1 << *(v34 + 32);
      v46 = (v37 + 63) >> 6;
      while (1)
      {
        v48 = *v45++;
        v47 = v48;
        if (v48)
        {
          break;
        }

        v44 -= 64;
        if (!--v46)
        {
          v39 = *(v34 + 36);
          goto LABEL_17;
        }
      }

      v49 = __clz(__rbit64(v47));
      v39 = *(v34 + 36);
      if (v49 - v37 == v44)
      {
LABEL_17:
        sub_10000FBA0(v37, v39, v36 != 0);

        v4 = v95;
        v7 = v94;
        v25 = v107;
        v22 = v96;
        v24 = v93;
        goto LABEL_18;
      }

      v37 = v49 - v44;
    }

    v51 = v36 != 0;
    v52 = sub_10057E700(v37, v39, v36 != 0, v34);
    sub_10000FBA0(v37, v39, v51);

    v53 = v111;
    if (*(v111 + 16))
    {
      break;
    }

    v70 = 1;
    v4 = v95;
    v7 = v94;
    v50 = v99;
    v71 = v106;
LABEL_55:
    (*v98)(v50, v70, 1, v71);

    if ((*v88)(v50, 1, v71) != 1)
    {
      v72 = v91;
      (*v87)(v91, v50, v71);
      v73 = v108;
      v74 = *&v108[qword_100771730];
      v75 = v71;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v77 = [v74 cellForRowAtIndexPath:isa];

      (*v86)(v72, v75);
      if (v77)
      {
        v78 = [v90 isDescendantOfView:v77];

        (*v97)(v107, v112);
        v22 = v96;
        v24 = v93;
        if (v78)
        {
          goto LABEL_85;
        }
      }

      else
      {
        (*v97)(v107, v112);
        v22 = v96;
        v24 = v93;
      }

      goto LABEL_20;
    }

    (*v97)(v107, v112);
    v22 = v96;
    v24 = v93;
LABEL_19:
    sub_1000079B4(v50, &unk_100771B10);
LABEL_20:
    if (++v22 == v104)
    {
      goto LABEL_86;
    }
  }

  v54 = sub_1003B3EDC(v52);
  v4 = v95;
  v7 = v94;
  v55 = v52;
  if ((v56 & 1) == 0)
  {
    v70 = 1;
    v50 = v99;
    goto LABEL_54;
  }

  v57 = *(*(v53 + 56) + 8 * v54);
  v92 = v52;
  v85 = v57;
  if ((v31 & 1) == 0)
  {
    if ((v57 & 0x8000000000000000) != 0)
    {
      goto LABEL_92;
    }

    v50 = v99;
    if (v57 >= *(v110 + 16))
    {
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return;
    }

    v79 = *(v110 + 16 * v57 + 40);
    if (v79 >> 62)
    {
      v80 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v81 = 0;
    while (v80 != v81)
    {
      if ((v79 & 0xC000000000000001) != 0)
      {
        v82 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        v83 = v82 == v92;
        v55 = v92;
        if (v83)
        {
LABEL_75:

          IndexPath.init(row:section:)();
          v70 = 0;
          goto LABEL_54;
        }
      }

      else
      {
        if (v81 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (*(v79 + 8 * v81 + 32) == v55)
        {
          goto LABEL_75;
        }
      }

      v61 = __OFADD__(v81++, 1);
      if (v61)
      {
        goto LABEL_90;
      }
    }

    v70 = 1;
LABEL_54:
    v71 = v106;
    goto LABEL_55;
  }

  Strong = swift_weakLoadStrong();

  v59 = 0;
  if (!Strong)
  {
LABEL_77:

    v84 = v59 - 1;
    if (__OFSUB__(v59, 1))
    {
      goto LABEL_94;
    }

    v4 = v95;
    v7 = v94;
    v50 = v99;
    v71 = v106;
    if (v84 < 0)
    {
      v70 = 1;
    }

    else
    {
      IndexPath.init(row:section:)();
      v70 = 0;
    }

    goto LABEL_55;
  }

  v60 = v52;
  v89 = v2;
  while (1)
  {
    v61 = __OFADD__(v59++, 1);
    if (v61)
    {
      goto LABEL_91;
    }

    v62 = Strong;
    swift_beginAccess();
    v63 = *(Strong + 64);
    if (!(v63 >> 62))
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v64)
      {
        break;
      }

      goto LABEL_28;
    }

    v64 = _CocoaArrayWrapper.endIndex.getter();
    if (v64)
    {
      break;
    }

LABEL_28:

LABEL_29:
    Strong = swift_weakLoadStrong();

    v60 = v62;
    if (!Strong)
    {
      goto LABEL_77;
    }
  }

  v105 = v63 & 0xFFFFFFFFFFFFFF8;

  v65 = 0;
  while (2)
  {
    if ((v63 & 0xC000000000000001) != 0)
    {
      v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v67 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_82;
      }

LABEL_40:
      if (v66 == v60)
      {

        goto LABEL_49;
      }

      v61 = __OFADD__(v59, 1);
      v68 = v59 + 1;
      if (v61)
      {
        goto LABEL_83;
      }

      if (*(v66 + 48))
      {
        v114 = 0;
        sub_10023C598(v66, &v114);
        v69 = v114;
        *(v66 + 40) = v114;
        *(v66 + 48) = 0;
      }

      else
      {
        v69 = *(v66 + 40);
      }

      v61 = __OFADD__(v68, v69);
      v59 = v68 + v69;
      if (v61)
      {
        goto LABEL_84;
      }

      ++v65;
      if (v67 == v64)
      {

LABEL_49:
        v2 = v89;
        goto LABEL_29;
      }

      continue;
    }

    break;
  }

  if (v65 >= *(v105 + 16))
  {
    __break(1u);
    goto LABEL_89;
  }

  v66 = *(v63 + 8 * v65 + 32);

  v67 = v65 + 1;
  if (!__OFADD__(v65, 1))
  {
    goto LABEL_40;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  [v90 resignFirstResponder];
LABEL_86:
}

void sub_1003C8908(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for TTRRemindersListViewModel.Item();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  sub_1000E5C98(a1, a2, a3);

  v17 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView);
  v18 = *&v17[qword_10078A548];
  if (!v18)
  {
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = v17;
  v21 = sub_1000DE654(a1);

  if (!v21)
  {
LABEL_10:
    (*(v9 + 104))(v11, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v8);
    TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v9 + 8))(v11, v8);
    return;
  }

  type metadata accessor for TTRIRemindersListReminderCell();
  v22 = swift_dynamicCastClass();
  if (!v22 || (v23 = v22, (TTRIRemindersListReminderCell.isViewModelValid.getter() & 1) == 0))
  {

    goto LABEL_10;
  }

  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100781340);
  v25 = v47;
  v26 = *(v47 + 16);
  v27 = v49;
  v26(v15, a1, v49);
  v28 = v21;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  v45 = v30;
  v46 = v29;
  v31 = os_log_type_enabled(v29, v30);
  v32 = v48;
  if (v31)
  {
    v33 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50 = v44;
    *v33 = 136315394;
    v26(v32, v15, v27);
    v34 = String.init<A>(describing:)();
    v35 = v26;
    v36 = v28;
    v38 = v37;
    (*(v25 + 8))(v15, v49);
    v39 = sub_100004060(v34, v38, &v50);
    v28 = v36;
    v26 = v35;
    v32 = v48;

    *(v33 + 4) = v39;
    v27 = v49;
    *(v33 + 12) = 2112;
    *(v33 + 14) = v23;
    v40 = v43;
    *v43 = v23;
    v41 = v28;
    v42 = v46;
    _os_log_impl(&_mh_execute_header, v46, v45, "Target scroll item cell already loaded {item: %s, cell: %@}", v33, 0x16u);
    sub_1000079B4(v40, &unk_10076DF80);

    sub_100004758(v44);
  }

  else
  {

    (*(v25 + 8))(v15, v27);
  }

  v26(v32, a1, v27);
  sub_100058000(&qword_1007845B0);
  swift_allocObject();
  Promise.init(value:)();
}

uint64_t sub_1003C8DF4(uint64_t a1, int a2)
{
  LODWORD(v61) = a2;
  v67 = type metadata accessor for TTRRemindersListHighlightTarget();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v62 = v3;
  v63 = &v51[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v66 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = v9;
  __chkstk_darwin(v10);
  v72 = &v51[-v11];
  v12 = type metadata accessor for OSSignpostID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static os_signpost_type_t.begin.getter();
  v68 = objc_opt_self();
  v16 = [v68 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v18 = *(v13 + 8);
  v17 = v13 + 8;
  v69 = v15;
  v70 = v18;
  v18(v15, v12);
  v19 = TTRRemindersListHighlightTarget.targetItems.getter();
  v20 = v19;
  if (*(v19 + 16))
  {
    v57 = v17;
    v58 = v12;
    v21 = *(v8 + 80);
    v22 = *(v8 + 16);
    v55 = v8 + 16;
    v56 = v22;
    v22(v72, (v19 + ((v21 + 32) & ~v21)), v7);
    sub_1003C48A4(v20);
    v23 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
    v53 = v7;
    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    TTRRemindersListHighlightTarget.TargetItem.item.getter();
    v54 = v8;
    v25 = v61 & 1;
    v52 = v25;
    sub_1003C4EFC(v6, v24, v25);
    v61 = v26;
    (*(v59 + 8))(v6, v60);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = v65;
    v29 = v63;
    v30 = v67;
    (*(v65 + 16))(v63, a1, v67);
    v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v32 = (v62 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    (*(v28 + 32))(v33 + v31, v29, v30);
    v34 = v33 + v32;
    *v34 = v20;
    *(v34 + 8) = v25;
    v35 = zalgo.getter();
    v36 = dispatch thunk of Promise.then<A>(on:closure:)();

    v37 = v66;
    v38 = v53;
    v56(v66, v72, v53);
    v39 = (v21 + 24) & ~v21;
    v40 = v39 + v64;
    v12 = v58;
    v41 = swift_allocObject();
    v42 = v71;
    *(v41 + 16) = v71;
    v43 = v54;
    (*(v54 + 32))(v41 + v39, v37, v38);
    *(v41 + v40) = v52;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1003DE2D8;
    *(v44 + 24) = v41;
    v45 = v42;
    v46 = zalgo.getter();
    v47 = v36;
    dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v43 + 8))(v72, v38);
  }

  else
  {

    sub_100058000(&unk_10078A2F0);
    swift_allocObject();
    v47 = Promise.init(value:)();
  }

  static os_signpost_type_t.end.getter();
  v48 = [v68 ppt];
  v49 = v69;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v70(v49, v12);
  return v47;
}

void sub_1003C9454(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, int a5)
{
  v128 = a5;
  v152 = a4;
  v146 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v6 = *(v146 - 8);
  __chkstk_darwin(v146);
  v130 = v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v145 = v115 - v9;
  v10 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v10 - 8);
  v121 = v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = v115 - v13;
  v143 = type metadata accessor for IndexPath();
  v126 = *(v143 - 8);
  __chkstk_darwin(v143);
  v15 = v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v120 = v115 - v17;
  __chkstk_darwin(v18);
  v118 = v115 - v19;
  v138 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v138 - 8);
  __chkstk_darwin(v138);
  v132 = v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRRemindersListHighlightTarget();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v125 = v15;
    if (qword_100767240 != -1)
    {
      goto LABEL_107;
    }

    while (1)
    {
      v151 = v20;
      v26 = type metadata accessor for Logger();
      sub_100003E30(v26, qword_100781340);
      (*(v23 + 2))(v25, a3, v22);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      v29 = os_log_type_enabled(v27, v28);
      v150 = v6;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v153 = v31;
        *v30 = 136315138;
        sub_1003DF088(&qword_100781838, &type metadata accessor for TTRRemindersListHighlightTarget);
        v32 = dispatch thunk of CustomStringConvertible.description.getter();
        v34 = v33;
        (*(v23 + 1))(v25, v22);
        v35 = sub_100004060(v32, v34, &v153);

        *(v30 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v27, v28, "TTRIRemindersListContentViewController: highlight item briefly {target: %s}", v30, 0xCu);
        sub_100004758(v31);
      }

      else
      {

        (*(v23 + 1))(v25, v22);
      }

      v36 = v152;
      v116 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically;
      *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically) = 1;
      v25 = v144;
      v6 = v145;
      v23 = v132;
      v137 = *(v36 + 2);
      if (!v137)
      {
LABEL_98:
        v114 = Strong;
        *(Strong + v116) = 0;

        return;
      }

      v37 = 0;
      v38 = *(type metadata accessor for TTRRemindersListHighlightTarget.TargetItem() - 8);
      v142 = (v150 + 8);
      v134 = (v126 + 56);
      v122 = (v126 + 48);
      v117 = (v126 + 32);
      v127 = (v126 + 8);
      v133 = (v151 + 8);
      v136 = &v36[(*(v38 + 80) + 32) & ~*(v38 + 80)];
      v135 = *(v38 + 72);
      v149 = v126 + 16;
      while (1)
      {
        v39 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
        TTRRemindersListHighlightTarget.TargetItem.item.getter();
        v40 = TTRRemindersListHighlightTarget.TargetItem.includesChildren.getter();
        v148 = v39;
        v41 = *&v39[qword_10078A548];
        if (!v41)
        {
          goto LABEL_112;
        }

        v42 = v40;
        v152 = v41;
        v151 = sub_1000C84C8();
        v44 = v43;
        v20 = v45;
        LODWORD(v139) = v46;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v47 = *(v44 + 16);
        LODWORD(v150) = v42;
        if (!v47 || (v48 = sub_1003AB294(v6), (v49 & 1) == 0))
        {

          v141 = *v142;
          v141(v6, v146);
          v60 = v152;
          goto LABEL_23;
        }

        v50 = *(*(v44 + 56) + 8 * v48);
        v51 = *v142;

        v141 = v51;
        v51(v6, v146);
        v52 = v50 & 0xC000000000000001;
        v147 = v37;
        v131 = v44;
        if ((v50 & 0xC000000000000001) != 0)
        {
          v53 = __CocoaSet.startIndex.getter();
          v55 = v54;
          v56 = __CocoaSet.endIndex.getter();
          v58 = v57;
          v59 = static __CocoaSet.Index.== infix(_:_:)();
          sub_10000FBA0(v56, v58, 1);
          v60 = v152;
          if (v59)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v61 = 0;
          v62 = (v50 + 56);
          v53 = 1 << *(v50 + 32);
          v63 = (v53 + 63) >> 6;
          while (1)
          {
            v65 = *v62++;
            v64 = v65;
            if (v65)
            {
              break;
            }

            v61 -= 64;
            if (!--v63)
            {
              v55 = *(v50 + 36);
              v60 = v152;
              goto LABEL_22;
            }
          }

          v66 = __clz(__rbit64(v64));
          v55 = *(v50 + 36);
          v60 = v152;
          if (v66 - v53 == v61)
          {
LABEL_22:
            sub_10000FBA0(v53, v55, v52 != 0);

            v25 = v144;
            v6 = v145;
            v23 = v132;
            v37 = v147;
LABEL_23:
            (*v134)(v25, 1, 1, v143);
LABEL_24:
            sub_1000079B4(v25, &unk_100771B10);
            if (v150)
            {
              goto LABEL_25;
            }

            goto LABEL_8;
          }

          v53 = v66 - v61;
        }

        v22 = sub_10057E700(v53, v55, v52 != 0, v50);
        sub_10000FBA0(v53, v55, v52 != 0);

        v94 = *(v20 + 16);
        v124 = v22;
        if (!v94 || (v95 = sub_1003B3EDC(v22), (v96 & 1) == 0))
        {

          v103 = 1;
          v25 = v144;
          v6 = v145;
          goto LABEL_68;
        }

        v97 = *(*(v20 + 56) + 8 * v95);
        v25 = v144;
        v6 = v145;
        if ((v139 & 1) == 0)
        {
          if ((v97 & 0x8000000000000000) == 0)
          {
            v23 = v124;
            if (v97 < *(v151 + 16))
            {
              v112 = *(v151 + 16 * v97 + 40);
              v22 = v112 & 0xFFFFFFFFFFFFFF8;
              if (v112 >> 62)
              {
                a3 = _CocoaArrayWrapper.endIndex.getter();
              }

              else
              {
                a3 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v25 = 0;
              while (1)
              {
                if (a3 == v25)
                {

                  v103 = 1;
                  v25 = v144;
                  v6 = v145;
                  v60 = v152;
                  goto LABEL_68;
                }

                if ((v112 & 0xC000000000000001) != 0)
                {
                  v6 = v97;
                  v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  swift_unknownObjectRelease();
                  if (v113 == v23)
                  {
                    goto LABEL_92;
                  }
                }

                else
                {
                  if (v25 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_104;
                  }

                  if (*(v112 + 8 * v25 + 32) == v23)
                  {
LABEL_92:

                    v25 = v144;
                    IndexPath.init(row:section:)();

                    v103 = 0;
                    v6 = v145;
                    v60 = v152;
                    goto LABEL_68;
                  }
                }

                v100 = __OFADD__(v25++, 1);
                if (v100)
                {
                  goto LABEL_105;
                }
              }
            }

LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            return;
          }

LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v115[1] = *(*(v20 + 56) + 8 * v95);
        v98 = v124;
        v99 = swift_weakLoadStrong();

        a3 = 0;
        if (v99)
        {
          break;
        }

LABEL_93:

        if (__OFSUB__(a3, 1))
        {
          goto LABEL_111;
        }

        if (a3 - 1 < 0)
        {

          v103 = 1;
        }

        else
        {
          IndexPath.init(row:section:)();

          v103 = 0;
        }

LABEL_68:

        v104 = v143;
        (*v134)(v25, v103, 1, v143);

        if ((*v122)(v25, 1, v104) == 1)
        {
          v23 = v132;
          v37 = v147;
          goto LABEL_24;
        }

        v105 = v118;
        (*v117)(v118, v25, v104);
        v106 = *&v60[qword_100771730];
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v106 highlightRowAtIndexPath:isa animated:v128 & 1 scrollPosition:0];

        (*v127)(v105, v104);
        v23 = v132;
        v37 = v147;
        if (v150)
        {
LABEL_25:
          v147 = v37;
          sub_1000C84C8();
          v68 = v67;
          v69 = v130;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
          if (*(v68 + 16) && (v70 = sub_1003AB294(v69), (v71 & 1) != 0))
          {
            v72 = *(*(v68 + 56) + 8 * v70);

            v141(v69, v146);
            v73 = sub_1000A97B4(v72);

            if (!v73)
            {
              goto LABEL_31;
            }

            v74 = sub_1000C84C8();
            v76 = v121;
            sub_1000C7C0C(v73, v74, v77, v78, v75 & 1, v121);

            v79 = v143;
            if ((*v122)(v76, 1, v143) == 1)
            {

              sub_1000079B4(v76, &unk_100771B10);
              goto LABEL_31;
            }

            v92 = (*v117)(v120, v76, v79);
            v25 = v144;
            v6 = v145;
            if (*(v73 + 48))
            {
              v154 = 0;
              v92 = sub_10023C598(v73, &v154);
              v93 = v154;
              *(v73 + 40) = v154;
              *(v73 + 48) = 0;
            }

            else
            {
              v93 = *(v73 + 40);
            }

            v108 = v127;
            if (v93 < 0)
            {
              __break(1u);
              goto LABEL_109;
            }

            __chkstk_darwin(v92);
            v109 = v120;
            v115[-2] = v120;
            v110 = v123;
            v80 = sub_1003996D0(sub_1003DE3A0, &v115[-4], 0, v111);
            v123 = v110;

            (*v108)(v109, v143);
            v81 = *(v80 + 2);
            if (!v81)
            {
LABEL_75:

              v60 = v148;
LABEL_76:
              v23 = v132;
              v37 = v147;
              goto LABEL_9;
            }
          }

          else
          {
            v141(v69, v146);

LABEL_31:
            v80 = _swiftEmptyArrayStorage;
            v25 = v144;
            v6 = v145;
            v81 = _swiftEmptyArrayStorage[2];
            if (!v81)
            {
              goto LABEL_75;
            }
          }

          v152 = qword_100771730;
          v82 = (*(v126 + 80) + 32) & ~*(v126 + 80);
          v141 = v80;
          v83 = v80 + v82;
          v84 = *(v126 + 72);
          v150 = *(v126 + 16);
          v151 = v84;
          v85 = v143;
          v86 = v127;
          v87 = v60;
          v88 = v125;
          v89 = v128;
          do
          {
            (v150)(v88, v83, v85);
            v90 = *&v152[v87];
            v91 = IndexPath._bridgeToObjectiveC()().super.isa;
            (*v86)(v88, v85);
            [v90 highlightRowAtIndexPath:v91 animated:v89 & 1 scrollPosition:0];

            v83 += v151;
            --v81;
          }

          while (v81);

          v60 = v148;
          v25 = v144;
          v6 = v145;
          goto LABEL_76;
        }

LABEL_8:

LABEL_9:
        ++v37;

        (*v133)(v23, v138);
        if (v37 == v137)
        {
          goto LABEL_98;
        }
      }

      v119 = v20;
      while (1)
      {
        v100 = __OFADD__(a3++, 1);
        if (v100)
        {
          goto LABEL_106;
        }

        swift_beginAccess();
        v129 = v99;
        v25 = *(v99 + 64);
        if (v25 >> 62)
        {
          break;
        }

        v101 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v101)
        {
          goto LABEL_48;
        }

LABEL_43:

LABEL_44:
        v22 = v129;
        v99 = swift_weakLoadStrong();

        v98 = v22;
        v25 = v144;
        v6 = v145;
        v60 = v152;
        if (!v99)
        {
          goto LABEL_93;
        }
      }

      v101 = _CocoaArrayWrapper.endIndex.getter();
      if (!v101)
      {
        goto LABEL_43;
      }

LABEL_48:
      v20 = v25 & 0xC000000000000001;
      v139 = v25 & 0xFFFFFFFFFFFFFF8;

      v102 = 0;
      while (2)
      {
        if (v20)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v23 = (v102 + 1);
          if (__OFADD__(v102, 1))
          {
            goto LABEL_100;
          }

LABEL_55:
          if (v6 == v98)
          {

            goto LABEL_64;
          }

          v100 = __OFADD__(a3++, 1);
          if (v100)
          {
            goto LABEL_101;
          }

          if (*(v6 + 48))
          {
            v154 = 0;
            sub_10023C598(v6, &v154);
            v22 = v154;
            *(v6 + 40) = v154;
            *(v6 + 48) = 0;
          }

          else
          {
            v22 = *(v6 + 40);
          }

          v100 = __OFADD__(a3, v22);
          a3 += v22;
          if (v100)
          {
            goto LABEL_102;
          }

          ++v102;
          if (v23 == v101)
          {

LABEL_64:
            v20 = v119;
            goto LABEL_44;
          }

          continue;
        }

        break;
      }

      if (v102 >= *(v139 + 16))
      {
        goto LABEL_103;
      }

      v6 = *(v25 + 8 * v102 + 32);

      v23 = (v102 + 1);
      if (!__OFADD__(v102, 1))
      {
        goto LABEL_55;
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      swift_once();
    }
  }
}

uint64_t sub_1003CA5E0(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a3;
  v29 = a2;
  v27[1] = a1;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListHighlightTarget.TargetItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v31 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  sub_100003540(0, &qword_100777780);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v30 = *(v12 + 8);
  v30(v14, v11);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(v10, v29, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = v19 + v9;
  v21 = swift_allocObject();
  *(v21 + 16) = v18;
  (*(v8 + 32))(v21 + v19, v10, v7);
  *(v21 + v20) = v32;
  aBlock[4] = sub_1003DE2F0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_1007255D0;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003DF088(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100058000(&qword_100780A50);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50);
  v24 = v33;
  v23 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v37 + 8))(v24, v23);
  (*(v35 + 8))(v6, v36);
  return (v30)(v17, v31);
}

void sub_1003CAAB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v32 = v5;
    v14 = v4;
    v15 = a3;
    v16 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    TTRRemindersListHighlightTarget.TargetItem.item.getter();
    v17 = *&v16[qword_10078A548];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1000DE654(v11);

      (*(v9 + 8))(v11, v8);
      v20 = v15;
      v21 = v14;
      v22 = v32;
      if (v19)
      {
        type metadata accessor for TTRIRemindersListReminderCell();
        v23 = swift_dynamicCastClass();
        if (v23)
        {
          v24 = v23;
          if (TTRIRemindersListReminderCell.isViewModelValid.getter())
          {
            UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v24);
          }
        }
      }

      v25 = *&v13[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView];
      v26 = *&v25[qword_10078A548];
      if (v26)
      {
        v27 = *&v26[qword_100771730];
        v28 = v25;
        v29 = v26;
        v30 = v27;
        NSNotFound.getter();
        NSNotFound.getter();
        IndexPath.init(row:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v22 + 8))(v7, v21);
        [v30 highlightRowAtIndexPath:isa animated:v20 & 1 scrollPosition:0];

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

void sub_1003CAD9C()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v1 = *&v0[qword_10078A548];
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_1001A0494(0, 0, 0, 0, v3, sub_1003DE460);
  }

  else
  {
    __break(1u);
  }
}

void sub_1003CAE4C(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    v7 = *(v6 - 8);
    v8 = (v7 + 16);
    v9 = (v7 + 56);
    v10 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = *(v7 + 72);
    while (1)
    {
      v12 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
      (*v8)(v4, v10, v6);
      (*v9)(v4, 0, 1, v6);
      v13 = *&v12[qword_10078A548];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      sub_1000D9550(v4, 0, 5);

      sub_1000079B4(v4, &qword_100772140);
      v10 += v11;
      if (!--v5)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003CB008(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v10 = *(v59 - 8);
  __chkstk_darwin(v59);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIFocusGroupIdentifier();
  v57 = *(v13 - 8);
  v58 = v13;
  __chkstk_darwin(v13);
  v56 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
    {
      (*(v16 + 96))(v18, v15);
      v16 = v59;
      (*(v10 + 32))(v12, v18, v59);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
      (*(v7 + 8))(v9, v6);
      v21 = v60;
      v20 = v61;
      v22 = (*(v60 + 88))(v5, v61);
      if (v22 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:) && v22 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) && v22 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        goto LABEL_48;
      }

      (*(v21 + 8))(v5, v20);
      type metadata accessor for TTRIRemindersListEditableSectionCell();
      v23 = *(v63 + qword_10078A540);
      if (v23)
      {
        v24 = v23;
        v25 = UITableView.dequeueReusableCell<A>(_:)();

        (*(v10 + 8))(v12, v16);
LABEL_8:
        v26 = v25;
LABEL_25:
        sub_1003DA7FC(v26, v62);

        return v26;
      }

      __break(1u);
      goto LABEL_39;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
    {
      v29 = *(v16 + 8);
      v16 += 8;
      v29(v18, v15);
      type metadata accessor for TTRIRemindersListReminderCell();
      v30 = *(v63 + qword_10078A540);
      if (v30)
      {
        v31 = v30;
        v32 = UITableView.dequeueReusableCell<A>(_:)();

        v34 = v56;
        v33 = v57;
        v35 = v58;
        (*(v57 + 104))(v56, enum case for TTRIFocusGroupIdentifier.remindersList(_:), v58);
        v26 = v32;
        TTRIFocusGroupIdentifier.rawValue.getter();
        (*(v33 + 8))(v34, v35);
        v36 = String._bridgeToObjectiveC()();

        [v26 setTtrFocusGroupIdentifier:v36];

        goto LABEL_25;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
    {
      type metadata accessor for TTRIRemindersListCompletedCell();
      v37 = *(v63 + qword_10078A540);
      if (!v37)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_21:
      v38 = v37;
      v39 = UITableView.dequeueReusableCell<A>(_:)();

      v40 = *(v16 + 8);
      v26 = v39;
      v40(v18, v15);
      goto LABEL_25;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:))
    {
      type metadata accessor for TTRIRemindersListHashtagCollectionCell(0);
      v41 = *(v63 + qword_10078A540);
      if (v41)
      {
        v42 = v41;
        v43 = UITableView.dequeueReusableCell<A>(_:)();

        v45 = v56;
        v44 = v57;
        v46 = v58;
        (*(v57 + 104))(v56, enum case for TTRIFocusGroupIdentifier.remindersList(_:), v58);
        v26 = v43;
        TTRIFocusGroupIdentifier.rawValue.getter();
        (*(v44 + 8))(v45, v46);
        v47 = String._bridgeToObjectiveC()();

        [v26 setTtrFocusGroupIdentifier:v47];

        (*(v16 + 8))(v18, v15);
        goto LABEL_25;
      }

      goto LABEL_41;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:))
    {
      v19 = type metadata accessor for TTRIRemindersListTemplateStatusCell();
      v37 = *(v63 + qword_10078A540);
      if (v37)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
    {
      v19 = type metadata accessor for TTRIRemindersListTipCell();
      v37 = *(v63 + qword_10078A540);
      if (v37)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:))
    {
      v19 = type metadata accessor for TTRIRemindersListPublicTemplatePreviewStatusCell();
      v49 = *(v63 + qword_10078A540);
      if (v49)
      {
        goto LABEL_37;
      }

      __break(1u);
    }

    if (v19 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:))
    {
      goto LABEL_53;
    }

    type metadata accessor for TTRIRemindersListRecentlyDeletedDisclaimerCell();
    v49 = *(v63 + qword_10078A540);
    if (!v49)
    {
      goto LABEL_42;
    }

LABEL_37:
    v50 = v49;
    v25 = UITableView.dequeueReusableCell<A>(_:)();

    goto LABEL_8;
  }

LABEL_43:
  (*(v16 + 8))(v18, v15);
  do
  {
    if (qword_100767240 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_100003E30(v51, qword_100781340);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v52 = "Unexpected item type for cellForItem";
    for (i = 36; ; i = 41)
    {
      sub_1003F9818(v52, i, 2);
      __break(1u);
LABEL_48:
      if (v22 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        break;
      }

      if (qword_100767240 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_100003E30(v54, qword_100781340);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      v52 = "Unexpected sectionID type for cellForItem";
    }

    v19 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_53:
    ;
  }

  while (v19 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:));
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003CB93C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10000B0D8(result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v4);

    v2 = v4[4];
    sub_10000C36C(v4, v4[3]);
    v3 = static TTRITipKitSignalContext.RemindersList.keyboardShortcut.getter();
    (*(*(v2 + 8) + 968))(v3);

    return sub_100004758(v4);
  }

  return result;
}

uint64_t sub_1003CB9F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  sub_10000B0D8(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v6);

  v2 = v7;
  v3 = v8;
  sub_10000C36C(v6, v7);
  v4 = (*(*(v3 + 8) + 216))(v2);
  sub_100004758(v6);
  return v4;
}

uint64_t sub_1003CBA9C(uint64_t a1, void *a2)
{
  v3 = v2;
  v139 = a1;
  v5 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v146 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078A3A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v130 = &v126 - v10;
  v11 = sub_100058000(&unk_100781930);
  __chkstk_darwin(v11 - 8);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v144 = &v126 - v15;
  v148 = sub_100058000(&qword_100778EA0);
  v16 = *(v148 - 8);
  __chkstk_darwin(v148);
  v129 = &v126 - v17;
  v18 = sub_100058000(&unk_100781940);
  __chkstk_darwin(v18 - 8);
  v135 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v142 = &v126 - v21;
  v140 = sub_100058000(&qword_10078A3B0);
  v147 = *(v140 - 8);
  __chkstk_darwin(v140);
  v128 = &v126 - v22;
  v23 = sub_100058000(&qword_100781950);
  __chkstk_darwin(v23 - 8);
  v134 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v126 - v26;
  v28 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v28 - 8);
  v143 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v141 = &v126 - v31;
  __chkstk_darwin(v32);
  v138 = &v126 - v33;
  v34 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v34 - 8);
  v145 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v126 - v37;
  type metadata accessor for TTRIRemindersListReminderCell();
  v151 = swift_dynamicCastClass();
  if (v151)
  {
    v136 = v16;
    v126 = v13;
    v137 = v9;
    v132 = v8;
    v127 = v7;
    v133 = v5;
    v149 = v3;
    v39 = &v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter];
    v40 = *&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
    v41 = *(v39 + 4);
    sub_10000C36C(v39, v40);
    v42 = *(v41 + 8);
    v43 = v139;
    v44 = *(v42 + 512);
    v45 = a2;
    v131 = v38;
    v44(v43, v40, v42);
    v47 = *(v39 + 3);
    v46 = *(v39 + 4);
    sub_10000C36C(v39, v47);
    if ((*(*(v46 + 8) + 1040))(v43, v47))
    {
      v49 = *(v39 + 3);
      v48 = *(v39 + 4);
      sub_10000C36C(v39, v49);
      (*(*(v48 + 8) + 904))(v43, v49);
    }

    sub_1003DF088(&qword_100781958, type metadata accessor for TTRIRemindersListContentViewController);
    swift_unknownObjectRetain();
    TTRIRemindersListReminderCell.delegate.setter();
    v150 = v39;
    sub_10000B0D8(v39, &v152);
    v50 = *(&v153 + 1);
    v51 = v154;
    sub_10000C36C(&v152, *(&v153 + 1));
    TTRIRemindersListReminderCell.titleModule.getter();
    v52 = v147;
    v53 = v140;
    v54 = (*(v147 + 48))(v27, 1, v140);
    v55 = v148;
    v56 = v138;
    if (v54)
    {
      sub_1000079B4(v27, &qword_100781950);
      v57 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
    }

    else
    {
      v66 = v128;
      (*(v52 + 16))(v128, v27, v53);
      sub_1000079B4(v27, &qword_100781950);
      TTRRemindersListInCellModule.interface.getter();
      (*(v52 + 8))(v66, v53);
      swift_getObjectType();
      v52 = v147;
      v55 = v148;
      TTRIReminderCellTitleModuleInterface.item.getter();
      swift_unknownObjectRelease();
    }

    v67 = (*(v51[1] + 312))(v43, v56, v50);
    sub_1000079B4(v56, &qword_100772140);
    sub_100004758(&v152);
    v68 = v149;
    v69 = v132;
    if ((v67 & 1) == 0)
    {
LABEL_19:
      sub_10000B0D8(v150, &v152);
      v77 = *(&v153 + 1);
      v78 = v154;
      sub_10000C36C(&v152, *(&v153 + 1));
      v79 = v142;
      TTRIRemindersListReminderCell.notesModule.getter();
      v80 = v79;
      v81 = v136;
      v82 = v55;
      if ((*(v136 + 48))(v80, 1, v55))
      {
        sub_1000079B4(v80, &unk_100781940);
        v83 = type metadata accessor for TTRRemindersListViewModel.Item();
        v84 = v141;
        (*(*(v83 - 8) + 56))(v141, 1, 1, v83);
      }

      else
      {
        v85 = v43;
        v86 = v68;
        v87 = v69;
        v88 = v129;
        (*(v81 + 16))(v129, v80, v55);
        sub_1000079B4(v80, &unk_100781940);
        TTRRemindersListInCellModule.interface.getter();
        v89 = v88;
        v69 = v87;
        v68 = v86;
        v43 = v85;
        v82 = v55;
        (*(v81 + 8))(v89, v55);
        swift_getObjectType();
        v84 = v141;
        TTRIReminderCellNotesModuleInterface.item.getter();
        swift_unknownObjectRelease();
      }

      v90 = (*(v78[1] + 312))(v43, v84, v77);
      sub_1000079B4(v84, &qword_100772140);
      sub_100004758(&v152);
      v65 = v151;
      if ((v90 & 1) == 0)
      {
LABEL_29:
        v98 = v150;
        sub_10000B0D8(v150, &v152);
        v99 = *(&v153 + 1);
        v100 = v154;
        sub_10000C36C(&v152, *(&v153 + 1));
        v101 = v144;
        TTRIRemindersListReminderCell.hashtagModule.getter();
        v102 = v101;
        v103 = v137;
        if ((*(v137 + 48))(v102, 1, v69))
        {
          sub_1000079B4(v102, &unk_100781930);
          v104 = type metadata accessor for TTRRemindersListViewModel.Item();
          v105 = v143;
          (*(*(v104 - 8) + 56))(v143, 1, 1, v104);
        }

        else
        {
          v106 = v130;
          (*(v103 + 16))(v130, v102, v69);
          sub_1000079B4(v102, &unk_100781930);
          TTRRemindersListInCellModule.interface.getter();
          v107 = v106;
          v98 = v150;
          (*(v103 + 8))(v107, v69);
          swift_getObjectType();
          v105 = v143;
          dispatch thunk of TTRIReminderCellHashtagModuleInterface.item.getter();
          swift_unknownObjectRelease();
          v108 = type metadata accessor for TTRRemindersListViewModel.Item();
          (*(*(v108 - 8) + 56))(v105, 0, 1, v108);
        }

        v109 = (*(v100[1] + 312))(v43, v105, v99);
        sub_1000079B4(v105, &qword_100772140);
        sub_100004758(&v152);
        if ((v109 & 1) == 0)
        {
          goto LABEL_39;
        }

        sub_10000B0D8(v98, &v152);
        v110 = *(&v153 + 1);
        v111 = v154;
        sub_10000C36C(&v152, *(&v153 + 1));
        v112 = [v68 parentViewController];
        if (v112)
        {
          swift_getObjectType();
          v113 = swift_conformsToProtocol2();
          if (v113)
          {
            v114 = *(v113 + 16);
LABEL_38:
            v115 = *(v111[1] + 336);
            v116 = v126;
            v115(v43, v112, v114, v68, v110);
            swift_unknownObjectRelease();
            (*(v137 + 56))(v116, 0, 1, v69);
            TTRIRemindersListReminderCell.hashtagModule.setter();
            sub_100004758(&v152);
LABEL_39:
            v117 = v131;
            v118 = v145;
            sub_10000794C(v131, v145, &qword_100772738);
            v119 = type metadata accessor for TTRRemindersListViewModel.Reminder();
            v120 = *(v119 - 8);
            if ((*(v120 + 48))(v118, 1, v119) == 1)
            {
              sub_1000079B4(v118, &qword_100772738);
              v152 = 0u;
              v153 = 0u;
              v154 = 0;
            }

            else
            {
              *(&v153 + 1) = v119;
              v154 = &protocol witness table for TTRRemindersListViewModel.Reminder;
              v121 = sub_1000317B8(&v152);
              (*(v120 + 32))(v121, v118, v119);
            }

            v122 = v133;
            v123 = v146;
            TTRIRemindersListReminderCell.viewModel.setter();
            if (TTRIRemindersListReminderCell.isViewModelValid.getter())
            {
              v124 = v127;
              (*(v123 + 104))(v127, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v122);
              TTRRemindersListItemStateTracker.fullfil(_:of:)();
              (*(v123 + 8))(v124, v122);
            }

            sub_1000079B4(v117, &qword_100772738);
            return v65;
          }

          v112 = 0;
        }

        v114 = 0;
        goto LABEL_38;
      }

      sub_10000B0D8(v150, &v152);
      v91 = *(&v153 + 1);
      v92 = v154;
      sub_10000C36C(&v152, *(&v153 + 1));
      v93 = [v68 parentViewController];
      if (v93)
      {
        swift_getObjectType();
        v94 = swift_conformsToProtocol2();
        if (v94)
        {
          v95 = *(v94 + 24);
LABEL_28:
          v96 = *(v92[1] + 328);
          v97 = v135;
          v96(v43, v93, v95, v68, v91);
          swift_unknownObjectRelease();
          (*(v136 + 56))(v97, 0, 1, v82);
          TTRIRemindersListReminderCell.notesModule.setter();
          sub_100004758(&v152);
          goto LABEL_29;
        }

        v93 = 0;
      }

      v95 = 0;
      goto LABEL_28;
    }

    sub_10000B0D8(v150, &v152);
    v70 = *(&v153 + 1);
    v71 = v154;
    sub_10000C36C(&v152, *(&v153 + 1));
    v72 = [v68 parentViewController];
    if (v72)
    {
      swift_getObjectType();
      v73 = swift_conformsToProtocol2();
      if (v73)
      {
        v74 = *(v73 + 32);
LABEL_18:
        v75 = *(v71[1] + 320);
        v76 = v134;
        v75(v43, v72, v74, v68, v70);
        swift_unknownObjectRelease();
        (*(v52 + 56))(v76, 0, 1, v53);
        TTRIRemindersListReminderCell.titleModule.setter();
        sub_100004758(&v152);
        goto LABEL_19;
      }

      v72 = 0;
    }

    v74 = 0;
    goto LABEL_18;
  }

  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100003E30(v58, qword_100781340);
  v59 = a2;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412290;
    *(v62 + 4) = v59;
    *v63 = v59;
    v64 = v59;
    _os_log_impl(&_mh_execute_header, v60, v61, "Failed to cast cell to reminderListCell {cell: %@}", v62, 0xCu);
    sub_1000079B4(v63, &unk_10076DF80);
  }

  return 0;
}

uint64_t sub_1003CCB6C(uint64_t a1, uint64_t (**a2)(char *, uint64_t))
{
  v5 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically))
  {
    goto LABEL_2;
  }

  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v11 = qword_10078A540;
  v12 = *(a1 + qword_10078A540);
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_10041EAF8(a2, [v12 isEditing], v8);
  v13 = (*(v6 + 88))(v8, v5);
  if (v13 == enum case for TTRICollectionViewCellSelectionOption.disallowed(_:))
  {
    v9 = 0;
    v10 = 3;
    goto LABEL_15;
  }

  if (v13 == enum case for TTRICollectionViewCellSelectionOption.selectItem(_:))
  {
LABEL_2:
    v9 = 1;
    v10 = 3;
LABEL_15:
    v15 = *(a1 + qword_10078A548);
    if (v15)
    {
      v16 = v15;
      v17 = sub_1000DE654(a2);

      [v17 setSelectionStyle:v10];
      return v9;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v13 == enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
  {
    v14 = *(a1 + v11);
    if (!v14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v14 hasActiveDrop])
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_14;
  }

  if (v13 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
  {
    v10 = 0;
LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

LABEL_20:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003CCD88@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = a3;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  sub_10000C36C((v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v18 = *(a1 + qword_10078A540);
  if (!v18)
  {
    __break(1u);
    goto LABEL_22;
  }

  sub_10041EAF8(a2, [v18 isEditing], v16);
  v19 = (*(v14 + 88))(v16, v13);
  if (v19 == enum case for TTRICollectionViewCellSelectionOption.disallowed(_:))
  {
LABEL_3:
    v20 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v20 - 8) + 56))(v45, 1, 1, v20);
  }

  if (v19 != enum case for TTRICollectionViewCellSelectionOption.selectItem(_:))
  {
    if (v19 != enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:))
    {
      if (v19 == enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:))
      {
        v34 = v17[3];
        v35 = v17[4];
        sub_10000C36C(v17, v34);
        (*(*(v35 + 8) + 784))(a2, v34);
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    v28 = *(a1 + qword_10078A548);
    if (v28)
    {
      v29 = v28;
      v30 = sub_1000DE654(a2);

      if (v30)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v31 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell);
          if (v31 && (type metadata accessor for TTRIRemindersListReminderCell(), swift_dynamicCastClass() == v31))
          {
            v36 = v17[3];
            v37 = v17[4];
            sub_10000C36C(v17, v36);
            v38 = *(v37 + 8);
            v39 = *(v38 + 400);
            v40 = v31;
            v41 = v30;
            v39(a2, v36, v38);

            sub_1000079B4(v12, &qword_100772140);
          }

          else
          {
            swift_getObjectType();
            v33 = v43;
            v32 = v44;
            (*(v43 + 104))(v9, enum case for TTREditingStateOption.InputType.unspecified(_:), v44);
            dispatch thunk of TTRIShowRemindersEditableCell.beginEditingPrimaryString(_:)();

            (*(v33 + 8))(v9, v32);
          }
        }

        else
        {
        }
      }

      goto LABEL_3;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v22 = *(a1 + qword_10078A548);
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = sub_1000DE654(a2);

  if (v24)
  {
    [v24 setSelectionStyle:3];
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.Item();
  v26 = *(v25 - 8);
  v27 = v45;
  (*(v26 + 16))(v45, a2, v25);
  return (*(v26 + 56))(v27, 0, 1, v25);
}

void sub_1003CD2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + qword_10078A540);
  if (!v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (![v10 isEditing])
  {
    return;
  }

  if (!*&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController])
  {
LABEL_10:
    __break(1u);
    return;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 16))(v9, a2, v11);
  swift_storeEnumTagMultiPayload();

  sub_100069304(v9);

  sub_1003DEF7C(v9, type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState);
  v12 = [v3 parentViewController];
  if (v12)
  {
    v13 = v12;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10037DD70(1, 0);
      sub_10037FFC0();
    }
  }
}

uint64_t sub_1003CD43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22 = a3;
  v21[1] = a1;
  v21[2] = a2;
  v25 = a6;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v21[0] = v7;
  v8 = *(v7 - 8);
  v21[3] = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRReminderSwipeAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v14, a1, v11);
  (*(v8 + 16))(v10, v22, v7);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v12 + 32))(v18 + v16, v14, v11);
  (*(v8 + 32))(v18 + v17, v10, v21[0]);

  v19 = TTRReminderSwipeAction.makeContextualAction(handler:)();

  *v25 = v19;
  return result;
}

void sub_1003CD6A0(char *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = qword_10078A548;
  v14 = *&a1[qword_10078A548];
  if (!v14)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  v16 = sub_1000DE654(a2);

  if (!v16)
  {
    return;
  }

  type metadata accessor for TTRIRemindersListReminderCell();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

    return;
  }

  v18 = v17;
  [a1 convertPoint:v17 toCoordinateSpace:{a3, a4}];
  v20 = v19;
  v22 = v21;
  v40 = v5;
  v23 = (v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v25 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v24 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C(v23, v25);
  v26 = *&a1[v13];
  if (!v26)
  {
    goto LABEL_15;
  }

  v27 = v26;
  v28 = sub_1000DEE9C(1);

  v29 = *&a1[qword_10078A540];
  if (!v29)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v30 = (*(*(v24 + 8) + 840))(a2, v18, v28, [v29 isEditing], v25, v20, v22);
  v32 = v31;
  v34 = v33;

  if (v30)
  {
    if (v34)
    {
      sub_1003DE74C(v32, 1);
      v35 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v35 - 8) + 56))(v12, 1, 1, v35);
    }

    else
    {
      sub_1003DE74C(v32, 0);
      v36 = type metadata accessor for TTRRemindersListViewModel.Item();
      v37 = *(v36 - 8);
      (*(v37 + 16))(v12, a2, v36);
      (*(v37 + 56))(v12, 0, 1, v36);
    }

    v38 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
    v39 = v40;
    swift_beginAccess();
    sub_10000D184(v12, v39 + v38, &qword_100772140);
    swift_endAccess();
  }
}

void sub_1003CD9B0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_1003CDA40(a6, a7, a2, a3, a4);
  }
}

void sub_1003CDA40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v80 = a3;
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v76 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListPostponeType();
  v79 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRReminderSwipeAction();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for TTRReminderSwipeAction.delete(_:))
  {
    v21 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v22 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v21);
    (*(*(v22 + 8) + 88))(a2, a4, a5, v21);
    return;
  }

  v23 = a2;
  v75 = a4;
  if (v20 == enum case for TTRReminderSwipeAction.showDetails(_:))
  {
    v24 = v5;
    v25 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
    v26 = *&v25[qword_10078A548];
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v29 = sub_1000DE654(a2);

      if (v29)
      {
        type metadata accessor for TTRIRemindersListReminderCell();
        v30 = swift_dynamicCastClass();
        v31 = a5;
        v32 = v75;
        if (v30)
        {
          v33 = (v24 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
          v34 = *(v24 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
          v35 = v33[4];
          sub_10000C36C(v33, v34);
          (*(*(v35 + 8) + 128))(a2, v80, v32, v31, v34);

          return;
        }

        v38 = 0;
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_44;
  }

  if (v20 == enum case for TTRReminderSwipeAction.flag(_:))
  {
    v36 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v37 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v36);
    v38 = (*(*(v37 + 8) + 96))(1, a2, v36);
  }

  else
  {
    if (v20 == enum case for TTRReminderSwipeAction.unflag(_:))
    {
      v39 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v40 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v39);
      v38 = (*(*(v40 + 8) + 96))(0, a2, v39);
      goto LABEL_40;
    }

    if (v20 == enum case for TTRReminderSwipeAction.indent(_:))
    {
      v41 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v42 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v41);
      sub_100058000(&qword_100772150);
      v43 = type metadata accessor for TTRRemindersListViewModel.Item();
      v44 = *(v43 - 8);
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_10062D400;
      (*(v44 + 16))(v46 + v45, v23, v43);
      v47 = (*(*(v42 + 8) + 744))(v46, v41);
    }

    else
    {
      if (v20 != enum case for TTRReminderSwipeAction.outdent(_:))
      {
        if (v20 == enum case for TTRReminderSwipeAction.postponeToTomorrow(_:))
        {
          v55 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
          v56 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
          sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v55);
          v57 = &enum case for TTRRemindersListPostponeType.tomorrow(_:);
        }

        else
        {
          if (v20 != enum case for TTRReminderSwipeAction.postponeToThisWeekend(_:) && v20 != enum case for TTRReminderSwipeAction.postponeToNextWeekend(_:))
          {
            if (v20 != enum case for TTRReminderSwipeAction.setCustomDateAndTime(_:))
            {
              if (v20 == enum case for TTRReminderSwipeAction.permanentlyHide(_:))
              {
                v70 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
                v71 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
                sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v70);
                v72 = v76;
                static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
                (*(*(v71 + 8) + 264))(a2, v72, v75, a5, v70);
                (*(v77 + 8))(v72, v78);
                return;
              }

              if (v20 == enum case for TTRReminderSwipeAction.moveToAnyList(_:))
              {
                v73 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
                v74 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
                sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v73);
                (*(*(v74 + 8) + 272))(a2, v80, v75, a5, v73);
                return;
              }

LABEL_45:
              _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return;
            }

            v60 = v5;
            v61 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
            v62 = *&v61[qword_10078A548];
            if (v62)
            {
              v63 = v61;
              v64 = v62;
              v65 = sub_1000DE654(a2);

              if (v65)
              {
                type metadata accessor for TTRIRemindersListReminderCell();
                if (swift_dynamicCastClass())
                {
                  v66 = (v60 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
                  v67 = *(v60 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
                  v68 = v66[4];
                  sub_10000C36C(v66, v67);
                  v69 = v76;
                  static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
                  (*(*(v68 + 8) + 160))(v23, v69, v75, a5, v67);

                  (*(v77 + 8))(v69, v78);
                  return;
                }
              }

LABEL_39:
              v38 = 0;
              goto LABEL_40;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          v55 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
          v56 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
          sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v55);
          v57 = &enum case for TTRRemindersListPostponeType.weekend(_:);
        }

        v59 = v79;
        (*(v79 + 104))(v14, *v57, v12);
        (*(*(v56 + 8) + 712))(a2, v14, v75, a5, v55);
        (*(v59 + 8))(v14, v12);
        return;
      }

      v48 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v49 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v48);
      sub_100058000(&qword_100772150);
      v50 = type metadata accessor for TTRRemindersListViewModel.Item();
      v51 = *(v50 - 8);
      v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10062D400;
      (*(v51 + 16))(v53 + v52, v23, v50);
      v47 = (*(*(v49 + 8) + 752))(v53, v48);
    }

    v54 = v47;

    v38 = v54;
  }

LABEL_40:
  v32 = v75;
LABEL_41:
  v32(v38 & 1);
}

uint64_t sub_1003CE350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v46 = a1;
  v3 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v3 - 8);
  v44 = &v43 - v4;
  v5 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  v22 = (*(v19 + 88))(v21, v18);
  if (v22 != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:))
  {
    if (v22 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:))
    {
      (*(v19 + 96))(v21, v18);
      v18 = v11;
      (*(v12 + 32))(v14, v21, v11);
      if (TTRRemindersListViewModel.SectionHeader.isVisible.getter())
      {
        result = type metadata accessor for TTRIRemindersListSectionHeader();
        v34 = *(v46 + qword_10078A540);
        if (v34)
        {
          v35 = v34;
          v26 = UITableView.dequeueReusableHeaderFooterView<A>(_:)();

          TTRRemindersListViewModel.SectionHeader.title.getter();
          v36 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
          swift_beginAccess();
          sub_10000794C(v26 + v36, v7, &unk_10076B050);
          swift_beginAccess();
          sub_100019180(v10, v26 + v36, &unk_10076B050);
          swift_endAccess();
          sub_100296984(v7);
          sub_1000079B4(v7, &unk_10076B050);
          sub_1000079B4(v10, &unk_10076B050);
          v37 = v44;
          TTRRemindersListViewModel.SectionHeader.id.getter();
          v38 = type metadata accessor for TTRRemindersListViewModel.SectionID();
          (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
          v39 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_sectionID;
          swift_beginAccess();
          sub_10000D184(v37, v26 + v39, &qword_10076B070);
          swift_endAccess();
          sub_10029810C(v45 == 0);
          v40 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
          v41 = 0;
          if (v40)
          {
            v42 = v43;
            v41 = &off_100725088;
          }

          *(v26 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_delegate + 8) = v41;
          swift_unknownObjectWeakAssign();
          sub_1002968A4();
          swift_unknownObjectRelease();
          (*(v12 + 8))(v14, v11);
          return v26;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (v22 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
      {
        return 0;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(v12 + 8))(v14, v18);
    return 0;
  }

  (*(v19 + 96))(v21, v18);
  (*(v12 + 32))(v17, v21, v11);
  if ((TTRRemindersListViewModel.SectionHeader.isVisible.getter() & 1) == 0)
  {
    (*(v12 + 8))(v17, v11);
    return 0;
  }

  result = type metadata accessor for TTRIRemindersListSectionHeader();
  v24 = *(v46 + qword_10078A540);
  if (v24)
  {
    v25 = v24;
    v26 = UITableView.dequeueReusableHeaderFooterView<A>(_:)();

    TTRRemindersListViewModel.SectionHeader.title.getter();
    v27 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_title;
    swift_beginAccess();
    sub_10000794C(v26 + v27, v7, &unk_10076B050);
    swift_beginAccess();
    sub_100019180(v10, v26 + v27, &unk_10076B050);
    swift_endAccess();
    sub_100296984(v7);
    sub_1000079B4(v7, &unk_10076B050);
    sub_1000079B4(v10, &unk_10076B050);
    v28 = v44;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v29 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    v30 = OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_sectionID;
    swift_beginAccess();
    sub_10000D184(v28, v26 + v30, &qword_10076B070);
    swift_endAccess();
    sub_10029810C(v45 == 0);
    v31 = TTRRemindersListViewModel.SectionHeader.isTappable.getter();
    v32 = 0;
    if (v31)
    {
      v33 = v43;
      v32 = &off_100725088;
    }

    *(v26 + OBJC_IVAR____TtC9Reminders30TTRIRemindersListSectionHeader_delegate + 8) = v32;
    swift_unknownObjectWeakAssign();
    sub_1002968A4();
    swift_unknownObjectRelease();
    (*(v12 + 8))(v17, v11);
    return v26;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1003CEA9C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v26 - v14;
  [a2 locationInView:{a1, v13}];
  v16 = [a1 hitTest:0 withEvent:?];
  if (v16 && (v17 = v16, type metadata accessor for TTRIRemindersListReminderCell(), v18 = static TTRIRemindersListReminderCell.ignoreDragging(view:)(), v17, (v18 & 1) != 0))
  {
    result = _swiftEmptyArrayStorage;
  }

  else
  {
    v20 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v21 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v20);
    result = (*(*(v21 + 8) + 552))(a3, v20);
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_7;
  }

  v24 = result;
  v25 = _CocoaArrayWrapper.endIndex.getter();
  result = v24;
  if (!v25)
  {
LABEL_7:
    v22 = result;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    swift_beginAccess();
    sub_10058B6B8(v15, v11);
    swift_endAccess();
    (*(v9 + 8))(v15, v8);
    v23._countAndFlagsBits = 0x5F28747265736E69;
    v23._object = 0xEA0000000000293ALL;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v23);
    return v22;
  }

  return result;
}

uint64_t sub_1003CECE8(char *a1, uint64_t a2)
{
  v242 = a1;
  v3 = sub_100058000(&qword_1007818D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v234 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v267 = (&v234 - v7);
  __chkstk_darwin(v8);
  v266 = (&v234 - v9);
  __chkstk_darwin(v10);
  v265 = &v234 - v11;
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v256 = &v234 - v13;
  v14 = sub_100058000(&unk_1007818E0);
  v258 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v16 = (&v234 - v15);
  v261 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v252 = *(v261 - 8);
  __chkstk_darwin(v261);
  v244 = &v234 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v243 = &v234 - v19;
  v20 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v20 - 8);
  v253 = &v234 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v249 = &v234 - v23;
  v260 = type metadata accessor for IndexPath();
  v251 = *(v260 - 8);
  __chkstk_darwin(v260);
  v240 = &v234 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v241 = &v234 - v26;
  v250 = sub_100058000(&qword_10076BC90);
  v254 = *(v250 - 8);
  __chkstk_darwin(v250);
  v263 = (&v234 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v30 = &v234 - v29;
  v271 = type metadata accessor for TTRRemindersListViewModel.Item();
  v269 = *(v271 - 8);
  __chkstk_darwin(v271);
  v264 = &v234 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v268 = &v234 - v33;
  __chkstk_darwin(v34);
  v257 = (&v234 - v35);
  __chkstk_darwin(v36);
  v262 = &v234 - v37;
  __chkstk_darwin(v38);
  v40 = &v234 - v39;
  __chkstk_darwin(v41);
  v255 = (&v234 - v42);
  v43 = sub_100058000(&qword_100772108);
  __chkstk_darwin(v43);
  v45 = &v234 - v44;
  v270 = a2;
  sub_1003B3FA0(&unk_100772110, &unk_10063D370, &unk_100781910, &type metadata accessor for TTRRemindersListViewModel.Item, sub_1003B823C, sub_1001AF0C4, &unk_100772130, &v234 - v44, &unk_1006344B8, sub_1001B33C4, &qword_100772108);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v63 = *&v45[*(sub_100058000(&unk_100772130) + 48)];
      v64 = v269;
      (*(v269 + 32))(v264, v45, v271);
      v65 = sub_1003B74A4(&unk_1007818E0, &unk_10063D348, sub_1004A24F0, sub_1003C02F0);
      v66 = v65[2];
      if (v66)
      {
        v270 = v63;
        v273 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v67 = v65 + ((*(v258 + 80) + 32) & ~*(v258 + 80));
        v68 = v258[9];
        do
        {
          sub_10000794C(v67, v16, &unk_1007818E0);
          v69 = *v16;
          sub_1000079B4(v16, &unk_1007818E0);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v67 += v68;
          --v66;
        }

        while (v66);

        v70 = v273;
        v64 = v269;
        v63 = v270;
      }

      else
      {

        v70 = _swiftEmptyArrayStorage;
      }

      v166 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v165 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v166);
      (*(*(v165 + 8) + 616))(&v273, v70, v166);

      v167 = v274;
      v168 = v275;
      sub_10000C36C(&v273, v274);
      v169 = v264;
      (*(v168 + 72))(v264, v63, v167, v168);
      (*(v64 + 8))(v169, v271);
    }

    else
    {
      v85 = sub_1003B74A4(&unk_1007818E0, &unk_10063D348, sub_1004A24F0, sub_1003C02F0);
      v86 = *(v85 + 2);
      if (v86)
      {
        v273 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v87 = *(v258 + 80);
        v266 = v85;
        v88 = &v85[(v87 + 32) & ~v87];
        v89 = v258[9];
        v30 = &unk_10063D348;
        do
        {
          sub_10000794C(v88, v16, &unk_1007818E0);
          v90 = *v16;
          sub_1000079B4(v16, &unk_1007818E0);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v88 += v89;
          --v86;
        }

        while (v86);

        v91 = v273;
      }

      else
      {

        v91 = _swiftEmptyArrayStorage;
      }

      v176 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v177 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v176);
      (*(*(v177 + 8) + 616))(&v273, v91, v176);

      v178 = v274;
      v179 = v275;
      sub_10000C36C(&v273, v274);
      v180 = (*(v179 + 24))(v178, v179);
      v181 = v274;
      v182 = v275;
      sub_10000C36C(&v273, v274);
      v54 = v269;
      if (v180)
      {
        v48 = (*(v182 + 64))(v181, v182);
        i = 0;
        v184 = *(v48 + 16);
        v266 = (v54 + 32);
        v269 = v54 + 8;
        v47 = &unk_1007818F0;
        v53 = &unk_10063E550;
        if (v184)
        {
          goto LABEL_166;
        }

LABEL_169:
        v193 = sub_100058000(&unk_1007818F0);
        (*(*(v193 - 8) + 56))(v5, 1, 1, v193);
        for (i = v184; ; ++i)
        {
          v194 = v267;
          sub_100016588(v5, v267, &qword_1007818D8);
          v195 = sub_100058000(&unk_1007818F0);
          if ((*(*(v195 - 8) + 48))(v194, 1, v195) == 1)
          {

            return sub_100004758(&v273);
          }

          v30 = v184;
          v185 = v48;
          v186 = *v194;
          v187 = v194 + *(v195 + 48);
          v54 = v5;
          v188 = v268;
          v189 = v271;
          (*v266)(v268, v187, v271);
          sub_1003B6584(v186, v188);

          v48 = v185;
          v184 = v30;
          v190 = v188;
          v5 = v54;
          (*v269)(v190, v189);
          if (i == v30)
          {
            goto LABEL_169;
          }

LABEL_166:
          if ((i & 0x8000000000000000) != 0)
          {
            break;
          }

          if (i >= *(v48 + 16))
          {
            goto LABEL_212;
          }

          v191 = sub_100058000(&unk_1007818F0);
          v192 = *(v191 - 8);
          sub_10000794C(v48 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * i, v5, &unk_1007818F0);
          (*(v192 + 56))(v5, 0, 1, v191);
        }

LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
        goto LABEL_222;
      }

      if ((*(v182 + 40))(v181, v182))
      {
        v196 = v274;
        v197 = v275;
        sub_10000C36C(&v273, v274);
        (*(v197 + 80))(v196, v197);
      }
    }

    return sub_100004758(&v273);
  }

  if (!EnumCaseMultiPayload)
  {
    v47 = *&v45[*(sub_100058000(&unk_100772130) + 48)];
    v48 = v269;
    v49 = (v269 + 32);
    v50 = *(v269 + 32);
    v30 = v257;
    v50(v257, v45, v271);
    v51 = sub_1003B823C(1);
    v52 = v51[2];
    if (v52)
    {
      v53 = v51;
      v54 = v271;
      if (v52 != 1)
      {
LABEL_9:
        v59 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
        v60 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
        sub_10000C36C((v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v59);
        v61 = v256;
        (*(v48 + 16))(v256, v30, v54);
        (*(v48 + 56))(v61, 0, 1, v54);
        (*(*(v60 + 8) + 600))(v53, v61, v47, 0, 0, v59);

        sub_1000079B4(v61, &qword_100772140);
        return (*(v48 + 8))(v30, v54);
      }

      if (qword_100767240 == -1)
      {
LABEL_6:
        v55 = type metadata accessor for Logger();
        sub_100003E30(v55, qword_100781340);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&_mh_execute_header, v56, v57, "Unexpected: handling single item move in treeView(_:performDropWith:)", v58, 2u);
        }

        goto LABEL_9;
      }

LABEL_222:
      swift_once();
      goto LABEL_6;
    }

    v264 = v50;
    v267 = v49;

    v198 = sub_1003B74A4(&unk_1007818E0, &unk_10063D348, sub_1004A24F0, sub_1003C02F0);
    v199 = v198[2];
    if (v199)
    {
      v263 = v47;
      v273 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v200 = v198 + ((*(v258 + 80) + 32) & ~*(v258 + 80));
      v201 = v258[9];
      do
      {
        sub_10000794C(v200, v16, &unk_1007818E0);
        v202 = *v16;
        sub_1000079B4(v16, &unk_1007818E0);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v200 += v201;
        --v199;
      }

      while (v199);

      v203 = v273;
      v48 = v269;
      v30 = v257;
      v47 = v263;
    }

    else
    {

      v203 = _swiftEmptyArrayStorage;
    }

    v221 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v53 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v221);
    (*(v53[1] + 616))(&v273, v203, v221);

    v222 = v274;
    v223 = v275;
    sub_10000C36C(&v273, v274);
    v224 = (*(v223 + 48))(v30, v47, v222, v223);
    v47 = 0;
    v30 = *(v224 + 16);
    v48 += 8;
    v54 = &unk_1007818F0;
    while (1)
    {
      v225 = v266;
      if (v47 == v30)
      {
        v226 = sub_100058000(&unk_1007818F0);
        (*(*(v226 - 8) + 56))(v225, 1, 1, v226);
        v47 = v30;
      }

      else
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          goto LABEL_214;
        }

        if (v47 >= *(v224 + 16))
        {
          goto LABEL_215;
        }

        v227 = sub_100058000(&unk_1007818F0);
        v228 = *(v227 - 8);
        sub_10000794C(v224 + ((*(v228 + 80) + 32) & ~*(v228 + 80)) + *(v228 + 72) * v47, v225, &unk_1007818F0);
        v47 = (v47 + 1);
        (*(v228 + 56))(v225, 0, 1, v227);
      }

      v229 = v265;
      sub_100016588(v225, v265, &qword_1007818D8);
      v230 = sub_100058000(&unk_1007818F0);
      if ((*(*(v230 - 8) + 48))(v229, 1, v230) == 1)
      {
        break;
      }

      v53 = *v229;
      v231 = v229 + *(v230 + 48);
      v232 = v268;
      v233 = v271;
      (v264)(v268, v231, v271);
      sub_1003B6584(v53, v232);

      (*v48)(v232, v233);
    }

    (*v48)(v257, v271);

    return sub_100004758(&v273);
  }

  v71 = v269;
  v72 = v255;
  v264 = *(v269 + 32);
  v265 = (v269 + 32);
  (v264)(v255, v45, v271);
  v73 = sub_1003B5934(1);
  v74 = v73[2];
  if (!v74)
  {

    v170 = sub_1003B74A4(&unk_1007818E0, &unk_10063D348, sub_1004A24F0, sub_1003C02F0);
    v171 = v170[2];
    if (v171)
    {
      v273 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v172 = v170 + ((*(v258 + 80) + 32) & ~*(v258 + 80));
      v173 = v258[9];
      do
      {
        sub_10000794C(v172, v16, &unk_1007818E0);
        v174 = *v16;
        sub_1000079B4(v16, &unk_1007818E0);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v172 += v173;
        --v171;
      }

      while (v171);

      v175 = v273;
      v72 = v255;
    }

    else
    {

      v175 = _swiftEmptyArrayStorage;
    }

    v204 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v205 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v204);
    (*(*(v205 + 8) + 616))(&v273, v175, v204);

    v206 = v274;
    v207 = v275;
    sub_10000C36C(&v273, v274);
    result = (*(v207 + 56))(v72, v206, v207);
    v208 = *&v242[qword_10078A548];
    v209 = v271;
    if (!v208)
    {
      goto LABEL_235;
    }

    v210 = result;
    v211 = v208;
    v212 = sub_1000DE654(v72);

    if (v212)
    {
      [v212 bounds];
      result = CGRect.center.getter();
      v214 = v213;
      v216 = v215;
      if (v210 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        v217 = result;
        if (result)
        {
          goto LABEL_186;
        }
      }

      else
      {
        v217 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v217)
        {
LABEL_186:
          if (v217 < 1)
          {
            goto LABEL_232;
          }

          for (j = 0; j != v217; ++j)
          {
            if ((v210 & 0xC000000000000001) != 0)
            {
              v219 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v219 = *(v210 + 8 * j + 32);
            }

            v220 = v219;
            sub_1003B6F50(v219, v72, v214, v216, 0.0, 0.0);
          }
        }
      }

      (*(v269 + 8))(v72, v271);
      return sub_100004758(&v273);
    }

    (*(v269 + 8))(v72, v209);

    return sub_100004758(&v273);
  }

  v273 = _swiftEmptyArrayStorage;
  sub_1004A1C48(0, v74, 0);
  v75 = v74;
  v76 = v273;
  v77 = (*(v254 + 80) + 32) & ~*(v254 + 80);
  v248 = v73;
  v78 = v73 + v77;
  v79 = *(v254 + 72);
  v267 = (v71 + 16);
  v268 = v79;
  v247 = v73 + v77;
  v246 = v75;
  v80 = v271;
  v81 = v250;
  do
  {
    sub_10000794C(v78, v30, &qword_10076BC90);
    v82 = &v30[*(v81 + 40)];
    v266 = *v267;
    v266(v40, v82, v80);
    sub_1000079B4(v30, &qword_10076BC90);
    v273 = v76;
    v84 = v76[2];
    v83 = v76[3];
    if (v84 >= v83 >> 1)
    {
      sub_1004A1C48(v83 > 1, v84 + 1, 1);
      v81 = v250;
      v76 = v273;
    }

    v76[2] = v84 + 1;
    (v264)(v76 + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v84, v40, v80);
    v78 += v268;
    --v75;
  }

  while (v75);
  v92 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v53 = *(v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C((v259 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v92);
  v47 = v255;
  v93 = (*(v53[1] + 608))(v76, v255, v92);

  v30 = v242;
  if ((v93 & 1) == 0)
  {
    (*(v269 + 8))(v47, v80);
  }

  v94 = 0;
  v259 = qword_10078A548;
  v258 = (v252 + 8);
  v257 = (v251 + 56);
  v239 = (v251 + 48);
  v237 = (v251 + 32);
  v236 = (v251 + 8);
  v245 = (v269 + 8);
  v54 = v244;
  v48 = v243;
  v95 = v250;
  while (1)
  {
    if (v94 >= v248[2])
    {
      goto LABEL_213;
    }

    v100 = v48;
    v264 = v94;
    v101 = v263;
    sub_10000794C(&v247[v94 * v268], v263, &qword_10076BC90);
    result = (v266)(v262, v101 + *(v95 + 40), v80);
    v102 = *&v30[v259];
    if (!v102)
    {
      goto LABEL_233;
    }

    v265 = v102;
    v269 = sub_1000C84C8();
    v53 = v103;
    v105 = v104;
    v107 = v106;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (!v53[2] || (v108 = sub_1003AB294(v48), (v109 & 1) == 0))
    {

      v256 = *v258;
      (v256)(v48, v261);
LABEL_44:
      v118 = v249;
      v254 = *v257;
      (v254)(v249, 1, 1, v260);
LABEL_45:
      result = sub_1000079B4(v118, &unk_100771B10);
      goto LABEL_46;
    }

    v252 = v105;
    v110 = v30;
    v111 = *(v53[7] + 8 * v108);
    v48 = v258;
    v112 = *v258;

    v256 = v112;
    (v112)(v100, v261);
    v113 = sub_1000A97B4(v111);

    v251 = v113;
    if (!v113)
    {

      v30 = v110;
      v47 = v255;
      v48 = v100;
      goto LABEL_44;
    }

    v238 = v53;
    v114 = v252;
    v30 = v110;
    if (!*(v252 + 16))
    {
      v119 = 1;
      v118 = v249;
      v47 = v255;
      goto LABEL_117;
    }

    result = sub_1003B3EDC(v251);
    v47 = v255;
    if ((v115 & 1) == 0)
    {
      v119 = 1;
LABEL_116:
      v118 = v249;
      goto LABEL_117;
    }

    v235 = *(*(v114 + 56) + 8 * result);
    if ((v107 & 1) == 0)
    {
      break;
    }

    v30 = v251;
    Strong = swift_weakLoadStrong();

    for (k = 0; Strong; v47 = v255)
    {
      v136 = __OFADD__(k++, 1);
      if (v136)
      {
        goto LABEL_220;
      }

      v54 = Strong;
      swift_beginAccess();
      v47 = *(Strong + 64);
      if (v47 >> 62)
      {
        v137 = _CocoaArrayWrapper.endIndex.getter();
        if (!v137)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v137 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v137)
        {
          goto LABEL_57;
        }
      }

      v254 = v47 & 0xFFFFFFFFFFFFFF8;

      v138 = 0;
      do
      {
        if ((v47 & 0xC000000000000001) != 0)
        {
          v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v53 = (v138 + 1);
          if (__OFADD__(v138, 1))
          {
            goto LABEL_203;
          }
        }

        else
        {
          if (v138 >= *(v254 + 16))
          {
            goto LABEL_209;
          }

          v48 = v47[v138 + 4];

          v53 = (v138 + 1);
          if (__OFADD__(v138, 1))
          {
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
            goto LABEL_211;
          }
        }

        if (v48 == v30)
        {

LABEL_57:

          goto LABEL_58;
        }

        v136 = __OFADD__(k, 1);
        v139 = k + 1;
        if (v136)
        {
          goto LABEL_204;
        }

        if (*(v48 + 48))
        {
          v272 = 0;
          sub_10023C598(v48, &v272);
          v140 = v272;
          *(v48 + 40) = v272;
          *(v48 + 48) = 0;
        }

        else
        {
          v140 = *(v48 + 40);
        }

        v136 = __OFADD__(v139, v140);
        k = v139 + v140;
        if (v136)
        {
          goto LABEL_205;
        }

        ++v138;
      }

      while (v53 != v137);

LABEL_58:
      Strong = swift_weakLoadStrong();

      v30 = v54;
    }

    result = k - 1;
    if (__OFSUB__(k, 1))
    {
      goto LABEL_230;
    }

    v80 = v271;
    v30 = v242;
    v54 = v244;
    v100 = v243;
    v118 = v249;
    if (result < 0)
    {
      v119 = 1;
    }

    else
    {
      IndexPath.init(row:section:)();
      v119 = 0;
    }

LABEL_117:
    v151 = v260;
    v254 = *v257;
    (v254)(v118, v119, 1, v260);

    if ((*v239)(v118, 1, v151) == 1)
    {

      v48 = v100;
      goto LABEL_45;
    }

    v152 = v241;
    (*v237)(v241, v118, v151);
    v153 = v265;
    v154 = *&v265[qword_100771730];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v156 = [v154 cellForRowAtIndexPath:isa];

    v157 = v243;
    v54 = v244;

    v158 = v151;
    v48 = v157;
    result = (*v236)(v152, v158);
    v159 = v262;
    if (v156)
    {

      sub_1003B6584(*v263, v159);
      v97 = *v245;
      v48 = v157;
      (*v245)(v159, v80);
      goto LABEL_30;
    }

LABEL_46:
    v120 = *&v30[v259];
    if (!v120)
    {
      goto LABEL_234;
    }

    v251 = v120;
    v252 = sub_1000C84C8();
    v122 = v121;
    v269 = v123;
    v125 = v124;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    if (*(v122 + 2) && (v265 = v122, v126 = sub_1003AB294(v54), (v127 & 1) != 0))
    {
      v128 = *(*(v265 + 7) + 8 * v126);

      (v256)(v54, v261);
      v129 = sub_1000A97B4(v128);

      if (v129)
      {
        v130 = v269;
        if (*(v269 + 16) && (result = sub_1003B3EDC(v129), (v131 & 1) != 0))
        {
          v238 = *(*(v130 + 56) + 8 * result);
          v96 = v253;
          if (v125)
          {
            v132 = swift_weakLoadStrong();

            v30 = v129;
            v235 = v129;
            v133 = 0;
            if (!v132)
            {
LABEL_54:

              result = v133 - 1;
              v30 = v242;
              if (__OFSUB__(v133, 1))
              {
                goto LABEL_231;
              }

              v54 = v244;
              v48 = v243;
              v134 = v260;
              if (result < 0)
              {
                v135 = 1;
              }

              else
              {
                IndexPath.init(row:section:)();
                v135 = 0;
              }

LABEL_107:
              (v254)(v96, v135, 1, v134);

              if ((*v239)(v96, 1, v134) != 1)
              {
                v53 = v240;
                (*v237)(v240, v96, v134);
                v145 = v251;
                v146 = *&v251[qword_100771730];
                v147 = IndexPath._bridgeToObjectiveC()().super.isa;
                v148 = [v146 cellForRowAtIndexPath:v147];

                (*v236)(v53, v134);
                if (v148)
                {
                  [v148 bounds];
                  CGRect.center.getter();
                  sub_1003B6F50(*v263, v47, v149, v150, 0.0, 0.0);
                }

                v97 = *v245;
                (*v245)(v262, v80);
                v54 = v244;
                v48 = v243;
                goto LABEL_30;
              }

              v97 = *v245;
              (*v245)(v262, v80);
              goto LABEL_29;
            }

            while (1)
            {
              v136 = __OFADD__(v133++, 1);
              if (v136)
              {
                goto LABEL_221;
              }

              v54 = v132;
              swift_beginAccess();
              v47 = *(v132 + 64);
              if (v47 >> 62)
              {
                v141 = _CocoaArrayWrapper.endIndex.getter();
                if (v141)
                {
LABEL_85:
                  v256 = (v47 & 0xFFFFFFFFFFFFFF8);

                  v142 = 0;
                  while (1)
                  {
                    if ((v47 & 0xC000000000000001) != 0)
                    {
                      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      v53 = (v142 + 1);
                      if (__OFADD__(v142, 1))
                      {
                        goto LABEL_206;
                      }
                    }

                    else
                    {
                      if (v142 >= *(v256 + 2))
                      {
                        goto LABEL_210;
                      }

                      v48 = v47[v142 + 4];

                      v53 = (v142 + 1);
                      if (__OFADD__(v142, 1))
                      {
                        goto LABEL_206;
                      }
                    }

                    if (v48 == v30)
                    {
                      break;
                    }

                    v136 = __OFADD__(v133, 1);
                    v143 = v133 + 1;
                    if (v136)
                    {
                      goto LABEL_207;
                    }

                    if (*(v48 + 48))
                    {
                      v272 = 0;
                      sub_10023C598(v48, &v272);
                      v144 = v272;
                      *(v48 + 40) = v272;
                      *(v48 + 48) = 0;
                    }

                    else
                    {
                      v144 = *(v48 + 40);
                    }

                    v136 = __OFADD__(v143, v144);
                    v133 = v143 + v144;
                    if (v136)
                    {
                      goto LABEL_208;
                    }

                    ++v142;
                    if (v53 == v141)
                    {

                      goto LABEL_101;
                    }
                  }

LABEL_101:
                  v80 = v271;
                  goto LABEL_81;
                }
              }

              else
              {
                v141 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v141)
                {
                  goto LABEL_85;
                }
              }

LABEL_81:
              v132 = swift_weakLoadStrong();

              v30 = v54;
              v47 = v255;
              v96 = v253;
              if (!v132)
              {
                goto LABEL_54;
              }
            }
          }

          if ((v238 & 0x8000000000000000) != 0)
          {
            goto LABEL_228;
          }

          if (v238 >= *(v252 + 16))
          {
            goto LABEL_229;
          }

          v163 = *(v252 + 16 * v238 + 40);
          if (v163 >> 62)
          {
            v164 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v164 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v53 = (v163 & 0xC000000000000001);

          v54 = 0;
          while (v164 != v54)
          {
            if (v53)
            {
              v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              swift_unknownObjectRelease();
              if (v48 == v129)
              {
                goto LABEL_148;
              }
            }

            else
            {
              if (v54 >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_218;
              }

              if (*(v163 + 8 * v54 + 32) == v129)
              {
LABEL_148:

                v96 = v253;
                IndexPath.init(row:section:)();
                v135 = 0;
                v54 = v244;
                v48 = v243;
                goto LABEL_106;
              }
            }

            v136 = __OFADD__(v54++, 1);
            if (v136)
            {
              goto LABEL_219;
            }
          }

          v135 = 1;
          v54 = v244;
          v48 = v243;
        }

        else
        {
          v135 = 1;
        }

        v96 = v253;
LABEL_106:
        v134 = v260;
        goto LABEL_107;
      }
    }

    else
    {

      (v256)(v54, v261);
    }

    v96 = v253;
    v97 = *v245;
    (*v245)(v262, v80);
    (v254)(v96, 1, 1, v260);
LABEL_29:
    sub_1000079B4(v96, &unk_100771B10);
LABEL_30:
    v98 = v264 + 1;
    sub_1000079B4(v263, &qword_10076BC90);
    v94 = v98;
    v99 = v98 == v246;
    v95 = v250;
    if (v99)
    {
      v97(v47, v80);
    }
  }

  v160 = v251;
  if ((v235 & 0x8000000000000000) == 0)
  {
    if (v235 >= *(v269 + 16))
    {
      goto LABEL_227;
    }

    v161 = *(v269 + 16 * v235 + 40);
    if (v161 >> 62)
    {
      v162 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v162 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = (v161 & 0xC000000000000001);

    v54 = 0;
    while (v162 != v54)
    {
      if (v53)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (v48 == v160)
        {
          goto LABEL_134;
        }
      }

      else
      {
        if (v54 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_216;
        }

        if (*(v161 + 8 * v54 + 32) == v160)
        {
LABEL_134:

          v118 = v249;
          IndexPath.init(row:section:)();
          v119 = 0;
          v54 = v244;
          v100 = v243;
          goto LABEL_117;
        }
      }

      v136 = __OFADD__(v54++, 1);
      if (v136)
      {
        goto LABEL_217;
      }
    }

    v119 = 1;
    v54 = v244;
    v100 = v243;
    goto LABEL_116;
  }

  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
  return result;
}