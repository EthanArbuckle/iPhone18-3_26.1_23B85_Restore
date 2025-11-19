uint64_t sub_1003D146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v65 = a2;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v63 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v63 - 8);
  __chkstk_darwin(v63);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = sub_100058000(&qword_100772108);
  __chkstk_darwin(v16);
  v18 = &v62 - v17;
  sub_10000794C(a1, &v62 - v17, &qword_100772108);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v42 = v63;
      (*(v7 + 32))(v12, v18, v63);
      v43 = sub_1001AB458();
      if (v44)
      {
        v45 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
        v46 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
        sub_10000C36C((v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v45);
        (*(*(v46 + 8) + 616))(v66, v43, v45);

        v47 = v67;
        v48 = v68;
        sub_10000C36C(v66, v67);
        v27 = (*(v48 + 16))(v12, v47, v48);
        (*(v7 + 8))(v12, v42);
        goto LABEL_17;
      }

      v58 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v59 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v58);
      v27 = (*(*(v59 + 8) + 592))(v43, v12, v58);

      (*(v7 + 8))(v12, v42);
    }

    else
    {
      v62 = *&v18[*(sub_100058000(&unk_100772130) + 48)];
      v20 = v63;
      (*(v7 + 32))(v15, v18, v63);
      v21 = sub_1001AB458();
      if (v22)
      {
        v23 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
        v24 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
        sub_10000C36C((v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v23);
        (*(*(v24 + 8) + 616))(v66, v21, v23);

        v25 = v67;
        v26 = v68;
        sub_10000C36C(v66, v67);
        v27 = (*(v26 + 8))(v15, v62, v25, v26);
        (*(v7 + 8))(v15, v20);
LABEL_17:
        sub_100004758(v66);
        return v27 & 1;
      }

      v56 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v57 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      sub_10000C36C((v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v56);
      (*(v7 + 16))(v6, v15, v20);
      (*(v7 + 56))(v6, 0, 1, v20);
      v27 = (*(*(v57 + 8) + 576))(v21, v6, v62, v56);

      sub_1000079B4(v6, &qword_100772140);
      (*(v7 + 8))(v15, v20);
    }

    return v27 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v49 = sub_1001AB458();
    if (v50)
    {
      v51 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
      v52 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
      v53 = v49;
      sub_10000C36C((v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v51);
      (*(*(v52 + 8) + 616))(v66, v53, v51);

      v54 = v67;
      v55 = v68;
      sub_10000C36C(v66, v67);
      if ((*(v55 + 24))(v54, v55))
      {
        v27 = 1;
      }

      else
      {
        v60 = v67;
        v61 = v68;
        sub_10000C36C(v66, v67);
        v27 = (*(v61 + 40))(v60, v61);
      }

      goto LABEL_17;
    }

    v27 = 0;
    return v27 & 1;
  }

  v28 = *&v18[*(sub_100058000(&unk_100772130) + 48)];
  v29 = v7;
  v30 = v9;
  v31 = v63;
  (*(v7 + 32))(v9, v18, v63);
  v32 = qword_1007A84A0;
  v33 = v65;
  swift_beginAccess();
  v34 = sub_100058000(qword_100771F18);
  result = (*(*(v34 - 8) + 48))(v33 + v32, 1, v34);
  if (result != 1)
  {
    v36 = [*(v33 + v32) items];
    sub_100003540(0, &qword_10076BAC0);
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v39 = *(v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C((v64 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v38);
    (*(*(v39 + 8) + 616))(v66, v37, v38);

    v40 = v67;
    v41 = v68;
    sub_10000C36C(v66, v67);
    v27 = (*(v41 + 32))(v30, v28, v40, v41);
    (*(v29 + 8))(v30, v31);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_1003D1BE0()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v3 = sub_10037BD64();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1003D1D3C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for TTRIRemindersListReminderCell();
    v9 = swift_dynamicCastClass();
    v10 = *&v8[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilAutoCommitTracker];
    if (v9)
    {
      v11 = v6;

      sub_1003258FC(a3, a4);

      TTRIRemindersListReminderCell.inputViewForPencilInput.getter();
      sub_100058000(&unk_10078A390);
      swift_allocObject();
      v12 = Promise.init(value:)();
    }

    else
    {
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      swift_unknownObjectRelease();
      v16 = type metadata accessor for PromiseError();
      sub_1003DF088(&qword_1007817D0, &type metadata accessor for PromiseError);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, enum case for PromiseError.cancelled(_:), v16);
      sub_100058000(&unk_10078A390);
      swift_allocObject();
      v12 = Promise.init(error:)();
    }

    return v12;
  }

  else
  {
    v13 = type metadata accessor for PromiseError();
    sub_1003DF088(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, enum case for PromiseError.cancelled(_:), v13);
    sub_100058000(&unk_10078A390);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_1003D1FE4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilAutoCommitTracker);
    v2 = result;

    *(v1 + 16) = 0;
    *(v1 + 24) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003D2060()
{
  v1 = sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 88);
  v4 = sub_10000C36C((*v1 + 48), v2);
  v7[3] = v2;
  v7[4] = v3;
  v5 = sub_1000317B8(v7);
  (*(*(v2 - 8) + 16))(v5, v4, v2);
  (*(v3 + 384))(1, 0, 0, v2, v3);
  return sub_100004758(v7);
}

uint64_t sub_1003D21D0(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34[-1] - v9;
  TTRIRemindersListReminderCell.viewModel.getter();
  v11 = v35;
  if (!v35)
  {
    return sub_1000079B4(v34, &qword_100780978);
  }

  v33 = v10;
  v12 = v2;
  v13 = v4;
  v14 = sub_10000C36C(v34, v35);
  v15 = v5;
  v16 = a2;
  v17 = *(v11 - 8);
  v18 = __chkstk_darwin(v14);
  v20 = &v34[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  sub_1000079B4(v34, &qword_100780978);
  v21 = v13;
  v22 = v12;
  v23 = v33;
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v17 + 8))(v20, v11);
  (*(v15 + 32))(v23, v7, v21);
  v25 = *&v22[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
  v24 = *&v22[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
  sub_10000C36C(&v22[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v25);
  (*(*(v24 + 8) + 48))(v16 & 1, v23, v25);
  v26 = [v22 parentViewController];
  if (v26)
  {
    v27 = v26;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v28 = *&v27[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  [v28 impactOccurred];

  v30 = [v22 parentViewController];
  if (v30)
  {
    v31 = v30;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v32 = *&v31[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator];

      [v32 prepare];
      v31 = v32;
    }
  }

  return (*(v15 + 8))(v23, v21);
}

uint64_t sub_1003D2550()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v21;
  if (!v21)
  {
    return sub_1000079B4(v20, &qword_100780978);
  }

  v10 = sub_10000C36C(v20, v21);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v20, &qword_100780978);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 8))(v14, v9);
  (*(v3 + 32))(v8, v5, v2);
  v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v17 = v15[4];
  sub_10000C36C(v15, v16);
  (*(*(v17 + 8) + 56))(v8, v16);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1003D27B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24[-1] - v10;
  TTRIRemindersListReminderCell.viewModel.getter();
  v12 = v25;
  if (!v25)
  {
    return sub_1000079B4(v24, &qword_100780978);
  }

  v13 = sub_10000C36C(v24, v25);
  v14 = *(v12 - 8);
  v23 = a2;
  v15 = v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v24[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  sub_1000079B4(v24, &qword_100780978);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v15 + 8))(v18, v12);
  (*(v6 + 32))(v11, v8, v5);
  v19 = (v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v21 = *(v3 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v20 = v19[4];
  sub_10000C36C(v19, v21);
  (*(*(v20 + 8) + 120))(v11, v23, v21);
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1003D2A2C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v21;
  if (!v21)
  {
    return sub_1000079B4(v20, &qword_100780978);
  }

  v10 = sub_10000C36C(v20, v21);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v20, &qword_100780978);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 8))(v14, v9);
  (*(v3 + 32))(v8, v5, v2);
  v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v17 = v15[4];
  sub_10000C36C(v15, v16);
  (*(*(v17 + 8) + 144))(v8, v16);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1003D2C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  TTRIRemindersListReminderCell.viewModel.getter();
  v11 = v31;
  if (!v31)
  {
    return sub_1000079B4(v30, &qword_100780978);
  }

  v29 = a2;
  v12 = sub_10000C36C(v30, v31);
  v13 = *(v11 - 8);
  v28 = v2;
  v14 = v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v15);
  sub_1000079B4(v30, &qword_100780978);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v14 + 8))(v17, v11);
  (*(v5 + 32))(v10, v7, v4);
  sub_10000B0D8(v28 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v30);
  v18 = v31;
  v19 = v32;
  sub_10000C36C(v30, v31);
  v20 = TTRIRemindersListReminderCell.attributedTitle.getter();
  if (v20)
  {
    v21 = v20;
    v22 = [v20 string];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  (*(*(v19 + 8) + 152))(v10, v23, v25, v29, v18);

  (*(v5 + 8))(v10, v4);
  return sub_100004758(v30);
}

uint64_t sub_1003D2F88()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v21;
  if (!v21)
  {
    return sub_1000079B4(v20, &qword_100780978);
  }

  v10 = sub_10000C36C(v20, v21);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v20, &qword_100780978);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 8))(v14, v9);
  (*(v3 + 32))(v8, v5, v2);
  v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v17 = v15[4];
  sub_10000C36C(v15, v16);
  (*(*(v17 + 8) + 200))(v8, v16);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1003D31F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v22;
  if (!v22)
  {
    return sub_1000079B4(v21, &qword_100780978);
  }

  v10 = sub_10000C36C(v21, v22);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v21, &qword_100780978);
  v15 = dispatch thunk of TTRIRemindersListReminderCellViewModel.imageAttachments.getter();
  result = (*(v11 + 8))(v14, v9);
  if (v15)
  {
    v17 = (v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v18 = *(v5 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v19 = v17[4];
    sub_10000C36C(v17, v18);
    (*(*(v19 + 8) + 208))(v15, a2, a3, a4, v18);
  }

  return result;
}

uint64_t sub_1003D33AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  TTRIRemindersListReminderCell.viewModel.getter();
  v14 = v28;
  if (!v28)
  {
    return sub_1000079B4(v27, &qword_100780978);
  }

  v15 = sub_10000C36C(v27, v28);
  v25 = a2;
  v26 = a3;
  v16 = *(v14 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  sub_1000079B4(v27, &qword_100780978);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v16 + 8))(v19, v14);
  (*(v8 + 32))(v13, v10, v7);
  v20 = (v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v22 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v21 = v20[4];
  sub_10000C36C(v20, v22);
  (*(*(v21 + 8) + 1048))(v13, v25, v26, v22);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1003D3624()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell.viewModel.getter();
  v6 = v23;
  if (v23)
  {
    v7 = sub_10000C36C(v22, v23);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    sub_1000079B4(v22, &qword_100780978);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v8 + 8))(v11, v6);
    sub_1003DF088(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v12 = TTRTreeStorageItem.treeItemDescription.getter();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_1000079B4(v22, &qword_100780978);
    v14 = 0xEC0000006C6C6563;
    v12 = 0x206E776F6E6B6E75;
  }

  sub_10032573C(v12, v14);

  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_100781340);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "TTRIRemindersListViewController: Cancel any hover detection once scribbling begins, before the cells is actually edited", v18, 2u);
  }

  v19 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilHoverCleanupAction);
  if (*(v19 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v19 + 56) = 0;
}

uint64_t sub_1003D3988()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListReminderCell.viewModel.getter();
  v4 = v16;
  if (v16)
  {
    v5 = sub_10000C36C(v15, v16);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    sub_1000079B4(v15, &qword_100780978);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v6 + 8))(v9, v4);
    sub_1003DF088(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v10 = TTRTreeStorageItem.treeItemDescription.getter();
    v12 = v11;
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    sub_1000079B4(v15, &qword_100780978);
    v12 = 0xEC0000006C6C6563;
    v10 = 0x206E776F6E6B6E75;
  }

  sub_100326040(v10, v12);
}

uint64_t sub_1003D3BFC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v21;
  if (!v21)
  {
    return sub_1000079B4(v20, &qword_100780978);
  }

  v10 = sub_10000C36C(v20, v21);
  v11 = *(v9 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v12);
  sub_1000079B4(v20, &qword_100780978);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v11 + 8))(v14, v9);
  (*(v3 + 32))(v8, v5, v2);
  v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v17 = v15[4];
  sub_10000C36C(v15, v16);
  (*(*(v17 + 8) + 88))(v8, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v16);
  return (*(v3 + 8))(v8, v2);
}

id sub_1003D3E7C()
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v1[qword_10078A540];
  if (result)
  {
    v3 = [result isEditing];

    if (!v3)
    {
      return v3;
    }

    result = *(*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView) + qword_10078A540);
    if (result)
    {
      [result setEditing:0 animated:1];
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003D3F24()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21[-1] - v7;
  TTRIRemindersListReminderCell.viewModel.getter();
  v9 = v22;
  if (v22)
  {
    v10 = sub_10000C36C(v21, v22);
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    sub_1000079B4(v21, &qword_100780978);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v11 + 8))(v14, v9);
    (*(v3 + 32))(v8, v5, v2);
    v15 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v16 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v17 = v15[4];
    sub_10000C36C(v15, v16);
    v18 = (*(*(v17 + 8) + 1112))(v8, v16);
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_1000079B4(v21, &qword_100780978);
    return 0;
  }

  return v18;
}

uint64_t sub_1003D41A4(uint64_t a1)
{
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  sub_10000B0D8(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v20);
  v6 = v21;
  v7 = v22;
  sub_10000C36C(v20, v21);
  if (!a1)
  {
    goto LABEL_5;
  }

  TTRIRemindersListReminderCell.viewModel.getter();
  v8 = v19;
  if (!v19)
  {
    sub_1000079B4(v18, &qword_100780978);
LABEL_5:
    v15 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    goto LABEL_6;
  }

  v9 = sub_10000C36C(v18, v19);
  v10 = *(v8 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v11);
  sub_1000079B4(v18, &qword_100780978);
  dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
  (*(v10 + 8))(v13, v8);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v14 - 8) + 56))(v5, 0, 1, v14);
LABEL_6:
  v16 = (*(*(v7 + 8) + 1120))(v5, v6);
  sub_1000079B4(v5, &qword_100772140);
  sub_100004758(v20);
  return v16 & 1;
}

uint64_t sub_1003D4474()
{
  sub_100058000(&qword_10076B780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006322B0;
  *(v0 + 32) = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___completedTasksRotor, sub_1003C55F8);
  *(v0 + 40) = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___incompleteTasksRotor, sub_1003C5A70);
  *(v0 + 48) = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___overdueTasksRotor, sub_1003C5C9C);
  return v0;
}

uint64_t sub_1003D4534()
{
  v1 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C(v1, v2);
  return (*(*(v3 + 8) + 376))(v2);
}

id sub_1003D4598()
{
  v0 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v0[qword_10078A540];
  if (result)
  {
    v2 = [result hasActiveDrag];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4604@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_10000B0D8(v2 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter, v12);
  v5 = v13;
  v6 = v14;
  sub_10000C36C(v12, v13);
  v7 = [v2 parentViewController];
  if (!v7)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8)
  {

    v7 = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = *(v8 + 8);
LABEL_6:
  (*(*(v6 + 8) + 344))(a1, v7, v9, v2, v5);
  swift_unknownObjectRelease();
  v10 = sub_100058000(&qword_100781830);
  (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  return sub_100004758(v12);
}

uint64_t sub_1003D4754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v8 = *(v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C((v4 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v7);
  return (*(*(v8 + 8) + 312))(a3, a4, v7) & 1;
}

uint64_t sub_1003D47D0(uint64_t a1)
{
  result = sub_1003DF088(&qword_100781570, type metadata accessor for TTRIRemindersListContentViewController);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1003D4828()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

void *sub_1003D4880@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
    if (swift_dynamicCastClass())
    {
      v5 = a1;
      v6 = TTRIRemindersListReminderCellAccessibilityElement.cell.getter();
      if (v6)
      {
        v7 = v6;
        swift_getObjectType();
        dispatch thunk of TTRIRemindersListReminderCellAccessibilityElementContaining.viewModel.getter();
        if (v11)
        {
          sub_10000C36C(v10, v11);
          dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();

          v8 = type metadata accessor for TTRRemindersListViewModel.Item();
          (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
          return sub_100004758(v10);
        }

        sub_1000079B4(v10, &qword_100780978);
      }

      else
      {
      }
    }

    v9 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D4A1C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  result = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  v4 = *(result + qword_10078A548);
  if (!v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = v4;
  v7 = sub_1000DE654(a1);

  if (v7)
  {
    type metadata accessor for TTRIRemindersListReminderCell();
    if (swift_dynamicCastClass())
    {
      v8 = TTRIRemindersListReminderCell.customAccessibilityElement.getter();
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = v3;
      v3 = v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_1003D4B20(void *a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = sub_1003D4BB0(a1, a3, a4);

  if (!v8)
  {
    return 0;
  }

  v9 = [objc_allocWithZone(UIAccessibilityCustomRotorItemResult) initWithTargetElement:v8 targetRange:0];

  return v9;
}

uint64_t sub_1003D4BB0(void *a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v75 = a2;
  v76 = a3;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = &v70 - v9;
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v72 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  __chkstk_darwin(v18);
  v81 = &v70 - v19;
  __chkstk_darwin(v20);
  v22 = &v70 - v21;
  __chkstk_darwin(v23);
  v25 = &v70 - v24;
  v27 = __chkstk_darwin(v26);
  v29 = &v70 - v28;
  v79 = v5[7];
  v80 = v5 + 7;
  v79(&v70 - v28, 1, 1, v4, v27);
  v82 = a1;
  v30 = [a1 currentItem];
  v31 = [v30 targetElement];

  if (!v31)
  {
    goto LABEL_11;
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v83 = v25;
    v33 = *(v84 + qword_10078A550);
    if (v33)
    {
      v77 = v32;
      v78 = v5;
      v34 = *(v33 + 16);

      if (v34(v35))
      {
        v36 = v83;
        (*(v33 + 32))(v77);
        swift_unknownObjectRelease();
        sub_1000079B4(v29, &qword_100772140);
        v37 = v36;

        v5 = v78;
LABEL_10:
        sub_100016588(v37, v29, &qword_100772140);
        goto LABEL_11;
      }

      swift_unknownObjectRelease();

      v5 = v78;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    sub_1000079B4(v29, &qword_100772140);
    v37 = v83;
    (v79)(v83, 1, 1, v4);
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_11:
  v83 = v29;
  v71 = v7;
  (v79)(v22, 1, 1, v4);
  v38 = (v5 + 6);
  v73 = (v5 + 2);
  v77 = (v5 + 4);
  v78 = v5 + 1;
  v39 = &qword_100772140;
  while (1)
  {
    v41 = [v82 searchDirection];
    v42 = v39;
    v43 = v81;
    v44 = v22;
    v45 = v83;
    sub_1003D537C(v83, v41, v81);
    v46 = v43;
    v39 = v42;
    sub_10000D184(v46, v44, v42);
    v47 = v44;
    sub_10000794C(v44, v17, v42);
    v48 = *v38;
    if ((*v38)(v17, 1, v4) != 1)
    {
      break;
    }

    sub_1000079B4(v17, v42);
    v22 = v47;
LABEL_13:
    sub_10000794C(v22, v14, v39);
    v40 = v48(v14, 1, v4);
    sub_1000079B4(v14, v39);
    if (v40 == 1)
    {
      goto LABEL_16;
    }
  }

  sub_1000079B4(v45, v42);
  v49 = v14;
  v50 = v4;
  v51 = v74;
  (*v77)(v74, v17, v50);
  (*v73)(v45, v51, v50);
  (v79)(v45, 0, 1, v50);
  v52 = v75(v51);
  v53 = v51;
  v4 = v50;
  v14 = v49;
  v39 = v42;
  (*v78)(v53, v4);
  v22 = v47;
  if ((v52 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  v54 = v72;
  sub_10000794C(v22, v72, &qword_100772140);
  if (v48(v54, 1, v4) == 1)
  {
    sub_1000079B4(v22, &qword_100772140);
    sub_1000079B4(v83, &qword_100772140);
    sub_1000079B4(v54, &qword_100772140);
    return 0;
  }

  v56 = v71;
  result = (*v77)(v71, v54, v4);
  v58 = v83;
  v59 = *(v84 + qword_10078A548);
  if (!v59)
  {
    __break(1u);
    return result;
  }

  v60 = v59;
  sub_1003BD378();
  v62 = v61;

  if (!v62 || (__chkstk_darwin(v63), *(&v70 - 2) = v56, sub_1004B4D40(sub_1003DE17C, (&v70 - 4), v62), v65 = *(v64 + 16), , !v65))
  {
    if ([v82 searchDirection] == 1)
    {
      v66 = 3;
    }

    else
    {
      v66 = 1;
    }

    sub_1000E5C98(v56, v66, 0);
  }

  v67 = *(v84 + qword_10078A550);
  if (!v67)
  {
LABEL_29:
    sub_1000079B4(v22, &qword_100772140);
    sub_1000079B4(v58, &qword_100772140);
    v55 = 0;
    goto LABEL_30;
  }

  v68 = *(v67 + 16);

  if ((v68(v69) & 1) == 0)
  {

    goto LABEL_29;
  }

  v55 = (*(v67 + 48))(v56);
  sub_1000079B4(v22, &qword_100772140);
  sub_1000079B4(v58, &qword_100772140);

LABEL_30:
  (*v78)(v56, v4);
  return v55;
}

void sub_1003D537C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v186 = a2;
  v197 = a3;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v187 = v175 - v8;
  __chkstk_darwin(v9);
  v192 = v175 - v10;
  __chkstk_darwin(v11);
  v189 = v175 - v12;
  __chkstk_darwin(v13);
  v188 = v175 - v14;
  __chkstk_darwin(v15);
  v184 = (v175 - v16);
  __chkstk_darwin(v17);
  v19 = v175 - v18;
  __chkstk_darwin(v20);
  v180 = v175 - v21;
  __chkstk_darwin(v22);
  v181 = (v175 - v23);
  __chkstk_darwin(v24);
  v26 = v175 - v25;
  __chkstk_darwin(v27);
  v29 = v175 - v28;
  __chkstk_darwin(v30);
  v198 = v175 - v31;
  __chkstk_darwin(v32);
  v34 = v175 - v33;
  v35 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v35);
  v185 = v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v191 = v175 - v38;
  __chkstk_darwin(v39);
  v194 = v175 - v40;
  __chkstk_darwin(v41);
  v183 = v175 - v42;
  __chkstk_darwin(v43);
  v182 = (v175 - v44);
  __chkstk_darwin(v45);
  v47 = v175 - v46;
  v49 = v48;
  sub_10000794C(a1, v34, &qword_100772140);
  v50 = v49[6];
  if (v50(v34, 1, v35) == 1)
  {
    sub_1000079B4(v34, &qword_100772140);
    v51 = v49[7];
    v51(v29, 1, 1, v35);
    v52 = v199;
    v53 = sub_1003D693C(v29);
    sub_1000079B4(v29, &qword_100772140);
    if (v53 <= 0)
    {
      v51(v197, 1, 1, v35);
      return;
    }

    v51(v6, 1, 1, v35);
    v54 = *(v52 + qword_10078A548);
    if (v54)
    {
      v55 = v54;
      sub_1003BC308(0, v6, v197);

      sub_1000079B4(v6, &qword_100772140);
      return;
    }

    goto LABEL_73;
  }

  v179 = v50;
  v177 = v49 + 6;
  v175[0] = v19;
  v196 = v49;
  v56 = v49[4];
  v57 = v35;
  v175[1] = v49 + 4;
  v176 = v56;
  v56(v47, v34, v35);
  v193 = qword_10078A548;
  v58 = *(v199 + qword_10078A548);
  if (!v58)
  {
    goto LABEL_72;
  }

  v59 = v58;
  sub_1000C84C8();
  v190 = v47;
  v61 = sub_1000F2C50(v47, v60);

  if (v61)
  {
    Strong = swift_weakLoadStrong();

    v63 = v196;
    v64 = v199;
    if (Strong)
    {
      v65 = *(*Strong + 144);
      swift_beginAccess();
      v66 = Strong + v65;
      v67 = v198;
      (v63[2])(v198, v66, v35);

      v68 = 0;
    }

    else
    {
      v68 = 1;
      v67 = v198;
    }
  }

  else
  {

    v68 = 1;
    v63 = v196;
    v67 = v198;
    v64 = v199;
  }

  v69 = v63[7];
  v70 = v35;
  v195 = v63 + 7;
  v71 = v69;
  v69(v67, v68, 1, v70);
  v72 = sub_1003D693C(v67);
  if (v72 <= 0)
  {
    goto LABEL_15;
  }

  v73 = *(v64 + v193);
  if (!v73)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v74 = v72;
  v75 = v73;
  v76 = sub_1003BC088(v190, sub_1000C84C8, sub_1000F2C50, sub_1000F2C38, sub_1003B3EDC);
  v78 = v77;

  if (v78)
  {
LABEL_15:
    sub_1000079B4(v198, &qword_100772140);
    (v196[1])(v190, v57);
    goto LABEL_16;
  }

  v178 = v57;
  if (!v186)
  {
    v81 = v196;
    if (v76 <= 0)
    {
      (v196[1])(v190, v57);
      sub_100016588(v198, v197, &qword_100772140);
      return;
    }

    v82 = *(v64 + v193);
    if (!v82)
    {
      goto LABEL_78;
    }

    v83 = v82;
    v84 = v184;
    v85 = v76 - 1;
    v86 = v198;
    sub_1003BC308(v85, v198, v184);

    if (v179(v84, 1, v57) != 1)
    {
      v95 = v29;
      v96 = v183;
      v176(v183, v84, v57);
      v97 = v81[2];
      v98 = v194;
      v97(v194, v96, v57);
      v186 = v81 + 2;
      v184 = v97;
      v97(v95, v98, v57);
      v71(v95, 0, 1, v57);
      v99 = sub_1003D693C(v95);
      sub_1000079B4(v95, &qword_100772140);
      if (v99 >= 1)
      {
        v100 = (v196 + 1);
        v101 = &qword_100772140;
        v181 = (v196 + 1);
        do
        {
          v102 = v189;
          v184(v189, v194, v57);
          v71(v102, 0, 1, v57);
          v103 = *(v199 + v193);
          if (!v103)
          {
            goto LABEL_75;
          }

          v104 = v103;
          v105 = v188;
          sub_1003BC308(v99 - 1, v102, v188);

          sub_1000079B4(v102, v101);
          if (v179(v105, 1, v57) == 1)
          {
            sub_1000079B4(v105, &qword_100772140);
            break;
          }

          v106 = v194;
          v182 = *v100;
          v182(v194, v57);
          v107 = v101;
          v108 = v191;
          v109 = v176;
          v176(v191, v105, v57);
          v110 = v71;
          v111 = v184;
          v184(v106, v108, v178);
          v112 = v192;
          v111(v192, v106, v178);
          v71 = v110;
          v110(v112, 0, 1, v178);
          v101 = v107;
          v57 = v178;
          v113 = v112;
          v114 = v187;
          sub_10000794C(v113, v187, v107);
          if (v179(v114, 1, v57) == 1)
          {
            sub_1000079B4(v114, v107);
            v100 = v181;
            v115 = v182;
          }

          else
          {
            v116 = v185;
            v109(v185, v114, v57);
            v117 = *(v199 + v193);
            if (!v117)
            {
              goto LABEL_77;
            }

            v118 = v117;
            v119 = sub_1000CAD68(v116);

            v120 = v116;
            v100 = v181;
            v115 = v182;
            v182(v120, v57);
            if ((v119 & 1) == 0)
            {
              sub_1000079B4(v192, &qword_100772140);
              v115(v191, v57);
              break;
            }
          }

          v121 = *(v199 + v193);
          if (!v121)
          {
            goto LABEL_76;
          }

          v122 = v121;
          v123 = v192;
          v99 = sub_1003BCE6C(v192);
          v125 = v124;

          sub_1000079B4(v123, v101);
          v115(v191, v57);
        }

        while ((v125 & 1) == 0 && v99 >= 1);
      }

      v154 = v196[1];
      v154(v183, v57);
      sub_1000079B4(v198, &qword_100772140);
      v154(v190, v57);
      v155 = v197;
      v176(v197, v194, v57);
      v79 = v155;
      v80 = 0;
LABEL_17:
      v71(v79, v80, 1, v57);
      return;
    }

    sub_1000079B4(v86, &qword_100772140);
    (v81[1])(v190, v57);
    sub_1000079B4(v84, &qword_100772140);
LABEL_16:
    v79 = v197;
    v80 = 1;
    goto LABEL_17;
  }

  if (v186 == 1)
  {
    v87 = v190;
    v194 = v196[2];
    (v194)(v29, v190, v57);
    v71(v29, 0, 1, v57);
    v88 = v64;
    v89 = sub_1003D693C(v29);
    sub_1000079B4(v29, &qword_100772140);
    if (v89 > 0)
    {
      (v194)(v26, v87, v57);
      v71(v26, 0, 1, v57);
      v90 = *(v88 + v193);
      if (v90)
      {
        v91 = v90;
        sub_1003BC308(0, v26, v197);

        sub_1000079B4(v26, &qword_100772140);
        sub_1000079B4(v198, &qword_100772140);
        (v196[1])(v87, v57);
        return;
      }

      goto LABEL_79;
    }

    if (v76 < v74 - 1)
    {
      v92 = *(v199 + v193);
      if (v92)
      {
        v93 = v92;
        v94 = v198;
        sub_1003BC308(v76 + 1, v198, v197);

        sub_1000079B4(v94, &qword_100772140);
        (v196[1])(v190, v57);
        return;
      }

      goto LABEL_80;
    }

    v126 = v198;
    v127 = v181;
    sub_10000794C(v198, v181, &qword_100772140);
    v128 = v179(v127, 1, v57);
    v129 = v199;
    if (v128 == 1)
    {
      sub_1000079B4(v126, &qword_100772140);
      (v196[1])(v190, v57);
      sub_1000079B4(v127, &qword_100772140);
      goto LABEL_16;
    }

    v130 = v57;
    v131 = v71;
    v132 = v182;
    v176(v182, v127, v130);
    v133 = *(v129 + v193);
    v134 = v190;
    if (!v133)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v135 = v133;
    v136 = sub_1003BC088(v132, sub_1000C84C8, sub_1000F2C50, sub_1000F2C38, sub_1003B3EDC);
    v138 = v137;

    if (v138)
    {
      v139 = v196[1];
      v140 = v178;
      v139(v132, v178);
      sub_1000079B4(v126, &qword_100772140);
      v139(v134, v140);
      v57 = v140;
      goto LABEL_16;
    }

    v141 = *(v199 + v193);
    if (!v141)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v142 = v141;
    sub_1000C84C8();
    v144 = sub_1000F2C50(v182, v143);

    if (v144)
    {
      v145 = swift_weakLoadStrong();

      v146 = v180;
      if (v145)
      {
        v147 = *(*v145 + 144);
        swift_beginAccess();
        v148 = v145 + v147;
        v149 = v178;
        (v194)(v146, v148, v178);

        v150 = 0;
        v151 = v198;
        v152 = v182;
        v153 = v190;
LABEL_60:
        v71(v146, v150, 1, v149);
        v156 = sub_1003D693C(v146);
        sub_1000079B4(v146, &qword_100772140);
        if (!__OFSUB__(v156, 1))
        {
          if (v136 >= v156 - 1)
          {
            v167 = v196[1];
            v168 = v152;
            v169 = v178;
            v167(v168, v178);
            sub_1000079B4(v151, &qword_100772140);
            v167(v153, v169);
            v57 = v169;
            goto LABEL_16;
          }

          v157 = *(v199 + v193);
          if (!v157)
          {
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v158 = v157;
          sub_1000C84C8();
          v160 = sub_1000F2C50(v182, v159);

          if (v160)
          {
            v161 = swift_weakLoadStrong();

            if (v161)
            {
              v162 = *(*v161 + 144);
              swift_beginAccess();
              v163 = v175[0];
              v164 = v178;
              (v194)(v175[0], v161 + v162, v178);

              v165 = 0;
              v166 = v198;
              goto LABEL_69;
            }
          }

          else
          {
          }

          v165 = 1;
          v166 = v198;
          v163 = v175[0];
          v164 = v178;
LABEL_69:
          v131(v163, v165, 1, v164);
          v170 = *(v199 + v193);
          v171 = v196;
          if (v170)
          {
            v172 = v170;
            sub_1003BC308(v136 + 1, v163, v197);

            sub_1000079B4(v163, &qword_100772140);
            v173 = v171[1];
            v173(v182, v164);
            sub_1000079B4(v166, &qword_100772140);
            v173(v190, v164);
            return;
          }

          goto LABEL_84;
        }

        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v150 = 1;
      v151 = v198;
      v152 = v182;
    }

    else
    {

      v150 = 1;
      v151 = v198;
      v152 = v182;
      v146 = v180;
    }

    v153 = v190;
    v149 = v178;
    goto LABEL_60;
  }

LABEL_85:
  if (qword_1007673B0 != -1)
  {
    swift_once();
  }

  v174 = type metadata accessor for Logger();
  sub_100003E30(v174, qword_1007875C8);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unknown direction", 17, 2);
  __break(1u);
}

uint64_t sub_1003D67C8()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  sub_1003DF088(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_1003D693C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v6, &qword_100772140);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1000079B4(v6, &qword_100772140);
  }

  else
  {
    result = (*(v8 + 32))(v10, v6, v7);
    v12 = *(v2 + qword_10078A548);
    if (!v12)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v13 = v12;
    v14 = sub_1000CAD68(v10);

    result = (*(v8 + 8))(v10, v7);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(v2 + qword_10078A548);
  if (!v15)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = v15;
  v17 = sub_1003BCE6C(a1);
  v19 = v18;

  if (v19)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

void *sub_1003D6B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = Strong;
  sub_100454D4C(a3);
  v7 = v6;

  return v7;
}

void *sub_1003D6BB4(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = Strong;
  v8 = sub_1003CEA9C(a1, a2, a3);

  return v8;
}

void *sub_1003D6C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v6 = *(Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  v7 = Strong;
  sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), v5);
  v8 = (*(*(v6 + 8) + 552))(a3, v5);

  return v8;
}

uint64_t sub_1003D6CF8()
{
  swift_beginAccess();

  return 0;
}

void sub_1003D6D44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v5 = *(a1 + qword_10078A548);
    if (v5)
    {
      v6 = v5;
      v7 = sub_1000DE654(a2);

      if (v7)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          TTRICollectionViewDragPreviewParametersProvidingCell.dragPreviewParameters.getter();
        }

        else
        {
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003D6E68()
{
  swift_beginAccess();

  return 1;
}

uint64_t sub_1003D6EB4()
{
  swift_beginAccess();

  return 0;
}

uint64_t sub_1003D6F00(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100058000(a1);
  if (swift_isClassType() && v4)
  {
    v5 = &qword_10076B780;
  }

  else
  {
    v5 = a3;
  }

  return sub_100058000(v5);
}

Swift::Int sub_1003D6F6C(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(unint64_t *, unint64_t *, unint64_t *))
{
  v8 = a1[1];
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100058000(a2);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *(sub_100058000(a2) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      sub_1003D7320(v14, v15, a1, v10, a2, a3, a4);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_1003D70D0(0, v8, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1003D70D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v37 = sub_100058000(a5);
  v10 = __chkstk_darwin(v37);
  v36 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_10000794C(v23, v18, a5);
      sub_10000794C(v21, v14, a5);
      v24 = static IndexPath.< infix(_:_:)();
      sub_1000079B4(v14, a5);
      result = sub_1000079B4(v18, a5);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      v25 = v36;
      sub_100016588(v23, v36, a5);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100016588(v25, v21, a5);
      v21 += v34;
      v23 += v34;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003D7320(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v126 = a7;
  v115 = a4;
  v116 = a1;
  v10 = sub_100058000(a5);
  v128 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v120 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v131 = &v114 - v14;
  v15 = __chkstk_darwin(v13);
  v133 = &v114 - v16;
  result = __chkstk_darwin(v15);
  v132 = &v114 - v18;
  v129 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_99:
    v134 = *v116;
    if (!v134)
    {
      goto LABEL_139;
    }

    v10 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v118;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v10;
LABEL_102:
      v135 = result;
      v10 = *(result + 16);
      if (v10 >= 2)
      {
        v109 = v126;
        while (*v129)
        {
          v110 = *(result + 16 * v10);
          v111 = result;
          v112 = *(result + 16 * (v10 - 1) + 40);
          sub_1003D7C64(*v129 + *(v128 + 72) * v110, *v129 + *(v128 + 72) * *(result + 16 * (v10 - 1) + 32), *v129 + *(v128 + 72) * v112, v134, a5, a6, v109);
          if (v37)
          {
          }

          if (v112 < v110)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1000ED7BC(v111);
          }

          if (v10 - 2 >= *(v111 + 2))
          {
            goto LABEL_127;
          }

          v113 = &v111[16 * v10];
          *v113 = v110;
          *(v113 + 1) = v112;
          v135 = v111;
          sub_1000ED730(v10 - 1);
          result = v135;
          v10 = *(v135 + 16);
          if (v10 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_1000ED7BC(v10);
    goto LABEL_102;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v134 = v10;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v121 = v21;
    if (v23 >= v19)
    {
      v35 = v23;
      v36 = v115;
      v37 = v118;
    }

    else
    {
      v24 = *v129;
      v25 = *(v128 + 72);
      v26 = *v129 + v25 * v23;
      v27 = v132;
      sub_10000794C(v26, v132, a5);
      v28 = v24 + v25 * v22;
      v117 = v22;
      v29 = v133;
      sub_10000794C(v28, v133, a5);
      LODWORD(v127) = static IndexPath.< infix(_:_:)();
      sub_1000079B4(v29, a5);
      result = sub_1000079B4(v27, a5);
      v30 = v117 + 2;
      v130 = v25;
      v31 = v24 + v25 * (v117 + 2);
      while (v19 != v30)
      {
        v32 = v132;
        sub_10000794C(v31, v132, a5);
        v33 = v133;
        sub_10000794C(v26, v133, a5);
        v34 = static IndexPath.< infix(_:_:)() & 1;
        sub_1000079B4(v33, a5);
        result = sub_1000079B4(v32, a5);
        ++v30;
        v31 += v130;
        v26 += v130;
        if ((v127 & 1) != v34)
        {
          v35 = v30 - 1;
          goto LABEL_12;
        }
      }

      v35 = v19;
LABEL_12:
      v36 = v115;
      v10 = v134;
      v22 = v117;
      v37 = v118;
      if (v127)
      {
        if (v35 < v117)
        {
          goto LABEL_130;
        }

        if (v117 < v35)
        {
          v38 = v130 * (v35 - 1);
          v39 = v35 * v130;
          v127 = v35;
          v40 = v117;
          v41 = v117 * v130;
          do
          {
            if (v40 != --v35)
            {
              v42 = *v129;
              if (!*v129)
              {
                goto LABEL_136;
              }

              sub_100016588(v42 + v41, v120, a5);
              if (v41 < v38 || v42 + v41 >= (v42 + v39))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100016588(v120, v42 + v38, a5);
            }

            ++v40;
            v38 -= v130;
            v39 -= v130;
            v41 += v130;
          }

          while (v40 < v35);
          v22 = v117;
          v37 = v118;
          v36 = v115;
          v10 = v134;
          v35 = v127;
        }
      }
    }

    v43 = v129[1];
    if (v35 >= v43)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v35, v22))
    {
      goto LABEL_129;
    }

    if (v35 - v22 >= v36)
    {
LABEL_35:
      v45 = v35;
      if (v35 < v22)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v22, v36))
    {
      goto LABEL_131;
    }

    if (v22 + v36 >= v43)
    {
      v44 = v129[1];
    }

    else
    {
      v44 = v22 + v36;
    }

    if (v44 < v22)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v35 == v44)
    {
      goto LABEL_35;
    }

    v117 = v22;
    v118 = v37;
    v94 = *v129;
    v95 = *(v128 + 72);
    v96 = *v129 + v95 * (v35 - 1);
    v97 = v35;
    v98 = -v95;
    v99 = v22 - v97;
    v127 = v97;
    v130 = v94;
    v119 = v95;
    v100 = v94 + v97 * v95;
    v122 = v44;
LABEL_89:
    v123 = v100;
    v124 = v99;
    v101 = v99;
    v125 = v96;
    v102 = v96;
LABEL_90:
    v103 = v132;
    sub_10000794C(v100, v132, a5);
    v104 = v133;
    sub_10000794C(v102, v133, a5);
    v105 = static IndexPath.< infix(_:_:)();
    sub_1000079B4(v104, a5);
    result = sub_1000079B4(v103, a5);
    if (v105)
    {
      break;
    }

    v10 = v134;
LABEL_88:
    v96 = v125 + v119;
    v99 = v124 - 1;
    v45 = v122;
    v100 = v123 + v119;
    if (++v127 != v122)
    {
      goto LABEL_89;
    }

    v22 = v117;
    v37 = v118;
    if (v122 < v117)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v121;
    }

    else
    {
      result = sub_100546DD8(0, *(v121 + 2) + 1, 1, v121);
      v21 = result;
    }

    v47 = *(v21 + 2);
    v46 = *(v21 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_100546DD8((v46 > 1), v47 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v48;
    v49 = &v21[16 * v47];
    *(v49 + 4) = v22;
    *(v49 + 5) = v45;
    v50 = *v116;
    if (!*v116)
    {
      goto LABEL_138;
    }

    v122 = v45;
    if (v47)
    {
      v51 = v50;
      v10 = v134;
      while (1)
      {
        v52 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_56:
          if (v56)
          {
            goto LABEL_117;
          }

          v69 = &v21[16 * v48];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_120;
          }

          v75 = &v21[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_124;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v48 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v79 = &v21[16 * v48];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_70:
        if (v74)
        {
          goto LABEL_119;
        }

        v82 = &v21[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_122;
        }

        if (v85 < v73)
        {
          goto LABEL_4;
        }

LABEL_77:
        v10 = v52 - 1;
        if (v52 - 1 >= v48)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v129)
        {
          goto LABEL_135;
        }

        v90 = v21;
        v91 = *&v21[16 * v10 + 32];
        v92 = *&v21[16 * v52 + 40];
        sub_1003D7C64(*v129 + *(v128 + 72) * v91, *v129 + *(v128 + 72) * *&v21[16 * v52 + 32], *v129 + *(v128 + 72) * v92, v51, a5, a6, v126);
        if (v37)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1000ED7BC(v90);
        }

        if (v10 >= *(v90 + 2))
        {
          goto LABEL_114;
        }

        v93 = &v90[16 * v10];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v135 = v90;
        result = sub_1000ED730(v52);
        v21 = v135;
        v48 = *(v135 + 16);
        v10 = v134;
        if (v48 <= 1)
        {
          goto LABEL_4;
        }
      }

      v57 = &v21[16 * v48 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_115;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_116;
      }

      v64 = &v21[16 * v48];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_118;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_121;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_125;
        }

        if (v55 < v89)
        {
          v52 = v48 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v10 = v134;
LABEL_4:
    v118 = v37;
    v19 = v129[1];
    v20 = v122;
    if (v122 >= v19)
    {
      goto LABEL_99;
    }
  }

  if (v130)
  {
    v106 = v131;
    sub_100016588(v100, v131, a5);
    v10 = v134;
    swift_arrayInitWithTakeFrontToBack();
    sub_100016588(v106, v102, a5);
    v102 += v98;
    v100 += v98;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_1003D7C64(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(unint64_t *, unint64_t *, unint64_t *))
{
  v51 = a3;
  v47 = a5;
  v48 = a6;
  v50 = sub_100058000(a5);
  v11 = __chkstk_darwin(v50);
  v49 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v46 = &v39 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_60;
  }

  v17 = v51 - a2;
  if (v51 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v40 = a7;
  v18 = (a2 - a1) / v16;
  v54 = a1;
  v53 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v20;
    if (v20 >= 1)
    {
      v27 = -v16;
      v28 = a4 + v20;
      v43 = a1;
      v44 = a4;
      v42 = -v16;
      do
      {
        v39 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v45 = v29;
        while (1)
        {
          v31 = v51;
          if (v29 <= a1)
          {
            v54 = v29;
            v52 = v39;
            goto LABEL_58;
          }

          v41 = v26;
          v51 += v27;
          v32 = v28 + v27;
          v34 = v46;
          v33 = v47;
          sub_10000794C(v28 + v27, v46, v47);
          v35 = v30;
          v36 = v30;
          v37 = v49;
          sub_10000794C(v36, v49, v33);
          v38 = static IndexPath.< infix(_:_:)();
          sub_1000079B4(v37, v33);
          sub_1000079B4(v34, v33);
          if (v38)
          {
            break;
          }

          v26 = v28 + v27;
          if (v31 < v28 || v51 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v35;
            v27 = v42;
            a1 = v43;
          }

          else
          {
            v30 = v35;
            v27 = v42;
            a1 = v43;
            if (v31 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v32;
          v29 = v45;
          if (v32 <= v44)
          {
            a2 = v45;
            goto LABEL_57;
          }
        }

        if (v31 < v45 || v51 >= v45)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          a1 = v43;
          v26 = v41;
        }

        else
        {
          a2 = v35;
          v27 = v42;
          a1 = v43;
          v26 = v41;
          if (v31 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v44);
    }

LABEL_57:
    v54 = a2;
    v52 = v26;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v19;
    v52 = a4 + v19;
    if (v19 >= 1 && a2 < v51)
    {
      do
      {
        v22 = v46;
        v23 = v47;
        sub_10000794C(a2, v46, v47);
        v24 = v49;
        sub_10000794C(a4, v49, v23);
        v25 = static IndexPath.< infix(_:_:)();
        sub_1000079B4(v24, v23);
        sub_1000079B4(v22, v23);
        if (v25)
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = a4 + v16;
          a4 += v16;
        }

        a1 += v16;
        v54 = a1;
      }

      while (a4 < v45 && a2 < v51);
    }
  }

LABEL_58:
  v40(&v54, &v53, &v52);
  return 1;
}

void *sub_1003D8280()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_1003DF100;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_1003DEFDC;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1003DEFE4;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_1003DEFEC;
  v0[9] = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[10] = sub_1003DEFF4;
  v0[11] = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[12] = sub_1003DF024;
  v0[13] = v6;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[14] = sub_1003DF054;
  v0[15] = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[16] = sub_1003DF05C;
  v0[17] = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[18] = sub_1003DF150;
  v0[19] = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[20] = sub_1003DF078;
  v0[21] = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[22] = sub_1003DF080;
  v0[23] = v11;
  return v0;
}

uint64_t sub_1003D84F0()
{
  *(v0 + 608) = 0;
  *(v0 + 592) = 0u;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 16) = sub_1003DECF8;
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 32) = sub_1003DED18;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_1003DED20;
  *(v0 + 56) = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = sub_1003DF0E8;
  *(v0 + 72) = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 80) = sub_1003DED28;
  *(v0 + 88) = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 96) = sub_1003DF148;
  *(v0 + 104) = v6;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 112) = sub_1003DED44;
  *(v0 + 120) = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 128) = sub_1003DED4C;
  *(v0 + 136) = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 144) = sub_1003DF14C;
  *(v0 + 152) = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 160) = sub_1003DF14C;
  *(v0 + 168) = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 176) = sub_1003DED54;
  *(v0 + 184) = v11;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 192) = sub_1003DED5C;
  *(v0 + 200) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 208) = sub_1003DED8C;
  *(v0 + 216) = v13;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 224) = sub_1003DED94;
  *(v0 + 232) = v14;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 240) = sub_1003DED9C;
  *(v0 + 248) = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 256) = sub_1003DEDA4;
  *(v0 + 264) = v16;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 272) = sub_1003DEDAC;
  *(v0 + 280) = v17;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 288) = sub_1003DEDDC;
  *(v0 + 296) = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 304) = sub_1003DEE0C;
  *(v0 + 312) = v19;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 320) = sub_1003DEE14;
  *(v0 + 328) = v20;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 336) = sub_1003DEE44;
  *(v0 + 344) = v21;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 352) = sub_1003DEE4C;
  *(v0 + 360) = v22;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 368) = sub_1003DEE78;
  *(v0 + 376) = v23;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 384) = sub_1003DEE84;
  *(v0 + 392) = v24;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 400) = sub_1003DEEA4;
  *(v0 + 408) = v25;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 416) = sub_1003DEEC4;
  *(v0 + 424) = v26;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 432) = sub_1003DF160;
  *(v0 + 440) = v27;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 448) = sub_1003DF14C;
  *(v0 + 456) = v28;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 464) = sub_1003DEEE0;
  *(v0 + 472) = v29;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 480) = sub_1003DEEE8;
  *(v0 + 488) = v30;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 496) = sub_1003DEEF0;
  *(v0 + 504) = v31;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 512) = sub_1003DF0EC;
  *(v0 + 520) = v32;
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 528) = sub_1003DF0E8;
  *(v0 + 536) = v33;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 544) = sub_1003DE578;
  *(v0 + 552) = v34;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 560) = sub_1003DF0E8;
  *(v0 + 568) = v35;
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 576) = sub_1003DEF0C;
  *(v0 + 584) = v36;
  return v0;
}

void *sub_1003D8C94()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_1003DEC98;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_1003DECB8;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1003DECE8;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_1003DECF0;
  v0[9] = v4;
  return v0;
}

id sub_1003D8D98()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_100787F68] = 0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v0[qword_100787F30];
  *v3 = sub_1003DEC18;
  *(v3 + 1) = v2;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[qword_100787F38];
  *v5 = sub_1003DEC18;
  *(v5 + 1) = v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v0[qword_100787F40];
  *v7 = sub_1003DEC20;
  v7[1] = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v0[qword_100787F48];
  *v9 = sub_1003DEC3C;
  v9[1] = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v0[qword_100787F50];
  *v11 = sub_1003DF144;
  v11[1] = v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = &v0[qword_100787F58];
  *v13 = sub_1003DEC58;
  v13[1] = v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v0[qword_100787F60];
  *v15 = sub_1003DEC78;
  v15[1] = v14;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

id sub_1003D8FDC()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_100780CB8] = 0;
  *&v0[qword_100780CC0] = &_swiftEmptyDictionarySingleton;
  v2 = &v0[qword_100780CD8];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v0[qword_100780C80];
  *v4 = sub_1003DEB78;
  v4[1] = v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v0[qword_100780C88];
  *v6 = sub_1003DF154;
  v6[1] = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v0[qword_100780C90];
  *v8 = sub_1003DF144;
  v8[1] = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = &v0[qword_100780C98];
  *v10 = sub_1003DEBA8;
  v10[1] = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = &v0[qword_100780CA0];
  *v12 = sub_1003DF144;
  v12[1] = v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = &v0[qword_100780CA8];
  *v14 = sub_1003DEBB0;
  v14[1] = v13;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = &v0[qword_100780CB0];
  *v16 = sub_1003DF158;
  v16[1] = v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = &v0[qword_100780CC8];
  *v18 = sub_1003DEBB8;
  v18[1] = v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = &v0[qword_100780CD0];
  *v20 = sub_1003DEBE8;
  v20[1] = v19;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "init");
}

uint64_t sub_1003D92D0()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIRemindersListViewController: Pencil hover interaction ended -- removing uncommitted reminder if it has not input", v5, 2u);
  }

  v6 = (v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v8 = v6[4];
  sub_10000C36C(v6, v7);
  return (*(*(v8 + 8) + 408))(v7);
}

uint64_t sub_1003D93E4()
{
  *(v0 + 608) = 0;
  *(v0 + 592) = 0u;
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 16) = sub_1003DF100;
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 32) = sub_1003DE570;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = sub_1003DE578;
  *(v0 + 56) = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = sub_1003DF0E8;
  *(v0 + 72) = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 80) = sub_1003DF148;
  *(v0 + 88) = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 96) = sub_1003DF148;
  *(v0 + 104) = v6;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 112) = sub_1003DF14C;
  *(v0 + 120) = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 128) = sub_1003DE594;
  *(v0 + 136) = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 144) = sub_1003DF14C;
  *(v0 + 152) = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 160) = sub_1003DF14C;
  *(v0 + 168) = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 176) = sub_1003DE59C;
  *(v0 + 184) = v11;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 192) = sub_1003DE5A4;
  *(v0 + 200) = v12;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 208) = sub_1003DE5D4;
  *(v0 + 216) = v13;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 224) = sub_1003DE5F4;
  *(v0 + 232) = v14;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 240) = sub_1003DE614;
  *(v0 + 248) = v15;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 256) = sub_1003DE630;
  *(v0 + 264) = v16;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 272) = sub_1003DE638;
  *(v0 + 280) = v17;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 288) = sub_1003DE640;
  *(v0 + 296) = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 304) = sub_1003DE670;
  *(v0 + 312) = v19;
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 320) = sub_1003DE678;
  *(v0 + 328) = v20;
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 336) = sub_1003DE680;
  *(v0 + 344) = v21;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 352) = sub_1003DE688;
  *(v0 + 360) = v22;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 368) = sub_1003DE6B4;
  *(v0 + 376) = v23;
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 384) = sub_1003DF160;
  *(v0 + 392) = v24;
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 400) = sub_1003DF0F4;
  *(v0 + 408) = v25;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 416) = sub_1003DF0F8;
  *(v0 + 424) = v26;
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 432) = sub_1003DE6C0;
  *(v0 + 440) = v27;
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 448) = sub_1003DE6C8;
  *(v0 + 456) = v28;
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 464) = sub_1003DE6F8;
  *(v0 + 472) = v29;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 480) = sub_1003DE700;
  *(v0 + 488) = v30;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 496) = sub_1003DF0EC;
  *(v0 + 504) = v31;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 512) = sub_1003DF0EC;
  *(v0 + 520) = v32;
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 528) = sub_1003DE708;
  *(v0 + 536) = v33;
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 544) = sub_1003DF0E8;
  *(v0 + 552) = v34;
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 560) = sub_1003DE710;
  *(v0 + 568) = v35;
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 576) = sub_1003DE718;
  *(v0 + 584) = v36;
  return v0;
}

id sub_1003D9B88(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10000C36C((v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter), *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24));
  v7 = *(*v6 + 72);
  v8 = *(*v6 + 80);
  sub_10000C36C((*v6 + 48), v7);
  (*(v8 + 8))(v7, v8);
  v9 = sub_10025D4DC(a1);

  v18 = v1;
  v19 = a1;
  v10 = sub_100399264(sub_1003DE758, v17, v9);

  v20 = v10;
  (*(v4 + 16))(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  v13 = static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)();

  sub_100081654(v13);
  sub_100003540(0, &qword_10076BC40);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [objc_opt_self() configurationWithActions:isa];

  return v15;
}

void sub_1003D9DDC()
{
  v1 = sub_100058000(qword_100784690);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_1003C3C78();
  if (v4)
  {
    v5 = v4;
    [v4 endEditing:1];
  }

  v6 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController);
  if (v6)
  {
    type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
    swift_storeEnumTagMultiPayload();
    v7 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession(0);
    (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
    v8 = OBJC_IVAR____TtC9Reminders52TTRIRemindersListAutomaticSubtaskSelectionController_currentMultipleSelectionInteractionSession;
    swift_beginAccess();

    sub_10000D184(v3, v6 + v8, qword_100784690);
    swift_endAccess();

    v9 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
    v10 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
    v11 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
    sub_10000C36C(v9, v10);
    (*(*(v11 + 8) + 352))(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003D9F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    goto LABEL_3;
  }

  if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
  {
    result = (*(v5 + 8))(v7, v4);
    v12 = *(a1 + qword_10078A548);
    if (!v12)
    {
      __break(1u);
      return result;
    }

    v13 = v12;
    v4 = sub_1000DE654(a2);

    if (v4)
    {
      type metadata accessor for TTRIRemindersListReminderCell();
      if (!swift_dynamicCastClass())
      {
LABEL_31:

        return 1;
      }

      v14 = v4;
      v15 = UIView.firstResponderDescendant.getter();

      if (v15)
      {

        return 0;
      }
    }

    return 1;
  }

  if (v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
  {
    if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
    {
      return 0;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_31;
  }

LABEL_3:
  (*(v5 + 8))(v7, v4);
  return 0;
}

void *sub_1003DA1E0()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_1003DF13C;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_1003DE530;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1003DE560;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_1003DE568;
  v0[9] = v4;
  return v0;
}

uint64_t sub_1003DA2E4()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  result = (*(v8 + 88))(v10, v7);
  if (result == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:) || (v6 = v3, result == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:)))
  {
    (*(v8 + 96))(v10, v7);
    (*(v1 + 32))(v6, v10, v0);
    TTRRemindersListViewModel.SectionHeader.isVisible.getter();
    return (*(v1 + 8))(v6, v0);
  }

  else if (result != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

id sub_1003DA560()
{
  result = *(*(v0 + 16) + qword_10078A540);
  if (result)
  {
    return [result performBatchUpdates:0 completion:0];
  }

  __break(1u);
  return result;
}

void *sub_1003DA58C()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[2] = sub_1003DF100;
  v0[3] = v1;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[4] = sub_1003DE9C8;
  v0[5] = v2;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1003DE9D0;
  v0[7] = v3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[8] = sub_1003DE9D8;
  v0[9] = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[10] = sub_1003DE9E0;
  v0[11] = v5;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[12] = sub_1003DF0E8;
  v0[13] = v6;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[14] = sub_1003DEA10;
  v0[15] = v7;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[16] = sub_1003DF150;
  v0[17] = v8;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[18] = sub_1003DF150;
  v0[19] = v9;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[20] = sub_1003DEA44;
  v0[21] = v10;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[22] = sub_1003DEA4C;
  v0[23] = v11;
  return v0;
}

void sub_1003DA7FC(char *a1, uint64_t a2)
{
  v235 = a1;
  v216 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v214 = *(v216 - 8);
  __chkstk_darwin(v216);
  v215 = &v189 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v211 = *(v4 - 8);
  v212 = v4;
  __chkstk_darwin(v4);
  v213 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v208 = *(v6 - 8);
  v209 = v6;
  __chkstk_darwin(v6);
  v210 = &v189 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v207 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v9 - 8);
  v205 = &v189 - v10;
  v11 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v11 - 8);
  v226 = &v189 - v12;
  v221 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v219 = *(v221 - 8);
  __chkstk_darwin(v221);
  v222 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for TTRRemindersListViewModel.Item();
  v228 = *(v218 - 8);
  __chkstk_darwin(v218);
  v229 = &v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100792D90);
  __chkstk_darwin(v15 - 8);
  v203 = &v189 - v16;
  v227 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v223 = *(v227 - 8);
  __chkstk_darwin(v227);
  v199 = &v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&unk_100776BC0);
  __chkstk_darwin(v18 - 8);
  v220 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v202 = &v189 - v21;
  v22 = sub_100058000(&qword_100781830);
  v224 = *(v22 - 8);
  v225 = v22;
  __chkstk_darwin(v22);
  v201 = &v189 - v23;
  v24 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v24 - 8);
  v217 = &v189 - v25;
  v26 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v233 = *(v26 - 8);
  v234 = v26;
  __chkstk_darwin(v26);
  v232 = &v189 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRRemindersListTip();
  v190 = *(v28 - 8);
  v191 = v28;
  __chkstk_darwin(v28);
  v189 = &v189 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TTRTemplatePublicLinkData();
  v193 = *(v30 - 8);
  v194 = v30;
  __chkstk_darwin(v30);
  v32 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v192 = &v189 - v34;
  v35 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v35 - 8);
  v195 = &v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v189 - v38;
  v40 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v196 = *(v40 - 8);
  v197 = v40;
  __chkstk_darwin(v40);
  v198 = (&v189 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v42 = *(v200 - 1);
  __chkstk_darwin(v200);
  v44 = &v189 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v189 - v46;
  v48 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v189 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = a2;
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v52 = (*(v49 + 88))(v51, v48);
  if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v52 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:))
    {
      v69 = sub_1003CBA9C(v230, v235);
      if (v69)
      {
        v70 = v69;
        TTRIRemindersListReminderCell.hideSeparatorDueToLastItemInSection.setter();
      }

      goto LABEL_2;
    }

    if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:))
    {
      v72 = v230;
      v71 = v231;
      v73 = sub_1003CBA9C(v230, v235);
      if (v73)
      {
        v74 = v73;
        v75 = &v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter];
        v76 = *&v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
        v77 = *&v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
        sub_10000C36C(&v71[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v76);
        if ((*(*(v77 + 8) + 1040))(v72, v76))
        {
          v78 = sub_10000C36C(v75, *(v75 + 3));
          v79 = *(*v78 + 72);
          v80 = *(*v78 + 80);
          sub_10000C36C((*v78 + 48), v79);
          sub_10045E42C(v79, v80);
          swift_getObjectType();
          dispatch thunk of TTRRemindersListTreeContentsQueryable.isLastItemInSection(_:)();
          swift_unknownObjectRelease();
        }

        goto LABEL_33;
      }
    }

    else
    {
      if (v52 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
      {
        if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
        {
          (*(v49 + 96))(v51, v48);
          v101 = v42;
          v102 = v200;
          (*(v42 + 4))(v47, v51, v200);
          type metadata accessor for TTRIRemindersListCompletedCell();
          v103 = v235;
          if (swift_dynamicCastClass())
          {
            (*(v42 + 2))(v44, v47, v102);
            v104 = v103;
            sub_1004D2BE8(v44, &v254);
            v105 = v258;
            v239 = v254;
            v234 = v47;
            v235 = v42;
            v106 = v256;
            v240 = v255;
            v107 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1000301AC(v106);
            v108 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1000301AC(v105);
            v241 = v254;
            *&v242 = v255;
            *(&v242 + 1) = sub_1003DE964;
            *&v243 = v107;
            *(&v243 + 1) = sub_1003DE96C;
            v244 = v108;
            v237 = &type metadata for TTRIRemindersListCompletedCellContentConfiguration;
            v238 = sub_1003DE974();
            v109 = swift_allocObject();
            v236 = v109;
            v110 = v242;
            *(v109 + 16) = v241;
            *(v109 + 32) = v110;
            *(v109 + 48) = v243;
            *(v109 + 64) = v244;
            v111 = v104;
            sub_10008E15C(&v241, &v245);
            UITableViewCell.contentConfiguration.setter();

            (*(v235 + 1))(v234, v200);
            v245 = v239;
            v246 = v240;
            v247 = sub_1003DE964;
            v248 = v107;
            v249 = sub_1003DE96C;
            v250 = v108;
            sub_10008E220(&v245);
          }

          else
          {
            if (qword_100767240 != -1)
            {
              swift_once();
            }

            v150 = type metadata accessor for Logger();
            sub_100003E30(v150, qword_100781340);
            v151 = v103;
            v152 = Logger.logObject.getter();
            v153 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v152, v153))
            {
              v154 = swift_slowAlloc();
              v155 = swift_slowAlloc();
              *v154 = 138412290;
              *(v154 + 4) = v151;
              *v155 = v151;
              v156 = v151;
              _os_log_impl(&_mh_execute_header, v152, v153, "Failed to cast cell to completedCell {cell: %@}", v154, 0xCu);
              sub_1000079B4(v155, &unk_10076DF80);
            }

            (v101[1])(v47, v102);
          }

          return;
        }

        if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:))
        {
          (*(v49 + 96))(v51, v48);
          v137 = v196;
          v138 = v198;
          v139 = v51;
          v140 = v197;
          (*(v196 + 32))(v198, v139, v197);
          type metadata accessor for TTRIRemindersListHashtagCollectionCell(0);
          v141 = v235;
          v142 = swift_dynamicCastClass();
          if (v142)
          {
            v143 = v142;
            (*(v137 + 16))(v39, v138, v140);
            (*(v137 + 56))(v39, 0, 1, v140);
            v144 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_viewModel;
            swift_beginAccess();
            v145 = v195;
            sub_10000794C(v143 + v144, v195, &qword_1007693B8);
            swift_beginAccess();
            v146 = v141;
            sub_100019180(v39, v143 + v144, &qword_1007693B8);
            swift_endAccess();
            sub_1005FCE90(v145);
            sub_1000079B4(v145, &qword_1007693B8);
            sub_1000079B4(v39, &qword_1007693B8);
            (*(v137 + 8))(v198, v140);
            *(v143 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_allowsExcludedSelection) = 1;
            *(v143 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListHashtagCollectionCell_delegate + 8) = &off_1007250A8;
            swift_unknownObjectWeakAssign();
          }

          else
          {
            if (qword_100767240 != -1)
            {
              swift_once();
            }

            v168 = type metadata accessor for Logger();
            sub_100003E30(v168, qword_100781340);
            v169 = v141;
            v170 = Logger.logObject.getter();
            v171 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v170, v171))
            {
              v172 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              *v172 = 138412290;
              *(v172 + 4) = v169;
              *v173 = v169;
              v174 = v169;
              _os_log_impl(&_mh_execute_header, v170, v171, "Failed to cast cell to hashtagsCell {cell: %@}", v172, 0xCu);
              sub_1000079B4(v173, &unk_10076DF80);
            }

            (*(v137 + 8))(v138, v140);
          }

          return;
        }

        if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:))
        {
          (*(v49 + 96))(v51, v48);
          v47 = v192;
          v48 = v193;
          v49 = v194;
          (*(v193 + 32))(v192, v51, v194);
          type metadata accessor for TTRIRemindersListTemplateStatusCell();
          v44 = v235;
          v147 = swift_dynamicCastClass();
          if (v147)
          {
            v148 = v147;
            (*(v48 + 16))(v32, v47, v49);
            v149 = v44;
            sub_100300E3C(v32);
            (*(v48 + 8))(v47, v49);
            *(v148 + qword_10077C060 + 8) = &off_100725098;
            swift_unknownObjectWeakAssign();

            return;
          }
        }

        else
        {
          if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
          {
            (*(v49 + 96))(v51, v48);
            v158 = v189;
            v157 = v190;
            v159 = v191;
            (*(v190 + 32))(v189, v51, v191);
            type metadata accessor for TTRIRemindersListTipCell();
            v160 = v235;
            if (swift_dynamicCastClass())
            {
              v161 = *&v231[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
              v162 = *&v231[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
              sub_10000C36C(&v231[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v161);
              v163 = *(v162 + 8);
              v164 = v158;
              v165 = *(v163 + 1104);
              v166 = v160;
              v165(&v254, v164, v161, v163);
              sub_10000B0D8(&v254, &v245);
              v167 = v166;
              UITableViewCell.contentConfiguration.setter();

              sub_100004758(&v254);
              (*(v157 + 8))(v164, v191);
            }

            else
            {
              if (qword_100767240 != -1)
              {
                swift_once();
              }

              v182 = type metadata accessor for Logger();
              sub_100003E30(v182, qword_100781340);
              v183 = v160;
              v184 = Logger.logObject.getter();
              v185 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v184, v185))
              {
                v186 = swift_slowAlloc();
                v187 = swift_slowAlloc();
                *v186 = 138412290;
                *(v186 + 4) = v183;
                *v187 = v183;
                v188 = v183;
                _os_log_impl(&_mh_execute_header, v184, v185, "Failed to cast cell to tipCell {cell: %@}", v186, 0xCu);
                sub_1000079B4(v187, &unk_10076DF80);
              }

              (*(v157 + 8))(v158, v159);
            }

            return;
          }

          if (v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v52 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
          {
            return;
          }

          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
        }

        if (qword_100767240 != -1)
        {
          swift_once();
        }

        v175 = type metadata accessor for Logger();
        sub_100003E30(v175, qword_100781340);
        v176 = v44;
        v177 = Logger.logObject.getter();
        v178 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v177, v178))
        {
          v179 = swift_slowAlloc();
          v180 = swift_slowAlloc();
          *v179 = 138412290;
          *(v179 + 4) = v176;
          *v180 = v176;
          v181 = v176;
          _os_log_impl(&_mh_execute_header, v177, v178, "Failed to cast cell to templateStatusCell {cell: %@}", v179, 0xCu);
          sub_1000079B4(v180, &unk_10076DF80);
        }

        (*(v48 + 8))(v47, v49);
        return;
      }

      v89 = v230;
      v88 = v231;
      v90 = sub_1003CBA9C(v230, v235);
      if (v90)
      {
        v74 = v90;
        v91 = *&v88[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
        v92 = *&v88[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
        sub_10000C36C(&v88[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v91);
        (*(*(v92 + 8) + 1040))(v89, v91);
LABEL_33:
        TTRIRemindersListReminderCell.hideSeparatorDueToLastItemInSection.setter();
      }
    }

LABEL_2:
    (*(v49 + 8))(v51, v48);
    return;
  }

  (*(v49 + 96))(v51, v48);
  v53 = v232;
  (*(v233 + 32))(v232, v51, v234);
  v54 = type metadata accessor for TTRIRemindersListEditableSectionCell();
  v55 = v235;
  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v57 = v56;
    v200 = v54;
    *(v56 + OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_delegate + 8) = &off_100725070;
    v58 = v231;
    swift_unknownObjectWeakAssign();
    v59 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter;
    sub_10000B0D8(&v58[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], &v254);
    v60 = v256;
    v61 = v257;
    v198 = sub_10000C36C(&v254, v256);
    v62 = OBJC_IVAR____TtC9Reminders36TTRIRemindersListEditableSectionCell_nameModule;
    swift_beginAccess();
    v64 = v224;
    v63 = v225;
    if ((*(v224 + 48))(&v57[v62], 1, v225))
    {
      v65 = v217;
      v66 = v55;
      v67 = v218;
      (*(v228 + 56))(v217, 1, 1, v218);
      v68 = v66;
    }

    else
    {
      v197 = v61;
      v93 = v201;
      (*(v64 + 16))(v201, &v57[v62], v63);
      v94 = v55;
      TTRRemindersListInCellModule.interface.getter();
      (*(v64 + 8))(v93, v63);
      v95 = v241;
      v96 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
      swift_beginAccess();
      v97 = v202;
      sub_10000794C(v95 + v96, v202, &unk_100776BC0);
      v98 = v223;
      v99 = v227;
      if ((*(v223 + 48))(v97, 1, v227))
      {
        swift_unknownObjectRelease();
        sub_1000079B4(v97, &unk_100776BC0);
        v100 = 1;
        v65 = v217;
      }

      else
      {
        v112 = v199;
        (*(v98 + 16))(v199, v97, v99);
        sub_1000079B4(v97, &unk_100776BC0);
        v65 = v217;
        TTRRemindersListEditableSectionNameViewModel.item.getter();
        swift_unknownObjectRelease();
        (*(v98 + 8))(v112, v227);
        v100 = 0;
      }

      v67 = v218;
      (*(v228 + 56))(v65, v100, 1, v218);
      v61 = v197;
    }

    v113 = v230;
    v114 = (*(*(v61 + 8) + 312))(v230, v65, v60);
    sub_1000079B4(v65, &qword_100772140);
    sub_100004758(&v254);
    if ((v114 & 1) == 0)
    {
LABEL_37:
      (*(v228 + 16))(v229, v113, v67);
      v123 = v226;
      v124 = v232;
      TTRRemindersListViewModel.SectionHeader.title.getter();
      v125 = v219;
      v126 = *(v219 + 48);
      v127 = v221;
      if (v126(v123, 1, v221) == 1)
      {
        v128 = type metadata accessor for TTRListColors.Color();
        (*(*(v128 - 8) + 56))(v205, 1, 1, v128);
        (*(v204 + 104))(v207, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v206);
        (*(v208 + 104))(v210, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v209);
        (*(v211 + 104))(v213, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v212);
        (*(v214 + 104))(v215, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v216);
        v124 = v232;
        v129 = v226;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v130 = v126(v129, 1, v127);
        v131 = v223;
        v132 = v235;
        if (v130 != 1)
        {
          sub_1000079B4(v129, &unk_10076B050);
        }
      }

      else
      {
        (*(v125 + 32))(v222, v123, v127);
        v131 = v223;
        v132 = v235;
      }

      v133 = v220;
      TTRRemindersListEditableSectionNameViewModel.init(item:sectionHeaderTitle:)();
      (*(v131 + 56))(v133, 0, 1, v227);
      sub_100496818(v133);
      v134 = TTRRemindersListViewModel.SectionHeader.isVisible.getter();
      v135 = v200;
      v253.receiver = v57;
      v253.super_class = v200;
      v136 = objc_msgSendSuper2(&v253, "isHidden");
      v252.receiver = v57;
      v252.super_class = v135;
      objc_msgSendSuper2(&v252, "setHidden:", (v134 & 1) == 0);
      v251.receiver = v57;
      v251.super_class = v135;
      if (v136 != objc_msgSendSuper2(&v251, "isHidden"))
      {
        [v57 setNeedsLayout];
      }

      (*(v233 + 8))(v124, v234);
      return;
    }

    v115 = v231;
    sub_10000B0D8(&v231[v59], &v254);
    v116 = v256;
    v117 = v257;
    sub_10000C36C(&v254, v256);
    v118 = [v115 parentViewController];
    if (v118)
    {
      swift_getObjectType();
      v119 = swift_conformsToProtocol2();
      if (v119)
      {
        v120 = *(v119 + 8);
LABEL_36:
        v121 = *(*(v117 + 8) + 344);
        v122 = v203;
        v113 = v230;
        v121(v230, v118, v120, v115, v116);
        swift_unknownObjectRelease();
        (*(v224 + 56))(v122, 0, 1, v225);
        swift_beginAccess();
        sub_100019180(v122, &v57[v62], &unk_100792D90);
        swift_endAccess();
        sub_1004978D4();
        sub_1000079B4(v122, &unk_100792D90);
        sub_100004758(&v254);
        goto LABEL_37;
      }

      v118 = 0;
    }

    v120 = 0;
    goto LABEL_36;
  }

  if (qword_100767240 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_100003E30(v81, qword_100781340);
  v82 = v55;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138412290;
    *(v85 + 4) = v82;
    *v86 = v82;
    v87 = v82;
    _os_log_impl(&_mh_execute_header, v83, v84, "Failed to cast cell to editableSectionCell {cell: %@}", v85, 0xCu);
    sub_1000079B4(v86, &unk_10076DF80);
  }

  (*(v233 + 8))(v53, v234);
}

void *sub_1003DC640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
  {
    goto LABEL_15;
  }

  if (v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
  {
    (*(v5 + 8))(v7, v4);
    v14 = 1;
    return (v14 & 1);
  }

  v15 = v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:);
  if (v15 || v8 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
  {
LABEL_15:
    (*(v5 + 8))(v7, v4);
  }

  else if (v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) && v8 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_36;
  }

  result = *(a1 + qword_10078A540);
  if (result)
  {
    v14 = sub_10042122C(a2, [result isEditing]);
    return (v14 & 1);
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1003DC85C()
{
  v1 = type metadata accessor for TTRTemplateSharingAction();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter);
  v7 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24);
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32);
  sub_10000C36C(v5, v7);
  (*(*(v6 + 8) + 864))(v10, v7);
  if (!v11)
  {
    return sub_1000079B4(v10, &unk_100781810);
  }

  sub_10000C36C(v10, v11);
  (*(v2 + 104))(v4, enum case for TTRTemplateSharingAction.createLink(_:), v1);
  sub_1001E26D0(v4);
  (*(v2 + 8))(v4, v1);
  return sub_100004758(v10);
}

id sub_1003DC9C4()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_100780CB8] = 0;
  *&v0[qword_100780CC0] = &_swiftEmptyDictionarySingleton;
  v2 = &v0[qword_100780CD8];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = &v0[qword_100780C80];
  *v4 = sub_1003DE4B8;
  v4[1] = v3;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = &v0[qword_100780C88];
  *v6 = sub_1003DE4E8;
  v6[1] = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v0[qword_100780C90];
  *v8 = sub_1003DE4F0;
  v8[1] = v7;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = &v0[qword_100780C98];
  *v10 = sub_1003DE4F8;
  v10[1] = v9;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = &v0[qword_100780CA0];
  *v12 = sub_1003DF144;
  v12[1] = v11;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = &v0[qword_100780CA8];
  *v14 = sub_1003DE500;
  v14[1] = v13;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = &v0[qword_100780CB0];
  *v16 = sub_1003DF158;
  v16[1] = v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = &v0[qword_100780CC8];
  *v18 = sub_1003DE508;
  v18[1] = v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = &v0[qword_100780CD0];
  *v20 = sub_1003DE510;
  v20[1] = v19;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, "init");
}

void sub_1003DCCB8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_initialFrameForLoadingView;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_preferredChromelessBarStates;
  sub_100058000(&unk_100781980);
  swift_allocObject();
  *(v0 + v3) = TTRObservableViewModel.init(value:)();
  *(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController) = 0;
  v4 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_itemStateTracker;
  type metadata accessor for TTRRemindersListItemStateTracker();
  swift_allocObject();
  *(v0 + v4) = TTRRemindersListItemStateTracker.init()();
  v5 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_pencilAutoCommitTracker;
  type metadata accessor for TTRIRemindersListPencilAutoCommitTracker();
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v1 + v5) = v6;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_chromelessToolbarUpdater) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView) = 0;
  v7 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_canMoveItemReturnValueTempOverrides;
  type metadata accessor for TTRIRemindersListTemporaryItemSet();
  v8 = swift_allocObject();
  *(v8 + 24) = &_swiftEmptySetSingleton;
  sub_100003540(0, &qword_100777780);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  *(v8 + 16) = TTRDeferredAction.init(queue:)();
  sub_1003DF088(&qword_1007810E0, type metadata accessor for TTRIRemindersListTemporaryItemSet);

  TTRDeferredAction.delegate.setter();

  *(v1 + v7) = v8;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_automaticSubtaskSelectionController) = 0;
  v9 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_contextMenuOriginatorItem;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(*(v10 - 8) + 56);
  v11(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_treeViewHasSwipedItem) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_isHighlightingItemsProgrammatically) = 0;
  v11(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_firstVisibleItemToRestore, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_internalFocusedCell) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___completedTasksRotor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___incompleteTasksRotor) = 0;
  *(v1 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___overdueTasksRotor) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1003DCF8C()
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v0[qword_100787F68] = 0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v0[qword_100787F30];
  *v3 = sub_1003DE518;
  *(v3 + 1) = v2;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = &v0[qword_100787F38];
  *v5 = sub_1003DE520;
  *(v5 + 1) = v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = &v0[qword_100787F40];
  *v7 = sub_1003DE528;
  v7[1] = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = &v0[qword_100787F48];
  *v9 = sub_1003DF144;
  v9[1] = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v0[qword_100787F50];
  *v11 = sub_1003DF144;
  v11[1] = v10;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = &v0[qword_100787F58];
  *v13 = sub_1003DF154;
  v13[1] = v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = &v0[qword_100787F60];
  *v15 = sub_1003DF15C;
  v15[1] = v14;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_1003DD1D0()
{
  TTRObservableViewModel.value.getter();
  sub_10016A680();
  return TTRObservableViewModel<A>.update(with:forcePublish:)();
}

uint64_t sub_1003DD23C()
{
  v1 = v0;
  v2 = type metadata accessor for TTREditingStateOption.InputType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775698);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_100058000(&unk_1007817C0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isEditing])
  {
    goto LABEL_4;
  }

  v37 = v3;
  v38 = v13;
  v18 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 24];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter + 32];
  sub_10000C36C(&v1[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_presenter], v18);
  (*(*(v17 + 8) + 392))(v18);
  v19 = sub_100058000(&qword_100775A58);
  if ((*(*(v19 - 8) + 48))(v8, 1, v19) == 1)
  {
    sub_1000079B4(v8, &qword_100775698);
LABEL_4:
    v20 = type metadata accessor for PromiseError();
    sub_1003DF088(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for PromiseError.cancelled(_:), v20);
    sub_100058000(&unk_10078A390);
    swift_allocObject();
    return Promise.init(error:)();
  }

  v23 = *(v19 + 48);
  v24 = *(v9 + 48);
  v25 = v12;
  v26 = *(v38 + 32);
  v35 = *&v8[v23];
  v27 = v8;
  v28 = v25;
  v36 = v25;
  v26(v11, v27, v25);
  *&v11[v24] = v35;
  v35 = *&v11[*(v9 + 48)];
  v26(v16, v11, v28);
  v29 = v37;
  (*(v37 + 104))(v5, enum case for TTREditingStateOption.InputType.pencil(_:), v2);
  sub_1003C3EF0(v16, v5);
  (*(v29 + 8))(v5, v2);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v35;
  swift_unknownObjectRetain();
  v32 = zalgo.getter();
  sub_100058000(&qword_1007817E0);
  dispatch thunk of Promise.then<A>(on:closure:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v33 = zalgo.getter();
  v34 = dispatch thunk of Promise.error(on:closure:)();
  swift_unknownObjectRelease();

  (*(v38 + 8))(v16, v36);

  return v34;
}

void sub_1003DD888(void *a1, double a2, double a3)
{
  sub_100117CEC();
  PassthroughSubject.send(_:)();
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 hitTest:0 withEvent:{a2, a3}];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for TTRIRemindersListBackgroundView();
      if (swift_dynamicCastClass())
      {
        v10 = v9;
        sub_1003DD23C();
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

void *sub_1003DD988()
{
  v1 = sub_1003C5594(&OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView, sub_1003C3A28);
  result = *&v1[qword_10078A540];
  if (result)
  {
    v3 = [result hasActiveDrag];

    if (v3)
    {
      return 0;
    }

    result = *(*(v0 + OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController____lazy_storage___treeView) + qword_10078A540);
    if (result)
    {
      return ([result hasActiveDrop] ^ 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003DDA30(uint64_t a1)
{
  v2 = type metadata accessor for AppEntityID();
  v42 = *(v2 - 8);
  v43 = v2;
  __chkstk_darwin(v2);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v45 = *(v10 - 8);
  v46 = v10;
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = type metadata accessor for REMFeatureFlags();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, enum case for REMFeatureFlags.viewAnnotation(_:), v16, v18);
  v21 = REMFeatureFlags.isEnabled.getter();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    TTRIRemindersListReminderCell.viewModel.getter();
    v23 = v48;
    if (!v48)
    {
      return sub_1000079B4(v47, &qword_100780978);
    }

    v38 = a1;
    v24 = sub_10000C36C(v47, v48);
    v25 = *(v23 - 8);
    v26 = __chkstk_darwin(v24);
    v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    sub_1000079B4(v47, &qword_100780978);
    dispatch thunk of TTRIRemindersListReminderCellViewModel.item.getter();
    (*(v25 + 8))(v28, v23);
    v30 = v45;
    v29 = v46;
    (*(v45 + 32))(v15, v12, v46);
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v31 = v44;
    v32 = (*(v44 + 88))(v9, v7);
    if (v32 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
    {
      (*(v31 + 96))(v9, v7);
      v34 = v39;
      v33 = v40;
      (*(v39 + 32))(v6, v9, v40);
      v35 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      (*(v34 + 8))(v6, v33);
      type metadata accessor for ReminderEntity();
      v36 = v35;
      v37 = v41;
      AppEntityID.init(objectID:)();
      sub_1003DF088(&qword_10076DF78, &type metadata accessor for ReminderEntity);
      UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

      (*(v42 + 8))(v37, v43);
      return (*(v30 + 8))(v15, v29);
    }

    if (v32 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) && v32 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      if (v32 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
LABEL_11:
        UIView.removeAssociatedAppEntity()();
        return (*(v30 + 8))(v15, v29);
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(v31 + 8))(v9, v7);
    goto LABEL_11;
  }

  return result;
}

id sub_1003DE020()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v5 = [v1 canOpenURL:v3];

  if (v5)
  {
    v6 = [v0 sharedApplication];
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    sub_10046187C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1003DF088(&unk_100781820, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 openURL:v9 options:isa completionHandler:0];
  }

  return v5;
}

uint64_t sub_1003DE1A4(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(a1) = sub_1003C57CC(a1);

  return a1 & 1;
}

uint64_t sub_1003DE1E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1003DE224(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListHighlightTarget() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1003C9454(a1, *(v1 + 16), v1 + v4, *v5, *(v5 + 8));
}

uint64_t sub_1003DE308(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TTRRemindersListHighlightTarget.TargetItem() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));

  return a1(v3, v4, v5);
}

void sub_1003DE74C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1003DE794(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_1003DE864(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(type metadata accessor for TTRReminderSwipeAction() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  sub_1003CD9B0(a1, a2, a3, a4, v13, v4 + v10, v14);
}

unint64_t sub_1003DE974()
{
  result = qword_100781920;
  if (!qword_100781920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781920);
  }

  return result;
}

uint64_t sub_1003DEF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003DEF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003DF088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003DF174(uint64_t result)
{
  if (result <= 1u)
  {
    if (!result)
    {
      return result;
    }

    v5 = "ng view - declined";
    v6 = 0x747065636341;
  }

  else
  {
    if (result != 2)
    {
      if (result == 3)
      {
        v1 = 0xD000000000000031;
        v2 = 0x676E69646E6550;
        v3 = 0x8000000100684A00;
        v4 = 0xE700000000000000;
      }

      else
      {
        v1 = 0xD000000000000026;
        v2 = 0x72656E774FLL;
        v3 = 0x80000001006849D0;
        v4 = 0xE500000000000000;
      }

      return TTRLocalizedString(_:comment:)(*&v2, *&v1)._countAndFlagsBits;
    }

    v5 = "ng view - pending";
    v6 = 0x6E696C636544;
  }

  v2 = v6 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
  v3 = v5 | 0x8000000000000000;
  v4 = 0xE800000000000000;
  v1 = 0xD000000000000032;
  return TTRLocalizedString(_:comment:)(*&v2, *&v1)._countAndFlagsBits;
}

uint64_t sub_1003DF268()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007819E0);
  v1 = sub_100003E30(v0, qword_1007819E0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1003DF330(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return sub_1003DF3A8(v10, v12);
}

BOOL sub_1003DF3A8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100003540(0, &qword_10076BA50);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10 || (*(a1 + 8) != *(a2 + 8) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (v11)
  {
    if (!v12 || (*(a1 + 24) != *(a2 + 24) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    if (!v14 || (*(a1 + 40) != *(a2 + 40) || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if (v15)
  {
    if (!v16 || (*(a1 + 56) != *(a2 + 56) || v15 != v16) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 80);
  v18 = *(a2 + 80);
  if (v17)
  {
    if (!v18 || (*(a1 + 72) != *(a2 + 72) || v17 != v18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 96);
  v20 = *(a2 + 96);
  if (v19)
  {
    if (!v20 || (*(a1 + 88) != *(a2 + 88) || v19 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    return *(a1 + 104) == *(a2 + 104);
  }

  if (!v20)
  {
    return *(a1 + 104) == *(a2 + 104);
  }

  return 0;
}

void sub_1003DF5B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 objectID];
  v5 = [a1 displayName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [a1 firstName];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v13;
  }

  else
  {
    v12 = 0;
    v44 = 0;
  }

  v14 = [a1 lastName];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v17;
    v42 = v16;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  v18 = [a1 address];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = [a1 status];
  if (v23 < 6)
  {
    v24 = v23;
    v45 = v12;
    v46 = v9;
    v47 = v7;
    if (v22)
    {
      String.lowercased()();
      v25 = String._bridgeToObjectiveC()();
      v26 = [v25 hasMailto];

      v27 = String._bridgeToObjectiveC()();
      v28 = v27;
      if (v26)
      {

        v29 = [v28 rem_removingMailto];

        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = 0;
        v34 = 0;
LABEL_22:
        *a2 = v4;
        *(a2 + 8) = v47;
        *(a2 + 16) = v46;
        *(a2 + 24) = v45;
        *(a2 + 32) = v44;
        *(a2 + 40) = v43;
        *(a2 + 48) = v41;
        *(a2 + 56) = v20;
        *(a2 + 64) = v22;
        *(a2 + 72) = v30;
        *(a2 + 80) = v32;
        *(a2 + 88) = v33;
        *(a2 + 96) = v34;
        *(a2 + 104) = 0x30000020100uLL >> (8 * v24);
        return;
      }

      v35 = [v27 hasTel];

      if (v35)
      {
        v36 = String._bridgeToObjectiveC()();

        v37 = [v36 rem_removingTel];

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v38;

LABEL_21:
        v30 = 0;
        v32 = 0;
        goto LABEL_22;
      }
    }

    v33 = 0;
    v34 = 0;
    goto LABEL_21;
  }

  if (qword_100767248 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_100003E30(v39, qword_1007819E0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unknown sharee status", 21, 2);
  __break(1u);
}

double sub_1003DF908@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = [a1 sharedOwnerID];
  v4 = [a1 sharedOwnerName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 sharedOwnerAddress];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    String.lowercased()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v14 hasMailto];

    v16 = String._bridgeToObjectiveC()();
    v17 = v16;
    if (v15)
    {

      v18 = [v17 rem_removingMailto];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = 0;
      v23 = 0;
    }

    else
    {
      v24 = [v16 hasTel];

      if (v24)
      {
        v25 = String._bridgeToObjectiveC()();

        v26 = [v25 rem_removingTel];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v27;
      }

      else
      {

        v22 = 0;
        v23 = 0;
      }

      v19 = 0;
      v21 = 0;
    }
  }

  else
  {

    v22 = 0;
    v23 = 0;
    v19 = 0;
    v21 = 0;
    v11 = 0;
    v13 = 0;
  }

  *a2 = v29;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = v19;
  *(a2 + 80) = v21;
  *(a2 + 88) = v22;
  *(a2 + 96) = v23;
  *(a2 + 104) = 4;
  return result;
}

char *sub_1003DFB40(void *a1)
{
  v1 = a1;
  v2 = [a1 shareeContext];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sharees];

    sub_100003540(0, &qword_10076BC70);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }

LABEL_14:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_15:

    v7 = _swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v5 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  *&v29[0] = _swiftEmptyArrayStorage;
  v7 = v29;
  sub_1004A21D8(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
LABEL_24:
    v7 = sub_100547808(0, *(v7 + 2) + 1, 1, v7);
    goto LABEL_19;
  }

  v8 = 0;
  v7 = *&v29[0];
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v5 + 8 * v8 + 32);
    }

    sub_1003DF5B4(v9, v27);
    *&v29[0] = v7;
    v11 = *(v7 + 2);
    v10 = *(v7 + 3);
    if (v11 >= v10 >> 1)
    {
      sub_1004A21D8((v10 > 1), v11 + 1, 1);
      v7 = *&v29[0];
    }

    ++v8;
    *(v7 + 2) = v11 + 1;
    v12 = &v7[112 * v11];
    v13 = v27[0];
    v14 = v27[2];
    *(v12 + 3) = v27[1];
    *(v12 + 4) = v14;
    *(v12 + 2) = v13;
    v15 = v27[3];
    v16 = v27[4];
    v17 = v28[0];
    *(v12 + 121) = *(v28 + 9);
    *(v12 + 6) = v16;
    *(v12 + 7) = v17;
    *(v12 + 5) = v15;
  }

  while (v6 != v8);

LABEL_16:
  if ([v1 isOwnedByMe])
  {

    return v7;
  }

  v1 = v1;
  sub_1003DF908(v1, v29);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v19 = *(v7 + 2);
  v18 = *(v7 + 3);
  if (v19 >= v18 >> 1)
  {
    v7 = sub_100547808((v18 > 1), v19 + 1, 1, v7);
  }

  *(v7 + 2) = v19 + 1;
  v20 = &v7[112 * v19];
  v21 = v29[0];
  v22 = v29[2];
  *(v20 + 3) = v29[1];
  *(v20 + 4) = v22;
  *(v20 + 2) = v21;
  v23 = v29[3];
  v24 = v29[4];
  v25 = v30[0];
  *(v20 + 121) = *(v30 + 9);
  *(v20 + 6) = v24;
  *(v20 + 7) = v25;
  *(v20 + 5) = v23;
  return v7;
}

uint64_t destroy for TTRListSharingViewModel.Participant(id *a1)
{
}

uint64_t initializeWithCopy for TTRListSharingViewModel.Participant(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;
  v9 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v9;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v10 = v3;

  return a1;
}

uint64_t assignWithCopy for TTRListSharingViewModel.Participant(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

__n128 initializeWithTake for TTRListSharingViewModel.Participant(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TTRListSharingViewModel.Participant(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v6;

  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;

  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  v9 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v9;

  v10 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v10;

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListSharingViewModel.Participant(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRListSharingViewModel.Participant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1003E01B4()
{
  result = qword_1007819F8;
  if (!qword_1007819F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007819F8);
  }

  return result;
}

uint64_t sub_1003E0208(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2)
  {
    return a2();
  }

  return result;
}

void sub_1003E0238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(REMSaveRequest) initWithStore:*(v4 + 16)];
  static TTRDebugExampleInserts.makeSomeExampleInsertsToCloudKitAccount(saveRequest:lists:reminders:)();
  sub_1000A96A0();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v11[4] = sub_1003E03A0;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100009DE4;
  v11[3] = &unk_100725B28;
  v10 = _Block_copy(v11);
  sub_10003BE34(a3);

  [v7 saveWithQueue:v8 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1003E03A0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void *sub_1003E03D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1004A1D74(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1004A1D74((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for TTRIRemindersListDragReminder();
        v16 = &off_10072B5C0;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_100005FD0(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = v3[2];
        v12 = v3[3];
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_1004A1D74((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for TTRIRemindersListDragReminder();
        v16 = &off_10072B5C0;
        *&v14 = v13;
        v3[2] = v11 + 1;
        sub_100005FD0(&v14, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1003E0588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1004A1E3C(0, v1, 0);
    v3 = a1 + 40;
    do
    {
      v4 = *(v3 - 8);
      sub_100058000(&qword_100781C90);
      sub_100058000(&qword_100781C98);
      swift_dynamicCast();
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1004A1E3C((v5 > 1), v6 + 1, 1);
      }

      v3 += 16;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      v7 = &_swiftEmptyArrayStorage[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003E06B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1004A2134(0, v1, 0);
    v3 = a1 + 32;
    do
    {

      sub_100058000(&qword_100781CA0);
      sub_100058000(&unk_10076BCD0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1004A2134((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v7;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1003E07FC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1004A23A8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          sub_1004A23A8((v6 > 1), v7 + 1, 1);
        }

        ++v4;
        v8 = sub_10000E188(&qword_100777BD0, &qword_100776900);
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v9 = &_swiftEmptyArrayStorage[2 * v7];
        v9[4] = v5;
        v9[5] = v8;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_1004A23A8((v14 > 1), v11 + 1, 1);
        }

        v15 = sub_10000E188(&qword_100777BD0, &qword_100776900);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        v16 = &_swiftEmptyArrayStorage[v12];
        v16[4] = v13;
        v16[5] = v15;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

void *sub_1003E09F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1004A2368(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_1004A2368((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        v8[4] = v5;
        v8[5] = &protocol witness table for TTRITableSection;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_1004A2368((v14 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        v15[4] = v13;
        v15[5] = &protocol witness table for TTRITableSection;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

char *sub_1003E0B88(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10002AFF4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100003540(0, &qword_10076BA60);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10002AFF4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100007DD8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100003540(0, &qword_10076BA60);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10002AFF4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100007DD8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1003E0D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_10002AFF4(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10002AFF4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100007DD8(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1003E0E84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1004A2550(0, v1, 0);
    v3 = a1 + 48;
    do
    {

      sub_100058000(&qword_100781C20);
      sub_100058000(&qword_100781C28);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1004A2550((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[3 * v5];
      v6[4] = v8;
      v6[5] = v9;
      *(v6 + 48) = v10;
      v3 += 24;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003E0FBC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100781AA0);
  v1 = sub_100003E30(v0, qword_100781AA0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003E1084@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_100058000(&qword_10076D038);
  __chkstk_darwin(v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v53 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v54 = &v53 - v10;
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v56 = (&v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for REMHashtagLabelCollection();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[13];
  v17 = v1[14];
  sub_10000C36C(v1 + 10, v18);
  (*(v17 + 16))(v18, v17);
  v55 = REMHashtagLabelCollection.labels.getter();
  (*(v14 + 8))(v16, v13);
  v19 = v1[13];
  v20 = v1[14];
  sub_10000C36C(v2 + 10, v2[13]);
  v21 = (*(v20 + 8))(v19, v20);
  if (!v21)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_7;
  }

  v22 = v21;
  REMCustomSmartListFilterDescriptor.hashtags.getter();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_7:
    sub_1000079B4(v5, &qword_10076D038);
    v34 = v56;
    static REMHashtagLabelSpecifier.empty.getter();
    v40 = 0;
    goto LABEL_8;
  }

  v23 = v6;
  v24 = v54;
  (*(v7 + 32))(v54, v5, v23);
  v25 = v53;
  (*(v7 + 16))(v53, v24, v23);
  v26 = (*(v7 + 88))(v25, v23);
  if (v26 != enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:))
  {
    if (v26 != enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.untagged(_:))
    {
      v52 = v23;
      v39 = v57;
      v38 = v58;
      v34 = v56;
      if (v26 == enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.any(_:))
      {
        (*(v7 + 8))(v24, v52);
        (*(v39 + 104))(v34, enum case for REMHashtagLabelSpecifier.allLabels(_:), v38);
        v40 = 1;
        goto LABEL_9;
      }

      goto LABEL_17;
    }

    v34 = v56;
    static REMHashtagLabelSpecifier.empty.getter();
    (*(v7 + 8))(v24, v23);
    v40 = 4;
LABEL_8:
    v39 = v57;
    v38 = v58;
    goto LABEL_9;
  }

  (*(v7 + 96))(v25, v23);
  v28 = *v25;
  v27 = v25[1];
  v29 = *(sub_100058000(&qword_100781C18) + 64);
  v30 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v31 = (*(*(v30 - 8) + 88))(v25 + v29, v30);
  if (v31 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
  {
    v32 = *(sub_100058000(&qword_10076B830) + 64);
    v33 = sub_1004B61FC(v28);

    v34 = v56;
    *v56 = v33;
    v35 = sub_1004B61FC(v27);

    (*(v7 + 8))(v24, v23);
    v34[1] = v35;
    v36 = enum case for REMHashtagLabelSpecifier.Operation.and(_:);
    v37 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v37 - 8) + 104))(v34 + v32, v36, v37);
    v39 = v57;
    v38 = v58;
    (*(v57 + 104))(v34, enum case for REMHashtagLabelSpecifier.labels(_:), v58);
    v40 = 3;
LABEL_9:
    v41 = *(v2 + OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_showsAllHashtagLabels);
    v42 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelsLayoutResult;
    swift_beginAccess();
    v43 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel();
    v44 = v2 + v42;
    v45 = v59;
    sub_10000794C(v44, v59 + v43[8], &qword_100776A98);
    *v45 = v55;
    result = (*(v39 + 32))(v45 + v43[5], v34, v38);
    *(v45 + v43[6]) = v40;
    *(v45 + v43[7]) = v41;
    return result;
  }

  if (v31 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {
    v47 = *(sub_100058000(&qword_10076B830) + 64);
    v48 = sub_1004B61FC(v28);

    v34 = v56;
    *v56 = v48;
    v49 = sub_1004B61FC(v27);

    (*(v7 + 8))(v24, v23);
    v34[1] = v49;
    v50 = enum case for REMHashtagLabelSpecifier.Operation.or(_:);
    v51 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v51 - 8) + 104))(v34 + v47, v50, v51);
    v39 = v57;
    v38 = v58;
    (*(v57 + 104))(v34, enum case for REMHashtagLabelSpecifier.labels(_:), v58);
    v40 = 2;
    goto LABEL_9;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_17:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1003E17E0()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_10000C36C((v0 + 80), v5);
  v7 = (*(v6 + 8))(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (REMCustomSmartListFilterDescriptor.requiresSydneyRomeKincaid.getter())
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      type metadata accessor for MainActor();

      v10 = static MainActor.shared.getter();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = &protocol witness table for MainActor;
      v11[4] = v1;
      sub_10009E31C(0, 0, v4, &unk_10063D7C0, v11);

      return;
    }
  }

  if (*(v0 + 64) == 1)
  {
    *(v0 + 64) = 0;
    v12._object = 0x8000000100670CE0;
    v12._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v12);
  }
}

uint64_t sub_1003E1994(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076D020);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v46 = &v45 - v11;
  v12 = sub_100058000(&qword_100775720);
  __chkstk_darwin(v12 - 8);
  v47 = &v45 - v13;
  v14 = sub_100058000(&qword_100776AB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = a1 + *(type metadata accessor for TTRSmartListFilterEditorViewModel(0) + 32);
  sub_10000794C(v17, v16, &qword_100776AB0);
  v18 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v18;
  v22 = v20;
  v50 = v19 + 48;
  LODWORD(a1) = (v20)(v16, 1);
  result = sub_1000079B4(v16, &qword_100776AB0);
  if (a1 != 1 || *(v2 + 288) == 1)
  {
    if (!v22(v17, 1, v21))
    {
      swift_getObjectType();
      *(v17 + 40) = dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems.getter();
    }

    v24 = *(v2 + 104);
    v25 = *(v2 + 112);
    sub_10000C36C((v2 + 80), v24);
    v26 = (*(v25 + 8))(v24, v25);
    if (v26)
    {
      v27 = v26;
      REMCustomSmartListFilterDescriptor.location.getter();

      v29 = v48;
      v28 = v49;
      if ((*(v48 + 48))(v6, 1, v49) != 1)
      {
        v30 = v46;
        (*(v29 + 32))(v46, v6, v28);
        (*(v29 + 16))(v9, v30, v28);
        v31 = (*(v29 + 88))(v9, v28);
        if (v31 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.vehicle(_:))
        {
          (*(v29 + 8))(v30, v28);
          (*(v29 + 96))(v9, v28);
          if (*v9 == 2)
          {
            v43 = enum case for TTRLocationQuickPickItem.gettingOutOfCar(_:);
            v34 = type metadata accessor for TTRLocationQuickPickItem();
            v35 = *(v34 - 8);
            v32 = v47;
            (*(v35 + 104))(v47, v43, v34);
            goto LABEL_23;
          }

          v32 = v47;
          if (*v9 == 1)
          {
            v33 = enum case for TTRLocationQuickPickItem.gettingInCar(_:);
            v34 = type metadata accessor for TTRLocationQuickPickItem();
            v35 = *(v34 - 8);
            (*(v35 + 104))(v32, v33, v34);
LABEL_23:
            (*(v35 + 56))(v32, 0, 1, v34);
            goto LABEL_14;
          }

LABEL_26:
          v44 = type metadata accessor for TTRLocationQuickPickItem();
          (*(*(v44 - 8) + 56))(v32, 1, 1, v44);
LABEL_14:
          if (v22(v17, 1, v21))
          {
            return sub_1000079B4(v32, &qword_100775720);
          }

          else
          {
            return sub_10000D184(v32, v17 + *(v21 + 24), &qword_100775720);
          }
        }

        if (v31 == enum case for REMCustomSmartListFilterDescriptor.FilterLocation.location(_:))
        {
          (*(v29 + 96))(v9, v28);
          v37 = v9[2];
          v38 = v9[3];
          v39 = v9[4];
          sub_100003540(0, &qword_100781C88);
          v40 = objc_allocWithZone(CLCircularRegion);
          v41 = String._bridgeToObjectiveC()();
          [v40 initWithCenter:v41 radius:v37 identifier:{v38, v39}];

          v42 = REMStructuredLocation.init(title:circularRegion:placemark:)();
          swift_getObjectType();
          v32 = v47;
          dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems(matching:)();

          (*(v48 + 8))(v46, v49);
          goto LABEL_14;
        }

        if (v31 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.any(_:))
        {
          v32 = v47;
          if (v31 != enum case for REMCustomSmartListFilterDescriptor.FilterLocation.noLocation(_:))
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }

          (*(v29 + 8))(v46, v28);
          goto LABEL_26;
        }

        (*(v29 + 8))(v30, v28);
LABEL_13:
        v36 = type metadata accessor for TTRLocationQuickPickItem();
        v32 = v47;
        (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
        goto LABEL_14;
      }
    }

    else
    {
      (*(v48 + 56))(v6, 1, 1, v49);
    }

    sub_1000079B4(v6, &qword_10076D020);
    goto LABEL_13;
  }

  return result;
}

void sub_1003E20F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_100776AA0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v32 - v5);
  v7 = sub_100058000(&qword_100781C80);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v32 - v9);
  v11 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  sub_1003EFF40(a1 + *(v14 + 44), v13, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v34 = a1;
    v15 = *v13;
    v16 = sub_100058000(&qword_100776AA8);
    sub_1000079B4(v13 + *(v16 + 48), &qword_100776AA0);
    v17 = v2[13];
    v18 = v2[14];
    sub_10000C36C(v2 + 10, v17);
    (*(v18 + 40))(v15, v17, v18);
    v19 = (*(v8 + 88))(v10, v7);
    if (v19 == enum case for REMAsyncOperationState.running<A>(_:))
    {
      (*(v8 + 96))(v10, v7);
      swift_allocObject();
      swift_weakInit();
      v20 = zalgo.getter();
      sub_100058000(&qword_10076B288);
      dispatch thunk of Promise.then<A>(on:closure:)();
    }

    else if (v19 == enum case for REMAsyncOperationState.succeeded<A>(_:))
    {
      (*(v8 + 96))(v10, v7);
      v21 = *v10;
      v22 = [*v10 displayName];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v24;
      v33 = v23;

      type metadata accessor for TTRListColors();
      v25 = sub_100003540(0, &qword_10076ABC0);
      v36 = v25;
      v37 = &protocol witness table for REMList;
      v35[0] = v21;
      v26 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListData(0);
      v27 = v21;
      static TTRListColors.color(for:)();
      sub_1000079B4(v35, &unk_100775680);
      v28 = *(v26 + 24);
      v36 = v25;
      v37 = &protocol witness table for REMList;
      v35[0] = v27;
      v29 = v27;
      TTRReminderDetailViewModel.BadgeViewModel.init(listProtocol:)();
      v30 = type metadata accessor for TTRReminderDetailViewModel.BadgeViewModel();
      (*(*(v30 - 8) + 56))(v6 + v28, 0, 1, v30);
      v31 = v32;
      *v6 = v33;
      v6[1] = v31;
      (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
      TTRSmartListFilterEditorViewModel.ListsData.listData.setter(v6);
    }

    else if (v19 == enum case for REMAsyncOperationState.failed<A>(_:))
    {

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }
}

uint64_t sub_1003E25B0(char a1)
{
  v2 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v25 = &v24 - v7;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  LOBYTE(aBlock[0]) = a1 & 1;
  if (a1)
  {
    v10 = &enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
  }

  else
  {
    v10 = &enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:);
  }

  v11 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v13 = v25;
  (*(v3 + 104))(v25, *v10, v2);
  v24 = objc_opt_self();
  v14._countAndFlagsBits = 0xD00000000000002ELL;
  v14._object = 0x80000001006852C0;
  v15._object = 0x80000001006852F0;
  v16._countAndFlagsBits = 0xD000000000000042;
  v16._object = 0x8000000100685310;
  v15._countAndFlagsBits = 0xD000000000000016;
  TTRLocalizedString(_:value:comment:)(v14, v15, v16);
  v17 = String._bridgeToObjectiveC()();

  (*(v3 + 16))(v5, v13, v2);
  v18 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v26;
  (*(v3 + 32))(v19 + v18, v5, v2);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1003F061C;
  *(v20 + 24) = v19;
  aBlock[4] = sub_100068444;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100726458;
  v21 = _Block_copy(aBlock);

  [v24 withActionName:v17 block:v21];
  _Block_release(v21);

  (*(v3 + 8))(v13, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E29D0(unsigned __int8 a1)
{
  v75 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100058000(&qword_100781C48);
  __chkstk_darwin(v68);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v66 - v8;
  v10 = type metadata accessor for Date();
  v67 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v66 - v14;
  v16 = sub_100058000(&qword_10076D030);
  v78 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v79 = v17;
  v80 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v81 = &v66 - v19;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003E30(v20, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  LOBYTE(aBlock[0]) = a1;
  v22 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v22;
  *(inited + 56) = v23;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  if (a1 > 3u)
  {
    if (a1 <= 5u)
    {
      v26 = v81;
      Date.init()();
      if (a1 == 4)
      {
        v35 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:);
      }

      else
      {
        v35 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:);
      }

      v56 = *v35;
      v45 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v26, v56, v45);
    }

    else
    {
      if (a1 != 6)
      {
        if (a1 == 7)
        {
          (*(v69 + 104))(v71, enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Direction.inNext(_:), v70);
          (*(v74 + 104))(v73, enum case for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.Units.day(_:), v75);
          v24 = v72;
          REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange.init(direction:magnitude:units:includePastDue:)();
          v25 = v76;
          v26 = v81;
          v27 = v77;
          (*(v76 + 16))(v81, v24, v77);
          v28 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:);
          v29 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
          v30 = *(v29 - 8);
          (*(v30 + 104))(v26, v28, v29);
          (*(v30 + 56))(v26, 0, 1, v29);
          (*(v25 + 8))(v24, v27);
          v31 = v82;
          *(v82 + 56) = 4;
        }

        else
        {
          v53 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:);
          v54 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
          v55 = *(v54 - 8);
          v26 = v81;
          (*(v55 + 104))(v81, v53, v54);
          (*(v55 + 56))(v26, 0, 1, v54);
          v31 = v82;
        }

        goto LABEL_24;
      }

      Date.init()();
      Date.init()();
      sub_1003EFDC4(&qword_100781C50, &type metadata accessor for Date);
      result = dispatch thunk of static Comparable.<= infix(_:_:)();
      if ((result & 1) == 0)
      {
        goto LABEL_27;
      }

      v37 = v67;
      v38 = *(v67 + 32);
      v38(v9, v15, v10);
      v39 = v68;
      v38(&v9[*(v68 + 48)], v12, v10);
      sub_10000794C(v9, v6, &qword_100781C48);
      v40 = *(v39 + 48);
      v26 = v81;
      v38(v81, v6, v10);
      v41 = *(v37 + 8);
      v41(&v6[v40], v10);
      sub_100016588(v9, v6, &qword_100781C48);
      v42 = *(v39 + 48);
      v43 = sub_100058000(&qword_100781C58);
      v38((v26 + *(v43 + 36)), &v6[v42], v10);
      v41(v6, v10);
      v44 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:);
      v45 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v26, v44, v45);
    }

    (*(v46 + 56))(v26, 0, 1, v45);
    v31 = v82;
    *(v82 + 56) = 1;
LABEL_24:
    v32 = v80;
    goto LABEL_25;
  }

  v26 = v81;
  v31 = v82;
  v32 = v80;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      Date.init()();
      v50 = enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:);
      v51 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
      v52 = *(v51 - 8);
      (*(v52 + 104))(v26, v50, v51);
      (*(v52 + 56))(v26, 0, 1, v51);
      *(v31 + 56) = 1;
      goto LABEL_25;
    }

    *v81 = 0;
    v34 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:);
    goto LABEL_18;
  }

  if (a1)
  {
    v34 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:);
LABEL_18:
    v47 = *v34;
    v48 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
    v49 = *(v48 - 8);
    (*(v49 + 104))(v26, v47, v48);
    (*(v49 + 56))(v26, 0, 1, v48);
    goto LABEL_25;
  }

  v33 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
LABEL_25:
  v57 = objc_opt_self();
  v58._countAndFlagsBits = 0xD000000000000023;
  v58._object = 0x8000000100684E30;
  v59._object = 0x8000000100684E60;
  v60._countAndFlagsBits = 0xD000000000000037;
  v60._object = 0x8000000100684E80;
  v59._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v58, v59, v60);
  v61 = String._bridgeToObjectiveC()();

  sub_10000794C(v26, v32, &qword_10076D030);
  v62 = (*(v78 + 80) + 24) & ~*(v78 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = v31;
  sub_100016588(v32, v63 + v62, &qword_10076D030);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1003EFE14;
  *(v64 + 24) = v63;
  aBlock[4] = sub_100068444;
  aBlock[5] = v64;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100725F08;
  v65 = _Block_copy(aBlock);

  [v57 withActionName:v61 block:v65];
  _Block_release(v65);

  sub_1000079B4(v26, &qword_10076D030);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if ((v57 & 1) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1003E36E8(uint64_t a1)
{
  v175 = a1;
  v172 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v171 = *(v172 - 1);
  __chkstk_darwin(v172);
  v160 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v161 = &v147 - v4;
  v150 = sub_100058000(&qword_100781C48);
  __chkstk_darwin(v150);
  v151 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v149 = &v147 - v7;
  v173 = type metadata accessor for Date();
  v176 = *(v173 - 8);
  __chkstk_darwin(v173);
  v148 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v153 = &v147 - v10;
  __chkstk_darwin(v11);
  v152 = &v147 - v12;
  __chkstk_darwin(v13);
  v147 = &v147 - v14;
  __chkstk_darwin(v15);
  v169 = &v147 - v16;
  __chkstk_darwin(v17);
  v170 = &v147 - v18;
  __chkstk_darwin(v19);
  v158 = &v147 - v20;
  __chkstk_darwin(v21);
  v159 = &v147 - v22;
  __chkstk_darwin(v23);
  v156 = &v147 - v24;
  __chkstk_darwin(v25);
  v157 = &v147 - v26;
  __chkstk_darwin(v27);
  v154 = &v147 - v28;
  __chkstk_darwin(v29);
  v155 = &v147 - v30;
  updated = type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField(0);
  __chkstk_darwin(updated);
  v167 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v168 = &v147 - v33;
  __chkstk_darwin(v34);
  v166 = &v147 - v35;
  __chkstk_darwin(v36);
  v165 = &v147 - v37;
  __chkstk_darwin(v38);
  v164 = &v147 - v39;
  __chkstk_darwin(v40);
  v163 = &v147 - v41;
  v42 = sub_100058000(&qword_10076D030);
  __chkstk_darwin(v42 - 8);
  v162 = &v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v179 = &v147 - v45;
  v46 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  v47 = v46 - 8;
  __chkstk_darwin(v46);
  v49 = &v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v50);
  v52 = &v147 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v147 - v54;
  __chkstk_darwin(v56);
  v58 = &v147 - v57;
  v60 = *(v1 + 104);
  v59 = *(v1 + 112);
  sub_10000C36C((v1 + 80), v60);
  v61 = (*(v59 + 8))(v60, v59);
  TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)(v61, (*(v1 + 65) & 1) == 0, v49);
  sub_1003E1994(v49);
  v178 = v1;
  sub_1003E20F8(v49);
  sub_1003EFF40(&v49[*(v47 + 28)], v58, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  sub_1003EFED8(v49, type metadata accessor for TTRSmartListFilterEditorViewModel);
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100003E30(v62, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  sub_1003EFF40(v58, v55, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v64 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v64;
  *(inited + 56) = v65;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v66 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v69 = v179;
  v68(v179, 1, 1, v66);
  sub_1003EFF40(v58, v52, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v71 = v52;
  v177 = v58;
  if (EnumCaseMultiPayload <= 3)
  {
    v74 = v173;
    if (EnumCaseMultiPayload > 1)
    {
      v72 = v178;
      if (EnumCaseMultiPayload == 2)
      {
        sub_100058000(&qword_100776AE8);

        v108 = v165;
        sub_1003EFF40(v175, v165, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
        v109 = swift_getEnumCaseMultiPayload();
        if (v109 <= 1)
        {
          if (!v109)
          {
            v77 = v176;
            v175 = v71;
            v78 = *(v176 + 32);
            v78(v156, v108, v74);
            v78(v157, v156, v74);
            sub_1000079B4(v69, &qword_10076D030);
            v78(v69, v157, v74);
            v71 = v175;
            v79 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:);
LABEL_32:
            (*(v67 + 104))(v69, *v79, v66);
            v68(v69, 0, 1, v66);
LABEL_45:
            (*(v77 + 8))(v71, v74);
LABEL_61:
            v139 = objc_opt_self();
            v140._countAndFlagsBits = 0xD000000000000023;
            v140._object = 0x8000000100684E30;
            v141._object = 0x8000000100684E60;
            v142._countAndFlagsBits = 0xD000000000000037;
            v142._object = 0x8000000100684E80;
            v141._countAndFlagsBits = 0xD000000000000012;
            TTRLocalizedString(_:value:comment:)(v140, v141, v142);
            v143 = String._bridgeToObjectiveC()();

            v144 = swift_allocObject();
            *(v144 + 16) = v72;
            *(v144 + 24) = v69;
            v145 = swift_allocObject();
            *(v145 + 16) = sub_1003EFF38;
            *(v145 + 24) = v144;
            aBlock[4] = sub_100068444;
            aBlock[5] = v145;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100026440;
            aBlock[3] = &unk_100725F80;
            v146 = _Block_copy(aBlock);

            [v139 withActionName:v143 block:v146];
            _Block_release(v146);

            sub_1003EFED8(v177, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
            LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();

            if ((v143 & 1) == 0)
            {
              sub_1000079B4(v69, &qword_10076D030);
            }

            __break(1u);
            goto LABEL_64;
          }

LABEL_40:
          v77 = v176;
          (*(v176 + 8))(v108, v74);
          goto LABEL_45;
        }
      }

      else
      {
        sub_100058000(&qword_100776AE8);

        v108 = v166;
        sub_1003EFF40(v175, v166, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
        v109 = swift_getEnumCaseMultiPayload();
        if (v109 <= 1)
        {
          if (!v109)
          {
            v77 = v176;
            v175 = v71;
            v110 = *(v176 + 32);
            v110(v158, v108, v74);
            v110(v159, v158, v74);
            sub_1000079B4(v69, &qword_10076D030);
            v110(v69, v159, v74);
            v71 = v175;
            v79 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:);
            goto LABEL_32;
          }

          goto LABEL_40;
        }
      }

      v77 = v176;
      if (v109 != 2)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v75 = v163;
        sub_1003EFF40(v175, v163, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
        v76 = swift_getEnumCaseMultiPayload();
        if (v76 <= 1)
        {
          (*(v176 + 8))(v75, v74);
LABEL_60:
          v72 = v178;
          goto LABEL_61;
        }

        if (v76 != 2)
        {
          v119 = *v75;
          sub_1000079B4(v69, &qword_10076D030);
          *v69 = v119;
          (*(v67 + 104))(v69, enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:), v66);
          v68(v69, 0, 1, v66);
          goto LABEL_60;
        }

        v115 = *(v171 + 8);
        v116 = v75;
LABEL_48:
        v115(v116, v172);
        goto LABEL_60;
      }

      sub_100058000(&qword_100776AE8);

      v108 = v164;
      sub_1003EFF40(v175, v164, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
      v106 = swift_getEnumCaseMultiPayload();
      if (v106 <= 1)
      {
        v72 = v178;
        if (!v106)
        {
          v77 = v176;
          v175 = v71;
          v107 = *(v176 + 32);
          v107(v154, v108, v74);
          v107(v155, v154, v74);
          sub_1000079B4(v69, &qword_10076D030);
          v107(v69, v155, v74);
          v71 = v175;
          v79 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:);
          goto LABEL_32;
        }

        goto LABEL_40;
      }

      v72 = v178;
      v77 = v176;
      if (v106 != 2)
      {
        goto LABEL_45;
      }
    }

    (*(v171 + 8))(v108, v172);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v72 = v178;
    if (EnumCaseMultiPayload == 6)
    {
      sub_1000079B4(v69, &qword_10076D030);
      v104 = v69;
      v105 = 1;
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_1000079B4(v69, &qword_10076D030);
        v73 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:);
      }

      else
      {
        sub_1000079B4(v69, &qword_10076D030);
        v73 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:);
      }

      (*(v67 + 104))(v69, *v73, v66);
      v104 = v69;
      v105 = 0;
    }

    v68(v104, v105, 1, v66);
    goto LABEL_61;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_100058000(&qword_100776AD8);

    v111 = v167;
    sub_1003EFF40(v175, v167, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
    v112 = swift_getEnumCaseMultiPayload();
    v72 = v178;
    if (v112 > 1)
    {
      v114 = v172;
      v113 = v171;
      if (v112 == 2)
      {
        v175 = v71;
        v118 = *(v171 + 32);
        v118(v160, v111, v172);
        v118(v161, v160, v114);
        sub_1000079B4(v69, &qword_10076D030);
        v118(v69, v161, v114);
        v71 = v175;
        (*(v67 + 104))(v69, enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:), v66);
        v68(v69, 0, 1, v66);
      }
    }

    else
    {
      v113 = v171;
      (*(v176 + 8))(v111, v173);
      v114 = v172;
    }

    (*(v113 + 8))(v71, v114);
    goto LABEL_61;
  }

  v80 = *(sub_100058000(&qword_100776AE0) + 48);

  v81 = *(v176 + 32);
  v82 = v173;
  v81(v170, v71, v173);
  v83 = v71 + v80;
  v84 = v82;
  v81(v169, v83, v82);
  v85 = v168;
  sub_1003EFF40(v175, v168, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  v86 = swift_getEnumCaseMultiPayload();
  if (v86 > 1)
  {
    if (v86 != 2)
    {
      v138 = *(v176 + 8);
      v138(v169, v84);
      v138(v170, v84);
      goto LABEL_60;
    }

    v117 = *(v176 + 8);
    v117(v169, v84);
    v117(v170, v84);
    v115 = *(v171 + 8);
    v116 = v85;
    goto LABEL_48;
  }

  v175 = v66;
  if (v86)
  {
    v120 = v153;
    v81(v153, v85, v82);
    updated = sub_1003EFDC4(&qword_100781C50, &type metadata accessor for Date);
    v121 = v170;
    v122 = dispatch thunk of static Comparable.< infix(_:_:)();
    v123 = v176;
    if (v122)
    {
      v124 = v121;
    }

    else
    {
      v124 = v120;
    }

    v125 = v148;
    (*(v176 + 16))(v148, v124, v84);
    v126 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v127 = *(v123 + 8);
    v127(v169, v84);
    v176 = v123 + 8;
    updated = v127;
    result = (v127)(v170, v84);
    if ((v126 & 1) == 0)
    {
      goto LABEL_65;
    }

    v128 = v149;
    v81(v149, v125, v84);
    v129 = v150;
    v81((v128 + *(v150 + 48)), v153, v84);
    v130 = v151;
    sub_10000794C(v128, v151, &qword_100781C48);
    v131 = *(v129 + 48);
    v81(v162, v130, v84);
    v132 = v130 + v131;
    v133 = updated;
    (updated)(v132, v84);
    sub_100016588(v128, v130, &qword_100781C48);
    v134 = *(v129 + 48);
    v135 = sub_100058000(&qword_100781C58);
    v136 = v162;
    v81(&v162[*(v135 + 36)], v130 + v134, v84);
    v133(v130, v84);
    v137 = v175;
    (*(v67 + 104))(v136, enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:), v175);
    v68(v136, 0, 1, v137);
    v103 = v136;
    goto LABEL_58;
  }

  v87 = v147;
  v81(v147, v85, v84);
  updated = sub_1003EFDC4(&qword_100781C50, &type metadata accessor for Date);
  v88 = v169;
  v89 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v90 = v176;
  if (v89)
  {
    v91 = v88;
  }

  else
  {
    v91 = v87;
  }

  (*(v176 + 16))(v152, v91, v84);
  LODWORD(updated) = dispatch thunk of static Comparable.<= infix(_:_:)();
  v92 = *(v90 + 8);
  v92(v88, v84);
  v176 = v90 + 8;
  v172 = v92;
  result = (v92)(v170, v84);
  if (updated)
  {
    v94 = v149;
    v81(v149, v87, v84);
    v95 = v150;
    v81((v94 + *(v150 + 48)), v152, v84);
    v96 = v151;
    sub_10000794C(v94, v151, &qword_100781C48);
    updated = *(v95 + 48);
    v97 = v162;
    v81(v162, v96, v84);
    v98 = v96 + updated;
    updated = v81;
    v99 = v172;
    (v172)(v98, v84);
    sub_100016588(v94, v96, &qword_100781C48);
    v100 = *(v95 + 48);
    v101 = sub_100058000(&qword_100781C58);
    (updated)(&v97[*(v101 + 36)], v96 + v100, v84);
    v99(v96, v84);
    v102 = v175;
    (*(v67 + 104))(v97, enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:), v175);
    v68(v97, 0, 1, v102);
    v103 = v97;
LABEL_58:
    v69 = v179;
    sub_10000D184(v103, v179, &qword_10076D030);
    goto LABEL_60;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1003E4EF4(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076D030);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = a1[13];
  v8 = a1[14];
  sub_10000C36C(a1 + 10, v7);
  sub_10000794C(a2, v6, &qword_10076D030);
  (*(v8 + 72))(v6, v7, v8);
  return sub_1000079B4(v6, &qword_10076D030);
}

uint64_t sub_1003E4FE0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076D028);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &aBlock - v9;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  aBlock = sub_1003E5518;
  v32 = 0;
  sub_100058000(&qword_100781C78);
  v13 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  if (a1 <= 2u)
  {
    if (!a1)
    {
      v16 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
      (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
      goto LABEL_17;
    }

    if (a1 == 1)
    {
      v15 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.any(_:);
    }

    else
    {
      v15 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.morning(_:);
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v15 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.night(_:);
    }

    else
    {
      v15 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.noTime(_:);
    }
  }

  else if (a1 == 3)
  {
    v15 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.afternoon(_:);
  }

  else
  {
    v15 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.evening(_:);
  }

  v17 = *v15;
  v18 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10, v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
LABEL_17:
  v20 = objc_opt_self();
  v21._countAndFlagsBits = 0xD000000000000023;
  v21._object = 0x80000001006851F0;
  v22._object = 0x8000000100685220;
  v23._countAndFlagsBits = 0xD000000000000037;
  v23._object = 0x8000000100685240;
  v22._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v21, v22, v23);
  v24 = String._bridgeToObjectiveC()();

  sub_10000794C(v10, v7, &qword_10076D028);
  v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  sub_100016588(v7, v26 + v25, &qword_10076D028);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1003F0578;
  *(v27 + 24) = v26;
  v35 = sub_100068444;
  v36 = v27;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100026440;
  v34 = &unk_1007263E0;
  v28 = _Block_copy(&aBlock);

  [v20 withActionName:v24 block:v28];
  _Block_release(v28);

  sub_1000079B4(v10, &qword_10076D028);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

time_t sub_1003E5518@<X0>(time_t **a1@<X0>, time_t *a2@<X8>)
{
  result = time(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003E5544(char a1)
{
  v2 = v1;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v6 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v8 = objc_opt_self();
  v9._countAndFlagsBits = 0xD000000000000029;
  v9._object = 0x80000001006850B0;
  v10._object = 0x80000001006850E0;
  v11._countAndFlagsBits = 0xD00000000000003DLL;
  v11._object = 0x8000000100685100;
  v10._countAndFlagsBits = 0xD000000000000018;
  TTRLocalizedString(_:value:comment:)(v9, v10, v11);
  v12 = String._bridgeToObjectiveC()();

  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1003F03F0;
  *(v14 + 24) = v13;
  v18[4] = sub_100068444;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100026440;
  v18[3] = &unk_1007262F0;
  v15 = _Block_copy(v18);

  [v8 withActionName:v12 block:v15];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E5820(void *a1, unsigned __int8 a2)
{
  v3 = a1[13];
  v4 = a1[14];
  sub_10000C36C(a1 + 10, v3);
  v5 = a2;
  v6 = &off_100712AE0;
  v7 = &off_100712B08;
  if (a2 != 4)
  {
    v7 = &off_100712B30;
  }

  if (a2 != 3)
  {
    v6 = v7;
  }

  v8 = &off_100712A80;
  if (a2 != 1)
  {
    v8 = &off_100712AB8;
  }

  if (a2)
  {
    v5 = v8;
  }

  if (a2 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  (*(v4 + 88))(v9, v3, v4);
}

uint64_t sub_1003E58E8(char a1)
{
  v2 = v1;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v6 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v8 = 2 - a1;
  v9 = objc_opt_self();
  v10._countAndFlagsBits = 0xD000000000000026;
  v10._object = 0x8000000100685160;
  v11._object = 0x8000000100685190;
  v12._countAndFlagsBits = 0xD00000000000003ALL;
  v12._object = 0x80000001006851B0;
  v11._countAndFlagsBits = 0xD000000000000015;
  TTRLocalizedString(_:value:comment:)(v10, v11, v12);
  v13 = String._bridgeToObjectiveC()();

  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1003F03FC;
  *(v15 + 24) = v14;
  v19[4] = sub_100068444;
  v19[5] = v15;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100026440;
  v19[3] = &unk_100726368;
  v16 = _Block_copy(v19);

  [v9 withActionName:v13 block:v16];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E5BC8(char a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_100058000(&qword_10076D020);
  __chkstk_darwin(v7 - 8);
  v9 = aBlock - v8;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  LOBYTE(aBlock[0]) = a1;
  v12 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v14 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v16(v9, 1, 1, v14);
  if (!a1)
  {
    sub_1000079B4(v9, &qword_10076D020);
    v23 = 1;
LABEL_9:
    v16(v9, v23, 1, v14);
    *(v2 + 288) = 0;
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    sub_1000079B4(v9, &qword_10076D020);
    (*(v15 + 104))(v9, enum case for REMCustomSmartListFilterDescriptor.FilterLocation.noLocation(_:), v14);
    v23 = 0;
    goto LABEL_9;
  }

  *(v2 + 288) = 1;
  v17._object = 0x8000000100670CE0;
  v17._countAndFlagsBits = 0xD000000000000011;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v17);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = *(v2 + 160);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = &protocol witness table for MainActor;
  v21[4] = v19;
  v21[5] = v2;
  sub_10009E31C(0, 0, v6, &unk_10063D840, v21);

  v22 = 0;
  if (*(v2 + 288))
  {
    goto LABEL_11;
  }

LABEL_10:
  v24 = objc_opt_self();
  v25._countAndFlagsBits = 0xD000000000000027;
  v25._object = 0x8000000100684F20;
  v26._countAndFlagsBits = 0xD000000000000016;
  v26._object = 0x8000000100684F50;
  v27._countAndFlagsBits = 0xD00000000000003BLL;
  v27._object = 0x8000000100684F70;
  TTRLocalizedString(_:value:comment:)(v25, v26, v27);
  v28 = String._bridgeToObjectiveC()();

  v29 = swift_allocObject();
  *(v29 + 16) = v2;
  *(v29 + 24) = v9;
  v30 = swift_allocObject();
  v22 = sub_1003EFFA8;
  *(v30 + 16) = sub_1003EFFA8;
  *(v30 + 24) = v29;
  aBlock[4] = sub_100068444;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100725FF8;
  v31 = _Block_copy(aBlock);

  [v24 withActionName:v28 block:v31];

  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
LABEL_11:
    sub_1000079B4(v9, &qword_10076D020);
    return sub_1000301AC(v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003E612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v7 = type metadata accessor for TTRLocationQuickPickItem();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = type metadata accessor for TTRContactsAccessAlertFeature();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v5[4] = a4;
  v9 = swift_task_alloc();
  v5[16] = v9;
  v10 = type metadata accessor for TTRIPrivacyChecker();
  v5[17] = v10;
  *v9 = v5;
  v9[1] = sub_1003E62B4;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v10, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003E62B4(char a1)
{
  v2 = *v1;
  *(v2 + 168) = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return _swift_task_switch(sub_1003E6400, v4, v3);
}

uint64_t sub_1003E6400()
{
  v0[5] = v0[6];
  (*(v0[12] + 104))(v0[13], enum case for TTRContactsAccessAlertFeature.location(_:), v0[11]);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1003E64D4;
  v2 = v0[17];
  v3 = v0[13];

  return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(v3, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003E64D4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  v3[2] = v1;
  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];

  (*(v5 + 8))(v4, v6);
  v7 = v2[19];
  v8 = v2[18];

  return _swift_task_switch(sub_1003E6660, v8, v7);
}

uint64_t sub_1003E6660()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);

  if (v1 == 1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = &enum case for TTRLocationQuickPickItem.current(_:);
  }

  else
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    if (*(v0 + 24) == 1)
    {
      v5 = &enum case for TTRLocationQuickPickItem.home(_:);
    }

    else
    {
      v5 = &enum case for TTRLocationQuickPickItem.gettingInCar(_:);
    }
  }

  (*(v2 + 104))(v3, *v5, v4);
  sub_1003E6768(v3, 0);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003E6768(uint64_t a1, char a2)
{
  v68 = a1;
  v3 = sub_100058000(&qword_100775718);
  __chkstk_darwin(v3 - 8);
  v67 = &v59 - v4;
  v5 = type metadata accessor for TTRLocationQuickPickItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100781C60);
  __chkstk_darwin(v8 - 8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = sub_100058000(&qword_100776AB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  __chkstk_darwin(v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v63 = *(v19 - 8);
  v64 = v19;
  __chkstk_darwin(v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&qword_100775720);
  __chkstk_darwin(v22 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.n128_f64[0] = __chkstk_darwin(v25);
  v28 = &v59 - v27;
  if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v60 = v6;
  v61 = v5;
  v62 = v12;
  v29 = v69;
  v31 = v69[13];
  v30 = v69[14];
  sub_10000C36C(v69 + 10, v31);
  v32 = (*(v30 + 8))(v31, v30);
  TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)(v32, (*(v29 + 65) & 1) == 0, v18);
  sub_1003E1994(v18);
  sub_1003E20F8(v18);
  sub_10000794C(&v18[*(v16 + 32)], v15, &qword_100776AB0);
  sub_1003EFED8(v18, type metadata accessor for TTRSmartListFilterEditorViewModel);
  v33 = v64;
  if ((*(v63 + 48))(v15, 1, v64) == 1)
  {
    sub_1000079B4(v15, &qword_100776AB0);
    v5 = v61;
    v12 = v62;
    v6 = v60;
LABEL_4:
    v34 = 1;
    (*(v6 + 56))(v28, 1, 1, v5, v26);
    v35 = 0;
    v36 = v6;
    goto LABEL_9;
  }

  sub_1003F0078(v15, v21);
  v37 = v21[32];
  v34 = v37 < 0;
  if (v37 >= 0)
  {
    v35 = *(v21 + 3);
  }

  else
  {
    v35 = 0;
  }

  sub_10000794C(&v21[*(v33 + 6)], v28, &qword_100775720);
  sub_1003EFED8(v21, type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData);
  v5 = v61;
  v12 = v62;
  v36 = v60;
LABEL_9:
  sub_10000794C(v28, v24, &qword_100775720);
  v38 = (*(v36 + 48))(v24, 1, v5);
  v39 = v67;
  v40 = v65;
  if (v38 == 1)
  {
    sub_1000079B4(v24, &qword_100775720);
    v41 = v66;
LABEL_13:
    v44 = sub_100058000(&qword_100781C68);
    (*(*(v44 - 8) + 56))(v12, 1, 1, v44);
    goto LABEL_15;
  }

  v64 = v28;
  v42 = v35;
  v43 = *(v36 + 32);
  v43(v65, v24, v5);
  if (v34)
  {
    (*(v36 + 8))(v40, v5);
    v41 = v66;
    v28 = v64;
    goto LABEL_13;
  }

  v45 = sub_100058000(&qword_100781C68);
  v46 = v40;
  v47 = v36;
  v48 = *(v45 + 48);
  v43(v12, v46, v5);
  *&v12[v48] = v42;
  v36 = v47;
  (*(*(v45 - 8) + 56))(v12, 0, 1, v45);
  v41 = v66;
  v28 = v64;
LABEL_15:
  sub_10000794C(v12, v41, &qword_100781C60);
  v49 = sub_100058000(&qword_100781C68);
  if ((*(*(v49 - 8) + 48))(v41, 1, v49) == 1)
  {
    sub_1000079B4(v41, &qword_100781C60);
    v50 = sub_100058000(&qword_100775728);
    (*(*(v50 - 8) + 56))(v39, 1, 1, v50);
  }

  else
  {
    v51 = *(v41 + *(v49 + 48));
    v52 = sub_100058000(&qword_100775728);
    v53 = v36;
    v54 = *(v52 + 48);
    (*(v53 + 32))(v39, v41, v5);
    *(v39 + v54) = v51;
    (*(*(v52 - 8) + 56))(v39, 0, 1, v52);
  }

  swift_getObjectType();
  v55 = dispatch thunk of TTRLocationQuickPicksInteractorType.locationTrigger(for:togglingProximityForCurrentSelection:)();
  sub_1000079B4(v39, &qword_100775718);
  if (v55)
  {
    v70 = v55;
    swift_allocObject();
    v56 = v69;
    swift_weakInit();
    sub_100058000(&qword_100775730);
    sub_10000E188(&qword_100775738, &qword_100775730);
    v57 = Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000079B4(v12, &qword_100781C60);
    sub_1000079B4(v28, &qword_100775720);

    v56[35] = v57;
  }

  else
  {
    sub_1000079B4(v12, &qword_100781C60);
    return sub_1000079B4(v28, &qword_100775720);
  }
}

uint64_t sub_1003E7048(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076D020);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = a1[13];
  v8 = a1[14];
  sub_10000C36C(a1 + 10, v7);
  sub_10000794C(a2, v6, &qword_10076D020);
  (*(v8 + 104))(v6, v7, v8);
  return sub_1000079B4(v6, &qword_10076D020);
}

void sub_1003E7134(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v23[0] = v23 - v3;
  v4 = type metadata accessor for TTRLocationQuickPickItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v23 - v9;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 32) = 1835365481;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 40) = 0xE400000000000000;
  v13 = *(v5 + 16);
  v13(v10, a1, v4);
  v14 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v13(v7, a1, v4);
  v16 = (*(v5 + 88))(v7, v4);
  if (v16 == enum case for TTRLocationQuickPickItem.current(_:) || v16 == enum case for TTRLocationQuickPickItem.home(_:) || v16 == enum case for TTRLocationQuickPickItem.work(_:))
  {
    v17 = v23[1];
    sub_1003E6768(a1, 1);
    v18 = type metadata accessor for TaskPriority();
    v19 = v23[0];
    (*(*(v18 - 8) + 56))(v23[0], 1, 1, v18);
    v20 = *(v17 + 160);
    type metadata accessor for MainActor();

    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v20;
    sub_10009E31C(0, 0, v19, &unk_10063D890, v22);
  }

  else if (v16 == enum case for TTRLocationQuickPickItem.gettingInCar(_:) || v16 == enum case for TTRLocationQuickPickItem.gettingOutOfCar(_:))
  {
    sub_1003E6768(a1, 1);
  }

  else if (v16 == enum case for TTRLocationQuickPickItem.custom(_:))
  {
    sub_1003E751C(1);
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_1003E751C(char a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = v1[13];
  v8 = v1[14];
  sub_10000C36C(v1 + 10, v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = v2[20];
    v13 = v2[26];
    sub_10000B0D8((v2 + 15), v19);
    sub_10000B0D8((v2 + 10), v18);
    type metadata accessor for MainActor();

    v14 = v10;
    v15 = v13;

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v12;
    sub_100005FD0(v19, v17 + 40);
    *(v17 + 80) = v14;
    *(v17 + 88) = v15;
    *(v17 + 96) = a1 & 1;
    *(v17 + 104) = v2;
    sub_100005FD0(v18, v17 + 112);
    sub_10009E31C(0, 0, v6, &unk_10063D880, v17);
  }
}

uint64_t sub_1003E76FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v4[2] = a4;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1003E77EC;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v6, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003E77EC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100223F40, v1, v0);
}

uint64_t sub_1003E7928(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076D038);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v30 = &v28 - v8;
  v31 = type metadata accessor for REMHashtagLabelSpecifier();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  LOBYTE(aBlock[0]) = a1;
  v14 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v16 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelSelectionCache;
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v16, v31);
  v17 = v30;
  sub_1003E7DFC(v11, a1, v30);
  v28 = objc_opt_self();
  v18._countAndFlagsBits = 0xD000000000000023;
  v18._object = 0x8000000100684CC0;
  v19._object = 0x8000000100684CF0;
  v20._countAndFlagsBits = 0xD000000000000037;
  v20._object = 0x8000000100684D10;
  v19._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v18, v19, v20);
  v21 = String._bridgeToObjectiveC()();

  sub_10000794C(v17, v6, &qword_10076D038);
  v22 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  sub_100016588(v6, v23 + v22, &qword_10076D038);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1003EFBCC;
  *(v24 + 24) = v23;
  aBlock[4] = sub_100026410;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100725CD8;
  v25 = _Block_copy(aBlock);

  [v28 withActionName:v21 block:v25];
  _Block_release(v25);

  sub_1000079B4(v17, &qword_10076D038);
  (*(v9 + 8))(v11, v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E7DFC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char *a3@<X8>)
{
  v6 = sub_100058000(&qword_100781C30);
  __chkstk_darwin(v6);
  v8 = (&v55 - v7);
  v10 = *(v9 + 48);
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  *(v8 + v10) = a2;
  v13 = a2;
  if (a2 <= 1u)
  {
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v14 = (*(v12 + 88))(v8, v11);
      if (v14 == enum case for REMHashtagLabelSpecifier.labels(_:))
      {
        v15 = *(v12 + 96);
        v12 += 96;
        v15(v8, v11);
        v16 = *v8;
        v11 = v8[1];
        v17 = *(*v8 + 16);
        if (v17)
        {
          v18 = sub_1003AC440(*(*v8 + 16), 0);
          v19 = sub_1003B2F84(&v56, v18 + 4, v17, v16);
          sub_10008BA48();
          if (v19 != v17)
          {
            __break(1u);
LABEL_8:
            if (!v13)
            {
              v20 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
              (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
              return (*(v12 + 8))(v8, v11);
            }

            v27 = &enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.any(_:);
LABEL_16:
            v28 = *v27;
            v29 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
            v30 = *(v29 - 8);
            (*(v30 + 104))(a3, v28, v29);
            (*(v30 + 56))(a3, 0, 1, v29);
            return (*(v12 + 8))(v8, v11);
          }

LABEL_36:
          *a3 = v18;
          v43 = *(v11 + 16);
          if (v43)
          {
            v44 = sub_1003AC440(*(v11 + 16), 0);
            v45 = sub_1003B2F84(&v56, v44 + 4, v43, v11);
            sub_10008BA48();
            if (v45 != v43)
            {
              __break(1u);
              goto LABEL_39;
            }
          }

          else
          {

            v44 = _swiftEmptyArrayStorage;
          }

          v46 = *(sub_100058000(&qword_10076B830) + 64);
          v47 = *(sub_100058000(&qword_100781C18) + 64);
          *(a3 + 1) = v44;
          v48 = &enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
          goto LABEL_43;
        }

LABEL_35:

        v18 = _swiftEmptyArrayStorage;
        goto LABEL_36;
      }

      if (v14 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v14 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
      {
LABEL_45:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v33 = *(sub_100058000(&qword_100781C18) + 64);
      *a3 = _swiftEmptyArrayStorage;
      *(a3 + 1) = _swiftEmptyArrayStorage;
      v34 = &enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
LABEL_30:
      v36 = *v34;
      v37 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
      (*(*(v37 - 8) + 104))(&a3[v33], v36, v37);
      v38 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:);
      v39 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
      v40 = *(v39 - 8);
      (*(v40 + 104))(a3, v38, v39);
      return (*(v40 + 56))(a3, 0, 1, v39);
    }

LABEL_14:
    v27 = &enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.untagged(_:);
    goto LABEL_16;
  }

  v21 = (*(v12 + 88))(v8, v11);
  if (v21 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    if (v21 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v21 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      goto LABEL_45;
    }

    v33 = *(sub_100058000(&qword_100781C18) + 64);
    *a3 = _swiftEmptyArrayStorage;
    *(a3 + 1) = _swiftEmptyArrayStorage;
    v34 = &enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:);
    goto LABEL_30;
  }

  v22 = *(v12 + 96);
  v12 += 96;
  v22(v8, v11);
  v23 = *v8;
  v11 = v8[1];
  v24 = *(*v8 + 16);
  if (v24)
  {
    v25 = sub_1003AC440(*(*v8 + 16), 0);
    v26 = sub_1003B2F84(&v56, v25 + 4, v24, v23);
    sub_10008BA48();
    if (v26 != v24)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  *a3 = v25;
  v41 = *(v11 + 16);
  if (!v41)
  {
LABEL_39:

    v42 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  v42 = sub_1003AC440(*(v11 + 16), 0);
  v11 = sub_1003B2F84(&v56, v42 + 4, v41, v11);
  sub_10008BA48();
  if (v11 != v41)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_40:
  v46 = *(sub_100058000(&qword_10076B830) + 64);
  v47 = *(sub_100058000(&qword_100781C18) + 64);
  *(a3 + 1) = v42;
  v48 = &enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:);
LABEL_43:
  v49 = *v48;
  v50 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  (*(*(v50 - 8) + 104))(&a3[v47], v49, v50);
  v51 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:);
  v52 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v53 = *(v52 - 8);
  (*(v53 + 104))(a3, v51, v52);
  (*(v53 + 56))(a3, 0, 1, v52);
  v54 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  return (*(*(v54 - 8) + 8))(v8 + v46, v54);
}

uint64_t sub_1003E8514(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = v3;
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076D038);
  v35 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v5;
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel();
  __chkstk_darwin(v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100781AA0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  sub_1003EFDC4(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v16 = v41;
  sub_1003E1084(v11);
  v17 = *(v11 + *(v9 + 24));
  sub_1003EFED8(v11, type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel);
  v32 = v8;
  sub_1003E7DFC(a1, v17, v8);
  v34 = objc_opt_self();
  v18._countAndFlagsBits = 0xD000000000000023;
  v18._object = 0x8000000100684CC0;
  v19._object = 0x8000000100684CF0;
  v20._countAndFlagsBits = 0xD000000000000037;
  v20._object = 0x8000000100684D10;
  v19._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v18, v19, v20);
  v33 = String._bridgeToObjectiveC()();

  v21 = v38;
  v22 = v40;
  (*(v38 + 16))(v40, a1, v2);
  v23 = v37;
  sub_10000794C(v8, v37, &qword_10076D038);
  v24 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v25 = (v39 + *(v35 + 80) + v24) & ~*(v35 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v16;
  (*(v21 + 32))(v26 + v24, v22, v2);
  sub_100016588(v23, v26 + v25, &qword_10076D038);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1003EFCE8;
  *(v27 + 24) = v26;
  aBlock[4] = sub_100068444;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100725E90;
  v28 = _Block_copy(aBlock);

  v29 = v33;
  [v34 withActionName:v33 block:v28];
  _Block_release(v28);

  sub_1000079B4(v32, &qword_10076D038);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003E8AD0(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelSelectionCache;
  swift_beginAccess();
  (*(v7 + 16))(v9, &a1[v10], v6);
  sub_1003EFDC4(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    (*(v7 + 24))(&a1[v10], a2, v6);
    swift_endAccess();
  }

  v12 = *(a1 + 13);
  v13 = *(a1 + 14);
  sub_10000C36C(a1 + 10, v12);
  return (*(v13 + 64))(a3, v12, v13);
}

void sub_1003E8CA4(uint64_t a1)
{
  v3 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100781C38);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = sub_100058000(&qword_100776A98);
  __chkstk_darwin(v10 - 8);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v34 = &v32 - v13;
  v15 = __chkstk_darwin(v14);
  v17 = &v32 - v16;
  v18 = *(v4 + 16);
  v41 = a1;
  v37 = v18;
  (v18)(&v32 - v16, a1, v3, v15);
  v19 = *(v4 + 56);
  v35 = v4 + 56;
  v36 = v19;
  v19(v17, 0, 1, v3);
  v20 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelsLayoutResult;
  swift_beginAccess();
  v21 = *(v7 + 56);
  sub_10000794C(v17, v9, &qword_100776A98);
  v38 = v1;
  v39 = v20;
  sub_10000794C(v1 + v20, &v9[v21], &qword_100776A98);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_100776A98);
    if (v22(&v9[v21], 1, v3) == 1)
    {
      sub_1000079B4(v9, &qword_100776A98);
      return;
    }

    goto LABEL_6;
  }

  v23 = v34;
  sub_10000794C(v9, v34, &qword_100776A98);
  if (v22(&v9[v21], 1, v3) == 1)
  {
    sub_1000079B4(v17, &qword_100776A98);
    (*(v4 + 8))(v23, v3);
LABEL_6:
    sub_1000079B4(v9, &qword_100781C38);
LABEL_7:
    v24 = v40;
    v37(v40, v41, v3);
    v36(v24, 0, 1, v3);
    v26 = v38;
    v25 = v39;
    swift_beginAccess();
    sub_10000D184(v24, v26 + v25, &qword_100776A98);
    swift_endAccess();
    v27._object = 0x8000000100670CE0;
    v27._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v27);
    return;
  }

  v28 = &v9[v21];
  v29 = v33;
  (*(v4 + 32))(v33, v28, v3);
  sub_1003EFDC4(&qword_100781C40, &type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v4 + 8);
  v31(v29, v3);
  sub_1000079B4(v17, &qword_100776A98);
  v31(v23, v3);
  sub_1000079B4(v9, &qword_100776A98);
  if ((v30 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1003E9174(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v113) = a3;
  v107 = a2;
  LODWORD(v112) = a1;
  v5 = type metadata accessor for TTRIPopoverAnchor();
  v108 = *(v5 - 8);
  v109 = v5;
  __chkstk_darwin(v5);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIReminderListPickerModalPresentationStyle();
  v101 = *(v7 - 8);
  v102 = v7;
  __chkstk_darwin(v7);
  v100 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRReminderListPickerAction();
  v104 = *(v9 - 8);
  v105 = v9;
  __chkstk_darwin(v9);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v11 - 8);
  v99 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v93 - v14;
  v15 = type metadata accessor for REMListPickerDataView.PickerMode();
  v110 = *(v15 - 8);
  v111 = v15;
  __chkstk_darwin(v15);
  v114 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v17);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = (&v93 - v21);
  __chkstk_darwin(v23);
  v25 = &v93 - v24;
  v26 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v3 + 104);
  v31 = *(v3 + 112);
  sub_10000C36C((v3 + 80), v30);
  v32 = v30;
  v33 = v25;
  v34 = (*(v31 + 8))(v32, v31);
  TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)(v34, (*(v3 + 65) & 1) == 0, v29);
  sub_1003E1994(v29);
  sub_1003E20F8(v29);
  sub_1003EFF40(&v29[*(v27 + 52)], v25, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  sub_1003EFF40(v25, v22, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = 1;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v36 = 2;
LABEL_5:

    v37 = sub_100058000(&qword_100776AA8);
    sub_1000079B4(v22 + *(v37 + 48), &qword_100776AA0);
    goto LABEL_7;
  }

  v36 = 0;
LABEL_7:
  if (v112 == 3)
  {
    v38 = v36;
  }

  else
  {
    v38 = v112;
  }

  sub_1003EFF40(v25, v19, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v39 = *v19;
    v40 = sub_100058000(&qword_100776AA8);
    sub_1000079B4(v19 + *(v40 + 48), &qword_100776AA0);
LABEL_12:
    v41 = REMObjectID.codable.getter();
    goto LABEL_23;
  }

  v42 = *(v3 + 208);
  v43 = *(v3 + 72);
  v115 = 0;
  v44 = [v42 fetchDefaultListRequiringCloudKitAccountWithAccountID:v43 error:&v115];
  v45 = v44;
  if (v115)
  {
    v46 = v115;

    swift_willThrow();
    if (qword_100767250 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100003E30(v47, qword_100781AA0);

    v48 = v46;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v112 = v29;
      v52 = v51;
      v53 = swift_slowAlloc();
      v94 = v53;
      v95 = swift_slowAlloc();
      v115 = v95;
      *v52 = 138543618;
      *(v52 + 4) = v43;
      *v53 = v43;
      *(v52 + 12) = 2080;
      swift_getErrorValue();
      v96 = v48;
      v54 = v43;
      v55 = Error.rem_errorDescription.getter();
      v57 = sub_100004060(v55, v56, &v115);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error fetching default list for accountID %{public}@ {error: %s}", v52, 0x16u);
      sub_1000079B4(v94, &unk_10076DF80);

      sub_100004758(v95);

      v29 = v112;
    }

    else
    {
    }

    goto LABEL_22;
  }

  if (!v44)
  {
LABEL_22:
    v41 = 0;
    v39 = 0;
    goto LABEL_23;
  }

  v39 = [v44 remObjectID];

  if (v39)
  {
    goto LABEL_12;
  }

  v41 = 0;
LABEL_23:
  sub_1003EA050(v38, v41);

  if ((v113 & 1) == 0 && (*(v108 + 48))(v107, 1, v109) == 1 || !v38)
  {

    sub_1003EFED8(v25, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    return sub_1003EFED8(v29, type metadata accessor for TTRSmartListFilterEditorViewModel);
  }

  v112 = v29;
  sub_10000C36C((v4 + 120), *(v4 + 144));
  v58 = REMObjectID.codable.getter();
  v59 = v114;
  *v114 = v58;
  (*(v110 + 104))(v59, enum case for REMListPickerDataView.PickerMode.specificAccount(_:), v111);
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v38;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong || (v63 = [Strong navigationController], Strong, !v63))
  {
    if (qword_100766F58 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100003E30(v69, qword_10076E0D8);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v112;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Failed to get navigation controller -- Failed to show list picker", v74, 2u);
    }

    (*(v110 + 8))(v114, v111);
    sub_1003EFED8(v33, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    sub_1003EFED8(v73, type metadata accessor for TTRSmartListFilterEditorViewModel);
  }

  v96 = v63;
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64 && (v65 = v64, v66 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(), v65, (v66 & 1) != 0))
  {
    sub_10000794C(v107, v106, &unk_10076FCD0);
    v67 = 1;
  }

  else
  {
    (*(v108 + 56))(v106, 1, 1, v109);
    v67 = 0;
  }

  v75 = &enum case for TTRReminderListPickerAction.includeFilter(_:);
  if (v38 != 1)
  {
    v75 = &enum case for TTRReminderListPickerAction.excludeFilter(_:);
  }

  (*(v104 + 104))(v103, *v75, v105);
  v97 = v33;
  v113 = v60;
  LODWORD(v107) = v67;
  if (v67)
  {
    v76 = &enum case for TTRIReminderListPickerModalPresentationStyle.popover(_:);
    v77 = v100;
  }

  else
  {
    v77 = v100;
    *v100 = 0;
    v76 = &enum case for TTRIReminderListPickerModalPresentationStyle.formSheet(_:);
  }

  v79 = v101;
  v78 = v102;
  (*(v101 + 104))(v77, *v76, v102);
  type metadata accessor for TTRIReminderListPickerAssembly();
  v80 = v103;
  v81 = static TTRIReminderListPickerAssembly.createViewController(mode:action:store:selectedListID:showingInstructionsForMovingReminders:modalPresentationStyle:)();
  (*(v79 + 8))(v77, v78);
  (*(v104 + 8))(v80, v105);
  swift_getObjectType();
  v82 = swift_allocObject();
  swift_weakInit();
  v83 = swift_allocObject();
  v83[2] = v82;
  v83[3] = sub_1003F0334;
  v83[4] = v61;

  dispatch thunk of TTRIReminderListPickerModuleInterface.completion.setter();

  v84 = v97;
  if (v107)
  {
    v85 = v99;
    sub_10000794C(v106, v99, &unk_10076FCD0);
    v87 = v108;
    v86 = v109;
    if ((*(v108 + 48))(v85, 1, v109) != 1)
    {
      v89 = v98;
      (*(v87 + 32))(v98, v85, v86);
      UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
      v90 = swift_unknownObjectWeakLoadStrong();
      if (v90)
      {
        v91 = v89;
        v92 = v90;
        [v90 presentViewController:v81 animated:1 completion:0];

        swift_unknownObjectRelease();

        (*(v87 + 8))(v91, v86);
      }

      else
      {

        swift_unknownObjectRelease();

        (*(v87 + 8))(v89, v86);
      }

      sub_1000079B4(v106, &unk_10076FCD0);
      (*(v110 + 8))(v114, v111);
      sub_1003EFED8(v84, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
      sub_1003EFED8(v112, type metadata accessor for TTRSmartListFilterEditorViewModel);
    }

    sub_1000079B4(v85, &unk_10076FCD0);
  }

  v88 = v96;
  [v96 pushViewController:v81 animated:1];

  swift_unknownObjectRelease();

  sub_1000079B4(v106, &unk_10076FCD0);
  (*(v110 + 8))(v114, v111);
  sub_1003EFED8(v84, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  sub_1003EFED8(v112, type metadata accessor for TTRSmartListFilterEditorViewModel);
}

uint64_t sub_1003EA050(char a1, void *a2)
{
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_10076D018);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = __chkstk_darwin(v13);
  v16 = aBlock - v14;
  if (a2 && a1)
  {
    sub_100058000(&qword_10076B780);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10062D420;
    *(v17 + 32) = a2;
    if (a1 == 1)
    {
      *v8 = v17;
      v8[1] = _swiftEmptyArrayStorage;
    }

    else
    {
      *v8 = _swiftEmptyArrayStorage;
      v8[1] = v17;
    }

    (*(v6 + 104))(v8, enum case for REMCustomSmartListFilterDescriptor.FilterLists.lists(_:), v5);
    (*(v6 + 32))(v16, v8, v5);
    (*(v6 + 56))(v16, 0, 1, v5);
    v18 = a2;
  }

  else
  {
    (*(v6 + 56))(aBlock - v14, 1, 1, v5, v15);
  }

  v19 = objc_opt_self();
  v20._countAndFlagsBits = 0xD000000000000025;
  v20._object = 0x8000000100684FF0;
  v21._object = 0x8000000100685020;
  v22._countAndFlagsBits = 0xD000000000000039;
  v22._object = 0x8000000100685040;
  v21._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v20, v21, v22);
  v23 = String._bridgeToObjectiveC()();

  sub_10000794C(v16, v12, &qword_10076D018);
  v24 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  sub_100016588(v12, v25 + v24, &qword_10076D018);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1003F034C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_100068444;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100726278;
  v27 = _Block_copy(aBlock);

  [v19 withActionName:v23 block:v27];
  _Block_release(v27);

  sub_1000079B4(v16, &qword_10076D018);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1003EA4AC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10000794C(a1, v7, &unk_10076DF20);
    v8 = type metadata accessor for TTRListOrCustomSmartList();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000079B4(v7, &unk_10076DF20);
      v10 = 0;
    }

    else
    {
      v11 = TTRListOrCustomSmartList.objectID.getter();
      (*(v9 + 8))(v7, v8);
      v10 = REMObjectID.codable.getter();
    }

    sub_1003EA050(a3, v10);
  }
}

void sub_1003EA640()
{
  v4 = sub_1003EA6E0();
  sub_10000C36C((v0 + 120), *(v0 + 144));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      [v3 presentViewController:v4 animated:1 completion:0];
    }
  }
}

id sub_1003EA6E0()
{
  static TTRLocalizableStrings.Hashtags.addTagAlertTitle.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() alertControllerWithTitle:v1 message:0 preferredStyle:1];

  v18 = sub_1003EFC70;
  v19 = v0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001762CC;
  v17 = &unk_100725D00;
  v3 = _Block_copy(&v14);

  [v2 addTextFieldWithConfigurationHandler:v3];
  _Block_release(v3);
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v4 style:1 handler:0];

  static TTRLocalizableStrings.Hashtags.addTagAlertAddButton.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  v10 = String._bridgeToObjectiveC()();

  v18 = sub_1003EFC78;
  v19 = v9;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001762CC;
  v17 = &unk_100725DA0;
  v11 = _Block_copy(&v14);

  v12 = [v5 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v2 addAction:v6];
  [v2 addAction:v12];

  return v2;
}

uint64_t sub_1003EA9C8()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076D030);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = v0[13];
  v13 = v0[14];
  sub_10000C36C(v0 + 10, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (!v14)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_1000079B4(v4, &qword_10076D030);
  }

  v15 = v14;
  REMCustomSmartListFilterDescriptor.date.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000079B4(v4, &qword_10076D030);
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:))
  {
    return (*(v6 + 8))(v11, v5);
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:))
  {
    goto LABEL_9;
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:))
  {
    v22 = 4;
    if ((v1[7] & 4) != 0)
    {
      v22 = v1[7] & 0xFFFFFFFFFFFFFFFBLL;
    }

    v1[7] = v22;
    v23._object = 0x8000000100670CE0;
    v23._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v23);
    v24 = *(v6 + 8);
    v24(v11, v5);
    return (v24)(v8, v5);
  }

  else
  {
    if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:))
    {
LABEL_9:
      v18 = *(v6 + 8);
      v18(v8, v5);
      v19 = v1[7];
      if (v19)
      {
        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v20 = 1;
      }

      v1[7] = v20;
      v21._object = 0x8000000100670CE0;
      v21._countAndFlagsBits = 0xD000000000000011;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v21);
      return (v18)(v11, v5);
    }

    if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:))
    {
      return (*(v6 + 8))(v11, v5);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EAD88()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076D030);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = v0[13];
  v13 = v0[14];
  sub_10000C36C(v0 + 10, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (!v14)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_1000079B4(v4, &qword_10076D030);
  }

  v15 = v14;
  REMCustomSmartListFilterDescriptor.date.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000079B4(v4, &qword_10076D030);
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:))
  {
    return (*(v6 + 8))(v11, v5);
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:))
  {
    v18 = 2;
    if ((v1[7] & 2) != 0)
    {
      v18 = v1[7] & 0xFFFFFFFFFFFFFFFDLL;
    }

    v1[7] = v18;
    v19._object = 0x8000000100670CE0;
    v19._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v19);
    goto LABEL_16;
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:))
  {
LABEL_16:
    v20 = *(v6 + 8);
    v20(v11, v5);
    return (v20)(v8, v5);
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:))
  {
    return (*(v6 + 8))(v11, v5);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003EB0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = v14;
  *(v8 + 96) = v15;
  *(v8 + 128) = a8;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 64) = a5;
  *(v8 + 104) = type metadata accessor for MainActor();
  *(v8 + 112) = static MainActor.shared.getter();
  *(v8 + 56) = a4;
  v10 = swift_task_alloc();
  *(v8 + 120) = v10;
  v11 = type metadata accessor for TTRIPrivacyChecker();
  *v10 = v8;
  v10[1] = sub_1003EB1C8;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v11, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003EB1C8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003EB304, v1, v0);
}

uint64_t sub_1003EB304()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  sub_10000C36C(v2, v2[3]);
  sub_1003EFDC4(&qword_100781C70, type metadata accessor for TTRISmartListFilterEditorPresenter);
  sub_10000B0D8(v1, v0 + 16);
  v3 = swift_allocObject();
  sub_100005FD0((v0 + 16), v3 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, v6 = [Strong navigationController], v5, v6))
  {
    v7 = *(v0 + 128);
    v8 = static TTRIReminderLocationPickerAssembly.createViewController(filter:store:showsDoneButton:savesOnCommit:delegate:undoManager:save:)();
    swift_unknownObjectRelease();
    [v6 pushViewController:v8 animated:{v7, v3}];
  }

  else
  {
    if (qword_100766F58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_10076E0D8);
    v8 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, v10, "Failed to get navigation controller -- Failed to show location picker", v11, 2u);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1003EB548(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5._countAndFlagsBits = 0xD000000000000027;
  v5._object = 0x8000000100684F20;
  v6._object = 0x8000000100684F50;
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  v7._object = 0x8000000100684F70;
  v6._countAndFlagsBits = 0xD000000000000016;
  TTRLocalizedString(_:value:comment:)(v5, v6, v7);
  v8 = String._bridgeToObjectiveC()();

  sub_10000B0D8(a2, v15);
  v9 = swift_allocObject();
  sub_100005FD0(v15, v9 + 16);
  *(v9 + 56) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1003F0274;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100068444;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100726160;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  [v4 withActionName:v8 block:v11];

  _Block_release(v11);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EB738(void *a1)
{
  v2 = sub_100058000(&qword_10076D020);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C36C(a1, v5);
  REMCustomSmartListFilterDescriptor.location.getter();
  (*(v6 + 104))(v4, v5, v6);
  return sub_1000079B4(v4, &qword_10076D020);
}

void sub_1003EB81C()
{
  v1 = v0;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100781AA0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  sub_10000C36C(v0 + 15, v0[18]);
  if (qword_100766F58 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_10076E0D8);
  sub_1003F99F4(0x746544207473694CLL, 0xEB000000006C6961);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationController];

    if (v5)
    {
      [v5 dismissViewControllerAnimated:1 completion:0];
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = v1[5];
    ObjectType = swift_getObjectType();
    v8 = v1[13];
    v9 = v1[14];
    sub_10000C36C(v1 + 10, v8);
    v10 = (*(v9 + 8))(v8, v9);
    (*(v6 + 8))(v1, &off_100725B50, v10, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

void sub_1003EBA50()
{
  v1 = v0;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100781AA0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v3 = v0[13];
  v4 = v0[14];
  sub_10000C36C(v0 + 10, v3);
  if ((*(v4 + 24))(v3, v4))
  {
    static TTRLocalizableStrings.Common.confirmationMessageForDiscardingChanges.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [objc_opt_self() alertControllerWithTitle:0 message:v5 preferredStyle:0];

    static TTRLocalizableStrings.Common.alertDiscardChangesButton.getter();
    v7 = swift_allocObject();
    swift_weakInit();

    v8 = String._bridgeToObjectiveC()();

    v22[4] = sub_1003F06D0;
    v22[5] = v7;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_1001762CC;
    v22[3] = &unk_100726480;
    v9 = _Block_copy(v22);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:2 handler:v9];
    _Block_release(v9);

    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v10 actionWithTitle:v12 style:1 handler:0];

    [v6 addAction:v11];
    [v6 addAction:v13];
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    sub_10000C36C(v1 + 15, v1[18]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = [Strong navigationController];

      if (v16)
      {
        [v16 presentViewController:v6 animated:1 completion:0];
      }
    }
  }

  else
  {
    sub_10000C36C(v0 + 15, v0[18]);
    if (qword_100766F58 != -1)
    {
      swift_once();
    }

    sub_100003E30(v2, qword_10076E0D8);
    sub_1003F99F4(0x746544207473694CLL, 0xEB000000006C6961);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = [v17 navigationController];

      if (v19)
      {
        [v19 dismissViewControllerAnimated:1 completion:0];
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = v1[5];
      ObjectType = swift_getObjectType();
      (*(v20 + 16))(v1, &off_100725B50, ObjectType, v20);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1003EBEAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_10000C36C((result + 120), *(result + 144));
    if (qword_100766F58 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_10076E0D8);
    sub_1003F99F4(0x746544207473694CLL, 0xEB000000006C6961);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong navigationController];

      if (v5)
      {
        [v5 dismissViewControllerAnimated:1 completion:0];
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(v1, &off_100725B50, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003EC014(uint64_t a1)
{
  v2 = sub_100058000(&qword_100775740);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 280) = 0;
    v8 = result;

    static TTRLocalizableStrings.UndoAction.locationChange.getter();
    v9 = objc_opt_self();
    v10 = String._bridgeToObjectiveC()();

    (*(v3 + 16))(v6, a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, v6, v2);
    *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1003F00DC;
    *(v13 + 24) = v12;
    aBlock[4] = sub_100068444;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100726098;
    v14 = _Block_copy(aBlock);

    [v9 withActionName:v10 block:v14];

    _Block_release(v14);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1003EC2D0(uint64_t a1, void *a2)
{
  v4 = sub_100058000(&qword_10076D020);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v39 - v12);
  v14 = sub_100058000(&qword_100775740);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v39 - v17);
  (*(v15 + 16))(&v39 - v17, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for Either.left<A, B>(_:))
  {
    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    v21 = [*v18 structuredLocation];
    v22 = [v21 displayName];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    [v21 latitude];
    v30 = v29;
    [v21 longitude];
    v32 = v31;
    [v21 radius];
    v34 = v33;
    v35 = [v20 proximity];
    *v13 = v24;
    v13[1] = v26;
    v13[2] = v30;
    v13[3] = v32;
    v13[4] = v34;
    v13[5] = v35;
    (*(v8 + 104))(v13, enum case for REMCustomSmartListFilterDescriptor.FilterLocation.location(_:), v7);
    v36 = a2[13];
    v37 = a2[14];
    sub_10000C36C(a2 + 10, v36);
    (*(v8 + 16))(v6, v13, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v37 + 104))(v6, v36, v37);

    goto LABEL_8;
  }

  if (v19 == enum case for Either.right<A, B>(_:))
  {
    (*(v15 + 96))(v18, v14);
    v21 = *v18;
    *v10 = [*v18 event];
    (*(v8 + 104))(v10, enum case for REMCustomSmartListFilterDescriptor.FilterLocation.vehicle(_:), v7);
    v27 = a2[13];
    v28 = a2[14];
    sub_10000C36C(a2 + 10, v27);
    (*(v8 + 16))(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v28 + 104))(v6, v27, v28);
    v13 = v10;
LABEL_8:

    sub_1000079B4(v6, &qword_10076D020);
    return (*(v8 + 8))(v13, v7);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}