uint64_t sub_1001DD284()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_100058000(&qword_10076FA28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  if (*(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredLocalItems))
  {
    v8 = *(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest);
    v9 = *(v8 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability);

    if (sub_1001D6FFC())
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v9, ObjectType, v11);

      swift_unknownObjectRelease();
      sub_10000794C(v8 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_parent, v3, &qword_100772140);
      type metadata accessor for TTRRemindersListViewModel.Item();
      sub_1001DDF28(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      TTRDerivedTreeLocation.init(parent:index:)();
      v13 = TTRRemindersListTreeViewModel.steps(forMoving:to:)();

      (*(v5 + 8))(v7, v4);
      return v13;
    }
  }

  return 0;
}

uint64_t sub_1001DD4F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C36C(a1, v5);
  v7 = (*(v6 + 24))(v5, v6);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = *(a2 + 16);
  if (!v9)
  {
LABEL_10:

LABEL_11:
    v18 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    goto LABEL_12;
  }

  v10 = a2 + 32;
  while (1)
  {
    sub_10000B0D8(v10, v22);
    v11 = v23;
    v12 = v24;
    sub_10000C36C(v22, v23);
    v13 = (*(v12 + 8))(v11, v12);
    if (v13)
    {
      v14 = v13;
      v15 = [v13 objectID];

      if (v15)
      {
        break;
      }
    }

    sub_100004758(v22);
LABEL_5:
    v10 += 40;
    if (!--v9)
    {
      goto LABEL_10;
    }
  }

  sub_100003540(0, &qword_10076BA50);
  v16 = v8;
  v17 = static NSObject.== infix(_:_:)();

  sub_100004758(v22);
  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.discard(_:);
LABEL_12:
  v19 = *v18;
  v20 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
  return (*(*(v20 - 8) + 104))(a3, v19, v20);
}

uint64_t sub_1001DD6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v7 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest);

    if (sub_1001DAEEC())
    {

      v7 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
    }

    else
    {
      v9 = (*(**(v8 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24925RemindersInsertionRequest_dragAndDropCapability) + 176))(a1, a2);

      if ((v9 & 1) == 0)
      {
        v7 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
      }
    }
  }

  v10 = *v7;
  v11 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
  return (*(*(v11 - 8) + 104))(a3, v10, v11);
}

uint64_t sub_1001DD7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  type metadata accessor for TTRSmartListDragAndDropPresenterCapability();
  sub_1001D7B8C(a1, v6);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140);
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    return sub_1004B7B98(a1, a2);
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_1001DD964()
{

  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan____lazy_storage___position, &qword_100773380);
  sub_1000301AC(*(v0 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter));

  return swift_deallocClassInstance();
}

void sub_1001DDAF4()
{
  sub_1001DDD64(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001DDBE4()
{
  sub_1001DDD64(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
  if (v0 <= 0x3F)
  {
    sub_1001DDD64(319, &qword_100773130, type metadata accessor for TTRRemindersListReminderActionTarget);
    if (v1 <= 0x3F)
    {
      sub_100014068(319, &unk_100773138, &qword_10076C6F8);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001DDD64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1001DDDE0()
{
  sub_100014068(319, &unk_100773248, &qword_10076C700);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1001DDED4()
{
  result = qword_1007732F8;
  if (!qword_1007732F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007732F8);
  }

  return result;
}

uint64_t sub_1001DDF28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DDF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = _swiftEmptyArrayStorage;
  *(v4 + 24) = 1;
  v9 = OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan____lazy_storage___position;
  v10 = sub_100058000(&qword_10076C700);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredMoveSubjects) = 0;
  *(v4 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_filteredLocalItems) = 0;
  *(v4 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_insertionRequest) = a1;
  v11 = (v4 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24922RemindersInsertionPlan_additionalSubjectFilter);
  *v11 = a3;
  v11[1] = a4;

  sub_10003BE34(a3);
  sub_1001DC250(a2);
  return v4;
}

uint64_t sub_1001DE070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1001DD6A4(a1, v6, a2);
}

uint64_t sub_1001DE114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001DE17C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DE1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DE248@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001D7630(a1, v2 + v6, v7, a2);
}

void *sub_1001DE2F4(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

uint64_t sub_1001DE3C4(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_1001DE438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1001DE4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1001DE558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_1001DE5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));

  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_1001DE694()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1001DE7C0(uint64_t a1)
{
  v2 = type metadata accessor for TTRListBadgeView.ColorInfo();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100773560);
  __chkstk_darwin(v4 - 8);
  v46 = &v43 - v5;
  v6 = type metadata accessor for TTRListBadgeView.Shape();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  v14 = __chkstk_darwin(v13);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v43 - v17;
  v19 = __chkstk_darwin(v16);
  v43 = &v43 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = (&v43 - v22);
  __chkstk_darwin(v21);
  v25 = &v43 - v24;
  v47 = *(a1 + OBJC_IVAR____TtC9Reminders32TTRIListDetailBadgeCellTableCell_badgeView);
  TTRITableCellContent.state.getter();
  v49 = v13;
  (*(v10 + 16))(v12, &v25[*(v13 + 32)], v9);
  v26 = (*(v10 + 88))(v12, v9);
  if (v26 == enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:))
  {
    sub_1001DFC30(v25);
    (*(v44 + 104))(v8, enum case for TTRListBadgeView.Shape.round(_:), v45);
  }

  else
  {
    if (v26 != enum case for TTRListDetailViewModelBadgeDisplayStyle.smartList(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    sub_1001DFC30(v25);
    static TTRListBadgeView.Shape.customSmartListInListDetailView.getter();
  }

  dispatch thunk of TTRListBadgeView.shape.setter();
  TTRITableCellContent.state.getter();
  v27 = *v23;
  v28 = *v23;
  sub_1001DFC30(v23);
  if (v27)
  {
    v29 = v28;
    dispatch thunk of TTRListBadgeView.image.setter();
    static TTRListBadgeView.ShadowParams.defaultShadowOpacity.getter();
    v30 = v46;
    TTRListBadgeView.ShadowParams.init(offset:radius:opacity:)();
    v31 = type metadata accessor for TTRListBadgeView.ShadowParams();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    dispatch thunk of TTRListBadgeView.shadowParams.setter();
  }

  else
  {
    v32 = v43;
    TTRITableCellContent.state.getter();
    v33 = *(v32 + 16);

    sub_1001DFC30(v32);
    if (v33)
    {
      dispatch thunk of TTRListBadgeView.emoji.setter();
      v34 = type metadata accessor for TTRListBadgeView.ShadowParams();
      (*(*(v34 - 8) + 56))(v46, 1, 1, v34);
      dispatch thunk of TTRListBadgeView.shadowParams.setter();
    }
  }

  TTRITableCellContent.state.getter();
  v35 = v49;
  v36 = *(v49 + 24);
  v37 = type metadata accessor for TTRListColors.Color();
  v38 = &v18[v36];
  v39 = v50;
  (*(*(v37 - 8) + 16))(v50, v38, v37);
  sub_1001DFC30(v18);
  (*(v51 + 104))(v39, enum case for TTRListBadgeView.ColorInfo.listColor(_:), v52);
  dispatch thunk of TTRListBadgeView.listColorInfo.setter();
  TTRITableCellContent.state.getter();

  sub_1001DFC30(v18);
  dispatch thunk of TTRListBadgeView.ttrAccessibilityName.setter();
  v40 = v48;
  TTRITableCellContent.state.getter();
  v41 = *(v40 + *(v35 + 28) + 8);

  sub_1001DFC30(v40);
  if (v41)
  {
  }

  return dispatch thunk of TTRListBadgeView.ttrAccessibilityShouldIgnoreAccessibilityName.setter();
}

id sub_1001DEE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView()) initWithFrame:{0.0, 0.0, 96.0, 96.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  dispatch thunk of TTRListBadgeView.emojiFontSize.setter();
  v9 = dispatch thunk of TTRListBadgeView.backgroundParams.modify();
  TTRListBadgeView.BackgroundParams.gradientVisibilityOverride.setter();
  v9(v37, 0);
  [v8 setAccessibilityRespondsToUserInteraction:0];
  v10 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v10];

  *&v4[OBJC_IVAR____TtC9Reminders32TTRIListDetailBadgeCellTableCell_badgeView] = v8;
  v11 = v8;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v36.receiver = v4;
  v36.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v36, "initWithStyle:reuseIdentifier:", a1, v12);

  v14 = v13;
  v15 = [v14 contentView];
  [v15 addSubview:v8];

  v16 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100634FC0;
  v18 = [v14 contentView];
  v19 = [v18 centerXAnchor];

  v20 = [v8 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v17 + 32) = v21;
  v22 = [v14 contentView];
  v23 = [v22 topAnchor];

  v24 = [v8 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:-20.0];

  *(v17 + 40) = v25;
  v26 = [v14 contentView];

  v27 = [v26 bottomAnchor];
  v28 = [v8 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:20.0];

  *(v17 + 48) = v29;
  v30 = [v8 widthAnchor];
  v31 = [v30 constraintEqualToConstant:96.0];

  *(v17 + 56) = v31;
  v32 = [v8 heightAnchor];

  v33 = [v32 constraintEqualToConstant:96.0];
  *(v17 + 64) = v33;
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 activateConstraints:isa];

  return v14;
}

char *sub_1001DF3B4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    v6 = a2[2];
    *(a1 + 1) = a2[1];
    *(a1 + 2) = v6;
    v7 = a3[6];
    v10 = type metadata accessor for TTRListColors.Color();
    v11 = *(*(v10 - 8) + 16);
    v12 = v4;

    v11(&v5[v7], a2 + v7, v10);
    v13 = a3[7];
    v14 = a3[8];
    v15 = &v5[v13];
    v16 = (a2 + v13);
    v17 = v16[1];
    *v15 = *v16;
    *(v15 + 1) = v17;
    v18 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
    v19 = *(*(v18 - 8) + 16);

    v19(&v5[v14], a2 + v14, v18);
  }

  return v5;
}

uint64_t sub_1001DF504(id *a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for TTRListColors.Color();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = *(a2 + 32);
  v7 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

char *sub_1001DF5D4(char *a1, uint64_t a2, int *a3)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v6;
  *(a1 + 2) = *(a2 + 16);
  v8 = a3[6];
  v9 = type metadata accessor for TTRListColors.Color();
  v10 = *(*(v9 - 8) + 16);
  v11 = v7;

  v10(&a1[v8], a2 + v8, v9);
  v12 = a3[7];
  v13 = a3[8];
  v14 = &a1[v12];
  v15 = (a2 + v12);
  v16 = v15[1];
  *v14 = *v15;
  *(v14 + 1) = v16;
  v17 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  v18 = *(*(v17 - 8) + 16);

  v18(&a1[v13], a2 + v13, v17);
  return a1;
}

uint64_t sub_1001DF6DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a1;
  v7 = *a2;
  *a1 = *a2;
  v8 = v7;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  v9 = a3[6];
  v10 = type metadata accessor for TTRListColors.Color();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = a3[7];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  *v12 = *v13;
  v12[1] = v13[1];

  v14 = a3[8];
  v15 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v15 - 8) + 24))(a1 + v14, a2 + v14, v15);
  return a1;
}

uint64_t sub_1001DF7F0(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = a3[6];
  v7 = type metadata accessor for TTRListColors.Color();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[7];
  v9 = a3[8];
  *(a1 + v8) = *(a2 + v8);
  v10 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t sub_1001DF8BC(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a2 + 2);
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = v7;

  v8 = a3[6];
  v9 = type metadata accessor for TTRListColors.Color();
  (*(*(v9 - 8) + 40))(a1 + v8, &a2[v8], v9);
  v10 = a3[7];
  v11 = (a1 + v10);
  v12 = &a2[v10];
  v14 = *v12;
  v13 = *(v12 + 1);
  *v11 = v14;
  v11[1] = v13;

  v15 = a3[8];
  v16 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v16 - 8) + 40))(a1 + v15, &a2[v15], v16);
  return a1;
}

uint64_t sub_1001DF9F4()
{
  result = type metadata accessor for TTRListColors.Color();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001DFAD0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_100003540(0, &qword_10076FCB0);
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

  v11 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  if ((static TTRListColors.Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 28);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (!v14)
  {
    if (!v16)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (!v16)
  {
    return 0;
  }

  v17 = *v13 == *v15 && v14 == v16;
  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v18 = *(v11 + 32);

  return static TTRListDetailViewModelBadgeDisplayStyle.== infix(_:_:)(a1 + v18, a2 + v18);
}

uint64_t sub_1001DFC30(uint64_t a1)
{
  v2 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001DFC8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1001DFD28, v5, v4);
}

uint64_t sub_1001DFD28()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1001DFE2C;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for TTRIRemindersCommonPresenter.RemoveSectionsFromListConfirmationAlertResponse);
  }

  else
  {

    v5 = v0[1];

    return v5(3);
  }
}

uint64_t sub_1001DFE2C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 81) = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_1001DFF70, v4, v3);
}

uint64_t sub_1001DFF70()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 81);

  return v1(v2);
}

uint64_t sub_1001DFFD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1001E0070, v5, v4);
}

uint64_t sub_1001E0070()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1000A8258;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for Bool);
  }

  else
  {

    v5 = v0[1];

    return v5(2);
  }
}

uint64_t sub_1001E0174()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100773568);
  v1 = sub_100003E30(v0, qword_100773568);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001E0254@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for TTRIShowTemplatePresenter();
  a2[4] = a1;
  *a2 = v2;
}

uint64_t sub_1001E02A4()
{
  sub_100058000(&qword_100774070);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10062EDD0;
  sub_1001E4CC4();
  AnyHashable.init<A>(_:)();
  *(v0 + 72) = 1;
  AnyHashable.init<A>(_:)();
  *(v0 + 120) = 1;
  AnyHashable.init<A>(_:)();
  *(v0 + 168) = 1;
  *(v0 + 176) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 2;
  *(v0 + 264) = 0;
  *(v0 + 272) = 4;
  *(v0 + 312) = 0;
  AnyHashable.init<A>(_:)();
  *(v0 + 360) = 1;
  return v0;
}

uint64_t sub_1001E03B4()
{
  v0 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v17[-v1];
  v3 = type metadata accessor for TTRTemplatePublicLinkData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v18 > 1u)
  {
    if (v18 == 2)
    {
      swift_getObjectType();
      dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
      TTRTemplatePublicLinkData.init(template:now:)();
      v13 = swift_allocObject();
      swift_weakInit();

      v14 = sub_10014E6B8(v6, 0, sub_1001E4878, v13);

      (*(v4 + 8))(v6, v3);

      return v14;
    }

    v16 = String._bridgeToObjectiveC()();
    [objc_opt_self() _systemImageNamed:v16];

    sub_100003540(0, &qword_10076BA60);
    static TTRLocalizableStrings.Templates.deleteTemplate.getter();
    swift_allocObject();
    swift_weakInit();
  }

  else
  {
    if (v18)
    {
      v15 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v15];

      sub_100003540(0, &qword_10076BA60);
      v8 = 0xD000000000000019;
      v9 = 0x8000000100676EC0;
    }

    else
    {
      v7 = String._bridgeToObjectiveC()();
      [objc_opt_self() _systemImageNamed:v7];

      sub_100003540(0, &qword_10076BA60);
      v8 = 0xD000000000000012;
      v9 = 0x8000000100676F10;
    }

    v10._object = 0x8000000100676EE0;
    v10._countAndFlagsBits = 0xD000000000000020;
    TTRLocalizedString(_:comment:)(*&v8, v10);
    swift_allocObject();
    swift_weakInit();
  }

  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1001E08C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3();
  }

  return result;
}

uint64_t sub_1001E0924(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1001E26D0(a1);
  }

  return result;
}

uint64_t sub_1001E0984()
{
  v0 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_10009E31C(0, 0, v2, &unk_100635198, v6);
  }

  return result;
}

uint64_t sub_1001E0AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100058000(&qword_10076BE10);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001E0B78, v6, v5);
}

uint64_t sub_1001E0B78()
{

  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100773568);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v2;
  sub_10009E31C(0, 0, v1, &unk_1006351A8, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001E0D30()
{
  v26 = type metadata accessor for TTRTemplateSharingAction();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v2 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v27 = type metadata accessor for TTRTemplatePublicLinkData();
  v13 = *(v27 - 8);
  __chkstk_darwin(v27);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v0;
  swift_getObjectType();
  dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  TTRTemplatePublicLinkData.init(template:now:)();
  TTRTemplatePublicLinkData.capabilities.getter();
  static TTRTemplatePublicLinkData.Capabilities.createLink.getter();
  sub_10014EE2C();
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18 = *(v4 + 8);
  v18(v7, v3);
  if (v17)
  {
    v19 = &enum case for TTRTemplateSharingAction.createLink(_:);
LABEL_7:
    v21 = v24;
    v22 = v26;
    (*(v24 + 104))(v2, *v19, v26);
    sub_1001E26D0(v2);
    (*(v21 + 8))(v2, v22);
    goto LABEL_8;
  }

  static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
  v20 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v18(v7, v3);
  if (v20)
  {
    v19 = &enum case for TTRTemplateSharingAction.updateLink(_:);
    goto LABEL_7;
  }

  if (TTRTemplatePublicLinkData.hasPublicLink.getter())
  {
    v19 = &enum case for TTRTemplateSharingAction.sendLink(_:);
    goto LABEL_7;
  }

LABEL_8:
  v18(v9, v3);
  return (*(v13 + 8))(v15, v27);
}

uint64_t sub_1001E10EC()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100773568);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;

  sub_10009E31C(0, 0, v4, &unk_100635180, v7);
}

uint64_t sub_1001E1270()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA3C;

  return sub_1001E311C();
}

uint64_t sub_1001E1300()
{
  v0 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRTemplatePublicLinkData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  TTRTemplatePublicLinkData.init(template:now:)();
  TTRTemplatePublicLinkData.capabilities.getter();
  static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
  sub_10014EE2C();
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v16 = *(v1 + 8);
  v16(v4, v0);
  v16(v6, v0);
  (*(v11 + 8))(v13, v10);
  return v15 & 1;
}

void sub_1001E1588()
{
  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100773568);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  swift_getObjectType();
  swift_getObjectType();
  v2 = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v3 = dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();

  sub_1001E44B8(v3, v0);
}

uint64_t sub_1001E16A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100058000(&unk_10076FCD0);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1001E177C, v6, v5);
}

uint64_t sub_1001E177C()
{
  v1 = v0[3];
  v2 = v0[2];
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for TTRPotentiallyLongOperationPerformer();
  swift_allocObject();
  v0[8] = TTRPotentiallyLongOperationPerformer.init(longOperationDurationThreshold:debugForceShowActivityUI:showActivityUI:hideActivityUI:)();
  v0[9] = *(v2 + OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_removeTemplateCapability);
  swift_getObjectType();
  v0[10] = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v3 = type metadata accessor for TTRIPopoverAnchor();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v0[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v5;
  v0[13] = v4;

  return _swift_task_switch(sub_1001E1934, v5, v4);
}

uint64_t sub_1001E1934()
{
  v1 = v0[10];
  v3 = v0[2];
  v2 = v0[3];
  v4 = swift_task_alloc();
  v0[14] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = &unk_1006351D0;
  v4[5] = v3;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1001E1A20;
  v6 = v0[10];
  v7 = v0[8];

  return TTRRemoveTemplatePresenterCapability.deleteTemplate(_:potentiallyLongOperationPerformer:presentAlert:)(v6, v7, &unk_100637480, v4);
}

uint64_t sub_1001E1A20()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001E1B64, v3, v2);
}

uint64_t sub_1001E1B64()
{
  v1 = v0[10];
  v2 = v0[3];

  sub_1000079B4(v2, &unk_10076FCD0);
  v3 = v0[6];
  v4 = v0[7];

  return _swift_task_switch(sub_1001E1BE8, v3, v4);
}

uint64_t sub_1001E1BE8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001E1C60()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    v0 = static TTRLocalizableStrings.Templates.publicTemplateDeleting.getter();
    v2 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v4 = Strong, v5 = [Strong navigationController], v4, !v5))
    {
      v5 = swift_unknownObjectWeakLoadStrong();
    }

    sub_10048DE3C(v0, v2, v5);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001E1D40(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1001E1DD8, v3, v2);
}

uint64_t sub_1001E1DD8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 72) = *(Strong + 88);
    swift_unknownObjectRetain();

    return _swift_task_switch(sub_1001E1EB0, 0, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1001E1EB0()
{
  v1 = *(v0[9] + 80);
  v0[10] = v1;
  v2 = *(v1 + 16);
  v0[11] = v2;
  if (v2)
  {
    v2;
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1001E1FA4;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = v0[7];
    v5 = v0[8];

    return _swift_task_switch(sub_1001E2124, v4, v5);
  }
}

uint64_t sub_1001E1FA4()
{

  return _swift_task_switch(sub_1001E20A0, 0, 0);
}

uint64_t sub_1001E20A0()
{
  v1 = *(v0 + 80);

  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return _swift_task_switch(sub_1001E2124, v3, v4);
}

uint64_t sub_1001E2124()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001E2184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1001E2220, v5, v4);
}

uint64_t sub_1001E2220()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1001E22D0;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1001DFFD4(v3, v2);
}

uint64_t sub_1001E22D0(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1001E23F8, v4, v3);
}

uint64_t sub_1001E23F8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

void sub_1001E245C()
{
  v0 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100773568);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  swift_getObjectType();
  v12 = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      *(v5 + OBJC_IVAR____TtC9Reminders26TTRITemplatesListPresenter_isCreatingList) = 1;
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v7 = v12;
      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = &protocol witness table for MainActor;
      v9[4] = v5;
      v9[5] = v7;
      sub_10009E31C(0, 0, v2, &unk_100635208, v9);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = v12;
  }
}

uint64_t sub_1001E26D0(uint64_t a1)
{
  v2 = type metadata accessor for TTRTemplateSharingAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v19[1] = v4;
  v20 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  if (qword_100767000 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100773568);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x6E6F69746361;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = v2;
  v10 = sub_1000317B8((inited + 48));
  v11 = *(v3 + 16);
  v11(v10, a1, v2);
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = v20;
  v11(v20, a1, v2);
  type metadata accessor for MainActor();
  v14 = v21;

  v15 = static MainActor.shared.getter();
  v16 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v14;
  (*(v3 + 32))(&v17[v16], v13, v2);
  sub_10009E31C(0, 0, v7, &unk_1006351F8, v17);
}

uint64_t sub_1001E29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1001E2A80, v7, v6);
}

uint64_t sub_1001E2A80()
{
  v0[8] = *(v0[2] + 88);
  swift_getObjectType();
  v0[9] = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
  v0[10] = swift_allocObject();
  swift_weakInit();

  v0[11] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[12] = v2;
  v0[13] = v1;

  return _swift_task_switch(sub_1001E2B74, v2, v1);
}

uint64_t sub_1001E2B74()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    *(v0 + 120) = sub_10016D29C(*(v0 + 72), Strong, sub_1001E4E10, *(v0 + 80));
    v2 = type metadata accessor for TTRITemplateSharingPresenter();
    v3 = swift_task_alloc();
    *(v0 + 128) = v3;
    *v3 = v0;
    v3[1] = sub_1001E2D44;
    v4 = *(v0 + 24);

    return (sub_1000A7B00)(v4, 1, v2, &off_100714A98);
  }

  else
  {
    v6 = *(v0 + 72);

    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    return _swift_task_switch(sub_1000A7E20, v7, v8);
  }
}

uint64_t sub_1001E2D44()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001E2E64, v3, v2);
}

uint64_t sub_1001E2E64()
{
  v1 = v0[14];
  v2 = v0[9];

  swift_unknownObjectRelease();

  v3 = v0[6];
  v4 = v0[7];

  return _swift_task_switch(sub_1000A7E20, v3, v4);
}

uint64_t sub_1001E2EF4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  sub_1001E4E18(Strong + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar, v17);

  sub_100004758(v17);
  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v15 = type metadata accessor for TTRIPopoverAnchor();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  v4 = v3;
  v5 = sub_10010DF8C();

  v7 = *(v4 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem);
  if (v7 && (v8 = [v7 rightBarButtonItems]) != 0 && (v9 = v8, sub_100003540(0, &qword_10076B800), v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v9, v17[0] = v5, __chkstk_darwin(v11), v16[2] = v17, LOBYTE(v9) = sub_10000C108(sub_1000386DC, v16, v10), , (v9 & 1) != 0))
  {
    static TTRIPopoverAnchor.barButtonItem(_:permittedArrowDirections:)();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for TTRIPopoverAnchor();
  (*(*(v13 - 8) + 56))(a1, v12, 1, v13);

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1001E311C()
{
  v1[7] = v0;
  v2 = type metadata accessor for TTRTemplateSharingAction();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_1001E3214, v4, v3);
}

uint64_t sub_1001E3214()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_isConfirmingUpdate;
  *(v0 + 120) = OBJC_IVAR____TtC9Reminders25TTRIShowTemplatePresenter_isConfirmingUpdate;
  if (*(v1 + v2))
  {

    if (qword_100767000 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100773568);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "TTRIShowTemplatePresenter: confirmUpdateAndDismiss called twice with the first one still in progress.", v6, 2u);
    }

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v1 + v2) = 1;
    v9 = sub_1001E1300();
    v10 = *(v0 + 56);
    if (v9)
    {
      static TTRLocalizableStrings.Templates.updateSharedTemplateAlertTitle.getter();
      static TTRLocalizableStrings.Templates.updateSharedTemplateAlertMessage.getter();
      v11 = String._bridgeToObjectiveC()();

      v12 = String._bridgeToObjectiveC()();

      v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];
      *(v0 + 128) = v13;

      *(v0 + 136) = *(v10 + 88);
      sub_100058000(&qword_10076B260);
      sub_100058000(&unk_100775890);
      v14 = swift_allocObject();
      *(v0 + 144) = v14;
      *(v14 + 16) = xmmword_10062D3F0;
      static TTRLocalizableStrings.Common.updateButton.getter();
      *(v0 + 264) = 1;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      static TTRLocalizableStrings.Common.notNowButton.getter();
      *(v0 + 265) = 0;
      TTRIValueBasedAlertAction.init(title:style:value:)();
      v15 = swift_task_alloc();
      *(v0 + 152) = v15;
      *v15 = v0;
      v15[1] = sub_1001E35E0;

      return sub_1001DFFD4(v13, v14);
    }

    else
    {
      *(v0 + 216) = *(v10 + 88);
      *(v0 + 224) = static MainActor.shared.getter();
      v17 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 232) = v17;
      *(v0 + 240) = v16;

      return _swift_task_switch(sub_1001E3D2C, v17, v16);
    }
  }
}

uint64_t sub_1001E35E0(char a1)
{
  v2 = *v1;
  *(*v1 + 266) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return _swift_task_switch(sub_1001E372C, v4, v3);
}

uint64_t sub_1001E372C()
{
  v1 = *(v0 + 266);

  if (v1 == 2 || (*(v0 + 266) & 1) == 0)
  {
    *(v0 + 216) = *(*(v0 + 56) + 88);
    *(v0 + 224) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    *(v0 + 232) = v6;
    *(v0 + 240) = v10;
    v9 = sub_1001E3D2C;
  }

  else
  {
    if (qword_100767000 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_100773568);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    swift_getObjectType();
    *(v0 + 160) = dispatch thunk of TTRShowTemplateDataModelSourceBaseType.template.getter();
    (*(v4 + 104))(v2, enum case for TTRTemplateSharingAction.updateLink(_:), v3);
    *(v0 + 168) = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    *(v0 + 176) = v6;
    *(v0 + 184) = v7;
    v9 = sub_1001E3900;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1001E3900()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 192) = Strong;
  if (Strong)
  {
    *(v0 + 200) = sub_10016D29C(*(v0 + 160), Strong, sub_1001E40D0, 0);
    v2 = type metadata accessor for TTRITemplateSharingPresenter();
    v3 = swift_task_alloc();
    *(v0 + 208) = v3;
    *v3 = v0;
    v3[1] = sub_1001E3ADC;
    v4 = *(v0 + 80);

    return (sub_1000A7B00)(v4, 0, v2, &off_100714A98);
  }

  else
  {
    v6 = *(v0 + 160);

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);

    return _swift_task_switch(sub_1001E3C94, v7, v8);
  }
}

uint64_t sub_1001E3ADC()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_1001E3BFC, v3, v2);
}

uint64_t sub_1001E3BFC()
{
  v1 = v0[24];
  v2 = v0[20];

  swift_unknownObjectRelease();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v3 = v0[13];
  v4 = v0[14];

  return _swift_task_switch(sub_1001E3C94, v3, v4);
}

uint64_t sub_1001E3C94()
{
  v0[27] = *(v0[7] + 88);
  v0[28] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[29] = v2;
  v0[30] = v1;

  return _swift_task_switch(sub_1001E3D2C, v2, v1);
}

uint64_t sub_1001E3D2C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[31] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[32] = v2;
    *v2 = v0;
    v2[1] = sub_1001E3E14;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[13];
    v4 = v0[14];

    return _swift_task_switch(sub_1001E3FB8, v3, v4);
  }
}

uint64_t sub_1001E3E14()
{
  v1 = *v0;
  v2 = *(*v0 + 248);

  v3 = *(v1 + 240);
  v4 = *(v1 + 232);

  return _swift_task_switch(sub_1001E3F54, v4, v3);
}

uint64_t sub_1001E3F54()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_1001E3FB8, v1, v2);
}

uint64_t sub_1001E3FB8()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = v0[7];
      v0[5] = type metadata accessor for TTRIShowTemplatePresenter();
      v0[6] = &off_10071AA88;
      v0[2] = v4;
      (*(v3 + 16))(v0 + 2, ObjectType, v3);

      swift_unknownObjectRelease();
      sub_100004758((v0 + 2));
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  *(v0[7] + v0[15]) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001E40D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRIPopoverAnchor();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1001E413C()
{
  swift_unknownObjectRelease();
}

uint64_t sub_1001E417C()
{
  sub_1001E6A30();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowTemplatePresenter()
{
  result = qword_1007735C0;
  if (!qword_1007735C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E42C4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10001EFA4;

  return sub_1001E311C();
}

uint64_t sub_1001E4370(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TTRUndoNavigationEditingTarget();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  TTRListDetailSavedObjectID.undoNavigationEditingTarget.getter(a2, a3);
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 16))(ObjectType, a5);
  dispatch thunk of TTRRemindersListInteractorType.registerUndo(forEditing:byDraining:)();

  return (*(v9 + 8))(v11, v8);
}

void sub_1001E44B8(void *a1, uint64_t a2)
{
  type metadata accessor for TTRListDetailAssembly.TemplateComponentsCreator();
  swift_initStackObject();
  v4 = [a1 saveRequest];
  v5 = [v4 store];

  v6 = sub_10044E4F8(v5, a1, 1, a2, &off_10071A600);
  v8 = v7;

  v9 = v6;

  v10 = sub_10045A1AC(v9, v8, 0, 0, 0);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_1001E45E4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  static TTRLocalizableStrings.UndoAction.changeTemplate.getter();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1001E47AC;
  *(v13 + 24) = v12;
  v17[4] = sub_100026410;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100026440;
  v17[3] = &unk_10071A6B0;
  v14 = _Block_copy(v17);

  v15 = a3;
  swift_unknownObjectRetain();

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E47BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA38;

  return sub_1001E1270();
}

uint64_t sub_1001E48E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_1001E0AA4(a1, v4, v5, v6);
}

uint64_t sub_1001E4994()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001E49D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1001E16A8(a1, v4, v5, v6);
}

uint64_t sub_1001E4A90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001AA38;

  return sub_1001E1D40(v0);
}

uint64_t sub_1001E4B20(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001E4BC8;

  return sub_1001E2184(a1, a2, v2);
}

uint64_t sub_1001E4BC8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_1001E4CC4()
{
  result = qword_100774078;
  if (!qword_100774078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100774078);
  }

  return result;
}

uint64_t sub_1001E4D18(uint64_t a1)
{
  v4 = *(type metadata accessor for TTRTemplateSharingAction() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_1001E29E4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001E4E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100775590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E4E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_100289540(a1, v4, v5, v7, v6);
}

uint64_t getEnumTagSinglePayload for TTRIShowTemplatePresenter.ActionMenuCustomItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIShowTemplatePresenter.ActionMenuCustomItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001E509C()
{
  result = qword_100774080;
  if (!qword_100774080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100774080);
  }

  return result;
}

id TTRIDebugMenuAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIDebugMenuAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIDebugMenuAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIDebugMenuAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001E51BC()
{
  type metadata accessor for TTRIDebugMenuDataManager();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(REMStore) init];
  type metadata accessor for TTRIDebugMenuInteractor();
  v1 = swift_allocObject();
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[4] = v0;
  v1[5] = &off_100725AE0;
  v2 = type metadata accessor for TTRIDebugMenuRouter();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[3] = v2;
  v16[4] = &off_10072ABF0;
  v16[0] = v3;
  type metadata accessor for TTRIDebugMenuEventHandler();
  v4 = swift_allocObject();
  v5 = sub_10000AE84(v16, v2);
  __chkstk_darwin(v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v14 = v2;
  v15 = &off_10072ABF0;
  *&v13 = v9;
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[4] = v1;
  v4[5] = &off_1007164C0;
  sub_100005FD0(&v13, (v4 + 6));
  v1[3] = &off_10072CCD8;
  swift_unknownObjectWeakAssign();

  sub_100004758(v16);
  type metadata accessor for TTRIDebugMenuViewController();
  v16[0] = v4;
  v16[1] = &off_10072CCE0;
  sub_1001E5440();
  static TTRTypedController<>.instantiateFromStoryboard(with:)();
  v10 = v13;
  v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v13];

  swift_unknownObjectWeakAssign();

  return v11;
}

unint64_t sub_1001E5440()
{
  result = qword_100771270;
  if (!qword_100771270)
  {
    type metadata accessor for TTRIDebugMenuViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100771270);
  }

  return result;
}

uint64_t *sub_1001E5498(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1001E5620(uint64_t a1)
{
  type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v3 = type metadata accessor for TTRRemindersListViewModel.Item();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *sub_1001E56AC(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1001E57D4(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001E590C(a1);
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_1001E590C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1001E5968(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1001E5A90(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001E590C(a1);
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t sub_1001E5C10()
{
  result = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1001E5C9C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v5 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1001E5DFC(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v3 = type metadata accessor for TTRRemindersListViewModel.Item();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *sub_1001E5E78(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1001E5F98(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001E590C(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

void *sub_1001E60C8(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_1001E61E8(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1001E590C(a1);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v6 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_1001E6318()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_1001E63A0(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E668C(v2, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      sub_1001E590C(v2);
      (*(v11 + 16))(v2, v20, v10);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (result)
  {
    sub_1001E590C(v2);
    swift_storeEnumTagMultiPayload();
    return sub_1001E590C(v16);
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    sub_1001E66F0();
    LODWORD(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
    v18 = *(v4 + 8);
    v18(v7, v3);
    v18(v9, v3);
    result = (*(v11 + 8))(v13, v10);
    if ((v20 & 1) == 0)
    {
      sub_1001E590C(v2);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_1001E668C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001E66F0()
{
  result = qword_10076BB60;
  if (!qword_10076BB60)
  {
    type metadata accessor for TTRRemindersListViewModel.ItemID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076BB60);
  }

  return result;
}

uint64_t sub_1001E6748(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIRemindersListMultipleSelectionInteractionSession.SelectionState(0);
  __chkstk_darwin(v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E668C(v2, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    sub_1001E590C(v2);
    (*(v11 + 16))(v2, v20, v10);
    return swift_storeEnumTagMultiPayload();
  }

  if (!result)
  {
    sub_1001E590C(v2);
    swift_storeEnumTagMultiPayload();
    return sub_1001E590C(v16);
  }

  (*(v11 + 32))(v13, v16, v10);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  sub_1001E66F0();
  LODWORD(v20) = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v4 + 8);
  v18(v7, v3);
  v18(v9, v3);
  result = (*(v11 + 8))(v13, v10);
  if ((v20 & 1) == 0)
  {
    sub_1001E590C(v2);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1001E6A30()
{
  sub_10003B788(v0 + 16);
  sub_100004758(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10003B788(v0 + 152);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_sharingInfo, &unk_100780980);
  sub_100004758(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_titleAttributesInteractor);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_navigationBar, &unk_100775590);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar, &qword_100769608);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100053470(*(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentAttachImportingContext));

  swift_unknownObjectRelease();

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults, &qword_1007755C8);

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_firstVisibleItemIDToRestore, &unk_10076BB50);

  return v0;
}

uint64_t sub_1001E6C48(uint64_t a1)
{
  v24 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchFlagParams();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 104);
  sub_100058000(&qword_100772150);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  (*(v11 + 16))(v13 + v12, v24, v10);
  v14 = *(v9 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  LODWORD(v12) = v5[*(v3 + 52)];
  sub_10022E05C(v5, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v12 == 1)
  {

    (*(v6 + 104))(v8, enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:), v25);
    goto LABEL_6;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchFlag(_:)();

  v16 = v25;
  v17 = (*(v6 + 88))(v8, v25);
  if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.allowed(_:))
  {
    (*(v6 + 96))(v8, v16);
    return *v8;
  }

  if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchFlagParams.disallowed(_:))
  {
LABEL_6:
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_1007741F0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v18 = 2;
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Item can't be flagged", v22, 2u);
    }

    else
    {

      return 2;
    }

    return v18;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001E6FE0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v44 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = v5;
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775718);
  __chkstk_darwin(v6 - 8);
  *&v42 = &v40 - v7;
  v8 = sub_100058000(&qword_100775720);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for TTRLocationQuickPickItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  sub_10000794C(a1, v10, &qword_100775720);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_100775720);
    sub_100058000(&qword_100772150);
    v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v19 = swift_allocObject();
    v42 = xmmword_10062D400;
    *(v19 + 16) = xmmword_10062D400;
    v20 = *(v4 + 16);
    v21 = v43;
    v22 = v44;
    v20(v19 + v18, v43, v44);
    sub_100242E78(0, v19);

    v23 = swift_allocObject();
    *(v23 + 16) = v42;
    v20(v23 + v18, v21, v22);
    sub_100243084(0, v23);
  }

  v25 = v4;
  (*(v12 + 32))(v17, v10, v11);
  (*(v12 + 16))(v14, v17, v11);
  v26 = (*(v12 + 88))(v14, v11);
  if (v26 != enum case for TTRLocationQuickPickItem.current(_:) && v26 != enum case for TTRLocationQuickPickItem.home(_:) && v26 != enum case for TTRLocationQuickPickItem.work(_:) && v26 != enum case for TTRLocationQuickPickItem.gettingInCar(_:) && v26 != enum case for TTRLocationQuickPickItem.gettingOutOfCar(_:))
  {
    if (v26 == enum case for TTRLocationQuickPickItem.custom(_:))
    {
      return (*(v12 + 8))(v17, v11);
    }

    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v2 = sub_100003E30(v27, qword_1007741F0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unsupported location quick pick item", 36, 2);
    __break(1u);
  }

  swift_getObjectType();
  v28 = sub_100058000(&qword_100775728);
  v29 = v42;
  (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
  v30 = dispatch thunk of TTRLocationQuickPicksInteractorType.locationTrigger(for:togglingProximityForCurrentSelection:)();
  sub_1000079B4(v29, &qword_100775718);
  if (v30)
  {
    v45 = v30;
    v31 = swift_allocObject();
    *&v42 = v17;
    v32 = v2;
    swift_weakInit();
    v33 = v25;
    v34 = *(v25 + 16);
    v35 = v41;
    v36 = v44;
    v34(v41, v43, v44);
    v37 = (*(v33 + 80) + 24) & ~*(v33 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v31;
    (*(v33 + 32))(v38 + v37, v35, v36);
    sub_100058000(&qword_100775730);
    sub_10000E188(&qword_100775738, &qword_100775730);
    v39 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v12 + 8))(v42, v11);

    *(v32 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_locationTriggerCancellable) = v39;
  }

  return (*(v12 + 8))(v17, v11);
}

void sub_1001E7684()
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_1007741F0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reminders List Dismiss Reminder Details", v3, 2u);
  }

  sub_100133054(1, 0, 0);
}

void sub_1001E7774(uint64_t a1)
{
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for REMAnalyticsEvent();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v48 = a1;
  v14 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  type metadata accessor for TTRUserDefaults();
  v16 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  v44 = static REMAnalyticsManager.shared.getter();
  v17 = sub_100058000(&qword_1007757E8);
  v18 = &v11[*(v17 + 48)];
  v19 = &v11[*(v17 + 80)];
  v20 = enum case for REMUserOperation.showSubtasksInParentList(_:);
  v21 = type metadata accessor for REMUserOperation();
  (*(*(v21 - 8) + 104))(v11, v20, v21);
  *v18 = TTRUserDefaults.activitySessionId.getter();
  v18[1] = v22;
  v45 = v16;
  TTRUserDefaults.activitySessionBeginTime.getter();
  v23 = *(v1 + 144);
  v49 = v1;
  ObjectType = swift_getObjectType();
  (*(v23 + 152))(ObjectType, v23);
  v25 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v5, 1, v25) == 1)
  {
    v27 = &unk_10078A380;
    v28 = v5;
LABEL_7:
    sub_1000079B4(v28, v27);
    *v19 = 0;
    v19[1] = 0;
    goto LABEL_9;
  }

  TTRRemindersListViewModel.ListInfo.listType.getter();
  (*(v26 + 8))(v5, v25);
  v29 = type metadata accessor for TTRListType();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v8, 1, v29) == 1)
  {
    v27 = &unk_100775640;
    v28 = v8;
    goto LABEL_7;
  }

  v31 = TTRListType.description.getter();
  v32 = v8;
  v34 = v33;
  (*(v30 + 8))(v32, v29);
  *v19 = v31;
  v19[1] = v34;
LABEL_9:
  v35 = v49;
  v37 = v46;
  v36 = v47;
  (*(v46 + 104))(v11, enum case for REMAnalyticsEvent.userOperation(_:), v47);
  REMAnalyticsManager.post(event:)();

  (*(v37 + 8))(v11, v36);
  v38 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
  if (v38)
  {
    v39 = v38;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v40 = *(v35 + 160);
      if ((*(v23 + 40))(ObjectType, v23))
      {
        swift_getObjectType();
        v41 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
      }

      v42 = swift_getObjectType();
      v50[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
      v50[4] = &off_10071AA88;
      v50[0] = v49;
      v43 = *(v40 + 32);

      v43(v39, v41 & 1, v50, v42, v40);

      swift_unknownObjectRelease();
      sub_100004758(v50);
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_1001E7D9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong presentedViewController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_1001E7E34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = a2;
  v34 = a4;
  v40 = a3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = v6;
  v36 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v37 = v5;
  v16 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v16;
  *(inited + 56) = v17;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  result = (*(v11 + 88))(v13, v10);
  if (result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) && result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) && result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    if (result == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      return result;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  (*(v11 + 8))(v13, v10);
  v19 = type metadata accessor for TaskPriority();
  v20 = *(*(v19 - 8) + 56);
  v32 = v9;
  v20(v9, 1, 1, v19);
  v22 = v35;
  v21 = v36;
  v23 = a1;
  v24 = v37;
  (*(v35 + 16))(v36, v23, v37);
  type metadata accessor for MainActor();
  v25 = v40;

  v34 = v34;
  v26 = v38;

  v27 = static MainActor.shared.getter();
  v28 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v29 = (v33 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = v27;
  *(v30 + 3) = &protocol witness table for MainActor;
  *(v30 + 4) = v26;
  (*(v22 + 32))(&v30[v28], v21, v24);
  v31 = &v30[v29];
  *v31 = v39;
  *(v31 + 1) = v25;
  *&v30[(v29 + 23) & 0xFFFFFFFFFFFFFFF8] = v34;
  sub_10009E31C(0, 0, v32, &unk_1006360B8, v30);
}

uint64_t sub_1001E8320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v30 = a7;
  v31 = a2;
  v27 = a5;
  v28 = a6;
  v33 = a4;
  v32 = a3;
  v8 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v29 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v11 = *(v29 - 8);
  __chkstk_darwin(v29);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  v26 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v17 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v17;
  *(inited + 56) = v18;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  sub_100058000(&qword_100772150);
  v19 = *(v16 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  (*(v19 + 16))(v21 + v20, a1, v16);
  v22 = v29;
  (*(v11 + 104))(v13, *v30, v29);
  v23 = type metadata accessor for TTRIPopoverAnchor();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v10, v31, v23);
  (*(v24 + 56))(v10, 0, 1, v23);
  sub_1001FB6DC(v21, v13, v10, v32, v33);

  sub_1000079B4(v10, &unk_10076FCD0);
  return (*(v11 + 8))(v13, v22);
}

uint64_t sub_1001E86F4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for TTRIPopoverAnchor();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = v5;
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v38);
  v35 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration();
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin(v9);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100775720);
  __chkstk_darwin(v11 - 8);
  v43 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  swift_getObjectType();
  v37 = a1;
  v16 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v32 = v6;
  swift_getObjectType();
  v31 = v3;
  v44[3] = sub_100003540(0, &qword_1007756E0);
  v44[4] = &protocol witness table for REMReminderChangeItem;
  v44[0] = v17;
  v34 = v17;
  dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems(matchingAlarmTriggersIn:)();
  sub_100004758(v44);
  v33 = dispatch thunk of TTRLocationQuickPicksInteractorType.quickPickItems.getter();
  sub_10000794C(v15, v43, &qword_100775720);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v35;
  v20 = v38;
  (*(v7 + 16))(v35, v37, v38);
  v21 = *(v4 + 16);
  v22 = v32;
  v23 = v39;
  v39 = v15;
  v24 = v31;
  v21(v32, v23, v31);
  v25 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v26 = (v8 + *(v4 + 80) + v25) & ~*(v4 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  (*(v7 + 32))(v27 + v25, v19, v20);
  (*(v4 + 32))(v27 + v26, v22, v24);
  v28 = v36;
  TTRIRemindersListContextualMenuAssembly.LocationContextMenuConfiguration.init(availableQuickPickItems:selectedQuickPickItem:handleSelection:)();
  v29 = static TTRIRemindersListContextualMenuAssembly.makeLocationContextMenu(configuration:)();

  (*(v41 + 8))(v28, v42);
  sub_1000079B4(v39, &qword_100775720);
  return v29;
}

void sub_1001E8B5C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v75 = v4;
  v76 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v67 - v6;
  v7 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.CustomTagsOption();
  v72 = *(v7 - 1);
  v73 = v7;
  __chkstk_darwin(v7);
  v83 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v78 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams();
  v15 = *(v85 - 8);
  __chkstk_darwin(v85);
  v17 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100058000(&qword_100772150);
  v18 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v84 = *(v3 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D400;
  v77 = v3;
  v20 = v3 + 16;
  v21 = *(v3 + 16);
  v22 = a1;
  v79 = v2;
  v82 = v20;
  v71 = v21;
  v21((v19 + v18), a1, v2);
  v23 = *(*(v86 + 104) + 72);
  ObjectType = swift_getObjectType();
  (*(v23 + 16))(ObjectType, v23);
  LODWORD(v23) = v14[*(v12 + 52)];
  sub_10022E05C(v14, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v23 == 1)
  {
    (*(v15 + 104))(v17, enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:), v85);
LABEL_17:

    return;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)();
  v25 = v85;
  v26 = (*(v15 + 88))(v17, v85);
  if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
  {
    v69 = v19;
    v70 = ~v84;
    (*(v15 + 96))(v17, v25);
    v28 = *v17;
    v27 = v17[1];
    sub_100058000(&qword_1007758E8);
    v29 = static _DictionaryStorage.copy(original:)();
    v30 = v29;
    v31 = 0;
    v32 = 1 << *(v28 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v28 + 64);
    v35 = (v32 + 63) >> 6;
    v36 = v29 + 64;
    if (v34)
    {
      while (1)
      {
        v37 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
LABEL_13:
        v40 = v37 | (v31 << 6);
        v41 = (*(v28 + 48) + 16 * v40);
        v43 = *v41;
        v42 = v41[1];
        v44 = *(*(*(v28 + 56) + 8 * v40) + 16);
        *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
        v45 = (v30[6] + 16 * v40);
        *v45 = v43;
        v45[1] = v42;
        *(v30[7] + 8 * v40) = v44;
        v46 = v30[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          break;
        }

        v30[2] = v48;

        if (!v34)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v38 = v31;
      while (1)
      {
        v31 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v31 >= v35)
        {
          v49 = [v27 hashtags];
          sub_100003540(0, &unk_1007758F0);
          sub_1000072CC(&qword_100770920, &unk_1007758F0);
          v50 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          v87 = v50;
          sub_100058000(&qword_100775900);
          sub_10000E188(&qword_100775908, &qword_100775900);
          LOBYTE(v49) = Collection<>.contains(hashtagOfType:)();

          *v83 = v49 & 1;
          (*(v72 + 104))();
          v51 = swift_allocObject();
          swift_weakInit();
          v52 = swift_allocObject();
          v85 = v52;
          *(v52 + 16) = v51;
          *(v52 + 24) = v28;
          v53 = swift_allocObject();
          swift_weakInit();
          v54 = v74;
          v68 = v22;
          v73 = v27;
          v55 = v79;
          v56 = v71;
          v71(v74, v22, v79);
          v57 = (v84 + 24) & v70;
          v58 = swift_allocObject();
          v72 = v58;
          *(v58 + 16) = v53;
          v77 = *(v77 + 32);
          (v77)(v58 + v57, v54, v55);
          v59 = swift_allocObject();
          swift_weakInit();
          v60 = v76;
          v56(v76, v68, v55);
          v61 = swift_allocObject();
          *(v61 + 16) = v59;
          (v77)(v61 + v57, v60, v55);
          v62 = swift_allocObject();
          swift_weakInit();
          v63 = swift_allocObject();
          v64 = v69;
          *(v63 + 16) = v62;
          *(v63 + 24) = v64;
          v65 = v78;
          TTRIRemindersListContextualMenuAssembly.HashtagsContextMenuConfiguration.init(showsMenuTitle:itemCount:customTagsOption:itemCountByHashtagLabel:fetchAllHashtagLabels:handleCustomTags:handleTagSelection:handleClearTags:)();
          static TTRIRemindersListContextualMenuAssembly.createHashtagsContextMenu(configuration:)();

          (*(v80 + 8))(v65, v81);
          return;
        }

        v39 = *(v28 + 64 + 8 * v31);
        ++v38;
        if (v39)
        {
          v37 = __clz(__rbit64(v39));
          v34 = (v39 - 1) & v39;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
  {
    goto LABEL_17;
  }

  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100003E30(v66, qword_1007741F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("unknown batchAddHashtag result", 30, 2);
  __break(1u);
}

void sub_1001E949C()
{
  swift_getObjectType();
  v0 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
  if (v0)
  {
    v1 = v0;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_1007741F0);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v4 = [v1 objectID];
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v4;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70);
    sub_10000FD44();

    v5 = [v1 userActivity];
    if (v5)
    {
      v6 = v5;
      REMUserActivity.launch()();
    }
  }
}

UIMenu sub_1001E9644()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.DeleteCompletedMenuItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_1002435DC();
  v12 = *(v11 + 16);
  if (v12)
  {
    v39 = v10;
    v51 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = sub_100003540(0, &qword_10076BA60);
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v47 = v15;
    v48 = v13;
    v16 = *(v14 + 64);
    v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v16;
    v38 = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v18 = *(v14 + 56);
    v43 = (v16 + 24) & ~v16;
    v44 = v18;
    v41 = (v14 + 16);
    v42 = v4;
    v49 = v14;
    v50 = v0;
    v40 = (v14 - 8);
    v19 = v45;
    do
    {
      v20 = v47;
      v47(v7, v17, v2);
      TTRRemindersListViewModel.DeleteCompletedMenuItem.title.getter();
      v21 = swift_allocObject();
      swift_weakInit();
      v20(v19, v7, v2);
      v22 = v43;
      v23 = swift_allocObject();
      *(v23 + 16) = v21;
      (*v41)(v23 + v22, v19, v2);

      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      (*v40)(v7, v2);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += v44;
      --v12;
    }

    while (v12);

    v1 = v50;
    v24 = v51;
    v10 = v39;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  v25 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v25 + 152))(ObjectType, v25);
  v27 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v10, 1, v27) == 1)
  {
    sub_1000079B4(v10, &unk_10078A380);
  }

  else
  {
    v29 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v28 + 8))(v10, v27);
    if (v29)
    {
      v30 = 0x8000000100678C40;
      v31 = 0xD00000000000002ELL;
      v32 = 0x8000000100678C60;
      v33 = 0xD000000000000015;
      goto LABEL_11;
    }
  }

  v33 = 0xD000000000000019;
  v30 = 0x8000000100678BE0;
  v31 = 0xD000000000000032;
  v32 = 0x8000000100678C00;
LABEL_11:
  v34 = TTRLocalizedString(_:comment:)(*&v33, *&v31);
  if (v24 >> 62)
  {
    sub_100003540(0, &qword_10076C550);

    v35 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100003540(0, &qword_10076C550);
    v35 = v24;
  }

  sub_100003540(0, &unk_10076B890);
  v52.value.super.isa = 0;
  v52.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v34, 0, v52, 0, 0xFFFFFFFFFFFFFFFFLL, v35, v37);
}

uint64_t sub_1001E9B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[2] = a3;
  v38[3] = a4;
  v43 = a2;
  v5 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v5 - 8);
  v7 = v38 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = v38 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment();
  v14 = *(v13 - 8);
  v15.n128_f64[0] = __chkstk_darwin(v13);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _swiftEmptyArrayStorage;
  v50 = _swiftEmptyArrayStorage;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v48 = *(v20 + 56);
    v49 = v21;
    v40 = (v9 + 16);
    v41 = (v9 + 32);
    v39 = (v9 + 8);
    v46 = (v20 - 8);
    v47 = (v9 + 48);
    v42 = v20;
    v21(v17, v22, v13, v15);
    while (1)
    {
      TTRRemindersListViewModel.ImageAttachment.fileURL.getter();
      if ((*v47)(v7, 1, v8) == 1)
      {
        (*v46)(v17, v13);
        sub_1000079B4(v7, &unk_100775660);
      }

      else
      {
        v24 = v13;
        v25 = v8;
        v26 = v44;
        (*v41)(v44, v7, v25);
        TTRRemindersListViewModel.ImageAttachment.attachmentID.getter();
        (*v40)(v45, v26, v25);
        v27 = objc_allocWithZone(type metadata accessor for TTRIQuickLookImageAttachmentPreviewItem());
        TTRIQuickLookImageAttachmentPreviewItem.init(attachmentID:fileURL:)();
        v28 = v26;
        v8 = v25;
        v13 = v24;
        (*v39)(v28, v8);
        (*v46)(v17, v24);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v18 = v50;
      }

      v22 += v48;
      if (!--v19)
      {
        break;
      }

      v49(v17, v22, v13, v23);
    }
  }

  v29 = v18 >> 62;
  if (v18 >> 62)
  {
LABEL_30:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (!v30)
    {
    }
  }

  else
  {
    v30 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
    }
  }

  v49 = v29;
  v29 = 0;
  while (v30 != v29)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v31 = *(v18 + 8 * v29 + 32);
    }

    v32 = v31;
    sub_100003540(0, &qword_100775690);
    v33 = TTRIQuickLookImageAttachmentPreviewItem.attachmentID.getter();
    v34 = static NSObject.== infix(_:_:)();

    if (v34)
    {
      goto LABEL_23;
    }

    if (__OFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

  v29 = 0;
LABEL_23:
  if (v49)
  {

    sub_100058000(&unk_100775810);
    v36 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v36 = v18;
  }

  sub_100133418(v36, v29);
}

uint64_t sub_1001EA0A8(uint64_t a1)
{
  v56 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingAttribute();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100775AB0);
  __chkstk_darwin(v4 - 8);
  v50 = &v43 - v5;
  v51 = sub_100058000(&qword_100775AB8);
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v47 = &v43 - v6;
  v53 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  __chkstk_darwin(v53);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v52 = &v43 - v9;
  v10 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams();
  v14 = *(v55 - 8);
  __chkstk_darwin(v55);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v1;
  v17 = *(v1 + 104);
  sub_100058000(&qword_100772150);
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10062D400;
  (*(v19 + 16))(v21 + v20, v56, v18);
  v22 = *(v17 + 72);
  ObjectType = swift_getObjectType();
  (*(v22 + 16))(ObjectType, v22);
  LODWORD(v19) = v13[*(v11 + 52)];
  sub_10022E05C(v13, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v19 == 1)
  {

    (*(v14 + 104))(v16, enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:), v55);
    return 2;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchAddHashtag(_:fetchAllHashtagLabels:)();

  v25 = v55;
  v26 = (*(v14 + 88))(v16, v55);
  if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.allowed(_:))
  {
    (*(v14 + 96))(v16, v25);
    v27 = *(v16 + 1);

    v28 = *(v54 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    v29 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
    swift_beginAccess();
    v30 = v52;
    sub_100233874(v28 + v29, v52, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    sub_10022DFF4(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    v31 = TTRRemindersListEditingState.isEditingItem.getter();
    sub_10022E05C(v30, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    if (v31)
    {
      v32 = v48;
      sub_100233874(v28 + v29, v48, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v33 = v50;
      sub_100016588(v32, v50, &qword_100775AB0);
      if ((*(v49 + 48))(v33, 1, v51) == 1)
      {
        v34 = &qword_100775AB0;
        v35 = v33;
      }

      else
      {
        v36 = v47;
        sub_100016588(v33, v47, &qword_100775AB8);
        if (static TTRRemindersListViewModel.Item.== infix(_:_:)())
        {
          v38 = v44;
          v37 = v45;
          v39 = v46;
          (*(v45 + 104))(v44, enum case for TTRRemindersListEditingAttribute.hashtags(_:), v46);
          sub_10022DFF4(&qword_100775AC0, &type metadata accessor for TTRRemindersListEditingAttribute);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v59 == v57 && v60 == v58)
          {
            (*(v37 + 8))(v38, v39);
            sub_1000079B4(v36, &qword_100775AB8);
          }

          else
          {
            v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
            (*(v37 + 8))(v38, v39);
            sub_1000079B4(v36, &qword_100775AB8);

            if ((v42 & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          return 2;
        }

        v34 = &qword_100775AB8;
        v35 = v36;
      }

      sub_1000079B4(v35, v34);
    }

LABEL_15:
    v40 = [v27 hashtags];
    sub_100003540(0, &unk_1007758F0);
    sub_1000072CC(&qword_100770920, &unk_1007758F0);
    v41 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = v41;
    sub_100058000(&qword_100775900);
    sub_10000E188(&qword_100775908, &qword_100775900);
    LOBYTE(v40) = Collection<>.contains(hashtagOfType:)();

    return v40 & 1;
  }

  if (v26 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAddHashtagParams.disallowed(_:))
  {
    return 2;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001EA920(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  v15 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  v8 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  sub_100058000(&qword_100772150);
  v10 = *(v7 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v15;
  (*(v10 + 16))(v12 + v11, a1, v7);
  v13 = type metadata accessor for TTRIPopoverAnchor();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_1001FC3E0(v12, v4);

  return sub_1000079B4(v4, &unk_10076FCD0);
}

uint64_t sub_1001EAC00(uint64_t a1)
{
  v3 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 224))(a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  sub_100058000(&qword_100772150);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  (*(v10 + 16))(v12 + v11, a1, v9);
  v13 = sub_100200EA8(v12, 1, v5);

  sub_1000079B4(v5, &unk_10076FCD0);
  return v13;
}

uint64_t sub_1001EAE00()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  __chkstk_darwin(v8);
  v28 = &v28 - v9;
  v10 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_1007741F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v14 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v14 + 152))(ObjectType, v14);
  v16 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) == 1)
  {
    return sub_1000079B4(v12, &unk_10078A380);
  }

  CustomSmartListForHashtags = TTRRemindersListViewModel.ListInfo.canCreateCustomSmartListForHashtagsState.getter();
  result = (*(v17 + 8))(v12, v16);
  if (CustomSmartListForHashtags)
  {
    result = (*(v14 + 80))(ObjectType, v14);
    if (result)
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.getter();
      swift_unknownObjectRelease();
      v21 = v28;
      v20 = v29;
      v22 = v30;
      (*(v29 + 32))(v28, v7, v30);
      (*(v20 + 104))(v4, enum case for REMHashtagLabelSpecifier.allLabels(_:), v22);
      sub_10022DFF4(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v20 + 8);
      v24(v4, v22);
      if ((v23 & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
      {
        return (v24)(v21, v22);
      }

      else
      {
        v25 = *(v1 + 160);
        v26 = swift_getObjectType();
        v31[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
        v31[4] = &off_10071AA88;
        v31[0] = v1;
        v27 = *(v25 + 40);

        v27(v31, v21, v26, v25);
        swift_unknownObjectRelease();
        v24(v21, v22);
        return sub_100004758(v31);
      }
    }
  }

  return result;
}

uint64_t sub_1001EB230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v15[3] = a1;
  v15[4] = a4;
  v15[1] = a3;
  v15[2] = a2;
  v15[5] = a5;
  v6 = type metadata accessor for TTRIReminderCellModuleOwnerModuleType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar, v18, &qword_100769608);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v10 = (*(v7 + 104))(v9, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v6);
  (*(*v5 + 1424))(v10);
  swift_unknownObjectRetain();
  v11 = static TTRIReminderCellTitleAssembly.createViewController(item:titleAttributesInteractor:quickBar:augmentationSplitter:ownerModule:hostViewController:inCellPresenterManager:isSingleReminderEditingMode:returnKeyType:moduleDelegate:)();
  v13 = v12;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v9, v6);
  sub_1000079B4(v16, &qword_100775A98);
  sub_100004758(v18);
  *&v16[0] = v11;
  *(&v16[0] + 1) = v13;
  sub_1000046FC(v19, v18);
  sub_100058000(&unk_100775AA0);
  TTRRemindersListInCellModule.init(interface:controller:)();
  return sub_100004758(v19);
}

uint64_t sub_1001EB484@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v3 = type metadata accessor for TTRIReminderCellModuleOwnerModuleType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar, v12, &qword_100769608);
  (*(v4 + 104))(v6, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v3);
  swift_unknownObjectRetain();
  v7 = static TTRIReminderCellNotesAssembly.createViewController(item:isSingleReminderEditingMode:quickBar:ownerModule:hostViewController:inCellPresenterManager:moduleDelegate:)();
  v9 = v8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  sub_100004758(v12);
  v11[2] = v7;
  v11[3] = v9;
  sub_1000046FC(v13, v12);
  sub_100058000(&qword_100775A90);
  TTRRemindersListInCellModule.init(interface:controller:)();
  return sub_100004758(v13);
}

uint64_t sub_1001EB668@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v3 = type metadata accessor for TTRIReminderCellModuleOwnerModuleType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_quickBar, v12, &qword_100769608);
  (*(v4 + 104))(v6, enum case for TTRIReminderCellModuleOwnerModuleType.remindersList(_:), v3);
  swift_unknownObjectRetain();
  v7 = static TTRIReminderCellHashtagAssembly.createViewController(item:quickBar:ownerModule:hostViewController:inCellPresenterManager:moduleDelegate:)();
  v9 = v8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  sub_100004758(v12);
  v11[2] = v7;
  v11[3] = v9;
  sub_1000046FC(v13, v12);
  sub_100058000(&qword_100775A88);
  TTRRemindersListInCellModule.init(interface:controller:)();
  return sub_100004758(v13);
}

uint64_t sub_1001EB844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a2;
  v49 = a4;
  v47 = a3;
  v43 = a1;
  v50 = a5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TTRRemindersListLayout();
  v8 = *(v52 - 8);
  __chkstk_darwin(v52);
  v45 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v51 = &v39 - v14;
  swift_getObjectType();
  v39 = dispatch thunk of TTRRemindersListInteractorType.store.getter();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v5 + 160);
    ObjectType = swift_getObjectType();
    v56 = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v57 = &off_10071AA88;
    v55[0] = v5;
    v17 = v8;
    v18 = *(v15 + 8);

    v19 = v18(v55, ObjectType, v15);
    v8 = v17;
    v20 = v19;
    swift_unknownObjectRelease();
    sub_100004758(v55);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v22 = *(v5 + 144);
  v23 = swift_getObjectType();
  v24 = *(v22 + 112);
  v46 = v21;
  swift_unknownObjectRetain();
  if (v24(v23, v22))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v25 = v51;
    v26 = v12;
    v27 = v52;
    (*(v8 + 32))(v51, v26, v52);
  }

  else
  {
    v25 = v51;
    v27 = v52;
    (*(v8 + 104))(v51, enum case for TTRRemindersListLayout.list(_:), v52);
  }

  v28 = type metadata accessor for TTRInteractorAsyncEditsCommitter();
  v29 = static TTRInteractorEditsCommitting<>.async.getter();
  v56 = v28;
  v57 = &protocol witness table for TTRInteractorAsyncEditsCommitter;
  v55[0] = v29;
  type metadata accessor for TTRRemindersListEditableSectionNameInteractor();
  swift_allocObject();
  v40 = v20;
  v39 = v39;
  v30 = TTRRemindersListEditableSectionNameInteractor.init(store:undoManager:committer:)();
  type metadata accessor for TTRIRemindersListEditableSectionNameRouter();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v41 + 16))(v44, v43, v42);
  type metadata accessor for TTRRemindersListEditableSectionNameEditingPresenter();
  swift_allocObject();
  swift_unknownObjectRetain();

  v32 = TTRRemindersListEditableSectionNameEditingPresenter.init(item:interactor:presenterManager:)();
  v33 = v45;
  (*(v8 + 16))(v45, v25, v27);

  v34 = sub_10022E1BC(v30, v31, v32, v33);
  v45 = type metadata accessor for TTRIRemindersListEditableSectionNameViewController();
  v35 = objc_allocWithZone(v45);

  v37 = sub_10022E0BC(v36, v35);
  sub_10022DFF4(&qword_100775A60, type metadata accessor for TTRIRemindersListEditableSectionNamePresenter);

  dispatch thunk of TTRRemindersListEditableSectionNameInteractorType.delegate.setter();
  *(v34 + 3) = sub_10022DFF4(&qword_100775A68, type metadata accessor for TTRIRemindersListEditableSectionNameViewController);
  swift_unknownObjectWeakAssign();
  *(v34 + 7) = v47;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  sub_10022DFF4(&qword_100775A70, type metadata accessor for TTRIRemindersListEditableSectionNamePresenter);

  TTRRemindersListEditableSectionNameEditingPresenter.delegate.setter();

  swift_unknownObjectRelease();

  (*(v8 + 8))(v51, v52);
  v53 = v34;
  v54 = &off_10072C5A8;
  v56 = v45;
  v55[0] = v37;
  sub_100058000(&qword_100775A78);
  return TTRRemindersListInCellModule.init(interface:controller:)();
}

uint64_t sub_1001EBE1C()
{
  v1 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 160))(ObjectType, v1);
  (*(v1 + 168))((v3 & 1) == 0, ObjectType, v1);
  v4 = (*(v1 + 216))(ObjectType, v1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 24);
    v6 = swift_getObjectType();
    (*(v5 + 120))(v4, v6, v5);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1001EBF2C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100058000(&qword_100775698);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v15 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_100233874(v14 + v15, v13, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  LOBYTE(v11) = v13[*(v11 + 28)];
  sub_10022E05C(v13, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if (v11 & 1) != 0 || swift_unknownObjectWeakLoadStrong() && (v16 = *(v3 + 24), ObjectType = swift_getObjectType(), LOBYTE(v16) = (*(v16 + 64))(ObjectType, v16), swift_unknownObjectRelease(), (v16))
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_1007741F0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "TTRIRemindersCommonPresenter: cannot perform requestNewReminderInDefaultSection", v21, 2u);
    }
  }

  else
  {
    if (a1)
    {
      v22 = 68;
    }

    else
    {
      v22 = 8;
    }

    sub_1004E8E18(v22, a2, a3, v9);
    sub_1000079B4(v9, &qword_100775698);
  }
}

void sub_1001EC1B4(char *a1@<X8>)
{
  v3 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v8 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_100233874(v7 + v8, v6, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  LOBYTE(v4) = v6[*(v4 + 28)];
  sub_10022E05C(v6, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if (v4 & 1) != 0 || swift_unknownObjectWeakLoadStrong() && (v9 = *(v1 + 24), ObjectType = swift_getObjectType(), LOBYTE(v9) = (*(v9 + 64))(ObjectType, v9), swift_unknownObjectRelease(), (v9))
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_1007741F0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "TTRIRemindersCommonPresenter: cannot perform requestNewReminderInDefaultSectionForPencilInput", v14, 2u);
    }

    v15 = sub_100058000(&qword_100775A58);
    (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    sub_1004E8E18(0x31uLL, 0, 0, a1);
  }
}

uint64_t sub_1001EC400@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v47 = a3;
  v6 = sub_100058000(&qword_100775A50);
  __chkstk_darwin(v6 - 8);
  v46 = &v39[-v7];
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v42 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v41 = &v39[-v11];
  v12 = type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems(0);
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v45 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v39[-v15];
  v17 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  v19 = *(v17 + 208);
  v19(ObjectType, v17);
  swift_getObjectType();
  v48 = a1;
  v20 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isReminderWithSubtasks(_:)();
  swift_unknownObjectRelease();
  if (v20)
  {
    v21 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v21 - 8) + 56))(v16, 2, 2, v21);
  }

  else
  {
    v40 = a2;
    if ((a2 & 1) != 0 || (v19(ObjectType, v17), swift_getObjectType(), v22 = dispatch thunk of TTRRemindersListTreeContentsQueryable.isSubtask(_:)(), swift_unknownObjectRelease(), (v22 & 1) == 0))
    {
      v21 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v21 - 8) + 56))(v16, 1, 2, v21);
      LOBYTE(a2) = v40;
    }

    else
    {
      v19(ObjectType, v17);
      swift_getObjectType();
      v23 = v41;
      dispatch thunk of TTRRemindersListTreeContentsQueryable.parentOfSubtask(_:)();
      swift_unknownObjectRelease();
      v24 = v42;
      sub_100016588(v23, v42, &qword_100772140);
      v21 = type metadata accessor for TTRRemindersListViewModel.Item();
      v25 = *(v21 - 8);
      v26 = 1;
      v27 = (*(v25 + 48))(v24, 1, v21);
      v28 = v46;
      if (v27 != 1)
      {
        (*(v25 + 32))(v46, v24, v21);
        (*(v25 + 56))(v28, 0, 2, v21);
        v26 = 0;
      }

      v30 = v43;
      v29 = v44;
      (*(v43 + 56))(v28, v26, 1, v44);
      v31 = *(v30 + 48);
      v32 = v31(v28, 1, v29);
      v33 = v45;
      if (v32 == 1)
      {
        (*(v25 + 56))(v45, 1, 2, v21);
        v34 = v31(v28, 1, v29);
        LOBYTE(a2) = v40;
        if (v34 != 1)
        {
          sub_1000079B4(v28, &qword_100775A50);
        }
      }

      else
      {
        sub_10023409C(v28, v45, type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems);
        LOBYTE(a2) = v40;
      }

      sub_10023409C(v33, v16, type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems);
    }
  }

  v35 = type metadata accessor for TTRIRemindersListItemAdjustedSelection(0);
  v36 = *(v35 + 20);
  type metadata accessor for TTRRemindersListViewModel.Item();
  v37 = v47;
  (*(*(v21 - 8) + 16))(&v47[v36], v48, v21);
  *v37 = a2 & 1;
  return sub_10023409C(v16, &v37[*(v35 + 24)], type metadata accessor for TTRIRemindersListItemAdjustedSelection.AssociatedItems);
}

void *sub_1001EC96C(void *a1)
{
  v3 = (*(*v1 + 1616))();
  v4 = v1[18];
  ObjectType = swift_getObjectType();
  if ((*(v4 + 104))(ObjectType, v4) && (v6 = sub_1002E2EA8(), swift_unknownObjectRelease(), v7 = v6[2], , v7))
  {
    v8 = *(v3 + 16);
    if (!v8)
    {
LABEL_4:

      return _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v8 = *(v3 + 16);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  sub_1004A1B24(0, v8, 0);
  v9 = _swiftEmptyArrayStorage;
  v10 = (v3 + 40);
  do
  {
    v11 = sub_1001FE94C(*(v10 - 1), *v10, a1);
    v19 = v9;
    v14 = v9[2];
    v13 = v9[3];
    if (v14 >= v13 >> 1)
    {
      v18 = v11;
      v16 = v12;
      sub_1004A1B24((v13 > 1), v14 + 1, 1);
      v11 = v18;
      v12 = v16;
      v9 = v19;
    }

    v10 += 16;
    v9[2] = v14 + 1;
    v15 = &v9[2 * v14];
    v15[4] = v11;
    *(v15 + 40) = v12;
    *(v15 + 41) = BYTE1(v12) & 1;
    *(v15 + 42) = BYTE2(v12) & 1;
    --v8;
  }

  while (v8);

  return v9;
}

void *sub_1001ECB38(char *a1, int a2)
{
  v34 = a2;
  v41 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v11 = 0;
  v42 = a1;
  v12 = *(a1 + 2);
  v40 = v7 + 16;
  v13 = (v3 + 88);
  v39 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v38 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v14 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  v37 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  v15 = (v7 + 8);
  v33 = (v3 + 8);
  while (2)
  {
    if (v11 != v12)
    {
      while (1)
      {
        if (v11 >= v12)
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*(v7 + 16))(v10, &v42[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11], v6, v8);
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_27;
        }

        TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
        v17 = (*v13)(v5, v41);
        v18 = v17 == v39 || v17 == v38;
        if (v18 || v17 == v14)
        {
          break;
        }

        if (v17 != v37)
        {
          goto LABEL_28;
        }

        (*v15)(v10, v6);
        ++v11;
        if (v16 == v12)
        {
          goto LABEL_18;
        }
      }

      (*v15)(v10, v6);
      (*v33)(v5, v41);
      ++v11;
      if (!__OFADD__(v36++, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_18:
  v21 = (*(*v35 + 1624))(v42);
  v22 = *(v21 + 16);
  if (v22)
  {
    v43 = _swiftEmptyArrayStorage;
    sub_1004A1B24(0, v22, 0);
    v23 = v43;
    v24 = (v21 + 40);
    do
    {
      v25 = sub_1001FE94C(*(v24 - 1), *v24, v42);
      v43 = v23;
      v28 = v23[2];
      v27 = v23[3];
      if (v28 >= v27 >> 1)
      {
        v30 = v25;
        v31 = v26;
        sub_1004A1B24((v27 > 1), v28 + 1, 1);
        v25 = v30;
        v26 = v31;
        v23 = v43;
      }

      v24 += 16;
      v23[2] = v28 + 1;
      v29 = &v23[2 * v28];
      v29[4] = v25;
      *(v29 + 40) = v26;
      *(v29 + 41) = BYTE1(v26) & 1;
      *(v29 + 42) = BYTE2(v26) & 1;
      --v22;
    }

    while (v22);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v23;
}

uint64_t sub_1001ECF24@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_1007758D0);
  __chkstk_darwin(v6 - 8);
  v154 = &v149 - v7;
  v168 = sub_100058000(&qword_1007758D8);
  __chkstk_darwin(v168);
  v167 = (&v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v166 = &v149 - v10;
  v11 = type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration(0);
  v171 = *(v11 - 8);
  __chkstk_darwin(v11);
  v161 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for TTRRemindersListLayout();
  v13 = *(v163 - 8);
  __chkstk_darwin(v163);
  v155 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v162 = &v149 - v16;
  v187 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v158 = *(v187 - 1);
  __chkstk_darwin(v187);
  v186 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for TTRRemindersListViewModel.Item();
  v189 = *(v196 - 8);
  __chkstk_darwin(v196);
  v188 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v156 = (&v149 - v21);
  v197 = type metadata accessor for TTRSectionID();
  v22 = *(v197 - 8);
  __chkstk_darwin(v197);
  v153 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v170 = &v149 - v25;
  __chkstk_darwin(v26);
  v165 = &v149 - v27;
  __chkstk_darwin(v28);
  v193 = &v149 - v29;
  __chkstk_darwin(v30);
  v181 = &v149 - v31;
  __chkstk_darwin(v32);
  v194 = &v149 - v33;
  v190 = type metadata accessor for TTRSectionLite();
  v184 = *(v190 - 8);
  __chkstk_darwin(v190);
  v172 = &v149 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v149 - v36;
  __chkstk_darwin(v38);
  v169 = &v149 - v39;
  __chkstk_darwin(v40);
  v182 = &v149 - v41;
  v42 = sub_100243BE4(a1);
  v192 = v44;
  v173 = v45;
  if (!v42)
  {
    v59 = *(v171 + 56);

    return v59(a2, 1, 1, v11);
  }

  v46 = v42;
  v152 = v43;
  v174 = v22;
  v185 = a1;
  *&v198 = a1;
  v47 = sub_100058000(&qword_10076E0B0);
  sub_100003540(0, &qword_10076BB00);
  sub_10000E188(&unk_100784560, &qword_10076E0B0);
  Sequence.firstMap<A>(_:)();
  if (!v200[0])
  {

    return (*(v171 + 56))(a2, 1, 1, v11);
  }

  v151 = v200[0];
  v48 = OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_userDefaults;
  swift_beginAccess();
  v164 = v3;
  sub_10000794C(v48 + v3, &v198, &qword_1007755C8);
  if (!v199)
  {

    sub_1000079B4(&v198, &qword_1007755C8);
    return (*(v171 + 56))(a2, 1, 1, v11);
  }

  v149 = v37;
  v150 = v13;
  sub_100005FD0(&v198, v200);
  v49 = 0;
  v180 = v46;
  v179 = *(v46 + 16);
  v183 = v184 + 16;
  v176 = enum case for TTRSectionID.sectionless(_:);
  v175 = (v174 + 104);
  v195 = (v174 + 8);
  v178 = (v184 + 8);
  v177 = a2;
  v50 = v194;
  v51 = (v174 + 8);
  while (v179 != v49)
  {
    v52 = *(v180 + 16);
    if (v49 >= v52)
    {
      goto LABEL_43;
    }

    v37 = v184;
    v48 = v182;
    v53 = v190;
    (*(v184 + 2))(v182, v180 + ((v37[80] + 32) & ~v37[80]) + *(v37 + 9) * v49++, v190);
    TTRSectionLite.sectionID.getter();
    v54 = v11;
    v55 = v181;
    v56 = v197;
    (*v175)(v181, v176, v197);
    LODWORD(v191) = static TTRSectionID.== infix(_:_:)();
    v47 = *v51;
    v57 = v55;
    v11 = v54;
    (*v51)(v57, v56);
    (v47)(v50, v56);
    v58 = v53;
    a2 = v177;
    (*(v37 + 1))(v48, v58);
    if ((v191 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v61 = v164[18];
  ObjectType = swift_getObjectType();
  v49 = v156;
  (*(v61 + 192))(ObjectType, v61);
  LOBYTE(v61) = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v159 + 8))(v49, v160);
  if ((v61 & 1) == 0)
  {

    (*(v171 + 56))(a2, 1, 1, v11);
    return sub_100004758(v200);
  }

LABEL_16:
  v156 = v11;
  v175 = 0;
  v50 = 0;
  v63 = v185;
  v37 = *(v185 + 16);
  v191 = v189 + 16;
  v64 = (v158 + 11);
  LODWORD(v182) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v51 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v47 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  v65 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  a2 = v189 + 8;
  ++v158;
  v48 = v188;
  v52 = &v202;
  v66 = v186;
  while (2)
  {
    if (v50 == v37)
    {
      goto LABEL_33;
    }

    while (1)
    {
      if (v50 >= v37)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      (*(v189 + 16))(v48, v63 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v50, v196);
      v49 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_42;
      }

      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v67 = (*v64)(v66, v187);
      v68 = v67 == v182 || v67 == v51;
      if (v68 || v67 == v47)
      {
        break;
      }

      if (v67 != v65)
      {
        goto LABEL_88;
      }

      v48 = v188;
      (*a2)(v188, v196);
      ++v50;
      v52 = &v201;
      v63 = v185;
      if (v49 == v37)
      {
        goto LABEL_33;
      }
    }

    v48 = v188;
    (*a2)(v188, v196);
    (*v158)(v186, v187);
    ++v50;
    v70 = __OFADD__(v175++, 1);
    v52 = &v201;
    v63 = v185;
    if (!v70)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_33:
  if ((v152 & 1) == 0)
  {

    v158 = _swiftEmptyArrayStorage;
    v191 = v180;
    v51 = v164;
LABEL_62:
    v89 = v51[18];
    v90 = swift_getObjectType();
    v91 = v157;
    (*(v89 + 192))(v90, v89);
    v92 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v159 + 8))(v91, v160);
    v93 = (*(v89 + 112))(v90, v89);
    v94 = v156;
    v95 = v161;
    v96 = v162;
    LODWORD(v196) = v92;
    if (v93)
    {
      swift_getObjectType();
      v97 = v155;
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      swift_unknownObjectRelease();
      (*(v150 + 32))(v96, v97, v163);
    }

    else
    {
      (*(v150 + 104))(v162, enum case for TTRRemindersListLayout.list(_:), v163);
    }

    v98 = swift_allocObject();
    swift_weakInit();
    v99 = swift_allocObject();
    v100 = v185;
    *(v99 + 2) = v98;
    *(v99 + 3) = v100;
    v101 = v100;
    v102 = v173;
    *(v99 + 4) = v173;
    v103 = swift_allocObject();
    swift_weakInit();
    v104 = swift_allocObject();
    *(v104 + 2) = v103;
    *(v104 + 3) = v101;
    *(v104 + 4) = v102;
    v105 = swift_allocObject();
    swift_weakInit();
    v106 = swift_allocObject();
    v107 = v151;
    *(v106 + 16) = v105;
    *(v106 + 24) = v107;
    v108 = v158;
    *v95 = v191;
    *(v95 + 1) = v108;
    v95[25] = v152 & 1;
    v95[26] = v196 & 1;
    (*(v150 + 16))(&v95[v94[9]], v162, v163);
    *&v95[v94[10]] = v175;
    v109 = &v95[v94[11]];
    *v109 = sub_100236984;
    v109[1] = v99;
    v110 = &v95[v94[12]];
    *v110 = sub_1002369D8;
    v110[1] = v104;
    v111 = &v95[v94[13]];
    *v111 = sub_1002369E4;
    *(v111 + 1) = v106;
    *&v198 = &_swiftEmptySetSingleton;
    v112 = *(v102 + 64);
    v192 = v102 + 64;
    v113 = 1 << *(v102 + 32);
    v114 = -1;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    v115 = v114 & v112;
    v191 = (v113 + 63) >> 6;
    v116 = v174;
    v196 = v174 + 16;
    v193 = (v174 + 32);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v190 = v98;

    v189 = v103;

    v188 = v105;

    v187 = v107;
    v117 = 0;
    while (1)
    {
      v118 = v170;
      if (!v115)
      {
        break;
      }

      v119 = v117;
LABEL_74:
      v120 = __clz(__rbit64(v115));
      v115 &= v115 - 1;
      v121 = v120 | (v119 << 6);
      v122 = *(*(v173 + 48) + 8 * v121);
      v123 = *(v173 + 56) + *(v116 + 72) * v121;
      v124 = v168;
      v125 = *(v174 + 16);
      v126 = v166;
      v127 = v197;
      v125(&v166[*(v168 + 48)], v123, v197);
      *v126 = v122;
      v128 = v167;
      sub_10000794C(v126, v167, &qword_1007758D8);
      v129 = *v128;
      v130 = v122;

      v131 = v128 + *(v124 + 48);
      v132 = v194;
      (*(v174 + 32))(v194, v131, v127);
      v133 = v165;
      v125(v165, v132, v127);
      v116 = v174;
      v134 = v181;
      sub_10058B9BC(v181, v133);
      v135 = *(v116 + 8);
      v135(v134, v127);
      v135(v132, v127);
      sub_1000079B4(v126, &qword_1007758D8);
    }

    while (1)
    {
      v119 = v117 + 1;
      if (__OFADD__(v117, 1))
      {
        __break(1u);
        goto LABEL_87;
      }

      if (v119 >= v191)
      {
        break;
      }

      v115 = *(v192 + 8 * v119);
      ++v117;
      if (v115)
      {
        v117 = v119;
        goto LABEL_74;
      }
    }

    v136 = v198;
    if (*(v198 + 16) != 1)
    {
      (*(v150 + 8))(v162, v163);

      v141 = v177;
      v142 = v156;
      v143 = v161;
LABEL_79:
      v146 = 1;
LABEL_80:
      *(v143 + 16) = v136;
      *(v143 + 24) = v146;
      sub_10023409C(v143, v141, type metadata accessor for TTRRemindersListPresenterCapability.MoveToExistingSectionMenuAssembly.MenuConfiguration);

      (*(v171 + 56))(v141, 0, 1, v142);
      return sub_100004758(v200);
    }

    v137 = v154;
    sub_1000A97CC(v198, v154);
    v138 = v197;
    v139 = (*(v116 + 48))(v137, 1, v197);
    v140 = v116;
    v141 = v177;
    v142 = v156;
    v143 = v161;
    v144 = v163;
    v145 = v162;
    if (v139 == 1)
    {
      (*(v150 + 8))(v162, v163);

      sub_1000079B4(v137, &qword_1007758D0);
      goto LABEL_79;
    }

    (*(v140 + 32))(v118, v137, v138);
    v147 = v153;
    (*(v140 + 16))(v153, v118, v138);
    v148 = (*(v140 + 88))(v147, v138);
    if (v148 == enum case for TTRSectionID.sectioned(_:))
    {

      (*(v140 + 8))(v118, v138);
      (*(v150 + 8))(v145, v144);
      (*(v140 + 96))(v147, v138);
      v146 = 0;
      v136 = *v147;
      goto LABEL_80;
    }

    if (v148 == v176)
    {

      (*v195)(v118, v138);
      (*(v150 + 8))(v145, v144);
      v136 = 0;
      v146 = 2;
      goto LABEL_80;
    }

    goto LABEL_89;
  }

  sub_10000C36C(v200, v200[3]);
  v71 = [v151 list];
  v72 = [v71 objectID];

  v73 = dispatch thunk of TTRListEditorGroceryListUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)();
  v51 = v164;
  if ((v73 & 1) == 0)
  {

    v158 = _swiftEmptyArrayStorage;
    v191 = v180;
    goto LABEL_62;
  }

  v74 = v180;
  if (!v179)
  {

    v158 = _swiftEmptyArrayStorage;
    v191 = _swiftEmptyArrayStorage;
    goto LABEL_62;
  }

  a2 = 0;
  v187 = ((v184[80] + 32) & ~v184[80]);
  v186 = v187 + v180;
  v50 = (v192 + 56);
  v196 = v174 + 16;
  v182 = v184 + 32;
  v158 = _swiftEmptyArrayStorage;
  v191 = _swiftEmptyArrayStorage;
  v47 = v169;
  while (a2 < *(v74 + 16))
  {
    v189 = *(v184 + 9);
    v188 = *(v184 + 2);
    (v188)(v47, &v186[v189 * a2], v190);
    TTRSectionLite.sectionID.getter();
    if (*(v192 + 16) && (v77 = v192, sub_10022DFF4(&qword_1007758E0, &type metadata accessor for TTRSectionID), v78 = dispatch thunk of Hashable._rawHashValue(seed:)(), v79 = -1 << *(v77 + 32), v80 = v78 & ~v79, ((*&v50[(v80 >> 3) & 0xFFFFFFFFFFFFFF8] >> v80) & 1) != 0))
    {
      v81 = ~v79;
      v82 = *(v174 + 72);
      v83 = *(v174 + 16);
      while (1)
      {
        v84 = v194;
        v85 = v197;
        v83(v194, *(v192 + 48) + v82 * v80, v197);
        sub_10022DFF4(&qword_10076BE70, &type metadata accessor for TTRSectionID);
        v86 = dispatch thunk of static Equatable.== infix(_:_:)();
        v87 = *v195;
        (*v195)(v84, v85);
        if (v86)
        {
          break;
        }

        v80 = (v80 + 1) & v81;
        if (((*&v50[(v80 >> 3) & 0xFFFFFFFFFFFFFF8] >> v80) & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v87(v193, v197);
      v47 = v169;
      (v188)(v149, v169, v190);
      v48 = v158;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1005470BC(0, v48[2] + 1, 1, v48);
      }

      v51 = v164;
      v49 = v48[2];
      v88 = v48[3];
      v37 = v49 + 1;
      if (v49 >= v88 >> 1)
      {
        v48 = sub_1005470BC(v88 > 1, (v49 + 1), 1, v48);
        v75 = v149;
        v158 = v48;
      }

      else
      {
        v158 = v48;
        v75 = v149;
      }
    }

    else
    {
LABEL_52:
      (*v195)(v193, v197);
      v47 = v169;
      (v188)(v172, v169, v190);
      v48 = v191;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1005470BC(0, v48[2] + 1, 1, v48);
      }

      v49 = v48[2];
      v52 = v48[3];
      v37 = v49 + 1;
      v51 = v164;
      if (v49 >= v52 >> 1)
      {
LABEL_44:
        v48 = sub_1005470BC(v52 > 1, v37, 1, v48);
        v75 = v172;
        v191 = v48;
      }

      else
      {
        v75 = v172;
        v191 = v48;
      }
    }

    ++a2;
    v76 = v190;
    (*v178)(v47, v190);
    v48[2] = v37;
    (*v182)(v187 + v48 + v49 * v189, v75, v76);
    v74 = v180;
    if (a2 == v179)
    {

      goto LABEL_62;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_89:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1001EE984(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v139 = a4;
  v137 = a2;
  v141 = a1;
  v5 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v5 - 8);
  v129 = &v120 - v6;
  v7 = sub_100058000(&qword_10076DF38);
  __chkstk_darwin(v7 - 8);
  v128 = &v120 - v8;
  v131 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v127 = *(v131 - 8);
  __chkstk_darwin(v131);
  v126 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for TTRIReminderDetailStyle();
  v125 = *(v130 - 8);
  __chkstk_darwin(v130);
  v123 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TTRReminderDetailSubject();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  __chkstk_darwin(v133);
  v132 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchAssignParams();
  v135 = *(v13 - 8);
  v136 = v13;
  __chkstk_darwin(v13);
  v134 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v15 - 8);
  v17 = &v120 - v16;
  v18 = type metadata accessor for REMRDLUserOperationDetail();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&qword_100775608);
  __chkstk_darwin(v22 - 8);
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v120 - v26;
  v28 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v28 - 8);
  v120 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v138 = &v120 - v31;
  v32 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v34 = __chkstk_darwin(v32);
  v36 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v41 = v141;
    v42 = v141[2];
    if (v42)
    {
    }

    else
    {
      v41 = sub_1001F89F0();
      v42 = v41[2];
    }

    *v27 = v42 > 1;
    (*(v19 + 104))(v27, enum case for REMRDLUserOperationDetail.rdl_multiSelectRecover(_:), v18);
    (*(v19 + 56))(v27, 0, 1, v18);
    v52 = type metadata accessor for TTRIPopoverAnchor();
    v53 = *(v52 - 8);
    v54 = v138;
    (*(v53 + 16))(v138, v139, v52);
    (*(v53 + 56))(v54, 0, 1, v52);
    sub_10022F72C(v41, v27, v54);

    v55 = v54;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v37 = v141;
    v38 = v141[2];
    if (v38)
    {
      *v21 = v38 != 1;
      v39 = enum case for REMRDLUserOperationDetail.rdl_multiSelectPermanentlyDelete(_:);
      v40 = *(v19 + 104);

      v40(v21, v39, v18);
    }

    else
    {
      v37 = sub_1001F89F0();
      (*(v19 + 104))(v21, enum case for REMRDLUserOperationDetail.rdl_permanentlyDeleteAll(_:), v18);
    }

    (*(v19 + 16))(v24, v21, v18);
    (*(v19 + 56))(v24, 0, 1, v18);
    if (v37[2])
    {
      v49 = type metadata accessor for TTRIPopoverAnchor();
      v50 = *(v49 - 8);
      v51 = v138;
      (*(v50 + 16))(v138, v139, v49);
      (*(v50 + 56))(v51, 0, 1, v49);
      sub_10020D648(v37, 0, v24, v51, 0, 0);

      sub_1000079B4(v51, &unk_10076FCD0);
    }

    else
    {
    }

    sub_1000079B4(v24, &qword_100775608);
    (*(v19 + 8))(v21, v18);
    return;
  }

  v43 = a3 & 0x10000;
  if (v137 <= 2)
  {
    v58 = v141;
    if (!v137)
    {
      v74 = v33;
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100003E30(v75, qword_1007741F0);
      sub_100058000(&unk_100775610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = 0x6E756F436D657469;
      v77 = inited + 32;
      *(inited + 40) = 0xE900000000000074;
      v78 = v58[2];
      *(inited + 72) = &type metadata for Int;
      *(inited + 48) = v78;
      sub_100008E04(inited);
      swift_setDeallocating();
      sub_1000079B4(v77, &unk_10076BA70);
      sub_10000FD44();

      (*(v74 + 104))(v36, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection.date(_:), v32);
      v79 = type metadata accessor for TTRIPopoverAnchor();
      v80 = *(v79 - 8);
      v81 = v138;
      (*(v80 + 16))(v138, v139, v79);
      (*(v80 + 56))(v81, 0, 1, v79);
      sub_1001FB6DC(v58, v36, v81, 0, 0);
      sub_1000079B4(v81, &unk_10076FCD0);
      (*(v74 + 8))(v36, v32);
      return;
    }

    if (v137 != 1)
    {
      v82 = v141;
      v83 = v139;

      sub_1001FF034(v82, v83);
      return;
    }

    (*(v19 + 56))(v27, 1, 1, v18, v34);
    v59 = type metadata accessor for TTRIPopoverAnchor();
    v60 = *(v59 - 8);
    v61 = v138;
    (*(v60 + 16))(v138, v139, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    sub_10022F72C(v58, v27, v61);
    v55 = v61;
LABEL_18:
    sub_1000079B4(v55, &unk_10076FCD0);
    v56 = &qword_100775608;
    v57 = v27;
LABEL_19:
    sub_1000079B4(v57, v56);
    return;
  }

  if (v137 <= 5)
  {
    if ((v137 - 3) < 2)
    {
      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(v17, 1, 1, v44);
      type metadata accessor for MainActor();
      v45 = v141;

      v47 = static MainActor.shared.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = &protocol witness table for MainActor;
      *(v48 + 32) = v46;
      *(v48 + 40) = BYTE2(v43);
      *(v48 + 48) = v45;
      sub_10009E31C(0, 0, v17, &unk_100636050, v48);

      return;
    }

    if (qword_100767008 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_46;
  }

  if (v137 == 6)
  {
    v62 = v43 != 0;
    v64 = v140;
    v63._rawValue = v141;
    sub_100242CC8(v62, v63);
    v65 = *(v64 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v65);
  }

  else
  {
    v84 = v140;
    v85 = v141;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_100003E30(v86, qword_1007741F0);
    sub_100058000(&unk_100775610);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_10062D400;
    *(v87 + 32) = 0x6E756F436D657469;
    v88 = v87 + 32;
    *(v87 + 40) = 0xE900000000000074;
    v89 = v85[2];
    *(v87 + 72) = &type metadata for Int;
    *(v87 + 48) = v89;
    sub_100008E04(v87);
    swift_setDeallocating();
    sub_1000079B4(v88, &unk_10076BA70);
    sub_10000FD44();

    v90 = *(*(v84 + 104) + 72);
    ObjectType = swift_getObjectType();
    v92 = v132;
    (*(v90 + 16))(ObjectType, v90);
    v93 = *(v92 + *(v133 + 44));
    sub_10022E05C(v92, type metadata accessor for TTRRemindersListEditingInteractionOptions);
    if (v93 == 1)
    {
      (*(v135 + 104))(v134, enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:), v136);
      return;
    }

    v94 = v134;
    TTRRemindersListPresenterCapabilityCore.paramsForBatchAssign(_:pendingMoveTargetListForHostingReminder:)();
    v96 = v135;
    v95 = v136;
    v97 = (*(v135 + 88))(v94, v136);
    if (v97 == enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.allowed(_:))
    {
      (*(v96 + 96))(v94, v95);
      v136 = *(v94 + 1);

      v98 = type metadata accessor for TTRIPopoverAnchor();
      v99 = *(v98 - 8);
      v100 = v138;
      (*(v99 + 16))(v138, v139, v98);
      (*(v99 + 56))(v100, 0, 1, v98);
      sub_10000794C(v100, v120, &unk_10076FCD0);
      v101 = v84;
      v102 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
      swift_allocObject();
      v139 = v89;

      v103 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
      TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
      sub_1000079B4(v100, &unk_10076FCD0);
      type metadata accessor for BatchAssignPickerDetailModuleDelegate();
      v104 = swift_allocObject();
      swift_weakInit();
      swift_unknownObjectWeakInit();
      swift_weakAssign();
      v105 = v136;
      swift_unknownObjectWeakAssign();
      *(v104 + 32) = v85;
      v106 = sub_10022DFF4(&qword_100775A48, type metadata accessor for BatchAssignPickerDetailModuleDelegate);
      v138 = v106;
      v107 = (v101 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
      *v107 = v104;
      v107[1] = v106;

      swift_unknownObjectRelease();
      v140 = *(v101 + 88);
      v142[3] = v102;
      v142[4] = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
      v137 = v103;
      v142[0] = v103;

      v141 = v105;
      v108 = v121;
      TTRReminderDetailSubject.init(reminderChangeItem:)();
      v109 = v125;
      v110 = v123;
      (*(v125 + 104))(v123, enum case for TTRIReminderDetailStyle.assignmentPicker(_:), v130);
      v111 = v126;
      v112 = v127;
      (*(v127 + 104))(v126, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.assignments(_:), v131);
      v113 = type metadata accessor for TTRSectionLite();
      v114 = v128;
      (*(*(v113 - 8) + 56))(v128, 1, 1, v113);
      v115 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
      v116 = v129;
      v117 = (*(*(v115 - 8) + 56))(v129, 1, 1, v115);
      __chkstk_darwin(v117);
      v118 = v140;
      *(&v120 - 12) = v108;
      *(&v120 - 11) = v118;
      *(&v120 - 10) = v111;
      *(&v120 - 9) = v104;
      v119 = v139;
      *(&v120 - 8) = v138;
      *(&v120 - 7) = v110;
      *(&v120 - 48) = 0;
      *(&v120 - 5) = v119;
      *(&v120 - 4) = v114;
      *(&v120 - 3) = v116;
      *(&v120 - 2) = v142;
      *(&v120 - 4) = 1;
      firstly<A>(closure:)();

      sub_1000079B4(v116, &qword_10076DF30);
      sub_1000079B4(v114, &qword_10076DF38);
      (*(v112 + 8))(v111, v131);
      (*(v109 + 8))(v110, v130);
      (*(v122 + 8))(v108, v124);
      sub_100004758(v142);
      return;
    }

    if (v97 != enum case for TTRRemindersListPresenterCapabilityCore.BatchAssignParams.disallowed(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_46:
      swift_once();
LABEL_31:
      v66 = type metadata accessor for Logger();
      sub_100003E30(v66, qword_1007741F0);
      sub_100058000(&unk_100775610);
      v67 = swift_initStackObject();
      *(v67 + 16) = xmmword_10062D400;
      *(v67 + 32) = 0x6E756F436D657469;
      v68 = v67 + 32;
      *(v67 + 40) = 0xE900000000000074;
      v69 = v141;
      v70 = v141[2];
      *(v67 + 72) = &type metadata for Int;
      *(v67 + 48) = v70;
      sub_100008E04(v67);
      swift_setDeallocating();
      sub_1000079B4(v68, &unk_10076BA70);
      sub_10000FD44();

      v71 = type metadata accessor for TTRIPopoverAnchor();
      v72 = *(v71 - 8);
      v73 = v138;
      (*(v72 + 16))(v138, v139, v71);
      (*(v72 + 56))(v73, 0, 1, v71);
      sub_1001FC3E0(v69, v73);
      v56 = &unk_10076FCD0;
      v57 = v73;
      goto LABEL_19;
    }
  }
}

uint64_t sub_1001EFE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = *(v2 + 144);
  ObjectType = swift_getObjectType();
  (*(v9 + 240))(a1, ObjectType, v9);
  v11 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_1000079B4(v8, &qword_100772738);
    v13 = 1;
  }

  else
  {
    v14 = *(v12 + 32);
    v22 = v11;
    v14(a2, v8, v11);
    TTRRemindersListPresenterCapabilityCore.decorateWithLocationPermissions(_:for:)();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v3 + 24);
      v16 = swift_getObjectType();
      (*(v15 + 8))(v16, v15);
      swift_unknownObjectRelease();
    }

    swift_allocObject();
    swift_weakInit();

    TTRRemindersListPresenterCapabilityCore.decorateWithImageAttachments(_:for:viewScale:thumbnailDidLoad:)();

    swift_allocObject();
    swift_weakInit();

    TTRRemindersListPresenterCapabilityCore.decorateWithLinkAttachments(_:for:linkDidLoad:)();

    v17 = swift_allocObject();
    swift_weakInit();

    sub_10024C3EC(a2, a1, sub_10023A454, v17);

    swift_allocObject();
    swift_weakInit();

    TTRRemindersListPresenterCapabilityCore.decorateWithPerson(_:for:personDidLoad:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v3 + 24);
      v19 = swift_getObjectType();
      (*(v18 + 8))(v19, v18);
      swift_unknownObjectRelease();
    }

    swift_allocObject();
    swift_weakInit();

    TTRRemindersListPresenterCapabilityCore.decorateWithAppLink(_:for:viewScale:appLinkDidLoad:)();

    sub_1001F8798(a2, a1);
    sub_10024C804(a2);
    v13 = 0;
    v11 = v22;
  }

  return (*(v12 + 56))(a2, v13, 1, v11);
}

uint64_t sub_1001F027C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
  v22 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v12 + 16))(ObjectType, v12);
  v14 = v11[*(v9 + 32)];
  sub_10022E05C(v11, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v14)
  {
    return 0;
  }

  v15 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v16 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_100233874(v15 + v16, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  sub_10022DFF4(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  LOBYTE(v15) = TTRRemindersListEditingState.isEditing(_:)();
  sub_10022E05C(v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if (v15)
  {
    return 0;
  }

  TTRRemindersListViewModel.Item.editableCasesOnly.getter();
  v18 = v22;
  v19 = (*(v22 + 88))(v4, v2);
  if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.reminder(_:))
  {
    goto LABEL_5;
  }

  v20 = 0;
  if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.placeholderReminder(_:))
  {
    goto LABEL_6;
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.editableSection(_:))
  {
LABEL_5:
    v20 = 1;
LABEL_6:
    v21 = v20;
    (*(v18 + 8))(v4, v2);
    return v21;
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedEditingSection(_:))
  {
    v20 = 0;
    goto LABEL_6;
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.nonEditable(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_1001F05C8()
{
  v1 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v1 - 8);
  v3 = &v54 - v2;
  v4 = type metadata accessor for TTRSection();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  v10 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_1001F027C() & 1) == 0)
  {
    return _swiftEmptyArrayStorage;
  }

  TTRRemindersListViewModel.Item.editableCasesOnly.getter();
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 != enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.reminder(_:))
  {
    if (v17 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.placeholderReminder(_:))
    {
      goto LABEL_8;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.editableSection(_:))
    {
      (*(v14 + 96))(v16, v13);
      v14 = *v16;
      v34 = *(v0 + 144);
      ObjectType = swift_getObjectType();
      v36 = (*(v34 + 104))(ObjectType, v34);
      if (!v36)
      {
LABEL_23:

        return _swiftEmptyArrayStorage;
      }

      v37 = v36;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v38 = *(v37 + 64);
        v39 = swift_getObjectType();
        (*(v38 + 16))(v39, v38);
        swift_unknownObjectRelease();
        v40 = v14;
        TTRSection.init(with:store:)();
        v41 = v55;
        v42 = v56;
        if ((*(v55 + 48))(v3, 1, v56) != 1)
        {
          (*(v41 + 32))(v9, v3, v42);
          v43 = *(v41 + 16);
          v43(v6, v9, v42);
          v44 = type metadata accessor for TTRIRemindersListDragSection();
          v45 = objc_allocWithZone(v44);
          v54 = v40;
          v46 = v41;
          v47 = v45;
          v43(&v45[OBJC_IVAR____TtC9Reminders28TTRIRemindersListDragSection_section], v6, v42);
          v63.receiver = v47;
          v63.super_class = v44;
          v48 = objc_msgSendSuper2(&v63, "init");
          v49 = *(v46 + 8);
          v49(v6, v42);
          v50 = [objc_allocWithZone(NSItemProvider) initWithObject:v48];
          v51 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v50];
          v62 = v44;
          v61[0] = v48;
          v58 = 0xD000000000000027;
          v59 = 0x8000000100677BB0;
          v52 = v48;
          AnyHashable.init<A>(_:)();
          UIDragItem.setLocalObject(_:forKey:)();
          sub_100077654(v60);
          sub_1000079B4(v61, &qword_10076AE40);
          sub_100058000(&qword_10076B780);
          v53 = swift_allocObject();
          *(v53 + 16) = xmmword_10062D420;
          *(v53 + 32) = v51;

          swift_unknownObjectRelease();
          v49(v9, v42);
          return v53;
        }

        swift_unknownObjectRelease();
        goto LABEL_22;
      }
    }

    else
    {
      if (v17 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedEditingSection(_:))
      {
        goto LABEL_8;
      }

      if (v17 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.nonEditable(_:))
      {
        return _swiftEmptyArrayStorage;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    swift_unknownObjectRelease();
    (*(v55 + 56))(v3, 1, 1, v56);
LABEL_22:
    sub_1000079B4(v3, &unk_100775960);
    goto LABEL_23;
  }

  v18 = *(v0 + 144);
  v19 = swift_getObjectType();
  v20 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
  if (!v20)
  {
LABEL_8:
    (*(v14 + 8))(v16, v13);
    return _swiftEmptyArrayStorage;
  }

  v21 = v20;
  (*(v18 + 152))(v19, v18);
  v22 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v12, 1, v22) == 1)
  {
    sub_1000079B4(v12, &unk_10078A380);
    v24 = 0;
  }

  else
  {
    v24 = TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter();
    (*(v23 + 8))(v12, v22);
  }

  v26 = type metadata accessor for TTRIRemindersListDragReminder();
  v27 = objc_allocWithZone(v26);
  v27[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
  *&v27[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v21;
  v27[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v24 & 1;
  v57.receiver = v27;
  v57.super_class = v26;
  v28 = v21;
  v29 = objc_msgSendSuper2(&v57, "init");
  v30 = [objc_allocWithZone(NSItemProvider) initWithObject:v29];
  v31 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v30];
  v62 = v26;
  v61[0] = v29;
  v58 = 0xD000000000000029;
  v59 = 0x8000000100677B80;
  v32 = v29;
  AnyHashable.init<A>(_:)();
  UIDragItem.setLocalObject(_:forKey:)();
  sub_100077654(v60);
  sub_1000079B4(v61, &qword_10076AE40);
  sub_100058000(&qword_10076B780);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10062D420;
  *(v33 + 32) = v31;

  (*(v14 + 8))(v16, v13);
  return v33;
}

uint64_t sub_1001F0DE0(uint64_t a1)
{
  v3 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  (*(v3 + 480))(v9, a1, ObjectType, v3);
  v5 = v10;
  sub_1000079B4(v9, &qword_100773350);
  if (v5)
  {
    return 1;
  }

  result = (*(v3 + 104))(ObjectType, v3);
  if (result)
  {
    sub_1002E562C(v8);
    sub_10000C36C(v8, v8[3]);
    sub_10015511C(a1, v9);
    swift_unknownObjectRelease();
    sub_100004758(v8);
    v7 = v10 != 0;
    sub_1000079B4(v9, &qword_100775A40);
    return v7;
  }

  return result;
}

void sub_1001F0F00(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v6 = v5;
  v123 = a5;
  LODWORD(v126) = a4;
  v129 = a1;
  v9 = sub_100058000(&qword_100775A18);
  __chkstk_darwin(v9 - 8);
  v11 = (&v115 - v10);
  v12 = type metadata accessor for TTRRemindersListMovingSectionsParams(0);
  v117 = *(v12 - 8);
  v118 = v12;
  __chkstk_darwin(v12);
  v116 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100775A08);
  __chkstk_darwin(v14 - 8);
  v124 = &v115 - v15;
  v16 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  v121 = *(v16 - 8);
  v122 = v16;
  __chkstk_darwin(v16);
  v120 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v18 - 8);
  v20 = &v115 - v19;
  sub_10000794C(a2, &v115 - v19, &qword_100772140);
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000079B4(v20, &qword_100772140);
    v23 = 0xE300000000000000;
    v128 = 7104878;
  }

  else
  {
    sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v128 = TTRTreeStorageItem.treeItemDescription.getter();
    v23 = v24;
    (*(v22 + 8))(v20, v21);
  }

  v119 = v11;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_100003E30(v25, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062F800;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  v28 = v129;
  v29 = sub_10020C668(v129);
  v30 = sub_100058000(&unk_100781F20);
  *(inited + 48) = v29;
  *(inited + 72) = v30;
  *(inited + 80) = 0x746E657261506F74;
  v31 = v128;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = v31;
  *(inited + 104) = v23;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 29793;
  *(inited + 168) = &type metadata for Int;
  *(inited + 136) = 0xE200000000000000;
  *(inited + 144) = a3;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  v125 = v26;
  sub_10000FD44();

  v127 = v23;
  v32 = v6;
  if (v126)
  {
    v33 = *(v6 + 144);
    ObjectType = swift_getObjectType();
    a3 = (*(v33 + 520))(a3, a2, v28, ObjectType, v33);
  }

  v35 = *(v6 + 144);
  v36 = swift_getObjectType();
  (*(v35 + 496))(&v131, a2, a3, v36, v35);
  if (v132)
  {
    sub_100005FD0(&v131, v134);
    v37 = sub_10057EEDC();
    if (v37)
    {
      v38 = v37;
      v39 = v135;
      v40 = v136;
      sub_10000C36C(v134, v135);
      (*(v40 + 32))(&v131, v38, v39, v40);

      v41 = v132;
      v42 = v133;
      sub_10000C36C(&v131, v132);
      v43 = (v42[4])(v41, v42);
      if (!v43)
      {
        v88 = v127;

        v89 = v129;

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v130[0] = swift_slowAlloc();
          *v55 = 136315394;
          sub_10020C668(v89);
          v90 = Array.description.getter();
          v92 = v91;

          v93 = sub_100004060(v90, v92, v130);

          *(v55 + 4) = v93;
          *(v55 + 12) = 2080;
          v94 = sub_100004060(v128, v88, v130);

          *(v55 + 14) = v94;
          v61 = "Failed to commit move. Cannot get optimistic moves {items: %s, newParent: %s}";
          goto LABEL_33;
        }

LABEL_35:

        goto LABEL_48;
      }

      if (*(v43 + 16))
      {
        v44 = v43;
        (*(v35 + 352))();
        if ((v123 & 1) == 0)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v45 = *(v32 + 24);
            v46 = swift_getObjectType();
            (*(v45 + 128))(v44, v46, v45);
            swift_unknownObjectRelease();
          }
        }

        v47 = v132;
        v48 = v133;
        sub_10000C36C(&v131, v132);
        v49 = v124;
        (v48[5])(v47, v48);
        v50 = (*(v121 + 48))(v49, 1, v122);
        v51 = v127;
        if (v50 == 1)
        {
          sub_1000079B4(v124, &qword_100775A08);

          v52 = v129;

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v130[0] = swift_slowAlloc();
            *v55 = 136315394;
            sub_10020C668(v52);
            v56 = Array.description.getter();
            v58 = v57;

            v59 = sub_100004060(v56, v58, v130);

            *(v55 + 4) = v59;
            *(v55 + 12) = 2080;
            v60 = sub_100004060(v128, v51, v130);

            *(v55 + 14) = v60;
            v61 = "Failed to commit move. Cannot get params for saving {items: %s, newParent: %s}";
LABEL_33:
            _os_log_impl(&_mh_execute_header, v53, v54, v61, v55, 0x16u);
            swift_arrayDestroy();

LABEL_48:

LABEL_53:
            sub_100004758(&v131);
            sub_100004758(v134);
            return;
          }

          goto LABEL_35;
        }

        v105 = v120;
        sub_10023409C(v124, v120, type metadata accessor for TTRRemindersListMovingRemindersParams);
        sub_100245068(v129);
        sub_1002458E8(v105);
        v106 = type metadata accessor for TTRRemindersListMovingRemindersParams;
LABEL_52:
        sub_10022E05C(v105, v106);
        goto LABEL_53;
      }

LABEL_50:

      goto LABEL_53;
    }

    sub_100004758(v134);
  }

  else
  {
    sub_1000079B4(&v131, &qword_100775A10);
  }

  v62 = (*(v35 + 104))(v36, v35);
  if (v62)
  {
    v63 = v62;
    sub_1002E5744(a2, a3, &v131);
    if (v132)
    {
      sub_100005FD0(&v131, v134);
      *&v131 = v129;
      v64 = v63;
      sub_100058000(&qword_10076E0B0);
      sub_100058000(&qword_10076F9F8);
      sub_10000E188(&unk_100784560, &qword_10076E0B0);
      v65 = Sequence.completeCompactMap<A>(_:)();
      if (v65)
      {
        v66 = v65;
        v126 = v64;
        v67 = *sub_10000C36C(v134, v135);
        v68 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.SectionsInsertionPlan(0);
        v69 = swift_allocObject();
        *(v69 + 16) = _swiftEmptyArrayStorage;
        *(v69 + 24) = 1;
        v70 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan____lazy_storage___position;
        v71 = sub_100058000(&unk_100775A30);
        (*(*(v71 - 8) + 56))(v69 + v70, 1, 1, v71);
        *(v69 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredMoveSubjects) = 0;
        *(v69 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_filteredLocalItems) = 0;
        *(v69 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_insertionRequest) = v67;

        sub_100156D70(v66);

        v132 = v68;
        v133 = &off_1007182F0;
        *&v131 = v69;
        sub_10000C36C(&v131, v68);
        v72 = sub_10015733C();
        if (v72)
        {
          if (!*(v72 + 16))
          {

            swift_unknownObjectRelease();
            goto LABEL_50;
          }

          v73 = v72;
          (*(v35 + 352))();
          if ((v123 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
          {
            v74 = *(v32 + 24);
            v75 = swift_getObjectType();
            (*(v74 + 128))(v73, v75, v74);
            swift_unknownObjectRelease();
          }

          sub_10000C36C(&v131, v132);
          v76 = v119;
          sub_10015762C(v119);
          v77 = (*(v117 + 48))(v76, 1, v118);
          v78 = v127;
          if (v77 != 1)
          {

            v114 = v76;
            v105 = v116;
            sub_10023409C(v114, v116, type metadata accessor for TTRRemindersListMovingSectionsParams);
            sub_100247324(v105);
            swift_unknownObjectRelease();
            v106 = type metadata accessor for TTRRemindersListMovingSectionsParams;
            goto LABEL_52;
          }

          sub_1000079B4(v76, &qword_100775A18);

          v79 = v129;

          v53 = Logger.logObject.getter();
          v80 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v53, v80))
          {
            v81 = swift_slowAlloc();
            v130[0] = swift_slowAlloc();
            *v81 = 136315394;
            sub_10020C668(v79);
            v82 = Array.description.getter();
            v84 = v83;

            v85 = sub_100004060(v82, v84, v130);

            *(v81 + 4) = v85;
            *(v81 + 12) = 2080;
            v86 = sub_100004060(v128, v78, v130);

            *(v81 + 14) = v86;
            v87 = "Failed to commit move. Cannot get params for saving {items: %s, newParent: %s}";
LABEL_45:
            _os_log_impl(&_mh_execute_header, v53, v80, v87, v81, 0x16u);
            swift_arrayDestroy();

LABEL_47:
            swift_unknownObjectRelease();
            goto LABEL_48;
          }
        }

        else
        {
          v107 = v127;

          v108 = v129;

          v53 = Logger.logObject.getter();
          v80 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v53, v80))
          {
            v81 = swift_slowAlloc();
            v130[0] = swift_slowAlloc();
            *v81 = 136315394;
            sub_10020C668(v108);
            v109 = Array.description.getter();
            v111 = v110;

            v112 = sub_100004060(v109, v111, v130);

            *(v81 + 4) = v112;
            *(v81 + 12) = 2080;
            v113 = sub_100004060(v128, v107, v130);

            *(v81 + 14) = v113;
            v87 = "Failed to commit move. Cannot get optimistic moves {items: %s, newParent: %s}";
            goto LABEL_45;
          }
        }

        goto LABEL_47;
      }

      swift_unknownObjectRelease();
      sub_100004758(v134);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1000079B4(&v131, &unk_100775A20);
    }
  }

  v95 = v127;

  v96 = v129;

  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v134[0] = swift_slowAlloc();
    *v99 = 136315394;
    sub_10020C668(v96);
    v100 = Array.description.getter();
    v102 = v101;

    v103 = sub_100004060(v100, v102, v134);

    *(v99 + 4) = v103;
    *(v99 + 12) = 2080;
    v104 = sub_100004060(v128, v95, v134);

    *(v99 + 14) = v104;
    _os_log_impl(&_mh_execute_header, v97, v98, "Failed to commit move. Cannot get params for moving {items: %s, newParent: %s}", v99, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_1001F1FE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v77 = *(v6 - 8);
  __chkstk_darwin(v6);
  v75 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v69 - v9;
  v11 = sub_100058000(&qword_100775A08);
  __chkstk_darwin(v11 - 8);
  v13 = &v69 - v12;
  v73 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100003E30(v15, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  v18 = sub_100058000(&qword_10076E0B0);
  *(inited + 48) = a1;
  *(inited + 72) = v18;
  *(inited + 80) = 1869901417;
  *(inited + 88) = 0xE400000000000000;
  v19 = sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);

  v78 = v6;
  v74 = v19;
  v20 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v20;
  *(inited + 104) = v21;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  v76 = v16;
  sub_10000FD44();

  v71 = v3;
  v22 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  (*(v22 + 504))(&v80, a2, ObjectType, v22);
  if (!v81)
  {
    sub_1000079B4(&v80, &qword_100775A10);
    goto LABEL_10;
  }

  sub_100005FD0(&v80, v83);
  v24 = sub_10057EEDC();
  if (!v24)
  {
    sub_100004758(v83);
LABEL_10:
    v45 = v77;
    v46 = v75;
    v47 = v78;
    (*(v77 + 16))(v75, a2, v78);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v50 = 136315394;
      sub_10020C668(a1);
      v51 = Array.description.getter();
      v53 = v52;

      v54 = sub_100004060(v51, v53, v83);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      v55 = TTRTreeStorageItem.treeItemDescription.getter();
      v57 = v56;
      (*(v45 + 8))(v46, v47);
      v58 = sub_100004060(v55, v57, v83);

      *(v50 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to commit drop into. Cannot get params for dropping {items: %s, target: %s}", v50, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v45 + 8))(v46, v47);
    }

LABEL_18:
    v67 = 0;
    return v67 & 1;
  }

  v25 = v24;
  v75 = v10;
  v27 = v84;
  v26 = v85;
  sub_10000C36C(v83, v84);
  (*(v26 + 32))(&v80, v25, v27, v26);

  v28 = v81;
  v29 = v82;
  sub_10000C36C(&v80, v81);
  (*(v29 + 40))(v28, v29);
  if ((*(v72 + 48))(v13, 1, v73) == 1)
  {
    sub_1000079B4(v13, &qword_100775A08);
    v30 = v77;
    v31 = v75;
    v32 = a2;
    v33 = v78;
    (*(v77 + 16))(v75, v32, v78);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v36 = 136315394;
      sub_10020C668(a1);
      v37 = Array.description.getter();
      v39 = v38;

      v40 = sub_100004060(v37, v39, &v79);

      *(v36 + 4) = v40;
      *(v36 + 12) = 2080;
      v41 = TTRTreeStorageItem.treeItemDescription.getter();
      v43 = v42;
      (*(v30 + 8))(v31, v33);
      v44 = sub_100004060(v41, v43, &v79);

      *(v36 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to commit drop into. Cannot get params for saving {items: %s, target: %s}", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v30 + 8))(v31, v33);
    }

    sub_100004758(&v80);
    sub_100004758(v83);
    goto LABEL_18;
  }

  v59 = v70;
  sub_10023409C(v13, v70, type metadata accessor for TTRRemindersListMovingRemindersParams);
  v60 = v71;
  sub_100245068(a1);
  v61 = v81;
  v62 = v82;
  sub_10000C36C(&v80, v81);
  v63 = (*(v62 + 32))(v61, v62);
  if (v63)
  {
    v64 = v63;
    (*(v22 + 352))(v63, ObjectType, v22);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v65 = *(v60 + 24);
      v66 = swift_getObjectType();
      (*(v65 + 128))(v64, v66, v65);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v67 = sub_100247638(v59);
  sub_10022E05C(v59, type metadata accessor for TTRRemindersListMovingRemindersParams);
  sub_100004758(&v80);
  sub_100004758(v83);
  return v67 & 1;
}

uint64_t sub_1001F2980@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 136);
  v11 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 16);
  v56 = ObjectType;
  v58 = v11;
  v13(ObjectType, v11);
  LOBYTE(v7) = v9[*(v7 + 36)];
  sub_10022E05C(v9, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v7)
  {
    v14 = type metadata accessor for TTRIRemindersListUnsupportedDropRequest();
    result = swift_allocObject();
    v16 = &off_100726B00;
    a2[3] = v14;
LABEL_31:
    a2[4] = v16;
    *a2 = result;
    return result;
  }

  v55 = v10;
  v57 = a1;
  if (a1 >> 62)
  {
LABEL_36:
    *&v61 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    *&v61 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v17 != 0;
  if (!v17)
  {
    v53 = _swiftEmptyArrayStorage;
    v36 = v55;
    if (!v18)
    {
      goto LABEL_33;
    }

LABEL_27:
    v61 = *(v3 + 72);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v3 + 160);
      v38 = swift_getObjectType();
      v65[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
      v65[4] = &off_10071AA88;
      v65[0] = v3;
      v39 = *(v37 + 8);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v40 = v39(v65, v38, v37);
      swift_unknownObjectRelease();
      sub_100004758(v65);
    }

    else
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v40 = 0;
    }

    v41 = type metadata accessor for TTRIRemindersListInAppDragReminderDropRequest();
    result = swift_allocObject();
    *(result + 16) = v53;
    *(result + 24) = v36;
    *(result + 32) = v58;
    *(result + 40) = v61;
    *(result + 56) = v40;
    v16 = &off_100726AA8;
    a2[3] = v41;
    goto LABEL_31;
  }

  v50 = 1;
  v51 = v3;
  v52 = a2;
  v3 = 0;
  v19 = 0;
  a2 = v57;
  v59 = 0x8000000100677B80;
  v60 = v57 & 0xC000000000000001;
  v54 = v58 + 488;
  v53 = _swiftEmptyArrayStorage;
  while (2)
  {
    v20 = v19;
    while (1)
    {
      if (v60)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v61 + 16))
        {
          goto LABEL_35;
        }

        v21 = a2[v20 + 4];
      }

      v22 = v21;
      v19 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v23 = type metadata accessor for TTRIRemindersListDragReminder();
      v63 = 0xD000000000000029;
      v64 = v59;
      v24 = v22;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();
      sub_100077654(v65);
      a1 = v66;
      if (v66)
      {
        break;
      }

LABEL_9:
      ++v20;
      if (v19 == v17)
      {
        v35 = v3;
        a2 = v52;
        v3 = v51;
        v36 = v55;
        if (v35)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

    v25 = *(v66 + OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder);
    v26 = *(v66 + OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList);
    v27 = objc_allocWithZone(v23);
    v27[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
    *&v27[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v25;
    v27[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v26;
    v62.receiver = v27;
    v62.super_class = v23;
    v28 = v25;
    v29 = objc_msgSendSuper2(&v62, "init");

    a1 = *(v58 + 488);
    v30 = *&v29[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];
    v31 = (a1)();

    if ((v31 & 1) == 0)
    {

      v3 = 1;
      a2 = v57;
      goto LABEL_9;
    }

    a1 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1005473DC(0, *(a1 + 16) + 1, 1, a1);
    }

    a2 = v57;
    v33 = *(a1 + 16);
    v32 = *(a1 + 24);
    if (v33 >= v32 >> 1)
    {
      a1 = sub_1005473DC((v32 > 1), v33 + 1, 1, a1);
    }

    *(a1 + 16) = v33 + 1;
    v53 = a1;
    v34 = (a1 + 16 * v33);
    v34[4] = v29;
    v34[5] = v24;
    v3 = 1;
    if (v19 != v17)
    {
      continue;
    }

    break;
  }

  a2 = v52;
  v3 = v51;
  v36 = v55;
  if (v50)
  {
    goto LABEL_27;
  }

LABEL_33:

  v42 = *(v3 + 72);
  v43 = *(v3 + 80);
  v44 = *(v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  v45 = type metadata accessor for TTRIRemindersListOutOfAppDragItemDropRequest();
  v46 = swift_allocObject();
  v47 = v58;
  v46[2] = v57;
  v46[3] = v36;
  v46[4] = v47;
  v46[5] = v42;
  v46[6] = v43;
  type metadata accessor for TTRRemindersListOutOfAppDragItemDropUtils();
  v48 = swift_allocObject();
  v48[2] = v36;
  v48[3] = v47;
  v48[4] = v42;
  v48[5] = v43;
  v48[6] = v44;
  v48[7] = &off_10072C878;
  v46[7] = v48;
  a2[3] = v45;
  a2[4] = &off_100726A38;
  *a2 = v46;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
}

uint64_t sub_1001F2F44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_100249258(a1);
  v8 = [objc_opt_self() generalPasteboard];
  sub_100058000(&qword_10076B780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10062D420;
  *(v9 + 32) = v7;
  v10 = v7;
  sub_100058000(&qword_100775870);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setObjects:isa];

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v2;
  v14[5] = a1;
  sub_10009E31C(0, 0, v6, &unk_100636010, v14);
}

void sub_1001F3140(uint64_t a1)
{
  v1 = sub_100249258(a1);
  v2 = [objc_opt_self() generalPasteboard];
  sub_100058000(&qword_10076B780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10062D420;
  *(v3 + 32) = v1;
  v4 = v1;
  sub_100058000(&qword_100775870);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setObjects:isa];
}

BOOL sub_1001F3234(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  sub_100058000(&qword_100772150);
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  (*(v10 + 16))(v12 + v11, a1, v9);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v3;
  sub_10009E31C(0, 0, v8, &unk_100636000, v15);

  v16 = sub_100249E94(v12, a2);

  return v16 > 0;
}

uint64_t sub_1001F3444(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v14 - 8);
  v16 = v25 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v5;
  sub_10009E31C(0, 0, v16, &unk_100635FF8, v19);

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v20 = (*(v11 + 88))(v13, v10);
  if (v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    swift_getObjectType();
    v21 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
    v22 = v21;
    if (v21 && (v25[1] = v21, sub_100003540(0, &qword_10076BB00), (TTRReminderProtocol.isRecurringReminderThatCanAdvanceForward.getter() & 1) != 0))
    {
      sub_10020CC08(a1, a2, a3, a4);
    }

    else
    {
      sub_10024A0F0(a1, a2);
      a3(1);
    }

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(v11 + 8))(v13, v10);
    }

    else if (v20 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    return (a3)(0);
  }
}

BOOL sub_1001F376C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListPostponeType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v1;
  sub_10009E31C(0, 0, v8, &unk_100635FE8, v11);

  (*(v3 + 104))(v5, enum case for TTRRemindersListPostponeType.today(_:), v2);
  v12 = sub_10024A3F4(v5);
  (*(v3 + 8))(v5, v2);
  return v12 > 0;
}

BOOL sub_1001F3968(uint64_t a1)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = sub_100058000(&qword_10076E0B0);
  *(inited + 48) = a1;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v5 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  v9 = (*(v5 + 536))(a1, ObjectType, v5);
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    v12 = *(v5 + 352);

    v12(v13, ObjectType, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v1 + 24);
      v15 = swift_getObjectType();
      (*(v14 + 128))(v9, v15, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_100261BA4(a1, v10, v11);
  }

  return v9 != 0;
}

BOOL sub_1001F3B98(void *a1)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x736D657469;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = sub_100058000(&qword_10076E0B0);
  *(inited + 48) = a1;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v5 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  v9 = (*(v5 + 544))(a1, ObjectType, v5);
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    v12 = *(v5 + 352);

    v12(v13, ObjectType, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v1 + 24);
      v15 = swift_getObjectType();
      (*(v14 + 128))(v9, v15, v14);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_100262188(a1, v10, v11);
  }

  return v9 != 0;
}

void sub_1001F3DC8(uint64_t a1)
{
  v21 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams();
  v6 = *(v22 - 8);
  __chkstk_darwin(v22);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 104);
  sub_100058000(&qword_100772150);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  (*(v11 + 16))(v13 + v12, v21, v10);
  v14 = *(v9 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  LODWORD(v12) = v5[*(v3 + 52)];
  sub_10022E05C(v5, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v12 == 1)
  {

    (*(v6 + 104))(v8, enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:), v22);
    return;
  }

  TTRRemindersListPresenterCapabilityCore.paramsForBatchSetPriorityLevel(for:)();

  v16 = v22;
  v17 = (*(v6 + 88))(v8, v22);
  if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.allowed(_:))
  {
    (*(v6 + 96))(v8, v16);
    v18 = sub_1000A99B8(*v8);
    if ((v19 & 1) == 0)
    {
      if (v18 > 1)
      {
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_7;
        }
      }

      else if (!v18 || v18 == 1)
      {
LABEL_7:

        return;
      }
    }
  }

  else if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:))
  {
    return;
  }

  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003E30(v20, qword_1007741F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown priority level", 22, 2);
  __break(1u);
}

void sub_1001F4174(uint64_t a1)
{
  v19 = a1;
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 104);
  sub_100058000(&qword_100772150);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  (*(v11 + 16))(v13 + v12, v19, v10);
  v14 = *(v9 + 72);
  ObjectType = swift_getObjectType();
  (*(v14 + 16))(ObjectType, v14);
  LODWORD(v12) = v5[*(v3 + 52)];
  sub_10022E05C(v5, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  if (v12 == 1)
  {

    (*(v6 + 104))(v8, enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:), v20);
  }

  else
  {
    TTRRemindersListPresenterCapabilityCore.paramsForBatchSetPriorityLevel(for:)();

    v16 = v20;
    v17 = (*(v6 + 88))(v8, v20);
    if (v17 == enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.allowed(_:))
    {
      (*(v6 + 8))(v8, v16);
    }

    else if (v17 != enum case for TTRRemindersListPresenterCapabilityCore.BatchSetPriorityLevelParams.disallowed(_:))
    {
      if (qword_100767008 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100003E30(v18, qword_1007741F0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown priority level", 22, 2);
      __break(1u);
    }
  }
}

uint64_t sub_1001F44B8(uint64_t a1, uint64_t a2)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6C6576656CLL;
  *(inited + 40) = 0xE500000000000000;
  type metadata accessor for REMReminderPriorityLevel(0);
  *(inited + 48) = a2;
  *(inited + 72) = v6;
  *(inited + 80) = 0x736D657469;
  *(inited + 88) = 0xE500000000000000;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(inited + 120) = v7;
  v8 = sub_1000317B8((inited + 96));
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v8, a1, v7);
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  sub_100058000(&qword_100772150);
  v12 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D400;
  v10((v13 + v12), a1, v7);
  sub_10024A9F4(a2, v13);
}

objc_class *sub_1001F46C8()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin(v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRListType.SortingCapability();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v8 + 584))(ObjectType, v8);
  v10 = TTRListType.SortingCapability.supportedSortingStyles.getter();
  (*(v5 + 8))(v7, v4);
  (*(v8 + 576))(ObjectType, v8);
  v11 = swift_allocObject();
  swift_weakInit();

  isa = sub_10017C544(v10, v3, sub_100236258, v11).super.super.isa;
  v13 = sub_10017C8B0(v10, v3, sub_100236258, v11);

  sub_100003540(0, &unk_10076B890);
  v14._countAndFlagsBits = 0x79422074726F53;
  v15._countAndFlagsBits = 0xD000000000000022;
  v15._object = 0x8000000100678920;
  v14._object = 0xE700000000000000;
  v16 = TTRLocalizedString(_:comment:)(v14, v15);
  v17 = objc_opt_self();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 __systemImageNamedSwift:v18];

  sub_100058000(&qword_10076B780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10062D410;
  *(v20 + 32) = isa;
  *(v20 + 40) = v13;
  v21 = isa;
  v22 = v13;
  v29.value.super.isa = v19;
  v29.is_nil = 0;
  v23 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v29, 0, 0xFFFFFFFFFFFFFFFFLL, v20, v26).super.super.isa;
  REMRemindersListDataView.SortingStyle.labelTextForSortingStyle()();
  v24 = String._bridgeToObjectiveC()();

  [(objc_class *)v23 setSubtitle:v24];

  (*(v27 + 8))(v3, v28);

  return v23;
}

uint64_t sub_1001F4A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v30 = a3;
  v28 = a2;
  v5 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v5 - 8);
  v32 = &v25 - v6;
  v7 = sub_100058000(&qword_100775608);
  __chkstk_darwin(v7 - 8);
  v29 = &v25 - v8;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  v27 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  *(inited + 72) = v11;
  v12 = sub_1000317B8((inited + 48));
  v13 = *(v11 - 8);
  v14 = *(v13 + 16);
  v14(v12, a1, v11);
  sub_100008E04(inited);
  v26 = a1;
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  sub_100058000(&qword_100772150);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v27;
  v14((v16 + v15), v26, v11);
  v17 = enum case for REMRDLUserOperationDetail.rdl_swipeToPermanentlyDelete(_:);
  v18 = type metadata accessor for REMRDLUserOperationDetail();
  v19 = *(v18 - 8);
  v20 = v29;
  (*(v19 + 104))(v29, v17, v18);
  (*(v19 + 56))(v20, 0, 1, v18);
  v21 = type metadata accessor for TTRIPopoverAnchor();
  v22 = *(v21 - 8);
  v23 = v32;
  (*(v22 + 16))(v32, v28, v21);
  (*(v22 + 56))(v23, 0, 1, v21);
  sub_10020D648(v16, 0, v20, v23, v30, v31);
  swift_setDeallocating();
  (*(v13 + 8))(v16 + v15, v11);
  swift_deallocClassInstance();
  sub_1000079B4(v23, &unk_10076FCD0);
  return sub_1000079B4(v20, &qword_100775608);
}

uint64_t sub_1001F4E98()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[20];
    ObjectType = swift_getObjectType();
    v8[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
    v8[4] = &off_10071AA88;
    v8[0] = v0;
    v3 = *(v1 + 8);

    v4 = v3(v8, ObjectType, v1);
    swift_unknownObjectRelease();
    sub_100004758(v8);
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v5 = v0[7];
  v6 = v0[8];
  sub_10000AE84((v0 + 4), v5);
  (*(v6 + 24))(v4, v5, v6);
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();

  TTRUserDefaultsShowRemindersAsOverdueObserver.start(_:)();
}

uint64_t sub_1001F4FF8(char *a1, char *a2, uint64_t a3, char a4)
{
  LOBYTE(v4) = a4;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v65 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v11 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v64 - v14;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v80 = *(v15 - 1);
  __chkstk_darwin(v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v75 = &v64 - v19;
  if (qword_100767008 != -1)
  {
LABEL_33:
    swift_once();
  }

  v74 = v17;
  v70 = v10;
  v71 = v8;
  v66 = a2;
  v20 = type metadata accessor for Logger();
  sub_100003E30(v20, qword_1007741F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v83 = v15;
  v79 = a1;
  v64 = v11;
  if ((v4 & 1) == 0)
  {
    sub_100058000(&qword_100772150);
    a2 = v80;
    v24 = *(v80 + 80);
    v81 = *(v80 + 72);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_10062D400;
    v82 = *(a2 + 2);
    (v82)(a3 + ((v24 + 32) & ~v24), a1, v15);
LABEL_8:
    v30 = *(a3 + 16);

    if (v30)
    {
      v10 = v30;
      a1 = 0;
      v75 = (v80 + 16);
      v15 = (v65 + 88);
      LODWORD(v73) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
      LODWORD(v72) = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
      v80 += 8;
      v31 = (v65 + 8);
      v17 = (a3 + ((v24 + 32) & ~v24));
      v4 = v70;
      while (1)
      {
        if (a1 >= *(a3 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v11 = a3;
        a2 = v74;
        v32 = v83;
        (v82)(v74, v17, v83);
        TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
        v8 = v71;
        v33 = (*v15)(v4, v71);
        if (v33 != v73 && v33 != v72)
        {
          break;
        }

        ++a1;
        (*v80)(a2, v32);
        (*v31)(v4, v8);
        v17 += v81;
        a3 = v11;
        if (v10 == a1)
        {
          goto LABEL_17;
        }
      }

      if (v33 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
      {
        swift_bridgeObjectRelease_n();
        (*v80)(v74, v83);
        (*v31)(v4, v8);
        return 0;
      }

      v43 = v83;
      if (v33 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        swift_bridgeObjectRelease_n();
        (*v80)(v74, v43);
        return 0;
      }

      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

LABEL_17:

    v35 = v79;
    v36 = v66;
    if (*(a3 + 16) == 1)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (v36)
        {
          swift_getObjectType();
          v37 = v36;
          v38 = TTRIShowRemindersEditableCell.attachmentAndView(at:)();
          if (v38)
          {
            v40 = v39;
            v41 = v38;
            v42 = sub_1002041A8(v38, v35, v39);

            if (v42)
            {

              return v42;
            }

            v37 = v41;
          }
        }
      }
    }

    v45 = v77;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v46 = v64;
    v47 = v78;
    (*(v64 + 16))(v76, v45, v78);
    sub_10022DFF4(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
    v48 = a3;
    AnyHashable.init<A>(_:)();
    (*(v46 + 8))(v45, v47);
    v49 = type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
    memset(v86, 0, sizeof(v86));
    v50 = objc_allocWithZone(v49);
    sub_1001D3A20(aBlock, v50 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_itemID);
    sub_10000794C(v86, v50 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_userInfo, &qword_10076AE40);
    v85.receiver = v50;
    v85.super_class = v49;
    v51 = objc_msgSendSuper2(&v85, "init");
    sub_1000079B4(v86, &qword_10076AE40);
    sub_100077654(aBlock);
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = swift_allocObject();
    v53[2] = v52;
    v53[3] = a3;
    v53[4] = v36;
    v54 = objc_opt_self();
    aBlock[4] = sub_100236220;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10044EA48;
    aBlock[3] = &unk_10071C480;
    v55 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();
    v56 = v36;
    v57 = v51;

    v58 = [v54 configurationWithIdentifier:v57 previewProvider:0 actionProvider:v55];

    _Block_release(v55);
    aBlock[0] = v48;
    __chkstk_darwin(v59);
    *(&v64 - 2) = v35;
    __chkstk_darwin(v60);
    *(&v64 - 2) = sub_10023622C;
    *(&v64 - 1) = v61;
    v62 = v58;
    sub_100058000(&qword_10076E0B0);
    sub_10000E188(&unk_100784560, &qword_10076E0B0);
    Sequence.compactMapToSet<A>(_:)();

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v62 setSecondaryItemIdentifiers:isa];

    v42 = v62;
    return v42;
  }

  v21 = 0;
  v72 = a3;
  v73 = *(a3 + 16);
  v69 = v80 + 16;
  v68 = (v11 + 8);
  v67 = v80 + 8;
  v22 = v75;
  while (v73 != v21)
  {
    v23 = v80;
    v24 = *(v80 + 80);
    v81 = *(v80 + 72);
    v25 = *(v80 + 16);
    v26 = v83;
    (v25)(v22, v72 + ((v24 + 32) & ~v24) + v81 * v21++, v83);
    v8 = v77;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v27 = v76;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    LODWORD(v82) = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
    a2 = v68;
    v28 = *v68;
    v29 = v27;
    v11 = v78;
    (*v68)(v29, v78);
    v28(v8, v11);
    (*(v23 + 8))(v22, v26);
    if (v82)
    {
      a3 = v72;

      v82 = v25;
      goto LABEL_8;
    }
  }

  return 0;
}

void sub_1001F5B30(void *a1, void *a2)
{
  v4 = [a1 identifier];
  ObjectType = swift_getObjectType();
  v9[0] = v4;
  v5 = sub_10020E568(v9);
  sub_100004758(v9);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v11 = sub_1002361D0;
    v12 = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_10001047C;
    ObjectType = &unk_10071C430;
    v7 = _Block_copy(v9);
    v8 = v5;

    [a2 addCompletion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_1001F5C68()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v9 + 96))(ObjectType, v9);
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceTemplateContextType.sourceListForSavingAsTemplate.getter();
    swift_unknownObjectRelease();
    (*(v3 + 32))(v8, v5, v2);
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_1007741F0);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    strcpy((inited + 32), "sourceListID");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    v14 = TTRListOrCustomSmartList.objectID.getter();
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v14;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70);
    sub_10000FD44();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v1 + 24);
      v16 = swift_getObjectType();
      (*(v15 + 72))(v16, v15);
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
    }

    v19 = type metadata accessor for TTRITemplateSavingDismissAnimationCoordinator();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_presenter];
    *&v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_presenter + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_presentee + 8] = 0;
    swift_unknownObjectWeakInit();
    v22 = &v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_completion];
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = &v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_frameOfDestBarButtonInWindow];
    *v23 = 0u;
    *(v23 + 1) = 0u;
    v23[32] = 1;
    v24 = &v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceView];
    *(v24 + 8) = 0;
    *(v24 + 2) = 0u;
    *(v24 + 3) = 0u;
    *v24 = 0u;
    *(v24 + 1) = 0u;
    *&v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_sourceSnapshotView] = 0;
    *&v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_containerView] = 0;
    *&v20[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_destBarButtonView] = 0;
    *(v21 + 1) = v18;
    swift_unknownObjectWeakAssign();
    v36.receiver = v20;
    v36.super_class = v19;
    v25 = objc_msgSendSuper2(&v36, "init");
    swift_unknownObjectRelease();
    v26 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator);
    *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_activeTemplateSavingDismissAnimationCoordinator) = v25;
    v27 = v25;

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = &v27[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_completion];
    v30 = *&v27[OBJC_IVAR____TtC9Reminders45TTRITemplateSavingDismissAnimationCoordinator_completion];
    *v29 = sub_1002361C8;
    v29[1] = v28;

    sub_1000301AC(v30);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v32 = Strong, v33 = [Strong navigationController], v32, !v33))
    {
      v34 = swift_unknownObjectWeakLoadStrong();
      if (!v34)
      {
        v35 = v27;
        goto LABEL_13;
      }

      v33 = v34;
    }

    v35 = sub_1002A6970(v8, v25);
    sub_100066300();
    [v33 presentViewController:v35 animated:1 completion:0];

    v27 = v33;
LABEL_13:

    return (*(v3 + 8))(v8, v2);
  }

  return result;
}

void sub_1001F6130()
{
  v1 = v0;
  v36 = *v0;
  v2 = type metadata accessor for REMAnalyticsEvent();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for REMGenerativeModelsFeature();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = v0[18];
  ObjectType = swift_getObjectType();
  if ((*(v12 + 128))(ObjectType, v12))
  {
    v34 = v4;
    v35 = v2;
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_1007741F0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    swift_getObjectType();
    v15 = dispatch thunk of TTRRemindersListDataModelSourceAutoCategorizationContextType.sourceListForAutoCategorization.getter();
    if (dispatch thunk of TTRRemindersListDataModelSourceAutoCategorizationContextType.shouldAutoCategorizeItems.getter())
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
      type metadata accessor for MainActor();

      v17 = v15;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v1;
      v19[5] = v17;
      sub_10009E31C(0, 0, v11, &unk_100635FD8, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for REMGenerativeModelsAvailabilityManager();
      v38 = static REMGenerativeModelsAvailabilityManager.shared.getter();
      (*(v6 + 104))(v8, enum case for REMGenerativeModelsFeature.autoCategorization(_:), v5);
      v20 = REMGenerativeModelsAvailabilityManagerType.isRestrictedFeature(_:)();
      (*(v6 + 8))(v8, v5);

      if (v20)
      {
        sub_10020E9D4();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_getObjectType();
        v21 = v15;
        dispatch thunk of TTRRemindersListInteractorType.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)();
        type metadata accessor for TTRUserDefaults();
        v22 = static TTRUserDefaults.appUserDefaults.getter();
        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        v23 = sub_100058000(&qword_1007757E8);
        v24 = v34;
        v25 = &v34[*(v23 + 48)];
        v26 = &v34[*(v23 + 80)];
        v27 = enum case for REMUserOperation.autoCategorizeEnable(_:);
        v28 = type metadata accessor for REMUserOperation();
        (*(*(v28 - 8) + 104))(v24, v27, v28);
        *v25 = TTRUserDefaults.activitySessionId.getter();
        v25[1] = v29;
        TTRUserDefaults.activitySessionBeginTime.getter();
        *v26 = _typeName(_:qualified:)();
        v26[1] = v30;
        v31 = v37;
        v32 = v35;
        (*(v37 + 104))(v24, enum case for REMAnalyticsEvent.userOperation(_:), v35);
        REMAnalyticsManager.post(event:)();

        swift_unknownObjectRelease();

        (*(v31 + 8))(v24, v32);
      }
    }
  }
}

uint64_t sub_1001F6674()
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_1007741F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v2 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v2 + 88))(&v5, ObjectType, v2);
  if (!v6)
  {
    return sub_1000079B4(&v5, &qword_1007693C0);
  }

  sub_100005FD0(&v5, v7);
  sub_100133FF8(v7);
  return sub_100004758(v7);
}

uint64_t sub_1001F6788(uint64_t a1, void *a2)
{
  v16.value._countAndFlagsBits = a1;
  v16.value._object = a2;
  v3 = type metadata accessor for TTRITipKitSignal();
  v15 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007741F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v7 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1A4(v7);
  v8 = *(v2 + 144);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  if (v10(ObjectType, v8))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  if (v10(ObjectType, v8))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.setter();
    swift_unknownObjectRelease();
  }

  result = v10(ObjectType, v8);
  if (result)
  {
    swift_getObjectType();
    v12 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    result = swift_unknownObjectRelease();
    if (v12)
    {
      v13 = v15;
      (*(v15 + 104))(v5, enum case for TTRITipKitSignal.tappedShowCompletedAction(_:), v3);
      TTRITipKitSignal.donate(signalContext:)(v16);
      return (*(v13 + 8))(v5, v3);
    }
  }

  return result;
}

void sub_1001F6A2C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = Strong, v6 = [Strong navigationController], v1, !v6))
  {
    v2 = swift_unknownObjectWeakLoadStrong();
    if (!v2)
    {
      return;
    }

    v6 = v2;
  }

  sub_100003540(0, &qword_1007759E0);
  v3 = static HLPHelpViewController.viewController(forShowing:)();
  if (v3)
  {
    v4 = v3;
    [v6 presentViewController:v3 animated:1 completion:0];

    v5 = v4;
  }

  else
  {
    v5 = v6;
  }
}

uint64_t sub_1001F6B24(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  strcpy((inited + 32), "hashtagLabels");
  *(inited + 46) = -4864;
  v9 = REMHashtagLabelSpecifier.description.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v11 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v11 + 80))(ObjectType, v11);
  if (result)
  {
    swift_getObjectType();
    (*(v4 + 16))(v6, a1, v3);
    dispatch thunk of TTRRemindersListDataModelSourceHashtagContextType.selection.setter();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001F6D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10024ABB8(a1);
  if (v7)
  {
    if (v7 == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v3 + 160);
        ObjectType = swift_getObjectType();
        v16[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
        v16[4] = &off_10071AA88;
        v16[0] = v3;
        v11 = *(v9 + 8);

        v12 = v11(v16, ObjectType, v9);
        swift_unknownObjectRelease();
        sub_100004758(v16);
      }

      else
      {
        v12 = 0;
      }

      sub_1004F6B60(a1, a2, a3);
    }

    else
    {
      v13 = v7;
      v14 = v8;
      v15 = *(v3 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
      if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
      {
        swift_getObjectType();
        dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
        swift_unknownObjectRelease();
      }

      sub_1004EF1A4(v15);
      sub_10024F488(v13, a2, a3, v14, 0, 0, 0, 0, 0);
    }
  }
}

uint64_t sub_1001F6F10(uint64_t a1)
{
  v3 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 104))(ObjectType, v3);
  if (result)
  {
    v6 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 64);
      v8 = swift_getObjectType();
      (*(v7 + 56))(a1, v8, v7);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001F6FCC()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v2 - 8);
  v4 = &v37[-1] - v3;
  v5 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRListOrCustomSmartList();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v37[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v36 = &v37[-1] - v14;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_1007741F0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v16 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v16 + 192))(ObjectType, v16);
  TTRRemindersListSectionMenuCapabilities.listOrCustomSmartList.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    return sub_1000079B4(v4, &unk_10076DF20);
  }

  v19 = v36;
  (*(v10 + 32))(v36, v4, v9);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return (*(v10 + 8))(v19, v9);
  }

  v20 = *(v0 + 160);
  v21 = swift_getObjectType();
  v37[3] = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v37[4] = &off_10071AA88;
  v37[0] = v0;
  v22 = *(v20 + 8);

  v23 = v22(v37, v21, v20);
  swift_unknownObjectRelease();
  sub_100004758(v37);
  swift_getObjectType();
  v24 = dispatch thunk of TTRRemindersListInteractorType.store.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v26 = Strong, v27 = [Strong navigationController], v26, !v27))
  {
    v28 = swift_unknownObjectWeakLoadStrong();
    if (!v28)
    {
      v27 = v23;
      v19 = v36;
      goto LABEL_18;
    }

    v27 = v28;
  }

  v19 = v36;
  (*(v10 + 16))(v12, v36, v9);
  v29 = (*(v10 + 88))(v12, v9);
  if (v29 == enum case for TTRListOrCustomSmartList.list(_:) || v29 == enum case for TTRListOrCustomSmartList.customSmartList(_:))
  {
    (*(v10 + 96))(v12, v9);
    v30 = *v12;
    v31 = [v30 sectionContext];

    if (v31)
    {

      v32 = sub_10056EC00(v19, v24, v23, v1, &off_10071A8D8);
      v33 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v32];
      [v33 setModalPresentationStyle:2];

      v34 = swift_unknownObjectWeakLoadStrong();
      if (v34)
      {
        v35 = v34;
        UIViewController.endFirstResponderEditing()();
      }

      [v27 presentViewController:v33 animated:1 completion:{0, v36}];

      return (*(v10 + 8))(v19, v9);
    }

    v24 = v23;
LABEL_18:

    return (*(v10 + 8))(v19, v9);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001F7540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10022DFF4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  *(inited + 48) = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 56) = v8;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0x80000001006786F0;
  *(inited + 96) = a2;
  *(inited + 104) = a3;

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  return sub_10024B534(a1, a2, a3);
}

uint64_t sub_1001F771C(uint64_t a1)
{
  result = sub_10024BAEC(a1);
  if (result)
  {
    v4 = result;
    v5 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v5);
    sub_10024F488(a1, 0, 0xE000000000000000, v4, 0, 1, 1, 0, 0);
  }

  return result;
}

uint64_t sub_1001F7800(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 112))(ObjectType, v7);
  if (result)
  {
    swift_getObjectType();
    TTRRemindersListDataModelSourceLayoutContextType.nextSelectableLayout.getter();
    sub_10022DFF4(&qword_100770AB0, &type metadata accessor for TTRRemindersListLayout);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v11[2] == v11[0] && v11[3] == v11[1])
    {
      (*(v4 + 8))(v6, v3);
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (*(v4 + 8))(v6, v3);

      if ((v10 & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }
    }

    sub_1001F90B0(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001F7A04@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListLayout();
  v12 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v6 + 112))(ObjectType, v6))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    return (*(v12 + 32))(a1, v5, v3);
  }

  else
  {
    v9 = enum case for TTRRemindersListLayout.list(_:);
    v10 = *(v12 + 104);

    return v10(a1, v9, v3);
  }
}

uint64_t sub_1001F7B6C(char *a1)
{
  v3 = sub_100058000(&qword_1007759D8);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
  v24 = *(v6 - 8);
  v25 = v6;
  __chkstk_darwin(v6);
  v23 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 144);
  v22 = v1;
  ObjectType = swift_getObjectType();
  v20 = *(v12 + 576);
  v21 = v12 + 576;
  v20(ObjectType, v12);
  sub_10022DFF4(&qword_10076BE50, &type metadata accessor for REMRemindersListDataView.SortingStyle);
  v14 = a1;
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if (v15)
  {
    return (v16)(v14, v8);
  }

  (*(v12 + 592))(v14, 1, ObjectType, v12);
  (*(v12 + 600))(ObjectType, v12);
  if ((*(v24 + 48))(v5, 1, v25) == 1)
  {
    v16(v14, v8);
    return sub_1000079B4(v5, &qword_1007759D8);
  }

  else
  {
    (*(v24 + 32))(v23, v5, v25);
    v22 = *(v22 + 80);
    v19[1] = swift_getObjectType();
    v20(ObjectType, v12);
    v18 = v23;
    dispatch thunk of TTRRemindersListInteractorType.setSortingStyle(sortingStyle:for:)();
    v16(v14, v8);
    v16(v11, v8);
    return (*(v24 + 8))(v18, v25);
  }
}

uint64_t sub_1001F7EF8()
{
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001F7F70()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) == 1)
  {
    if (qword_100767008 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_1007741F0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v1;
    sub_10009E31C(0, 0, v5, &unk_100635FB8, v9);
  }

  return result;
}

uint64_t sub_1001F8120@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = type metadata accessor for TTRRemindersListTips.TipID();
  v4 = *(v21 - 8);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListTips();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListTip();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  if ((*(v12 + 88))(v15, v11) == enum case for TTRRemindersListTip.tipKit(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    v16 = type metadata accessor for TTRITipContentConfiguration(0);
    a2[3] = v16;
    a2[4] = sub_10022DFF4(&qword_1007759D0, type metadata accessor for TTRITipContentConfiguration);
    v17 = sub_1000317B8(a2);
    TTRRemindersListTips.tip.getter();
    TTRRemindersListTips.tipID.getter();
    v18 = TTRRemindersListTips.TipID.assetColor.getter();
    (*(v4 + 8))(v6, v21);
    result = (*(v8 + 8))(v10, v7);
    *(v17 + *(v16 + 20)) = v18;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001F8418@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AnyTip();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1001F8484(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRSection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  __chkstk_darwin(v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100233874(a1, v10, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v13 = *v10;
    v7 = v10 + *(sub_100058000(&qword_100770AB8) + 48);
    v16 = [v13 objectID];
    __chkstk_darwin(v16);
    *(&v20 - 4) = v2;
    *(&v20 - 3) = v17;
    *(&v20 - 16) = 0;
    __chkstk_darwin(v17);
    *(&v20 - 4) = v2;
    *(&v20 - 3) = sub_10023A3AC;
    *(&v20 - 2) = v18;
    *(&v20 - 8) = 1;
    firstly<A>(closure:)();

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = sub_100058000(&unk_1007759C0);
    (*(v5 + 32))(v7, v10 + *(v12 + 48), v4);
    v13 = TTRSection.objectID.getter();
    __chkstk_darwin(v13);
    *(&v20 - 4) = v2;
    *(&v20 - 3) = v14;
    *(&v20 - 16) = 0;
    __chkstk_darwin(v14);
    *(&v20 - 4) = v2;
    *(&v20 - 3) = sub_10023A394;
    *(&v20 - 2) = v15;
    *(&v20 - 8) = 1;
    firstly<A>(closure:)();

LABEL_5:

    (*(v5 + 8))(v7, v4);
    return 1;
  }

  return 0;
}

uint64_t sub_1001F8798(uint64_t a1, uint64_t a2)
{
  v18[1] = a1;
  v4 = type metadata accessor for TTRRemindersListViewModel.AssignmentData.VisibleElements();
  v19 = *(v4 - 8);
  v20 = v4;
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = *(v2 + 104);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v8 + 32))(v13 + v12, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v14 = *(v10 + 72);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 24);

  v16(ObjectType, v14);
  TTRRemindersListPresenterCapabilityCore.decorateWithAssignment(_:for:pendingMoveTargetListForHostingReminder:visibleAssignmentElements:assignmentDidLoad:)();

  (*(v19 + 8))(v6, v20);
}

uint64_t sub_1001F89F0()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v37 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v45 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v39 = &v30[-v7];
  v8 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  (*(v8 + 208))(ObjectType, v8);
  swift_getObjectType();
  v10 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v46 = v10;
  TTRTreeContentsQueryable.allItems.getter();
  swift_unknownObjectRelease();
  v11 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v44 = *(v11 + 16);
  if (v44)
  {
    v12 = 0;
    v42 = (v2 + 88);
    v43 = v4 + 16;
    v41 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
    v34 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
    v33 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
    v31 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
    v38 = (v2 + 8);
    v32 = (v4 + 8);
    v40 = (v4 + 32);
    v13 = _swiftEmptyArrayStorage;
    v35 = v1;
    v15 = v36;
    v14 = v37;
    v16 = v4;
    v17 = v39;
    while (v12 < *(v11 + 16))
    {
      v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v19 = v11;
      v20 = v11 + v18;
      v21 = *(v16 + 72);
      v22 = v16;
      (*(v16 + 16))(v17, v20 + v21 * v12, v15);
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v23 = (*v42)(v14, v1);
      if (v23 == v41)
      {
        (*v38)(v14, v1);
        v24 = *v40;
        (*v40)(v45, v17, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1C48(0, v13[2] + 1, 1);
          v17 = v39;
          v13 = v46;
        }

        v27 = v13[2];
        v26 = v13[3];
        if (v27 >= v26 >> 1)
        {
          sub_1004A1C48(v26 > 1, v27 + 1, 1);
          v17 = v39;
          v13 = v46;
        }

        v13[2] = v27 + 1;
        v15 = v36;
        v24(v13 + v18 + v27 * v21, v45, v36);
        v1 = v35;
        v14 = v37;
        v11 = v19;
      }

      else
      {
        if (v23 == v34 || v23 == v33)
        {
          (*v38)(v14, v1);
          v11 = v19;
          v17 = v39;
        }

        else
        {
          v11 = v19;
          v17 = v39;
          if (v23 != v31)
          {
            goto LABEL_22;
          }
        }

        (*v32)(v17, v15);
      }

      ++v12;
      v16 = v22;
      if (v44 == v12)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_20:

    return v13;
  }

  return result;
}

uint64_t sub_1001F8E54(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_1007741F0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100004060(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v11, v12, "TTRIRemindersCommonPresenter: refresh all items {reason: %s}", v13, 0xCu);
    sub_100004758(v14);
  }

  v15 = *(v3 + 144);
  ObjectType = swift_getObjectType();
  (*(v15 + 208))(ObjectType, v15);
  swift_getObjectType();
  v17 = TTRRemindersListTreeContentsQueryable.itemsToRefreshForViewModelRelatedSystemStateChanges.getter();
  swift_unknownObjectRelease();
  static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
  sub_1004F1000(v9, v17);

  return (*(v7 + 8))(v9, v6);
}

void sub_1001F90B0(uint64_t a1)
{
  v2 = v1;
  v40 = *v1;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v41 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = v38 - v10;
  if (qword_100767008 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_1007741F0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x74756F79616CLL;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = v6;
  v13 = sub_1000317B8((inited + 48));
  v14 = *(v7 + 16);
  v14(v13, a1, v6);
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v15 = v2[18];
  ObjectType = swift_getObjectType();
  if ((*(v15 + 112))(ObjectType, v15))
  {
    v38[1] = v17;
    type metadata accessor for TTRUserDefaults();
    v18 = static TTRUserDefaults.appUserDefaults.getter();
    v19 = v44;
    v39 = a1;
    v14(v44, a1, v6);
    v20 = *(v7 + 88);
    v44 = v6;
    v21 = v20(v19, v6);
    v22 = v14;
    if (v21 != enum case for TTRRemindersListLayout.list(_:))
    {
      v38[0] = v14;
      if (v21 != enum case for TTRRemindersListLayout.columns(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v23 = v18;
      type metadata accessor for REMAnalyticsManager();
      static REMAnalyticsManager.shared.getter();
      v24 = sub_100058000(&qword_1007757E8);
      v25 = v41;
      v26 = &v41[*(v24 + 48)];
      v27 = &v41[*(v24 + 80)];
      v28 = enum case for REMUserOperation.viewAsColumns(_:);
      v29 = type metadata accessor for REMUserOperation();
      (*(*(v29 - 8) + 104))(v25, v28, v29);
      *v26 = TTRUserDefaults.activitySessionId.getter();
      v26[1] = v30;
      TTRUserDefaults.activitySessionBeginTime.getter();
      *v27 = _typeName(_:qualified:)();
      v27[1] = v31;
      v18 = v23;
      v33 = v42;
      v32 = v43;
      (*(v42 + 104))(v25, enum case for REMAnalyticsEvent.userOperation(_:), v43);
      REMAnalyticsManager.post(event:)();

      (*(v33 + 8))(v25, v32);
      v22 = v38[0];
    }

    v34 = *(v2 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v34);
    swift_getObjectType();
    v22(v45, v39, v44);
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.setter();

    swift_unknownObjectRelease();
  }

  else
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "TTRIRemindersCommonPresenter: missing layoutContext", v37, 2u);
    }
  }
}

uint64_t sub_1001F960C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v190 = a4;
  v189 = a3;
  v188 = a2;
  v214 = a1;
  v6 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v6 - 8);
  v202 = &v159 - v7;
  v203 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v201 = *(v203 - 8);
  __chkstk_darwin(v203);
  v200 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v9 - 8);
  v193 = &v159 - v10;
  v194 = sub_100058000(&qword_100775950);
  v192 = *(v194 - 8);
  __chkstk_darwin(v194);
  v191 = &v159 - v11;
  v197 = sub_100058000(&qword_100775958);
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v159 - v12;
  v199 = type metadata accessor for TTRReminderDetailSubject();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v209 = &v159 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076FCD0);
  v15 = (__chkstk_darwin)(v14 - 8);
  v186 = &v159 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v187 = &v159 - v17;
  v18 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v18 - 8);
  v166 = &v159 - v19;
  v167 = type metadata accessor for TTRSection();
  v177 = *(v167 - 8);
  __chkstk_darwin(v167);
  v162 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v159 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v22 - 8);
  v160 = &v159 - v23;
  v183 = type metadata accessor for TTRSectionID();
  v185 = *(v183 - 8);
  v24 = (__chkstk_darwin)(v183);
  v161 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = (__chkstk_darwin)(v24);
  v179 = &v159 - v27;
  v28 = (__chkstk_darwin)(v26);
  v180 = &v159 - v29;
  __chkstk_darwin(v28);
  v163 = (&v159 - v30);
  v164 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v175 = *(v164 - 8);
  __chkstk_darwin(v164);
  v174 = &v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v165 = *(v176 - 8);
  __chkstk_darwin(v176);
  v178 = &v159 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v159 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v34 - 8);
  v181 = &v159 - v35;
  v208 = type metadata accessor for TTRRemindersListViewModel.Item();
  v212 = *(v208 - 8);
  __chkstk_darwin(v208);
  v182 = &v159 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v210 = *(v37 - 8);
  v211 = v37;
  __chkstk_darwin(v37);
  v213 = &v159 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100058000(&qword_10076DF38);
  v40 = (__chkstk_darwin)(v39 - 8);
  v159 = &v159 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v215 = &v159 - v42;
  v43 = sub_100058000(&qword_100775970);
  __chkstk_darwin(v43 - 8);
  v45 = &v159 - v44;
  v46 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v47 = *(v46 - 8);
  v48 = (__chkstk_darwin)(v46);
  v50 = &v159 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v52 = &v159 - v51;
  v53 = v4[17];
  v54 = v5[18];
  ObjectType = swift_getObjectType();
  v56 = *(v54 + 104);
  v205 = ObjectType;
  v206 = v53;
  v207 = v54;
  v184 = v56;
  v57 = v56(ObjectType, v54);
  if (!v57)
  {
    goto LABEL_7;
  }

  v58 = v57;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    (*(v47 + 56))(v45, 1, 1, v46);
    goto LABEL_6;
  }

  v204 = v5;
  v59 = *(v58 + 64);
  v60 = swift_getObjectType();
  (*(v59 + 32))(v214, v60, v59);
  swift_unknownObjectRelease();
  if ((*(v47 + 48))(v45, 1, v46) != 1)
  {
    (*(v47 + 32))(v52, v45, v46);
    if ((sub_1002313D4() & 1) == 0)
    {
      (*(v47 + 8))(v52, v46);
      swift_unknownObjectRelease();
      v61 = 0;
      v5 = v204;
      goto LABEL_8;
    }

    (*(v47 + 16))(v50, v52, v46);
    v89 = (*(v47 + 88))(v50, v46);
    v5 = v204;
    if (v89 != enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:))
    {
      if (v89 == enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:))
      {
        v61 = 0;
LABEL_43:
        v101 = *(v47 + 8);
        v101(v52, v46);
        swift_unknownObjectRelease();
        v101(v50, v46);
        goto LABEL_8;
      }

      if (v89 != enum case for TTRRemindersListInteractorSectionsCapabilityTarget.template(_:))
      {
        goto LABEL_71;
      }
    }

    v61 = 1;
    goto LABEL_43;
  }

  swift_unknownObjectRelease();
  v5 = v204;
LABEL_6:
  sub_1000079B4(v45, &qword_100775970);
LABEL_7:
  v61 = 0;
LABEL_8:
  v62 = v213;
  v63 = v214;
  v64 = v211;
  v65 = v212;
  v66 = v210;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  result = (*(v66 + 88))(v62, v64);
  if (result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) && result != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    if (result == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      if (!v61)
      {
LABEL_14:
        v71 = type metadata accessor for TTRSectionLite();
        (*(*(v71 - 8) + 56))(v215, 1, 1, v71);
        v70 = v208;
LABEL_40:
        (*(v66 + 8))(v62, v64);
        goto LABEL_50;
      }

      (*(v207 + 208))(v205);
      swift_getObjectType();
      v68 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
      swift_unknownObjectRelease();
      swift_getObjectType();
      v217[0] = v68;
      v69 = v181;
      dispatch thunk of TTRTreeContentsQueryable.parent(of:)();
      swift_unknownObjectRelease();
      v70 = v208;
      if (v65[6](v69, 1, v208) == 1)
      {
        sub_1000079B4(v69, &qword_100772140);
        goto LABEL_14;
      }

      v65[4](v182, v69, v70);
      v90 = v171;
      TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
      v91 = v172;
      v92 = v173;
      v93 = (*(v172 + 88))(v90, v173);
      if (v93 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
      {
        (*(v91 + 96))(v90, v92);
        v75 = v165;
        (*(v165 + 32))(v178, v90, v176);
        v94 = v174;
        TTRRemindersListViewModel.SectionHeader.id.getter();
        v95 = v164;
        v96 = (*(v175 + 88))(v94, v164);
        if (v96 != enum case for TTRRemindersListViewModel.SectionID.named(_:))
        {
          if (v96 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
          {
            v149 = v174;
            (*(v175 + 96))(v174, v95);
            v150 = *v149;
            *v163 = v150;
            (*(v185 + 104))();
            v151 = v150;
            v152 = v160;
            TTRRemindersListViewModel.SectionHeader.title.getter();
            v153 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
            v154 = *(v153 - 8);
            if ((*(v154 + 48))(v152, 1, v153) == 1)
            {
              sub_1000079B4(v152, &unk_10076B050);
            }

            else
            {
              TTRRemindersListViewModel.SectionHeaderTitle.text.getter();
              (*(v154 + 8))(v152, v153);
            }

            v62 = v213;
            v157 = v159;
            TTRSectionLite.init(sectionID:displayName:canonicalName:)();

            (*(v165 + 8))(v178, v176);
            v70 = v208;
            (v65[1])(v182, v208);
            v158 = type metadata accessor for TTRSectionLite();
            (*(*(v158 - 8) + 56))(v157, 0, 1, v158);
            sub_100016588(v157, v215, &qword_10076DF38);
            goto LABEL_40;
          }

          if (v96 != enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) && v96 != enum case for TTRRemindersListViewModel.SectionID.date(_:) && v96 != enum case for TTRRemindersListViewModel.SectionID.day(_:) && v96 != enum case for TTRRemindersListViewModel.SectionID.month(_:) && v96 != enum case for TTRRemindersListViewModel.SectionID.year(_:) && v96 != enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
          {
            if (v96 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
            {
              (*(v175 + 8))(v174, v95);
              (*(v169 + 104))(v168, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v170);
              v155 = v215;
              TTRSectionLite.init(sectionType:)();
              (*(v75 + 8))(v178, v176);
              (v65[1])(v182, v70);
              v156 = type metadata accessor for TTRSectionLite();
              (*(*(v156 - 8) + 56))(v155, 0, 1, v156);
              goto LABEL_40;
            }

            if (v96 != enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
            {
              goto LABEL_69;
            }
          }
        }

        (*(v75 + 8))(v178, v176);
        (v65[1])(v182, v70);
        (*(v175 + 8))(v174, v95);
LABEL_39:
        v100 = type metadata accessor for TTRSectionLite();
        (*(*(v100 - 8) + 56))(v215, 1, 1, v100);
        goto LABEL_40;
      }

      if (v93 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
      {
        (v65[1])(v182, v70);
        goto LABEL_39;
      }

LABEL_72:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    if (result == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      return result;
    }

LABEL_71:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_72;
  }

  (*(v66 + 8))(v62, v64);
  if (!v61)
  {
    goto LABEL_33;
  }

  v72 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  if (!v72)
  {
    goto LABEL_33;
  }

  v64 = v72;
  v73 = v184(v205, v207);
  if (!v73)
  {

LABEL_33:
    v97 = type metadata accessor for TTRSectionLite();
    (*(*(v97 - 8) + 56))(v215, 1, 1, v97);
    goto LABEL_34;
  }

  v74 = v73;
  v66 = v180;
  sub_10031F774(v64, v180);
  v75 = v185;
  v76 = v179;
  v77 = v183;
  (*(v185 + 16))(v179, v66, v183);
  v78 = (*(v75 + 88))(v76, v77);
  if (v78 == enum case for TTRSectionID.sectioned(_:))
  {
    (*(v75 + 96))(v76, v77);
    v75 = *v76;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v79 = *(v74 + 64);
      v80 = swift_getObjectType();
      (*(v79 + 16))(v80, v79);
      swift_unknownObjectRelease();
      v81 = v75;
      v82 = v166;
      v214 = v81;
      TTRSection.init(with:store:)();
      v83 = v177;
      v84 = v167;
      if ((*(v177 + 48))(v82, 1, v167) != 1)
      {
        v85 = v82;
        v86 = v162;
        (*(v83 + 32))(v162, v85, v84);
        TTRSection.sectionID.getter();
        TTRSection.displayName.getter();
        v87 = v215;
        TTRSectionLite.init(sectionID:displayName:canonicalName:)();

        swift_unknownObjectRelease();
        (*(v177 + 8))(v86, v84);
        (*(v185 + 8))(v66, v183);
        v88 = type metadata accessor for TTRSectionLite();
        (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
LABEL_34:
        v70 = v208;
        goto LABEL_50;
      }
    }

    else
    {
      v82 = v166;
      (*(v177 + 56))(v166, 1, 1, v167);
    }

    sub_1000079B4(v82, &unk_100775960);
    if (qword_100767008 == -1)
    {
LABEL_46:
      v102 = type metadata accessor for Logger();
      sub_100003E30(v102, qword_1007741F0);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Reminder list failed to fetch section in sectionsContext", v105, 2u);

        v106 = v75;
      }

      else
      {
        v106 = v103;
        v103 = v75;
      }

      v70 = v208;

      swift_unknownObjectRelease();
      (*(v185 + 8))(v66, v183);
      v107 = type metadata accessor for TTRSectionLite();
      (*(*(v107 - 8) + 56))(v215, 1, 1, v107);
      goto LABEL_50;
    }

LABEL_70:
    swift_once();
    goto LABEL_46;
  }

  v70 = v208;
  if (v78 != enum case for TTRSectionID.sectionless(_:))
  {
LABEL_69:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_70;
  }

  (*(v169 + 104))(v168, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v170);
  v98 = v215;
  TTRSectionLite.init(sectionType:)();
  swift_unknownObjectRelease();

  (*(v185 + 8))(v66, v77);
  v99 = type metadata accessor for TTRSectionLite();
  (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
LABEL_50:
  v108 = sub_1004EEBA8(v63);
  if (v108)
  {
    v110 = v108;
    v204 = v5;
    v214 = v109;
    sub_100058000(&qword_100772150);
    v111 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_10062D400;
    v65[2](v112 + v111, v63, v70);
    v113 = v187;
    static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
    v114 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v114 - 8) + 56))(v113, 0, 1, v114);
    sub_10000794C(v113, v186, &unk_10076FCD0);
    v115 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
    swift_allocObject();

    v116 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
    TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
    v217[3] = v115;
    v217[4] = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
    v217[0] = v116;
    sub_1000079B4(v113, &unk_10076FCD0);
    type metadata accessor for ReminderDetailModuleDelegate();
    v117 = swift_allocObject();
    swift_weakInit();
    *(v117 + 24) = 0;
    *(v117 + 32) = 0;
    swift_weakAssign();
    v118 = *(v117 + 24);
    v119 = v189;
    v120 = v190;
    *(v117 + 24) = v189;
    *(v117 + 32) = v120;
    sub_10003BE34(v119);
    sub_1000301AC(v118);
    v121 = sub_10022DFF4(&qword_100775658, type metadata accessor for ReminderDetailModuleDelegate);
    v122 = (v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
    v212 = (v5 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
    *v122 = v117;
    v122[1] = v121;
    swift_unknownObjectRelease();
    v216 = v110;
    sub_100058000(&qword_100775978);
    swift_allocObject();
    v213 = v110;
    v211 = CurrentValueSubject.init(_:)();

    TTRReminderDetailSubject.init(reminderChangeItemSubject:)();
    v123 = v5[9];
    v210 = v5[10];
    v124 = v210;
    v216 = v214;
    v125 = swift_allocObject();
    v208 = v123;
    *(v125 + 16) = v123;
    *(v125 + 24) = v124;
    swift_unknownObjectRetain();
    v190 = static Subscribers.Demand.unlimited.getter();
    sub_100058000(&qword_100775980);
    sub_100003540(0, &qword_10076BB00);
    sub_100058000(&qword_100775988);
    sub_10000E188(&qword_100775990, &qword_100775980);
    sub_10000E188(&unk_100775998, &qword_100775988);
    v126 = v191;
    Publisher.flatMap<A, B>(maxPublishers:_:)();

    v127 = [objc_opt_self() mainRunLoop];
    v216 = v127;
    v128 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v129 = v193;
    (*(*(v128 - 8) + 56))(v193, 1, 1, v128);
    sub_100003540(0, &qword_10076DFB0);
    sub_10000E188(&unk_1007759A8, &qword_100775950);
    sub_1000072CC(&qword_10076DFC0, &qword_10076DFB0);
    v130 = v195;
    v131 = v194;
    Publisher.receive<A>(on:options:)();
    sub_1000079B4(v129, &qword_1007701A0);

    (*(v192 + 8))(v126, v131);
    v132 = swift_allocObject();
    v133 = v210;
    v134 = v211;
    v132[2] = v208;
    v132[3] = v133;
    v132[4] = v134;
    sub_10000E188(&qword_1007759B8, &qword_100775958);

    swift_unknownObjectRetain();
    v135 = v197;
    v136 = Publisher.sink(receiveCompletion:receiveValue:)();

    (*(v196 + 8))(v130, v135);
    v137 = v204;
    *(v204 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_reminderChangeItemForShowDetailsCancellable) = v136;
    v138 = v137;

    v139 = v138[11];
    v140 = v201;
    v141 = v200;
    v142 = v203;
    (*(v201 + 104))(v200, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.none(_:), v203);
    v143 = v202;
    v144 = (*(v207 + 608))(v205);
    *&v145 = __chkstk_darwin(v144);
    v146 = v209;
    *(&v159 - 8) = v139;
    *(&v159 - 7) = v146;
    *(&v159 - 6) = v141;
    *(&v159 - 5) = v145;
    v147 = v215;
    *(&v159 - 3) = v217;
    *(&v159 - 2) = v147;
    *(&v159 - 1) = v143;
    swift_unknownObjectRetain();
    firstly<A>(closure:)();

    swift_unknownObjectRelease();
    sub_1000079B4(v143, &qword_10076DF30);
    (*(v140 + 8))(v141, v142);
    (*(v198 + 8))(v146, v199);
    sub_100004758(v217);
    v148 = v147;
  }

  else
  {
    v148 = v215;
  }

  return sub_1000079B4(v148, &qword_10076DF38);
}

id sub_1001FB6DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v83 = a5;
  v82 = a4;
  v84 = a3;
  v89 = a2;
  v8 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v8 - 8);
  v81 = v70 - v9;
  v10 = sub_100058000(&qword_10076DF38);
  __chkstk_darwin(v10 - 8);
  v80 = v70 - v11;
  v86 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v79 = *(v86 - 8);
  __chkstk_darwin(v86);
  v78 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TTRIReminderDetailStyle();
  v77 = *(v85 - 8);
  __chkstk_darwin(v85);
  v75 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TTRReminderDetailSubject();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v70[1] = v15;
  v72 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v16 - 8);
  v71 = v70 - v17;
  v18 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v18 - 8);
  v20 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v70 - v22;
  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget(0);
  __chkstk_darwin(v28);
  v30 = (v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v34 = v70 - v32;
  if (*(a1 + 16) == 1)
  {
    (*(v25 + 16))(v70 - v32, a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v24, v33);
    swift_storeEnumTagMultiPayload();
    sub_100233874(v34, v30, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *v30;
      if ([*v30 presentationSourceItem])
      {
        swift_unknownObjectRetain();
        static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
        swift_unknownObjectRelease_n();
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v59 = type metadata accessor for TTRIPopoverAnchor();
      (*(*(v59 - 8) + 56))(v23, v36, 1, v59);
      sub_100227684(v23, v97);

      sub_1000079B4(v23, &unk_10076FCD0);
    }

    else
    {
      (*(v25 + 32))(v27, v30, v24);
      v58 = sub_1002111BC(v27, v84, v82, v83, v97);
      (*(v25 + 8))(v27, v24, v58);
    }

    sub_10000794C(v97, &v90, &qword_100775748);
    if (v90)
    {
      v95[2] = v92;
      v95[3] = v93;
      v96 = v94;
      v95[0] = v90;
      v95[1] = v91;
      *(v6 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler) = v93;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v60 = type metadata accessor for TaskPriority();
      v61 = v71;
      (*(*(v60 - 8) + 56))(v71, 1, 1, v60);
      sub_100233AF0(v95, &v90);
      v62 = v87;
      v63 = v72;
      v64 = v88;
      (*(v87 + 16))(v72, v89, v88);
      type metadata accessor for MainActor();

      v65 = static MainActor.shared.getter();
      v66 = (*(v62 + 80) + 105) & ~*(v62 + 80);
      v67 = swift_allocObject();
      v68 = v90;
      *(v67 + 56) = v91;
      v69 = v93;
      *(v67 + 72) = v92;
      *(v67 + 88) = v69;
      *(v67 + 16) = v65;
      *(v67 + 24) = &protocol witness table for MainActor;
      *(v67 + 32) = v6;
      *(v67 + 104) = v94;
      *(v67 + 40) = v68;
      (*(v62 + 32))(v67 + v66, v63, v64);
      sub_10009E31C(0, 0, v61, &unk_100635F70, v67);

      sub_100233BFC(v95);
      sub_1000079B4(v97, &qword_100775748);
      return sub_10022E05C(v34, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
    }

    else
    {
      sub_1000079B4(v97, &qword_100775748);
      sub_10022E05C(v34, type metadata accessor for TTRIRemindersCommonPresenter.NavigationBarEditingTarget);
      return sub_1000079B4(&v90, &qword_100775748);
    }
  }

  else
  {
    result = sub_1002110D0(a1);
    if (result)
    {
      v38 = result;
      v39 = v6;
      type metadata accessor for BatchDueDatePickerDetailModuleDelegate();
      v40 = swift_allocObject();
      swift_weakInit();
      swift_unknownObjectWeakInit();
      swift_weakAssign();
      swift_unknownObjectWeakAssign();
      v41 = v82;
      v40[4] = a1;
      v40[5] = v41;
      v40[6] = v83;
      v42 = sub_10022DFF4(&unk_100775940, type metadata accessor for BatchDueDatePickerDetailModuleDelegate);
      v43 = (v6 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_currentDetailModuleEventHandler);
      *v43 = v40;
      v43[1] = v42;

      sub_10003BE34(v41);
      swift_unknownObjectRelease();
      sub_10000794C(v84, v20, &unk_10076FCD0);
      v44 = type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider();
      swift_allocObject();

      v45 = TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)();
      TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()();
      v82 = *(v39 + 88);
      v46 = *v43;
      v83 = v43[1];
      v97[3] = v44;
      v97[4] = &protocol witness table for TTRIRemindersListDetailPopoverAnchorProvider;
      v97[0] = v45;
      swift_unknownObjectRetain();

      v84 = v38;
      v47 = v73;
      TTRReminderDetailSubject.init(reminderChangeItem:)();
      v48 = v75;
      *v75 = 1;
      v49 = v77;
      (*(v77 + 104))(v48, enum case for TTRIReminderDetailStyle.quickBarDueDatePicker(_:), v85);
      v50 = v78;
      (*(v87 + 16))(v78, v89, v88);
      v51 = v79;
      (*(v79 + 104))(v50, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.dueDate(_:), v86);
      v52 = type metadata accessor for TTRSectionLite();
      v53 = v80;
      (*(*(v52 - 8) + 56))(v80, 1, 1, v52);
      v54 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
      v55 = v81;
      v56 = (*(*(v54 - 8) + 56))(v81, 1, 1, v54);
      __chkstk_darwin(v56);
      v57 = v82;
      v70[-12] = v47;
      v70[-11] = v57;
      v70[-10] = v50;
      v70[-9] = v46;
      v70[-8] = v83;
      v70[-7] = v48;
      LOBYTE(v70[-6]) = 0;
      v70[-5] = 1;
      v70[-4] = v53;
      v70[-3] = v55;
      v70[-2] = v97;
      LOWORD(v70[-1]) = 0;
      firstly<A>(closure:)();

      swift_unknownObjectRelease();

      sub_1000079B4(v55, &qword_10076DF30);
      sub_1000079B4(v53, &qword_10076DF38);
      (*(v51 + 8))(v50, v86);
      (*(v49 + 8))(v48, v85);
      (*(v74 + 8))(v47, v76);
      return sub_100004758(v97);
    }
  }

  return result;
}