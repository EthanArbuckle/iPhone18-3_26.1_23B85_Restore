uint64_t getEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.PresenterState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRSmartListFilterEditorViewModel.PresenterState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1004AE4D0()
{
  result = qword_100785F58;
  if (!qword_100785F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785F58);
  }

  return result;
}

unint64_t sub_1004AE528()
{
  result = qword_100785F60;
  if (!qword_100785F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785F60);
  }

  return result;
}

unint64_t sub_1004AE580()
{
  result = qword_100785F68;
  if (!qword_100785F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785F68);
  }

  return result;
}

unint64_t sub_1004AE5D8()
{
  result = qword_100785F70;
  if (!qword_100785F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100785F70);
  }

  return result;
}

char *sub_1004AE65C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_activeReorderingContext] = 0;
  v10 = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_infoLabel;
  *&v4[OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_infoLabel] = v10;
  [v10 setNumberOfLines:0];
  v12 = *&v4[v11];
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() fontWithName:v13 size:12.0];

  [v12 setFont:v14];
  v15 = *&v4[v11];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 whiteColor];
  [v17 setTextColor:v18];

  v19 = *&v4[v11];
  v20 = [v16 blackColor];
  [v19 setBackgroundColor:v20];

  v21 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 6.0, 6.0}];
  v22 = OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_pointView;
  *&v4[OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_pointView] = v21;
  [v21 setClipsToBounds:1];
  v23 = [*&v4[v22] layer];
  [v23 setCornerRadius:3.0];

  v24 = [*&v4[v22] layer];
  [v24 setCornerCurve:kCACornerCurveCircular];

  v25 = *&v4[v22];
  v26 = [v16 ttr_systemRedColor];
  [v25 setBackgroundColor:v26];

  v27 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v28 = OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_borderView;
  *&v4[OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_borderView] = v27;
  v29 = [v27 layer];
  v30 = [v16 greenColor];
  v31 = [v30 CGColor];

  [v29 setBorderColor:v31];
  v32 = [*&v4[v28] layer];
  [v32 setBorderWidth:1.0];

  v49.receiver = v4;
  v49.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  [v33 setUserInteractionEnabled:0];
  v34 = OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_infoLabel;
  [*&v33[OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_infoLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 addSubview:*&v33[v34]];
  v35 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10062D410;
  v37 = [v33 safeAreaLayoutGuide];
  v38 = [v37 leadingAnchor];

  v39 = [*&v33[v34] leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v36 + 32) = v40;
  v41 = [v33 safeAreaLayoutGuide];

  v42 = [v41 bottomAnchor];
  v43 = [*&v33[v34] bottomAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:70.0];

  *(v36 + 40) = v44;
  sub_100177300();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];

  v46 = OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_pointView;
  [*&v33[OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_pointView] setTranslatesAutoresizingMaskIntoConstraints:1];
  [v33 addSubview:*&v33[v46]];
  v47 = OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_borderView;
  [*&v33[OBJC_IVAR____TtC9Reminders50TTRIRemindersBoardColumnReorderingDebugOverlayView_borderView] setTranslatesAutoresizingMaskIntoConstraints:1];
  [v33 addSubview:*&v33[v47]];

  return v33;
}

uint64_t sub_1004AED88@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for TTRRemindersListLayout();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100786228);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_100058000(&qword_100786230);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_100058000(&qword_100786238);
  v15 = *(v14 - 8);
  v42 = v14;
  v43 = v15;
  __chkstk_darwin(v14);
  v37 = &v36 - v16;
  v38 = v1;
  v17 = *(v1 + 2);
  v36 = *v1;
  v46 = v36;
  v47 = v17;
  v18 = enum case for Font.Design.rounded(_:);
  v19 = type metadata accessor for Font.Design();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v10, v18, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  sub_1004B0840();
  swift_unknownObjectRetain();

  View.fontDesign(_:)();
  sub_1000079B4(v10, &qword_100786228);

  swift_unknownObjectRelease();
  KeyPath = swift_getKeyPath();
  v22 = &v13[*(v11 + 36)];
  v23 = *(sub_100058000(&qword_100786248) + 28);
  (*(v5 + 104))(v7, enum case for EditMode.active(_:), v4);
  static Binding.constant(_:)();
  (*(v5 + 8))(v7, v4);
  v24 = sub_100058000(&qword_100786250);
  (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
  *v22 = KeyPath;
  v26 = v39;
  v25 = v40;
  v27 = v41;
  (*(v40 + 104))(v39, enum case for TTRRemindersListLayout.list(_:), v41);
  v28 = static TTRLocalizableStrings.Sections.editSectionsTitle(listLayout:)();
  v30 = v29;
  (*(v25 + 8))(v26, v27);
  *&v46 = v28;
  *(&v46 + 1) = v30;
  v31 = sub_1004B0894();
  v32 = sub_10007D420();
  v33 = v37;
  View.navigationTitle<A>(_:)();

  sub_10004BB50(v13);
  v45 = v38;
  sub_100058000(&qword_100786270);
  *&v46 = v11;
  *(&v46 + 1) = &type metadata for String;
  v47 = v31;
  v48 = v32;
  swift_getOpaqueTypeConformance2();
  sub_10000E188(&qword_100786278, &qword_100786270);
  v34 = v42;
  View.toolbar<A>(content:)();
  return (*(v43 + 8))(v33, v34);
}

uint64_t sub_1004AF324(uint64_t a1)
{
  v2 = sub_100058000(&qword_100786300);
  __chkstk_darwin(v2 - 8);
  sub_10000794C(a1, &v5 - v3, &qword_100786300);
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_1004AF3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_100058000(&qword_100786280);
  __chkstk_darwin(v30);
  v29 = &v24 - v3;
  v26 = sub_100058000(&qword_100786288);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v24 - v4;
  v27 = sub_100058000(&qword_100786290);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v8 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v8 - 8);
  v24 = sub_100058000(&qword_100786298);
  v9 = *(v24 - 8);
  __chkstk_darwin(v24);
  v11 = &v24 - v10;
  static ToolbarItemPlacement.cancellationAction.getter();
  v33 = a1;
  sub_100058000(&qword_1007862A0);
  v12 = sub_10005D20C(&qword_1007862A8);
  v13 = type metadata accessor for TTRDiscardChangesDialog();
  v14 = sub_1004B0988();
  v15 = sub_1004B0E48(&qword_1007862D8, &type metadata accessor for TTRDiscardChangesDialog);
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v37 = v15;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v32 = a1;
  sub_100058000(&qword_1007862C0);
  sub_10000E188(&qword_1007862B8, &qword_1007862C0);
  ToolbarItem<>.init(placement:content:)();
  static Color.blue.getter();
  sub_10000E188(&qword_1007862E0, &qword_100786288);
  v16 = v26;
  ToolbarContent.containerTint(_:)();

  (*(v28 + 8))(v5, v16);
  v17 = v29;
  v18 = *(v30 + 48);
  v19 = v24;
  (*(v9 + 16))(v29, v11, v24);
  v20 = v25;
  v21 = &v17[v18];
  v22 = v27;
  (*(v25 + 16))(v21, v7, v27);
  TupleToolbarContent.init(_:)();
  (*(v20 + 8))(v7, v22);
  return (*(v9 + 8))(v11, v19);
}

uint64_t sub_1004AF89C(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007862A8);
  __chkstk_darwin(v2);
  v4 = &v11[-v3];
  v12 = *(a1 + 24);
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  swift_unknownObjectRetain();

  sub_10000794C(&v12, v11, &qword_1007862E8);
  sub_100058000(&qword_1007862F0);
  sub_10000E188(&qword_1007862F8, &qword_1007862F0);
  Button.init(action:label:)();
  v7 = static Color.blue.getter();
  KeyPath = swift_getKeyPath();
  v9 = &v4[*(v2 + 36)];
  *v9 = KeyPath;
  v9[1] = v7;
  TTREditTodaySectionsModelObject.discardChangesDialogState.getter();
  sub_1004B0988();
  View.confirmationDialog<A>(for:)();

  return sub_1000079B4(v4, &qword_1007862A8);
}

uint64_t sub_1004AFAB4(uint64_t a1)
{
  v6 = *(a1 + 24);
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  swift_unknownObjectRetain();

  sub_10000794C(&v6, &v5, &qword_1007862E8);
  sub_100058000(&qword_1007862F0);
  sub_10000E188(&qword_1007862F8, &qword_1007862F0);
  return Button.init(action:label:)();
}

uint64_t sub_1004AFC0C(void (*a1)(void))
{
  a1();
  sub_10007D420();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_1004AFCB0()
{
  sub_100058000(&qword_100786328);
  sub_1004B0CDC();
  return Section<>.init(content:)();
}

uint64_t sub_1004AFD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTREditTodaySectionsViewModel();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTREditTodaySectionsModelObject.viewModel.getter();
  v12 = TTREditTodaySectionsViewModel.cellViewModels.getter();
  (*(v9 + 8))(v11, v8);
  v17[1] = v12;
  sub_100058000(&qword_100786360);
  type metadata accessor for REMSmartListSection.PredefinedSectionType.Today();
  type metadata accessor for ListCell(0);
  sub_10000E188(&qword_100786368, &qword_100786360);
  sub_1004B0E48(&qword_100786340, type metadata accessor for ListCell);
  sub_1004B0E48(&qword_100786370, &type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel);
  ForEach<>.init(_:content:)();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1004B0EBC;
  *(v14 + 24) = v13;
  v15 = (a4 + *(sub_100058000(&qword_100786328) + 36));
  *v15 = sub_1004B0F14;
  v15[1] = v14;
  swift_unknownObjectRetain();
}

uint64_t sub_1004AFFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1004B002C()
{
  v1 = type metadata accessor for InsetGroupedListStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100058000(&qword_100786308);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  v9 = *(v0 + 2);
  v12 = *v0;
  v13 = v9;
  sub_100058000(&qword_100786310);
  sub_1004B0C4C();
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_10000E188(&qword_100786358, &qword_100786308);
  View.listStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1004B024C@<X0>(uint64_t a1@<X8>)
{
  TTREditTodaySectionsViewModel.CellViewModel.title.getter();
  sub_10007D420();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  TTREditTodaySectionsViewModel.CellViewModel.subtitle.getter();
  if (v9)
  {
    v10 = Text.init<A>(_:)();
    v12 = v11;
    v14 = v13;
    static Color.secondary.getter();
    v34 = v4;
    v15 = Text.foregroundColor(_:)();
    v33 = v6;
    v17 = v16;
    v35 = v8;
    v19 = v18;

    sub_1004B1308(v10, v12, v14 & 1);

    static Font.subheadline.getter();
    v20 = Text.font(_:)();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27 = v19 & 1;
    v8 = v35;
    v28 = v15;
    v4 = v34;
    v29 = v17;
    v6 = v33;
    sub_1004B1308(v28, v29, v27);

    v30 = v24 & 1;
    sub_1004B1270(v20, v22, v24 & 1);
  }

  else
  {
    v20 = 0;
    v22 = 0;
    v30 = 0;
    v26 = 0;
  }

  v31 = v6 & 1;
  sub_1004B1270(v2, v4, v31);

  sub_1004B1280(v20, v22, v30, v26);
  sub_1004B12C4(v20, v22, v30, v26);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v31;
  *(a1 + 24) = v8;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v30;
  *(a1 + 56) = v26;
  sub_1004B12C4(v20, v22, v30, v26);
  sub_1004B1308(v2, v4, v31);
}

__n128 sub_1004B0468@<Q0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.leading.getter();
  sub_1004B024C(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

BOOL sub_1004B05AC(void *a1)
{
  swift_getObjectType();
  v2 = a1;
  v3 = dispatch thunk of TTREditTodaySectionsPresenterType.hasUncommittedChanges.getter();

  return (v3 & 1) == 0;
}

void sub_1004B0614(void *a1)
{
  swift_getObjectType();
  v2 = a1;
  dispatch thunk of TTREditTodaySectionsPresenterType.requestCancel()();
}

uint64_t destroy for TTRIEditTodaySectionsView()
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for TTRIEditTodaySectionsView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();

  return a1;
}

uint64_t assignWithCopy for TTRIEditTodaySectionsView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for TTRIEditTodaySectionsView(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

unint64_t sub_1004B0840()
{
  result = qword_100786240;
  if (!qword_100786240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786240);
  }

  return result;
}

unint64_t sub_1004B0894()
{
  result = qword_100786258;
  if (!qword_100786258)
  {
    sub_10005D20C(&qword_100786230);
    sub_1004B0840();
    swift_getOpaqueTypeConformance2();
    sub_10000E188(&unk_100786260, &qword_100786248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786258);
  }

  return result;
}

unint64_t sub_1004B0988()
{
  result = qword_1007862B0;
  if (!qword_1007862B0)
  {
    sub_10005D20C(&qword_1007862A8);
    sub_10000E188(&qword_1007862B8, &qword_1007862C0);
    sub_10000E188(&qword_1007862C8, &qword_1007862D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007862B0);
  }

  return result;
}

uint64_t sub_1004B0AA4(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return a1(ObjectType, v3);
}

uint64_t destroy for SectionsList()
{
  swift_unknownObjectRelease();
}

uint64_t sub_1004B0B24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRetain();

  return a1;
}

void *assignWithCopy for SectionsList(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v4;
  a1[2] = a2[2];

  return a1;
}

uint64_t assignWithTake for SectionsList(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t sub_1004B0C4C()
{
  result = qword_100786318;
  if (!qword_100786318)
  {
    sub_10005D20C(&qword_100786310);
    sub_1004B0CDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786318);
  }

  return result;
}

unint64_t sub_1004B0CDC()
{
  result = qword_100786320;
  if (!qword_100786320)
  {
    sub_10005D20C(&qword_100786328);
    sub_1004B0D94();
    sub_10000E188(&qword_100786348, &qword_100786350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786320);
  }

  return result;
}

unint64_t sub_1004B0D94()
{
  result = qword_100786330;
  if (!qword_100786330)
  {
    sub_10005D20C(&qword_100786338);
    sub_1004B0E48(&qword_100786340, type metadata accessor for ListCell);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786330);
  }

  return result;
}

uint64_t sub_1004B0E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B0F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_1004B0FAC(uint64_t a1)
{
  v2 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_1004B1010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_1004B1074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_1004B10D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_1004B113C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_1004B11C8()
{
  result = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1004B1270(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1004B1280(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1004B1270(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1004B12C4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1004B1308(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1004B1308(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1004B1328()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100786420);
  v1 = sub_100003E30(v0, qword_100786420);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B13F0()
{
  v1 = OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1004B1434(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

id sub_1004B1434(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder) subtaskContext];
  if (result)
  {
    v2 = result;
    v17 = 0;
    v3 = [result hasSubtasksWithError:&v17];
    v4 = v17;
    if (v17)
    {
      swift_willThrow();
      v5 = qword_100767360;
      v6 = v4;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100003E30(v7, qword_100786420);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136315138;
        swift_getErrorValue();
        v13 = Error.rem_errorDescription.getter();
        v15 = sub_100004060(v13, v14, &v17);

        *(v11 + 4) = v15;
        sub_100004758(v12);
      }

      else
      {
      }

      return 0;
    }

    else
    {
      v16 = v3;

      return v16;
    }
  }

  return result;
}

void sub_1004B1648()
{
  v2 = TTRAppBundleIdentifier.getter();
  v3 = v0;
  v1._countAndFlagsBits = 0x65646E696D65722ELL;
  v1._object = 0xE900000000000072;
  String.append(_:)(v1);
  qword_100786438 = v2;
  unk_100786440 = v3;
}

void *sub_1004B1984()
{
  v1 = *(*v0 + OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder);
  v2 = v1;
  return v1;
}

uint64_t sub_1004B1A10(unint64_t a1)
{
  v32 = _swiftEmptyArrayStorage;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

LABEL_19:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v25 = _swiftEmptyArrayStorage;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = type metadata accessor for TTRIRemindersListDragReminder();
      v28 = 0xD000000000000029;
      v29 = 0x8000000100677B80;
      AnyHashable.init<A>(_:)();
      UIDragItem.localObject<A>(ofType:forKey:)();
      sub_100077654(v30);
      v9 = v31;
      if (v31)
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_21;
      }
    }

    v10 = *&v31[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];
    v26 = v31[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList];
    v11 = objc_allocWithZone(v8);
    v11[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
    *&v11[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v10;
    v11[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v26;
    v27.receiver = v11;
    v27.super_class = v8;
    v12 = v10;
    objc_msgSendSuper2(&v27, "init");

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v25 = v32;
  }

  while (v4 != v3);
LABEL_21:
  v13 = v25;
  if (v25 >> 62)
  {
    goto LABEL_36;
  }

  v14 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v15 = &unk_100786000;
  if (v14)
  {
    while (1)
    {
      v16 = 0;
      v17 = v13 & 0xC000000000000001;
      v18 = v13 & 0xFFFFFFFFFFFFFF8;
      v19 = v13 + 32;
      while (v17)
      {
        v20 = v13;
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (__OFADD__(v16++, 1))
        {
          __break(1u);
          return result;
        }

        v23 = *(result + v15[138]);
        swift_unknownObjectRelease();
        v13 = v20;
        if (v23 != 1)
        {
          goto LABEL_33;
        }

LABEL_29:
        if (v16 == v14)
        {
          goto LABEL_37;
        }
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v24 = v13;
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v24;
      v15 = &unk_100786000;
      if (!v14)
      {
        goto LABEL_37;
      }
    }

    if (v16 >= *(v18 + 16))
    {
      goto LABEL_35;
    }

    if ((*(*(v19 + 8 * v16) + v15[138]) & 1) == 0)
    {
LABEL_33:

      return 0;
    }

    ++v16;
    goto LABEL_29;
  }

LABEL_37:

  return 1;
}

id sub_1004B1D24(void *a1)
{
  v2 = type metadata accessor for TTRIRemindersListDragReminder();
  v11 = 0xD000000000000029;
  v12 = 0x8000000100677B80;
  AnyHashable.init<A>(_:)();
  UIDragItem.localObject<A>(ofType:forKey:)();
  sub_100077654(v13);
  v3 = v14;
  if (v14)
  {
    v4 = *&v14[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder];
    v5 = v14[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList];
    v6 = objc_allocWithZone(v2);
    v6[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder____lazy_storage___hasSubtasks] = 2;
    *&v6[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder] = v4;
    v6[OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_isFromRecentlyDeletedList] = v5;
    v10.receiver = v6;
    v10.super_class = v2;
    v7 = v4;
    v8 = objc_msgSendSuper2(&v10, "init");
  }

  else
  {

    return 0;
  }

  return v8;
}

id sub_1004B1E4C(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v37 = a3;
  v7 = sub_100058000(&unk_100786490);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for TTRReminderProtocolWithPendingMove();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v38 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = swift_allocObject();
  *(v39 + 16) = a4;
  _Block_copy(a4);
  if (qword_100767368 != -1)
  {
    swift_once();
  }

  v18 = qword_100786438;
  v17 = unk_100786440;
  if (qword_100786438 == a1 && unk_100786440 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v19 = objc_opt_self();
    aBlock = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    aBlock = 0xD00000000000001ALL;
    v41 = 0x800000010067EBB0;
    v20._countAndFlagsBits = v18;
    v20._object = v17;
    String.append(_:)(v20);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v19 internalErrorWithDebugDescription:v21];

LABEL_7:
    v23 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v23);

    return 0;
  }

  v36 = v14;
  sub_100003540(0, &qword_1007755F0);
  if ((static NSItemProviderWriting.canWriteTypeIdentifier(_:)() & 1) == 0)
  {
    v33 = objc_opt_self();
    aBlock = 0;
    v41 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    aBlock = 0xD00000000000001CLL;
    v41 = 0x80000001006893D0;
    v34._countAndFlagsBits = a1;
    v34._object = a2;
    String.append(_:)(v34);
    v35 = String._bridgeToObjectiveC()();

    v22 = [v33 internalErrorWithDebugDescription:v35];

    goto LABEL_7;
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v26 = *(v37 + OBJC_IVAR____TtC9Reminders29TTRIRemindersListDragReminder_reminder);
  v43 = sub_100003540(0, &qword_10076BB00);
  v44 = &protocol witness table for REMReminder;
  aBlock = v26;
  v27 = v26;
  TTRReminderProtocolWithPendingMove.init(reminder:pendingMoveTargetList:)();
  v28 = type metadata accessor for TTRReminderViewModelComputedProperties();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)();
  TTRRemindersListViewModel.Reminder.localizedDescription.getter();
  v29 = String._bridgeToObjectiveC()();

  v30 = String._bridgeToObjectiveC()();
  v44 = sub_1002354C8;
  v45 = v39;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1005AA69C;
  v43 = &unk_10072B608;
  v31 = _Block_copy(&aBlock);

  v32 = [v29 loadDataWithTypeIdentifier:v30 forItemProviderCompletionHandler:v31];
  _Block_release(v31);

  (*(v38 + 8))(v16, v36);

  return v32;
}

void sub_1004B2404()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded;
  if (UIAccessibilityButtonShapesEnabled())
  {
    v3._countAndFlagsBits = 0x2E656C637269632ELL;
    v3._object = 0xEC0000006C6C6966;
    String.append(_:)(v3);
  }

  v4 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView;
  v5 = *&v0[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView];
  if (!v5)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 __systemImageNamedSwift:v8];

  if (v9)
  {
    v10 = sub_1004B3058();
    v11 = [v9 imageWithConfiguration:v10];
  }

  else
  {
    v11 = 0;
  }

  [v7 setImage:v11];

  v12 = *&v1[v4];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor];
  if (v13)
  {
    v14 = v12;
    v15 = v13;
  }

  else
  {
    v16 = objc_opt_self();
    v17 = v12;
    v15 = [v16 tertiaryLabelColor];
  }

  v18 = v13;
  [v12 setTintColor:v15];

  v19 = *&v1[v4];
  if (!v19)
  {
    goto LABEL_21;
  }

  [v19 invalidateIntrinsicContentSize];
  v20 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
  if (!v20)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v21 = v20;

  v22 = [v21 columnAtIndex:0];

  [v22 setHidden:v1[v2]];
  swift_unknownObjectRelease();
  if (v1[v2] == 1)
  {
    static TTRAccesibility.AccountsList.Action.Collapse.getter();
  }

  else
  {
    static TTRAccesibility.AccountsList.Action.Expand.getter();
  }

  v23 = String._bridgeToObjectiveC()();

  [v1 setAccessibilityLabel:v23];
}

id sub_1004B26BC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor] = 0;
  v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_layoutDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronFont] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronConfiguration] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_1004B279C();
  }

  return v5;
}

void sub_1004B279C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v0 setUserInteractionEnabled:1];
  v3 = [objc_allocWithZone(UILabel) init];
  LODWORD(v4) = 1144733696;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1144733696;
  [v3 setContentCompressionResistancePriority:0 forAxis:v5];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor:v6];

  sub_10008CCC8();
  v7 = static UIFont.roundedBodyFont.getter();
  [v3 setFont:v7];

  v8 = String._bridgeToObjectiveC()();
  [v3 setText:v8];

  [v3 setAdjustsFontForContentSizeCategory:1];
  v9 = [objc_allocWithZone(UIImageView) init];
  LODWORD(v10) = 1144750080;
  [v9 setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1144750080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v11];
  sub_100058000(&qword_100786510);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  sub_100058000(&qword_10076B780);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10062D410;
  *(v13 + 32) = v3;
  *(v13 + 40) = v9;
  *(v12 + 32) = v13;
  v14 = objc_allocWithZone(NUIContainerGridView);
  sub_100058000(&unk_10076BCD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v14 initWithArrangedSubviewRows:isa];

  v17 = v16;
  [v17 setAlignment:4 forView:v9 inAxis:0];
  [v17 setAlignment:4 forView:v3 inAxis:0];
  [v17 setLayoutMarginsRelativeArrangement:1];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v21 = v17;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v21 setHorizontalDistribution:0];
  [v21 setVerticalAlignment:3];
  [v21 setColumnSpacing:8.0];
  [v21 setDebugBoundingBoxesEnabled:0];

  [v21 setUserInteractionEnabled:0];
  v22 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel];
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel] = v3;
  v23 = v3;

  v24 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView];
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView] = v9;
  v25 = v9;

  v26 = *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
  *&v1[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView] = v21;
  v27 = v21;

  [v27 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  [v1 bounds];
  [v27 setFrame:?];
  [v27 setAutoresizingMask:18];

  [v27 setDelegate:v1];
  [v1 addSubview:v27];
  sub_1004B2404();
  v36[3] = ObjectType;
  v36[0] = v1;
  v28 = v1;
  static UIAccessibility.addButtonShapesStatusChangeObserver(_:selector:)();
  sub_100004758(v36);
  v29 = UIAccessibilityTraitHeader;
  v35.receiver = v28;
  v35.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v35, "accessibilityTraits");
  v31 = -1;
  if ((v30 & v29) != 0)
  {
    v31 = ~v29;
  }

  v32 = v31 & v30;
  if ((v32 & v29) != 0)
  {
    v33 = v30 & ~v29;
  }

  else
  {
    v33 = v32;
  }

  v34.receiver = v28;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "setAccessibilityTraits:", v33);
}

id sub_1004B2C88(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor] = 0;
  v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_layoutDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_countLabel] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronFont] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronConfiguration] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_1004B279C();

  return v10;
}

id sub_1004B2E80()
{
  ObjectType = swift_getObjectType();
  v5[3] = ObjectType;
  v5[0] = v0;
  v2 = v0;
  static UIAccessibility.removeButtonShapesStatusChangeObserver(_:)();
  sub_100004758(v5);
  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1004B2FE8()
{
  v1 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronFont;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronFont);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronFont);
  }

  else
  {
    v4 = v0;
    sub_10008CCC8();
    v5 = static UIFont.roundedBodyEmphasizedFont.getter();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1004B3058()
{
  v1 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronConfiguration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView____lazy_storage___chevronConfiguration);
  }

  else
  {
    v4 = sub_1004B2FE8();
    v5 = [objc_opt_self() configurationWithFont:v4 scale:1];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1004B32C8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor);
  *(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_preferredTintColor) = a1;
  v4 = a1;

  v5 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView);
  if (v5)
  {
    v11 = *(v1 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_disclosureImageView);
    if (a1)
    {
      v6 = v5;
      v7 = v4;
    }

    else
    {
      v8 = objc_opt_self();
      v9 = v11;
      v7 = [v8 tertiaryLabelColor];
    }

    v10 = v4;
    [v11 setTintColor:v7];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004B33A0()
{
  v1 = [v0 layer];
  v2 = [*&v0[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeColor] CGColor];
  [v1 setBorderColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC9Reminders41TTRIBoardReminderCellBackgroundStrokeView_strokeWidth];
  if (v3 > 0.0)
  {
    v4 = [v0 traitCollection];
    [v4 displayScale];

    ceil(_:toScale:)();
    v3 = v5;
  }

  v6 = [v0 layer];
  [v6 setBorderWidth:v3];
}

uint64_t sub_1004B36C8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100786550);
  v1 = sub_100003E30(v0, qword_100786550);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B3790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v9 = type metadata accessor for TimeZone();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v8[14] = *(v10 + 64);
  v8[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[16] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[17] = v12;
  v8[18] = v11;

  return _swift_task_switch(sub_1004B3894, v12, v11);
}

uint64_t sub_1004B3894()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[8];
  v6 = v0[9];
  v0[5] = _swiftEmptyArrayStorage;
  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[19] = v9;
  (*(v4 + 32))(v9 + v7, v1, v3);
  *(v9 + v8) = v6;

  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1004B39EC;
  v12 = v0[7];
  v11 = v0[8];

  return sub_1004B415C(v12, v11, sub_1004B402C, v9);
}

uint64_t sub_1004B39EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 144);
  v6 = *(v3 + 136);
  if (v1)
  {
    v7 = sub_1004B3C44;
  }

  else
  {
    v7 = sub_1004B3B4C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1004B3B4C()
{
  v1 = v0[21];

  v2 = v1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v0[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v3 = v0[21];
  v4 = v0[10];
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v4(v0[5]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1004B3C44()
{
  v12 = v0;

  if (qword_100767370 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100786550);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "TTRIAccountsListsTimeZoneMenuAssembly: failed to create time zone override menu {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  (*(v0 + 80))(_swiftEmptyArrayStorage);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1004B3E1C()
{
  if (qword_100767370 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_100786550);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 6581359;
  *(inited + 40) = 0xE300000000000000;
  type metadata accessor for TimeZone();
  sub_1004B4CBC(&qword_1007756E8);
  *(inited + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 56) = v2;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 7824750;
  *(inited + 88) = 0xE300000000000000;
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v3;
  *(inited + 104) = v4;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  v5 = [objc_opt_self() daemonUserDefaults];
  TimeZone.identifier.getter();
  v6 = String._bridgeToObjectiveC()();

  [v5 setTimeZoneOverride:v6];

  return TTRTimeZoneOverrideMenuPresenterCapability.saveRecentlyUsedTimeZone(_:)();
}

uint64_t sub_1004B402C()
{
  type metadata accessor for TimeZone();

  return sub_1004B3E1C();
}

uint64_t sub_1004B40C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for TimeZone();
  sub_1004B4CBC(&qword_100786568);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    return a4(a2);
  }

  return result;
}

uint64_t sub_1004B415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Date();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for TimeZone();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v4[12] = *(v7 + 64);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[17] = v9;
  v4[18] = v8;

  return _swift_task_switch(sub_1004B42D0, v9, v8);
}

uint64_t sub_1004B42D0()
{
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  *(v0 + 152) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 232) = v6;
    *(v0 + 160) = *(v4 + 56);
    *(v0 + 168) = v5;
    *(v0 + 176) = _swiftEmptyArrayStorage;
    *(v0 + 184) = 0;
    v7 = *(v0 + 120);
    *(v0 + 192) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v7, v1 + ((v6 + 32) & ~v6), v3);
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_1004B4528;

    return TimeZone.defaultFormattedRegionName()();
  }

  else
  {

    if (_swiftEmptyArrayStorage >> 62)
    {
      sub_100003540(0, &qword_10076C550);

      preferredElementSize = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100003540(0, &qword_10076C550);
      preferredElementSize = _swiftEmptyArrayStorage;
    }

    sub_100003540(0, &unk_10076B890);
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v16.value.super.isa = 0;
    v16.is_nil = 0;
    v11.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v10, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;

    v12 = *(v0 + 8);

    return v12(v11.super.super.isa);
  }
}

uint64_t sub_1004B4528(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[26] = a1;
  v4[27] = a2;
  v4[28] = v2;

  if (v2)
  {

    v5 = v4[17];
    v6 = v4[18];
    v7 = sub_1004B4B54;
  }

  else
  {
    v5 = v4[17];
    v6 = v4[18];
    v7 = sub_1004B4648;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1004B4648()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  Date.init()();
  v4 = TimeZone.abbreviation(for:)();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (v6)
  {
    static TTRLocalizableStrings.TimeZone.timeZoneFullNameAndAbbreviation.getter();
    sub_100058000(&unk_100786CB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10062D3F0;
    v8 = TimeZone.localizedFullName.getter();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    v11 = sub_10005C390();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v11;
    *(v7 + 64) = v11;
    *(v7 + 72) = v4;
    *(v7 + 80) = v6;
    String.init(format:_:)();
  }

  else
  {
    TimeZone.localizedFullName.getter();
  }

  v12 = *(v0 + 168);
  v13 = *(v0 + 232);
  v15 = *(v0 + 112);
  v14 = *(v0 + 120);
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  v46 = *(v0 + 48);
  v20 = *(v0 + 32);
  v45 = *(v0 + 40);
  v21 = (v13 + 16) & ~v13;
  v44 = (v16 + v13 + v21) & ~v13;
  v43 = (v16 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  static TimeZone.== infix(_:_:)();
  sub_100003540(0, &qword_10076BA60);
  v12(v15, v14, v19);
  v12(v17, v20, v19);
  v22 = swift_allocObject();
  v23 = *(v18 + 32);
  v23(v22 + v21, v15, v19);
  v23(v22 + v44, v17, v19);
  v24 = (v22 + v43);
  *v24 = v45;
  v24[1] = v46;

  v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v26 = *(v0 + 152);
  v27 = *(v0 + 120);
  v28 = *(v0 + 80);
  v29 = *(v0 + 88);
  v30 = *(v0 + 184) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  (*(v29 + 8))(v27, v28);
  v31 = *(v0 + 16);
  if (v30 == v26)
  {

    if (v31 >> 62)
    {
      sub_100003540(0, &qword_10076C550);

      preferredElementSize = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100003540(0, &qword_10076C550);
      preferredElementSize = v31;
    }

    sub_100003540(0, &unk_10076B890);
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v48.value.super.isa = 0;
    v48.is_nil = 0;
    v34.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v33, 0, v48, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 0).super.super.isa;

    v35 = *(v0 + 8);

    return v35(v34.super.super.isa);
  }

  else
  {
    v37 = *(v0 + 184) + 1;
    *(v0 + 176) = v31;
    *(v0 + 184) = v37;
    v38 = *(v0 + 168);
    v39 = *(v0 + 120);
    v40 = *(v0 + 80);
    v41 = *(v0 + 24) + ((*(v0 + 232) + 32) & ~*(v0 + 232)) + *(v0 + 160) * v37;
    *(v0 + 192) = (*(v0 + 88) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v38(v39, v41, v40);
    v42 = swift_task_alloc();
    *(v0 + 200) = v42;
    *v42 = v0;
    v42[1] = sub_1004B4528;

    return TimeZone.defaultFormattedRegionName()();
  }
}

uint64_t sub_1004B4B54()
{
  v1 = v0[15];
  v2 = v0[10];
  v3 = v0[11];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004B4C0C(uint64_t a1)
{
  v3 = *(type metadata accessor for TimeZone() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004B40C8(a1, v1 + v5, v1 + v7, v8);
}

uint64_t sub_1004B4CBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TimeZone();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1004B4D80(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v29 = a5;
  v40 = a4(0);
  __chkstk_darwin(v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = __chkstk_darwin(v10);
  v39 = &v29 - v13;
  v36 = *(a3 + 16);
  if (v36)
  {
    v14 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = _swiftEmptyArrayStorage;
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = *(v11 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v11;
      v20 = a1;
      v21 = v39;
      (*(v11 + 16))(v39, v18, v40, v12);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v33)(v39, v40);

        return;
      }

      if (v23)
      {
        v24 = *v34;
        (*v34)(v37, v39, v40);
        v25 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29(0, v25[2] + 1, 1);
          v25 = v41;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v29(v27 > 1, v28 + 1, 1);
          v25 = v41;
        }

        v25[2] = v28 + 1;
        v38 = v25;
        v24(v25 + v15 + v28 * v16, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        (*v33)(v39, v40);
        a3 = v17;
      }

      ++v14;
      v11 = v19;
      if (v36 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
LABEL_14:
  }
}

void *sub_1004B5068(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v19 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v4 = v15;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_1004B5214(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v9 = _swiftEmptyArrayStorage;
    v14 = result;
    while (v7 < *(a3 + 16))
    {
      sub_10000B0D8(v8, v16);
      v10 = v6(v16);
      if (v3)
      {
        sub_100004758(v16);

        goto LABEL_15;
      }

      if (v10)
      {
        sub_10008687C(v16, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A2634(0, v9[2] + 1, 1);
          v9 = v17;
        }

        v13 = v9[2];
        v12 = v9[3];
        if (v13 >= v12 >> 1)
        {
          sub_1004A2634((v12 > 1), v13 + 1, 1);
          v9 = v17;
        }

        v9[2] = v13 + 1;
        result = sub_10008687C(v15, &v9[5 * v13 + 4]);
        v6 = v14;
      }

      else
      {
        result = sub_100004758(v16);
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_15:

    return v9;
  }

  return result;
}

uint64_t sub_1004B538C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  sub_10001DE0C(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_10058B6B8(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTRReminderIDsWithMatchingHashtagsProvider.fetchReminderIDs(include:exclude:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v29 = a3;
  v6 = type metadata accessor for REMHashtagLabelCollection();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  v34 = &v29 - v9;
  if (v11)
  {
    v12 = sub_1003AC440(v11, 0);
    v13 = sub_1003B2F84(v35, v12 + 4, v11, a1);

    result = sub_10008BA48();
    if (v13 != v11)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    v10 = v34;
  }

  REMHashtagLabelCollection.init(labels:)();
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = sub_1003AC440(*(a2 + 16), 0);
    v17 = sub_1003B2F84(v35, v16 + 4, v15, a2);

    result = sub_10008BA48();
    if (v17 != v15)
    {
      goto LABEL_13;
    }
  }

  v18 = v31;
  v19 = REMHashtagLabelCollection.init(labels:)();
  __chkstk_darwin(v19);
  v20 = v30;
  *(&v29 - 4) = v29;
  *(&v29 - 3) = v10;
  *(&v29 - 2) = v18;

  v21 = sub_1004B5214(sub_1004B6008, (&v29 - 6), v20);
  v22 = *(v21 + 16);
  if (v22)
  {
    v36 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v23 = v21 + 32;
    do
    {
      sub_10000B0D8(v23, v35);
      sub_10000C36C(v35, v35[3]);
      v24 = dispatch thunk of TTRReminderProtocol.objectID.getter();
      REMObjectID.codable.getter();

      sub_100004758(v35);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v23 += 40;
      --v22;
    }

    while (v22);

    v25 = v36;
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  v26 = sub_10001D694(v25, &type metadata accessor for REMObjectID_Codable, &qword_100786580, &type metadata accessor for REMObjectID_Codable, sub_10058BD80);

  v27 = v33;
  v28 = *(v32 + 8);
  v28(v18, v33);
  v28(v34, v27);
  return v26;
}

uint64_t sub_1004B599C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v35 = a3;
  v31 = a2;
  v5 = sub_100058000(&qword_100786588);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for REMHashtagLabelCollection();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C(a1, a1[3]);
  dispatch thunk of TTRReminderProtocol.ttrHashtagContext.getter();
  v12 = v34;
  if (!v34)
  {
    sub_1004B66E8(v33);
    return v12 & 1;
  }

  v29 = v9;
  v30 = v8;
  sub_10000C36C(v33, v34);
  v13 = dispatch thunk of TTRReminderHashtagContextProtocol.hashtags.getter();
  sub_100004758(v33);
  v33[0] = v13;

  sub_100058000(&qword_100775900);
  sub_1004B67B4();
  v28 = v11;
  REMHashtagLabelCollection.init<A>(hashtags:)();
  v14 = REMHashtagLabelCollection.isEmpty.getter();
  v15 = REMHashtagLabelCollection.isEmpty.getter();
  v16 = *(v5 + 48);
  v17 = *(v5 + 64);
  v18 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v7, v31, v18);
  v7[v16] = (v14 & 1) == 0;
  v7[v17] = (v15 & 1) == 0;
  v20 = (*(v19 + 88))(v7, v18);
  if (v20 == enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:))
  {

    if ((v14 & 1) == 0)
    {
      v23 = v28;
      v24 = REMHashtagLabelCollection.isSuperset(of:)();
      v22 = v29;
      v21 = v30;
      if (!(v15 & 1 | ((v24 & 1) == 0)))
      {
        goto LABEL_16;
      }

      v12 = v15 & v24;
LABEL_20:
      (*(v22 + 8))(v23, v21);
      return v12 & 1;
    }

    v22 = v29;
    v21 = v30;
    if ((v15 & 1) == 0)
    {
      v23 = v28;
LABEL_16:
      v12 = REMHashtagLabelCollection.isDisjoint(with:)();
      goto LABEL_20;
    }

LABEL_10:
    v12 = 0;
    v23 = v28;
    goto LABEL_20;
  }

  if (v20 == enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:))
  {

    v22 = v29;
    v21 = v30;
    if (v14)
    {
      if (v15)
      {
        goto LABEL_10;
      }

      v23 = v28;
    }

    else
    {
      v23 = v28;
      v25 = REMHashtagLabelCollection.isDisjoint(with:)();
      if (v15)
      {
LABEL_19:
        v12 = v25 ^ 1;
        goto LABEL_20;
      }

      if ((v25 & 1) == 0)
      {
        v12 = 1;
        goto LABEL_20;
      }
    }

    v25 = REMHashtagLabelCollection.isDisjoint(with:)();
    goto LABEL_19;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t TTRReminderIDsWithMatchingHashtagsProvider.fetchAllTaggedReminderIDs()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_10000B0D8(v2, &v17);
      sub_10000C36C(&v17, v18);
      dispatch thunk of TTRReminderProtocol.ttrHashtagContext.getter();
      if (v16)
      {
        sub_10000C36C(&v15, v16);
        v4 = dispatch thunk of TTRReminderHashtagContextProtocol.hashtags.getter();
        sub_100004758(&v15);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = __CocoaSet.count.getter();
        }

        else
        {
          v5 = *(v4 + 16);
        }

        if (v5)
        {
          sub_10008687C(&v17, &v15);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v19 = v3;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004A2634(0, v3[2] + 1, 1);
            v3 = v19;
          }

          v8 = v3[2];
          v7 = v3[3];
          if (v8 >= v7 >> 1)
          {
            sub_1004A2634((v7 > 1), v8 + 1, 1);
            v3 = v19;
          }

          v3[2] = v8 + 1;
          sub_10008687C(&v15, &v3[5 * v8 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        sub_1004B66E8(&v15);
      }

      sub_100004758(&v17);
LABEL_5:
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_17;
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_17:
  v9 = v3[2];
  if (v9)
  {
    *&v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = (v3 + 4);
    do
    {
      sub_10000B0D8(v10, &v17);
      sub_10000C36C(&v17, v18);
      v11 = dispatch thunk of TTRReminderProtocol.objectID.getter();
      REMObjectID.codable.getter();

      sub_100004758(&v17);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 40;
      --v9;
    }

    while (v9);

    v12 = v15;
  }

  else
  {

    v12 = _swiftEmptyArrayStorage;
  }

  v13 = sub_10001D694(v12, &type metadata accessor for REMObjectID_Codable, &qword_100786580, &type metadata accessor for REMObjectID_Codable, sub_10058BD80);

  return v13;
}

uint64_t sub_1004B602C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10001DE0C(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item);
  result = Set.init(minimumCapacity:)();
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
      v12(v5, v14, v2);
      sub_10058BFA8(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1004B61FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10058CBA4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1004B6294(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10001DE0C(&qword_100769AC0, &type metadata accessor for IndexPath);
  result = Set.init(minimumCapacity:)();
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
      sub_10058CCF4(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1004B64CC(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_1004B654C(uint64_t a1)
{
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10001DE0C(&qword_100786578, &type metadata accessor for TTRListOrCustomSmartList);
  result = Set.init(minimumCapacity:)();
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
      sub_10058DBF8(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1004B66E8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100769998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004B6760()
{
  result = qword_100786570;
  if (!qword_100786570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786570);
  }

  return result;
}

unint64_t sub_1004B67B4()
{
  result = qword_100770918;
  if (!qword_100770918)
  {
    sub_10005D20C(&qword_100775900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100770918);
  }

  return result;
}

void sub_1004B6830()
{
  _StringGuts.grow(_:)(16);
  v0 = TTRAppBundleIdentifier.getter();
  v2 = v1;

  v3._countAndFlagsBits = 0x616E7265746E692ELL;
  v3._object = 0xEE007473696C2E6CLL;
  String.append(_:)(v3);
  qword_100786590 = v0;
  *algn_100786598 = v2;
}

uint64_t type metadata accessor for TTRIAccountsListsDragItem()
{
  result = qword_1007865C8;
  if (!qword_1007865C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004B69B4()
{
  result = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
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

id sub_1004B6E68(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  _Block_copy(a4);
  if (qword_100767378 != -1)
  {
    swift_once();
  }

  v13 = qword_100786590 == a1 && *algn_100786598 == a2;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v14 = objc_opt_self();
    aBlock = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    aBlock = 0xD00000000000001ALL;
    v30 = 0x800000010067EBB0;
    v15 = qword_100786590;
    v16 = *algn_100786598;

    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);

    v18 = String._bridgeToObjectiveC()();

    v19 = [v14 internalErrorWithDebugDescription:v18];

LABEL_9:
    v20 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v20);

    return 0;
  }

  sub_100070538();
  if ((static NSItemProviderWriting.canWriteTypeIdentifier(_:)() & 1) == 0)
  {
    v26 = objc_opt_self();
    aBlock = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    aBlock = 0xD00000000000001CLL;
    v30 = 0x80000001006893D0;
    v27._countAndFlagsBits = a1;
    v27._object = a2;
    String.append(_:)(v27);
    v28 = String._bridgeToObjectiveC()();

    v19 = [v26 internalErrorWithDebugDescription:v28];

    goto LABEL_9;
  }

  v22 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  (*(v9 + 16))(v11, a3 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsDragItem_listState, v8);
  v32 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v33 = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  sub_1000317B8(&aBlock);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  sub_100004758(&aBlock);
  v23 = String._bridgeToObjectiveC()();
  v33 = sub_1002354C8;
  v34 = v12;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1005AA69C;
  v32 = &unk_10072B6D0;
  v24 = _Block_copy(&aBlock);

  v25 = [v22 loadDataWithTypeIdentifier:v23 forItemProviderCompletionHandler:v24];
  _Block_release(v24);

  return v25;
}

uint64_t sub_1004B7278()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007865F0);
  v1 = sub_100003E30(v0, qword_1007865F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B7340()
{
  v1 = *(v0 + 24);
  if (v1 && *(v1 + 24) == 1)
  {
    *(v1 + 24) = 0;
    if (*(v1 + 16))
    {

      AnyCancellable.cancel()();
    }

    else
    {
    }

    v2 = type metadata accessor for PromiseError();
    sub_10016CE9C();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for PromiseError.cancelled(_:), v2);
    DeferredPromise.reject(_:)();
  }

  return v0;
}

uint64_t sub_1004B744C()
{
  sub_1004B7340();

  return swift_deallocClassInstance();
}

uint64_t sub_1004B74E4(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    *(result + 24) = 0;
    if (*(result + 16))
    {

      AnyCancellable.cancel()();
    }

    v2 = type metadata accessor for PromiseError();
    sub_10016CE9C();
    swift_allocError();
    (*(*(v2 - 8) + 104))(v3, enum case for PromiseError.cancelled(_:), v2);
    DeferredPromise.reject(_:)();
  }

  return result;
}

uint64_t sub_1004B75C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1004B7628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  sub_10000794C(a1, &v20 - v8, &qword_100772140);
  v10 = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.RemindersInsertionRequest(0);
  v11 = swift_allocObject();
  v12 = (v11 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_additionalSubjectFilter);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___creationTarget;
  v14 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  (*(*(v14 - 8) + 56))(v11 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___actualInsertionLocation;
  v16 = sub_100058000(&qword_10076C6F8);
  (*(*(v16 - 8) + 56))(v11 + v15, 1, 1, v16);
  *(v11 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder) = 2;
  sub_100016588(v9, v11 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_parent, &qword_100772140);
  *(v11 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_childIndex) = a2;
  *(v11 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability) = v3;
  v17 = (v11 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_additionalSubjectFilter);
  v18 = *(v11 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_additionalSubjectFilter);
  *v17 = sub_1004BE128;
  v17[1] = v11;

  result = sub_1000301AC(v18);
  a3[3] = v10;
  a3[4] = &off_10072B728;
  *a3 = v11;
  return result;
}

uint64_t sub_1004B7834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v30 = a2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v29 = *(v5 + 64);
  __chkstk_darwin(v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = *(v5 + 16);
  v10(&v27 - v8, a1, v4);
  (*(v5 + 56))(v9, 0, 1, v4);
  v11 = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.RemindersInsertionRequest(0);
  v12 = swift_allocObject();
  v13 = (v12 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_additionalSubjectFilter);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___creationTarget;
  v15 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  (*(*(v15 - 8) + 56))(v12 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___actualInsertionLocation;
  v17 = sub_100058000(&qword_10076C6F8);
  (*(*(v17 - 8) + 56))(v12 + v16, 1, 1, v17);
  *(v12 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder) = 2;
  sub_100016588(v9, v12 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_parent, &qword_100772140);
  *(v12 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_childIndex) = 0;
  *(v12 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability) = v2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v28;
  v10(v28, v27, v4);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = (v29 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v5 + 32))(v22 + v20, v19, v4);
  *(v22 + v21) = v18;
  v23 = (v12 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_additionalSubjectFilter);
  v24 = *(v12 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_additionalSubjectFilter);
  *v23 = sub_1004BE07C;
  v23[1] = v22;

  sub_1000301AC(v24);

  v26 = v30;
  v30[3] = v11;
  v26[4] = &off_10072B728;
  *v26 = v12;
  return result;
}

uint64_t sub_1004B7B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100786A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000B0D8(a1, v18);
  sub_100058000(&qword_100773368);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_1004BDFAC(v6, v10, type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem);
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v10, v13);
    sub_1004BE014(v10, type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000079B4(v6, &qword_100786A40);
    v16 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

uint64_t sub_1004B7E10()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100786768);
  v1 = sub_100003E30(v0, qword_100786768);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004B7ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  v8 = sub_1004B91A4();
  v10 = v8;
  if (v8)
  {
    v11 = v9;
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 8))(a2, ObjectType, v11);
    swift_unknownObjectRelease();

    v14 = TTRRemindersListTreeViewModel.numberOfSubtasks(of:)();

    v10 = v14 > 0;
  }

  else
  {
    v13 = 0;
  }

  v15 = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
  *(a3 + v15[5]) = v10;
  *(a3 + v15[6]) = sub_1004B9298(v13);
  if (sub_1004B91A4())
  {
    v17 = v16;
    v18 = swift_getObjectType();
    v19 = (*(v17 + 16))(a2, a1, v18, v17);

    swift_unknownObjectRelease();
  }

  else
  {

    v19 = 0;
  }

  result = (*(v7 + 8))(a1, v6);
  *(a3 + v15[7]) = v19;
  return result;
}

uint64_t sub_1004B80B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - v11;
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  sub_1004B8514(v4);
  v15 = sub_100058000(&qword_10076C708);
  if ((*(*(v15 - 8) + 48))(v4, 1, v15))
  {
    sub_1000079B4(v4, &qword_10076C6F8);
LABEL_3:
    v16 = enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
    v17 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
    return (*(*(v17 - 8) + 104))(a1, v16, v17);
  }

  v19 = *(v6 + 16);
  v19(v12, v4, v5);
  sub_1000079B4(v4, &qword_10076C6F8);
  (*(v6 + 32))(v14, v12, v5);
  v19(v9, v14, v5);
  v20 = (*(v6 + 88))(v9, v5);
  if (v20 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    v21 = *(v6 + 8);
    v21(v14, v5);
    v22 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
LABEL_9:
    v23 = *v22;
    v24 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
    (*(*(v24 - 8) + 104))(a1, v23, v24);
    return (v21)(v9, v5);
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.section(_:) || v20 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    v21 = *(v6 + 8);
    v21(v14, v5);
    v22 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    goto LABEL_9;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v20 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v20 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v20 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v20 == enum case for TTRRemindersListViewModel.Item.tip(_:))
  {
    v25 = *(v6 + 8);
    v25(v14, v5);
    v25(v9, v5);
    goto LABEL_3;
  }

  if (v20 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v20 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
  {
    (*(v6 + 8))(v14, v5);
    goto LABEL_3;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1004B8514@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100773358);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___actualInsertionLocation;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100773358);
  v10 = sub_100058000(&qword_10076C6F8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &qword_10076C6F8);
  }

  sub_1000079B4(v8, &qword_100773358);
  sub_1004BAA2C(v1, a1);
  sub_10000794C(a1, v6, &qword_10076C6F8);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v6, v1 + v9, &qword_100773358);
  return swift_endAccess();
}

uint64_t sub_1004B8724@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v64 = a4;
  v65 = a2;
  v5 = sub_100058000(&qword_1007758D0);
  __chkstk_darwin(v5 - 8);
  v54 = &v53 - v6;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v53 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v56 = a1;
  sub_10000C36C(a1, v22);
  v24 = (*(v23 + 24))(v22, v23);
  if (!v24)
  {
    (*(v12 + 16))(v15, v65, v11);
    goto LABEL_8;
  }

  v25 = v24;
  v26 = v65;
  v57 = *(v12 + 16);
  v57(v17, v65, v11);
  if ((*(v12 + 88))(v17, v11) != enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {

    (*(v12 + 8))(v17, v11);
    v30 = v57;
    goto LABEL_7;
  }

  (*(v12 + 96))(v17, v11);
  v27 = *(v19 + 32);
  v53 = v18;
  v27(v21, v17, v18);
  sub_100003540(0, &qword_100775690);
  v28 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v29 = static NSObject.== infix(_:_:)();

  v26 = v65;
  (*(v19 + 8))(v21, v53);
  v30 = v57;
  if ((v29 & 1) == 0)
  {
LABEL_7:
    v30(v15, v26, v11);
LABEL_8:
    if ((*(v12 + 88))(v15, v11) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v12 + 96))(v15, v11);
      v33 = v61;
      v32 = v62;
      v34 = v63;
      (*(v62 + 32))(v61, v15, v63);
      v35 = v58;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      v37 = v59;
      v36 = v60;
      if ((*(v59 + 88))(v35, v60) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
      {
        (*(v37 + 96))(v35, v36);
        v38 = *v35;
        v39 = v56[3];
        v40 = v56[4];
        sub_10000C36C(v56, v39);
        v41 = (*(v40 + 8))(v39, v40);
        if (v41)
        {
          v42 = v41;
          swift_beginAccess();
          if (!swift_weakLoadStrong())
          {
            goto LABEL_20;
          }

          v43 = [v42 objectID];
          v44 = v54;
          sub_1004B8E98(v43, v54);
          v45 = v44;

          v46 = type metadata accessor for TTRSectionID();
          v47 = *(v46 - 8);
          if ((*(v47 + 48))(v45, 1, v46) == 1)
          {

            sub_1000079B4(v45, &qword_1007758D0);
LABEL_21:
            (*(v32 + 8))(v33, v34);
            goto LABEL_22;
          }

          v48 = TTRSectionID.remObjectID.getter();
          (*(v47 + 8))(v45, v46);
          if (!v48)
          {
LABEL_20:

            goto LABEL_21;
          }

          sub_100003540(0, &qword_100775690);
          v49 = static NSObject.== infix(_:_:)();

          (*(v32 + 8))(v33, v34);
          if (v49)
          {
            goto LABEL_4;
          }
        }

        else
        {
          (*(v32 + 8))(v33, v34);
        }
      }

      else
      {
        (*(v32 + 8))(v33, v34);
        (*(v37 + 8))(v35, v36);
      }
    }

    else
    {
      (*(v12 + 8))(v15, v11);
    }

LABEL_22:
    v31 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    goto LABEL_23;
  }

LABEL_4:
  v31 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
LABEL_23:
  v50 = *v31;
  v51 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
  return (*(*(v51 - 8) + 104))(v64, v50, v51);
}

uint64_t sub_1004B8E98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  *(inited + 32) = a1;
  v6 = a1;
  v7 = sub_10001D5F8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (!sub_1004B91A4())
  {
LABEL_6:

    goto LABEL_7;
  }

  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = (*(v9 + 48))(v2, v7, ObjectType, v9);

  swift_unknownObjectRelease();
  if (v11)
  {
    if (*(v11 + 16))
    {
      v12 = sub_1002613B0(v6);
      if (v13)
      {
        v14 = v12;
        v15 = *(v11 + 56);
        v16 = type metadata accessor for TTRSectionID();
        v17 = *(v16 - 8);
        (*(v17 + 16))(a2, v15 + *(v17 + 72) * v14, v16);

        return (*(v17 + 56))(a2, 0, 1, v16);
      }
    }

    goto LABEL_6;
  }

LABEL_7:
  v19 = type metadata accessor for TTRSectionID();
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

uint64_t sub_1004B90A8(uint64_t a1, uint64_t a2)
{
  if (!sub_1004B91A4())
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_5;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  (*(v5 + 32))(&v11, a2, a1, ObjectType, v5);
  swift_unknownObjectRelease();
  if (!*(&v12 + 1))
  {
LABEL_5:
    sub_1000079B4(&v11, &qword_100786A50);
    v9 = 0;
    return v9 & 1;
  }

  sub_100005FD0(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_10000C36C(v14, v15);
  v9 = (*(v8 + 8))(v7, v8);
  sub_100004758(v14);
  return v9 & 1;
}

uint64_t sub_1004B91A4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    if (qword_100767388 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_100786768);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Missing TTRShowRemindersInListDragAndDropPresenterCapabilityDelegate", v4, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004B9298(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    goto LABEL_6;
  }

  TTRRemindersListTreeViewModel.parent(of:)();
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
LABEL_6:
    sub_1000079B4(v4, &qword_100772140);
    return 0;
  }

  if ((*(v10 + 88))(v4, v9) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*(v10 + 96))(v4, v9);
    (*(v6 + 32))(v8, v4, v5);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    (*(v6 + 8))(v8, v5);
    return v11;
  }

  (*(v10 + 8))(v4, v9);
  return 0;
}

void *sub_1004B950C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

void *sub_1004B9544(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  v3 = v2;
  return v2;
}

uint64_t sub_1004B9570@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100773370);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___creationTarget;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100773370);
  v10 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1004BDFAC(v8, a1, type metadata accessor for TTRRemindersListReminderActionTarget);
  }

  sub_1000079B4(v8, &qword_100773370);
  sub_1004B9768(v1, a1);
  sub_1001DE1DC(a1, v5);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v5, v1 + v9, &qword_100773370);
  return swift_endAccess();
}

uint64_t sub_1004B9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v4 - 8);
  v67 = &v63 - v5;
  v70 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v72 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v8 - 8);
  v10 = &v63 - v9;
  v11 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v11 - 8);
  v13 = &v63 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v21 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v23 = 0;
  swift_storeEnumTagMultiPayload();
  v74 = a1;
  sub_1004B8514(v10);
  v24 = sub_100058000(&qword_10076C708);
  if ((*(*(v24 - 8) + 48))(v10, 1, v24) == 1)
  {
    sub_1000079B4(v10, &qword_10076C6F8);
    v25 = v23;
    v26 = a2;
    return sub_1004BDFAC(v25, v26, type metadata accessor for TTRRemindersListReminderActionTarget);
  }

  v66 = a2;
  v27 = *(v15 + 32);
  v27(v13, v10, v14);
  v27(v20, v13, v14);
  (*(v15 + 16))(v17, v20, v14);
  v28 = (*(v15 + 88))(v17, v14);
  v29 = v15;
  if (v28 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:) || v28 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v65 = v20;
    (*(v15 + 96))(v17, v14);
    v35 = v72;
    v36 = v73;
    v37 = v71;
    (*(v73 + 32))(v72, v17, v71);
    v38 = v74;
    if (sub_1004BA9E8())
    {
      (*(v36 + 8))(v35, v37);
      (*(v29 + 8))(v65, v14);
LABEL_38:
      v25 = v23;
      v26 = v66;
      return sub_1004BDFAC(v25, v26, type metadata accessor for TTRRemindersListReminderActionTarget);
    }

    v39 = v68;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v40 = v69;
    v41 = v70;
    v42 = (*(v69 + 88))(v39, v70);
    if (v42 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
    {
      goto LABEL_32;
    }

    if (v42 != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      if (v42 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v42 == enum case for TTRRemindersListViewModel.SectionID.date(_:) || v42 == enum case for TTRRemindersListViewModel.SectionID.day(_:) || v42 == enum case for TTRRemindersListViewModel.SectionID.month(_:) || v42 == enum case for TTRRemindersListViewModel.SectionID.year(_:) || v42 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
      {
LABEL_32:
        (*(v40 + 8))(v39, v41);
LABEL_33:
        v55 = *(v38 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);
        if (sub_1004B91A4())
        {
          v57 = v56;
          ObjectType = swift_getObjectType();
          v59 = v72;
          (*(v57 + 32))(&v75, v55, v72, ObjectType, v57);
          swift_unknownObjectRelease();
          (*(v73 + 8))(v59, v37);
          if (*(&v76 + 1))
          {
            sub_100005FD0(&v75, &v78);
            v60 = v80;
            v61 = v81;
            sub_10000C36C(&v78, v80);
            (*(v61 + 16))(v60, v61);
            (*(v29 + 8))(v65, v14);
            sub_1004BE014(v23, type metadata accessor for TTRRemindersListReminderActionTarget);
            return sub_100004758(&v78);
          }
        }

        else
        {
          (*(v73 + 8))(v72, v37);
          v77 = 0;
          v75 = 0u;
          v76 = 0u;
        }

        (*(v29 + 8))(v65, v14);
        sub_1000079B4(&v75, &qword_100786A50);
        goto LABEL_38;
      }

      if (v42 != enum case for TTRRemindersListViewModel.SectionID.sectionless(_:) && v42 != enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_48;
      }
    }

    v64 = v14;
    (*(v40 + 96))(v39, v41);
    v45 = v38;
    v46 = *v39;
    v47 = *(v45 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);
    if (sub_1004B91A4())
    {
      v49 = v48;
      v50 = swift_getObjectType();
      v51 = v67;
      (*(v49 + 40))(v47, v46, v50, v49);
      swift_unknownObjectRelease();

      v52 = type metadata accessor for TTRSection();
      v53 = *(v52 - 8);
      if ((*(v53 + 48))(v51, 1, v52) != 1)
      {
        (*(v73 + 8))(v72, v71);
        (*(v29 + 8))(v65, v64);
        sub_1004BE014(v23, type metadata accessor for TTRRemindersListReminderActionTarget);
        (*(v53 + 32))(v66, v51, v52);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {

      v62 = type metadata accessor for TTRSection();
      v51 = v67;
      (*(*(v62 - 8) + 56))(v67, 1, 1, v62);
    }

    sub_1000079B4(v51, &unk_100775960);
    v14 = v64;
    v38 = v74;
    v37 = v71;
    goto LABEL_33;
  }

  if (v28 != enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    v43 = v66;
    if (v28 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v28 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v28 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v28 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      v44 = *(v15 + 8);
      v44(v20, v14);
      v44(v17, v14);
LABEL_19:
      v25 = v23;
      v26 = v43;
      return sub_1004BDFAC(v25, v26, type metadata accessor for TTRRemindersListReminderActionTarget);
    }

    if (v28 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v28 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      (*(v15 + 8))(v20, v14);
      goto LABEL_19;
    }

LABEL_48:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  sub_1004BA368(v20, &v75);
  v30 = *(v15 + 8);
  v30(v20, v14);
  v31 = v66;
  if (v75)
  {
    sub_1004BE014(v23, type metadata accessor for TTRRemindersListReminderActionTarget);
    v78 = v75;
    sub_100005FD0((&v75 + 8), &v79);
    v32 = v78;
    sub_100005FD0(&v79, v82);
    v33 = v83;
    v34 = v84;
    sub_10000C36C(v82, v83);
    (*(v34 + 24))(v32, v33, v34);

    sub_100004758(v82);
  }

  else
  {
    sub_1000079B4(&v75, &qword_100786A48);
    sub_1004BDFAC(v23, v31, type metadata accessor for TTRRemindersListReminderActionTarget);
  }

  return (v30)(v17, v14);
}

uint64_t sub_1004BA368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v55 = v49 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v52 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);
  result = sub_1004B91A4();
  if (!result)
  {
    goto LABEL_14;
  }

  v19 = v18;
  v56 = v12;
  v57 = v13;
  ObjectType = swift_getObjectType();
  v21 = v16;
  v22 = (*(v19 + 8))(v16, ObjectType, v19);
  swift_unknownObjectRelease();
  (*(v9 + 16))(v11, v58, v8);
  v23 = *(v9 + 88);
  if (v23(v11, v8) != enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {

    result = (*(v9 + 8))(v11, v8);
    goto LABEL_14;
  }

  v50 = v23;
  v51 = a2;
  v24 = *(v9 + 96);
  v49[1] = v9 + 96;
  v49[0] = v24;
  v24(v11, v8);
  v25 = v22;
  v26 = v57;
  v27 = v15;
  v28 = v11;
  v29 = v56;
  (*(v57 + 32))(v15, v28, v56);
  if ((TTRRemindersListTreeViewModel.isTopLevelReminder(_:)() & 1) == 0)
  {
    (*(v26 + 8))(v15, v29);

    goto LABEL_13;
  }

  v49[2] = v25;
  v30 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v31 = v16;
  v33 = v27;
  if (!sub_1004B91A4())
  {

    goto LABEL_12;
  }

  v34 = v32;
  v35 = swift_getObjectType();
  v36 = (*(v34 + 24))(v21, v30, v35, v34);

  swift_unknownObjectRelease();
  if (!v36)
  {
LABEL_12:

    result = (*(v57 + 8))(v27, v56);
    goto LABEL_13;
  }

  v37 = [v36 subtaskContext];
  if (!v37)
  {

    goto LABEL_12;
  }

  v38 = v55;
  TTRRemindersListTreeViewModel.parent(of:)();
  if ((*(v9 + 48))(v38, 1, v8) == 1)
  {
    (*(v57 + 8))(v27, v56);

    result = sub_1000079B4(v38, &qword_100772140);
LABEL_13:
    a2 = v51;
    goto LABEL_14;
  }

  if (v50(v38, v8) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v57 + 8))(v27, v56);

    result = (*(v9 + 8))(v38, v8);
    goto LABEL_13;
  }

  v39 = v36;
  (v49[0])(v38, v8);
  v41 = v52;
  v40 = v53;
  v42 = v54;
  (*(v53 + 32))(v52, v38, v54);
  v43 = sub_1004B91A4();
  v46 = v56;
  v45 = v57;
  if (v43)
  {
    v47 = v44;
    v48 = swift_getObjectType();
    (*(v47 + 32))(&v59, v31, v41, v48, v47);
    swift_unknownObjectRelease();

    (*(v40 + 8))(v41, v42);
    (*(v45 + 8))(v33, v46);
    a2 = v51;
    if (*(&v60 + 1))
    {
      sub_100005FD0(&v59, v62);
      *a2 = v39;
      return sub_100005FD0(v62, a2 + 8);
    }
  }

  else
  {

    (*(v40 + 8))(v41, v42);
    (*(v45 + 8))(v33, v46);
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    a2 = v51;
  }

  result = sub_1000079B4(&v59, &qword_100786A50);
LABEL_14:
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1004BA9E8()
{
  v1 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder;
  v2 = *(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___isAfterPlaceholderReminder);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_1004BB61C(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1004BAA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = type metadata accessor for TTRRemindersListViewModel.Item();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140);
  v5 = __chkstk_darwin(v4 - 8);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v36 - v7;
  v9 = sub_100058000(&qword_10076FA28);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - v11;
  v13 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = sub_100058000(&qword_100773320);
  v41 = *(v16 - 8);
  __chkstk_darwin(v16);
  v38 = &v36 - v17;
  v18 = *(a1 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);
  if (sub_1004B91A4())
  {
    v20 = v19;
    ObjectType = swift_getObjectType();
    (*(v20 + 8))(v18, ObjectType, v20);
    swift_unknownObjectRelease();
    sub_10000794C(a1 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_parent, v8, &qword_100772140);
    sub_10040FBA0();
    v22 = v42;
    TTRDerivedTreeLocation.init(parent:index:)();
    TTRRemindersListTreeViewModel.actualInsertionLocation(at:)();
    (*(v10 + 8))(v12, v9);
    v23 = v41;
    if ((*(v41 + 48))(v15, 1, v16) == 1)
    {

      v24 = &qword_100773318;
      v25 = v15;
    }

    else
    {
      v26 = v38;
      (*(v23 + 32))(v38, v15, v16);
      v27 = v39;
      TTRBaseTreeLocation.parent.getter();
      v28 = v40;
      if ((*(v40 + 48))(v27, 1, v22) != 1)
      {
        v31 = v37;
        (*(v28 + 32))(v37, v27, v22);
        v32 = sub_100058000(&qword_10076C708);
        v33 = v23;
        v39 = *(v32 + 48);
        v34 = v43;
        (*(v28 + 16))(v43, v31, v22);
        v35 = TTRBaseTreeLocation.index.getter();

        (*(v28 + 8))(v31, v22);
        (*(v33 + 8))(v26, v16);
        *&v39[v34] = v35;
        return (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
      }

      (*(v23 + 8))(v26, v16);

      v24 = &qword_100772140;
      v25 = v27;
    }

    sub_1000079B4(v25, v24);
  }

  v29 = sub_100058000(&qword_10076C708);
  return (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
}

uint64_t sub_1004BAF98(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v46 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  sub_10000C36C(a1, v13);
  v15 = (*(v14 + 8))(v13, v14);
  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = v15;
  (*(v7 + 16))(v9, a2, v6);
  v17 = (*(v7 + 88))(v9, v6);
  if (v17 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:) || v17 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v7 + 96))(v9, v6);
    v19 = v46;
    (*(v46 + 32))(v12, v9, v10);
    v20 = v47;
    if (sub_1004BA9E8())
    {
      (*(v19 + 8))(v12, v10);

LABEL_27:
      v35 = 0;
      return v35 & 1;
    }

    v29 = *(v20 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);
    if (sub_1004B91A4())
    {
      v31 = v30;
      ObjectType = swift_getObjectType();
      (*(v31 + 32))(&v48, v29, v12, ObjectType, v31);
      swift_unknownObjectRelease();
      (*(v19 + 8))(v12, v10);
      if (*(&v49 + 1))
      {
        sub_100005FD0(&v48, &v51);
        v33 = v53;
        v34 = v54;
        sub_10000C36C(&v51, v53);
        v35 = (*(v34 + 32))(v16, v33, v34);

        sub_100004758(&v51);
        return v35 & 1;
      }
    }

    else
    {
      (*(v19 + 8))(v12, v10);
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    v36 = &qword_100786A50;
    goto LABEL_26;
  }

  if (v17 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    v46 = a2;
    (*(v7 + 96))(v9, v6);
    v22 = v44;
    v21 = v45;
    v23 = v43;
    (*(v44 + 32))(v43, v9, v45);
    v24 = [v16 objectID];
    v25 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    sub_100003540(0, &qword_10076BA50);
    v26 = static NSObject.== infix(_:_:)();

    if (v26 & 1) != 0 || (v27 = a1[3], v28 = a1[4], sub_10000C36C(a1, v27), ((*(v28 + 16))(v27, v28)))
    {
      (*(v22 + 8))(v23, v21);
LABEL_13:

      goto LABEL_27;
    }

    sub_1004BA368(v46, &v48);
    if (v48)
    {
      v51 = v48;
      sub_100005FD0((&v48 + 8), &v52);
      v38 = v51;
      sub_100005FD0(&v52, v55);
      v39 = v23;
      v40 = v56;
      v41 = v57;
      sub_10000C36C(v55, v56);
      v35 = (*(v41 + 40))(v16, v38, v40, v41);

      (*(v22 + 8))(v39, v21);
      sub_100004758(v55);
      return v35 & 1;
    }

    (*(v22 + 8))(v23, v21);

    v36 = &qword_100786A48;
LABEL_26:
    sub_1000079B4(&v48, v36);
    goto LABEL_27;
  }

  if (v17 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v17 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v17 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v17 == enum case for TTRRemindersListViewModel.Item.tip(_:))
  {

    (*(v7 + 8))(v9, v6);
    goto LABEL_27;
  }

  if (v17 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v17 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
  {
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

BOOL sub_1004BB61C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  if (*(a1 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_childIndex) < 1)
  {
    return 0;
  }

  v12 = *(a1 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);
  if (!sub_1004B91A4())
  {
    return 0;
  }

  v14 = v13;
  ObjectType = swift_getObjectType();
  (*(v14 + 8))(v12, ObjectType, v14);
  swift_unknownObjectRelease();
  v16 = TTRRemindersListTreeViewModel.presentationTree.getter();

  swift_getObjectType();
  v20[1] = v16;
  dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
  swift_unknownObjectRelease();
  v17 = *(v3 + 32);
  v17(v11, v8, v2);
  v17(v5, v11, v2);
  v18 = (*(v3 + 88))(v5, v2) == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
  (*(v3 + 8))(v5, v2);
  return v18;
}

uint64_t sub_1004BB858()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_parent, &qword_100772140);

  sub_1000301AC(*(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_additionalSubjectFilter));
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___creationTarget, &qword_100773370);
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest____lazy_storage___actualInsertionLocation, &qword_100773358);

  return swift_deallocClassInstance();
}

uint64_t sub_1004BB978@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = (*v2 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_additionalSubjectFilter);
  v6 = *v5;
  v7 = v5[1];
  v8 = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.RemindersInsertionPlan(0);
  swift_allocObject();

  sub_10003BE34(v6);

  v10 = sub_1004BDE30(v9, a1, v6, v7);
  sub_1000301AC(v6);

  a2[3] = v8;
  a2[4] = &off_10072B6F8;
  *a2 = v10;
  return result;
}

uint64_t sub_1004BBA40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_100773380);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan____lazy_storage___position;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100773380);
  v10 = sub_100058000(&qword_10076C700);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &qword_10076C700);
  }

  sub_1000079B4(v8, &qword_100773380);
  sub_1004BBC50(v1, a1);
  sub_10000794C(a1, v5, &qword_10076C700);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v5, v1 + v9, &qword_100773380);
  return swift_endAccess();
}

uint64_t sub_1004BBC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v42 = &v39 - v4;
  v46 = sub_100058000(&qword_100773320);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v39 - v5;
  v6 = sub_100058000(&qword_100773388);
  __chkstk_darwin(v6 - 8);
  v45 = &v39 - v7;
  v8 = sub_100058000(&qword_100773390);
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v41 = &v39 - v9;
  v10 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v20 = *(*(a1 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);

  if (sub_1004B91A4())
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v20, ObjectType, v22);

    swift_unknownObjectRelease();
    sub_1004B8514(v12);
    v24 = sub_100058000(&qword_10076C708);
    if ((*(*(v24 - 8) + 48))(v12, 1, v24) == 1)
    {

      v25 = &qword_10076C6F8;
      v26 = v12;
    }

    else
    {
      v27 = *&v12[*(v24 + 48)];
      v28 = *(v13 + 48);
      v40 = v17;
      v29 = *(v17 + 32);
      v29(v15, v12, v16);
      *&v15[v28] = v27;
      v29(v19, v15, v16);
      v30 = v40;
      v31 = v42;
      (*(v40 + 16))(v42, v19, v16);
      (*(v30 + 56))(v31, 0, 1, v16);
      sub_10040FBA0();
      v32 = v43;
      TTRBaseTreeLocation.init(parent:index:)();

      v33 = v45;
      TTRRemindersListTreeViewModel.relativeInsertionPosition(forInsertingAt:skipping:)();

      (*(v44 + 8))(v32, v46);
      v35 = v47;
      v34 = v48;
      if ((*(v47 + 48))(v33, 1, v48) != 1)
      {
        v38 = v41;
        (*(v35 + 32))(v41, v33, v34);
        sub_100003540(0, &qword_10076BB00);
        TTRRelativeInsertionPosition.optionalMapSibling<A>(_:)();

        (*(v35 + 8))(v38, v34);
        return (*(v30 + 8))(v19, v16);
      }

      (*(v30 + 8))(v19, v16);

      v25 = &qword_100773388;
      v26 = v33;
    }

    sub_1000079B4(v26, v25);
  }

  else
  {
  }

  v36 = sub_100058000(&unk_100775620);
  return (*(*(v36 - 8) + 56))(v50, 1, 1, v36);
}

uint64_t sub_1004BC2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a2 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);

  if (sub_1004B91A4())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 16))(v5, a1, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_1004BC370(uint64_t a1)
{
  v62 = sub_100058000(&qword_100773328);
  v58 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v54 - v3;
  v4 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v54 - v5;
  v59 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v59 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v59);
  v55 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  __chkstk_darwin(v12);
  v56 = &v54 - v13;
  v14 = swift_allocObject();
  v63 = a1;
  *(v14 + 16) = a1;
  sub_100058000(&qword_100773330);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  *(v15 + 32) = sub_1001DE068;
  *(v15 + 40) = v14;
  v64 = v15;
  v60 = v1;
  v16 = *(*(v1 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_insertionRequest) + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = v14;
  if (!Strong)
  {

LABEL_5:
    sub_1004B8514(v6);
    v27 = sub_100058000(&qword_10076C708);
    v28 = (*(*(v27 - 8) + 48))(v6, 1, v27);
    v26 = v64;
    if (v28)
    {
      sub_1000079B4(v6, &qword_10076C6F8);
      v25 = v60;
    }

    else
    {
      v29 = *(v7 + 16);
      v30 = v59;
      v29(v11, v6, v59);
      sub_1000079B4(v6, &qword_10076C6F8);
      v54 = *(v7 + 32);
      v31 = v56;
      v54(v56, v11, v30);
      v32 = swift_allocObject();
      v25 = v60;
      swift_weakInit();
      v33 = v55;
      v29(v55, v31, v30);
      v34 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      v54((v35 + v34), v33, v30);
      v26 = v64;
      v37 = v64[2];
      v36 = v64[3];
      if (v37 >= v36 >> 1)
      {
        v26 = sub_100547370((v36 > 1), v37 + 1, 1, v64);
      }

      (*(v7 + 8))(v56, v59);
      v26[2] = v37 + 1;
      v38 = &v26[2 * v37];
      v38[4] = sub_1004BDF28;
      v38[5] = v35;
    }

    goto LABEL_10;
  }

  v18 = *(v16 + 24);
  ObjectType = swift_getObjectType();
  v54 = v8;
  v20 = v11;
  v21 = v6;
  v22 = v7;
  v23 = *(v18 + 56);

  v24 = v23(ObjectType, v18);
  v7 = v22;
  v6 = v21;
  v11 = v20;
  LOBYTE(v18) = v24;
  swift_unknownObjectRelease();
  if (v18)
  {
    goto LABEL_5;
  }

  v25 = v60;
  v26 = v64;
LABEL_10:
  v39 = *(v25 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_additionalSubjectFilter);
  if (v39)
  {
    v40 = *(v25 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_additionalSubjectFilter + 8);
    v41 = v26[2];
    v42 = v26[3];

    if (v41 >= v42 >> 1)
    {
      v26 = sub_100547370((v42 > 1), v41 + 1, 1, v26);
    }

    v26[2] = v41 + 1;
    v43 = &v26[2 * v41];
    v43[4] = v39;
    v43[5] = v40;
  }

  type metadata accessor for TTRProcessMoveSubjects();
  *&v71 = v63;
  v44 = sub_100058000(&qword_100773338);
  v45 = sub_10011763C(&qword_100773340, &qword_100773338);
  static TTRProcessMoveSubjects.process<A>(moveSubjects:disallowOverride:moveFilters:)();
  *(v25 + 24) = TTRProcessMoveSubjects.MoveResults.shouldDisallow.getter() & 1;
  *(v25 + 16) = TTRProcessMoveSubjects.MoveResults.moveSubjects.getter();

  v63 = *(v25 + 16);
  v46 = *(v63 + 16);
  if (!v46)
  {
    v48 = _swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v55 = v45;
  v56 = v44;
  v64 = v26;
  v47 = v63 + 32;

  v48 = _swiftEmptyArrayStorage;
  do
  {
    sub_10000794C(v47, &v71, &qword_100773348);
    *&v66[9] = *&v72[9];
    v65 = v71;
    *v66 = *v72;
    v49 = v72[24];
    sub_100005FD0(&v65, v67);
    if ((v49 & 1) == 0)
    {
      sub_100004758(v67);
      v70 = 0;
      v68 = 0u;
      v69 = 0u;
LABEL_17:
      sub_1000079B4(&v68, &qword_100773350);
      goto LABEL_18;
    }

    sub_100005FD0(v67, &v68);
    if (!*(&v69 + 1))
    {
      goto LABEL_17;
    }

    sub_100005FD0(&v68, &v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_10054734C(0, v48[2] + 1, 1, v48);
    }

    v51 = v48[2];
    v50 = v48[3];
    if (v51 >= v50 >> 1)
    {
      v48 = sub_10054734C((v50 > 1), v51 + 1, 1, v48);
    }

    v48[2] = v51 + 1;
    sub_100005FD0(&v65, &v48[5 * v51 + 4]);
LABEL_18:
    v47 += 48;
    --v46;
  }

  while (v46);

  v25 = v60;
LABEL_28:
  *(v25 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_filteredMoveSubjects) = v48;

  *&v71 = v48;
  v52 = Sequence.completeCompactMap<A>(_:)();

  (*(v58 + 8))(v61, v62);

  *(v25 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_filteredLocalItems) = v52;
}

void sub_1004BCC34(unint64_t *a1@<X8>)
{
  v56 = type metadata accessor for TTRSection();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_10076C700);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_100058000(&unk_100775620);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v54 - v10;
  v11 = *(v1 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_filteredMoveSubjects);
  if (v11)
  {
    v12 = _swiftEmptyArrayStorage;
    v65 = _swiftEmptyArrayStorage;
    v13 = *(v11 + 16);
    if (v13)
    {
      v57 = v9;
      *&v60 = v8;
      v14 = a1;
      v15 = v11 + 32;

      do
      {
        sub_10000B0D8(v15, v62);
        v17 = v63;
        v16 = v64;
        sub_10000C36C(v62, v63);
        v18 = (*(v16 + 8))(v17, v16);
        sub_100004758(v62);
        if (v18)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v12 = v65;
        }

        v15 += 40;
        --v13;
      }

      while (v13);

      a1 = v14;
      v8 = v60;
      v9 = v57;
    }

    if (v12 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_25;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    sub_1004BBA40(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_1000079B4(v7, &qword_10076C700);
LABEL_26:
      v33 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
      (*(*(v33 - 8) + 56))(a1, 1, 1, v33);
      return;
    }

    v19 = *(v9 + 32);
    v19(v61, v7, v8);
    v20 = *(v1 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_insertionRequest);
    v21 = v59;
    sub_1004B9570(v59);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v30 = *(v21 + 16);
          v60 = *v21;

          v31 = *(sub_100058000(&qword_100776358) + 80);
          *a1 = v12;
          *(a1 + 1) = v60;
          v19(a1 + v31, v61, v8);
          v32 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
        }

        else
        {
          *&v60 = v8;
          v58 = a1;
          v38 = *(v54 + 32);
          v38(v55, v21, v56);
          v62[0] = v12;
          sub_100058000(&qword_10076BB08);
          sub_100003540(0, &qword_10076BA50);
          sub_10011763C(&unk_1007758B0, &qword_10076BB08);
          sub_1001288B4();
          v39 = Sequence.mapToSet<A>(_:)();
          v40 = *(v20 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);

          if (sub_1004B91A4())
          {
            v42 = v41;
            ObjectType = swift_getObjectType();
            v44 = (*(v42 + 48))(v40, v39, ObjectType, v42);
            swift_unknownObjectRelease();
          }

          else
          {
            v44 = 0;
          }

          v50 = sub_100058000(&qword_100773378);
          v51 = v50[12];
          v52 = v50[16];
          v53 = v50[20];
          a1 = v58;
          *v58 = v12;
          v38(a1 + v51, v55, v56);
          v19(a1 + v52, v61, v60);
          *(a1 + v53) = v44;
          v32 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
        }
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          (*(v9 + 8))(v61, v8);

          sub_1004BE014(v21, type metadata accessor for TTRRemindersListReminderActionTarget);
          goto LABEL_26;
        }

        v36 = *v21;

        v37 = *(sub_100058000(&qword_100776360) + 64);
        *a1 = v12;
        a1[1] = v36;
        v19(a1 + v37, v61, v8);
        v32 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
      }

      goto LABEL_35;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        *&v60 = v8;
        v23 = *v21;
        v62[0] = v12;
        sub_100058000(&qword_10076BB08);
        sub_100003540(0, &qword_10076BA50);
        sub_10011763C(&unk_1007758B0, &qword_10076BB08);
        sub_1001288B4();
        v24 = Sequence.mapToSet<A>(_:)();
        v25 = *(v20 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);

        if (sub_1004B91A4())
        {
          v27 = v26;
          v28 = swift_getObjectType();
          v29 = (*(v27 + 48))(v25, v24, v28, v27);
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = 0;
        }

        v45 = sub_100058000(&qword_100776370);
        v46 = *(v45 + 64);
        v47 = *(v45 + 80);
        *a1 = v12;
        a1[1] = v23;
        v19(a1 + v46, v61, v60);
        *(a1 + v47) = v29;
        v32 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
        swift_storeEnumTagMultiPayload();
        v48 = *(*(v32 - 8) + 56);
        v49 = a1;
        goto LABEL_36;
      }

      v34 = *v21;
      v35 = *(sub_100058000(&qword_100776368) + 64);
      *a1 = v12;
      a1[1] = v34;
      v19(a1 + v35, v61, v8);
      v32 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
LABEL_35:
      swift_storeEnumTagMultiPayload();
      v48 = *(*(v32 - 8) + 56);
      v49 = a1;
LABEL_36:
      v48(v49, 0, 1, v32);
      return;
    }

    (*(v9 + 8))(v61, v8);
LABEL_25:

    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_1004BD530()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_100058000(&qword_10076FA28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  if (*(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_filteredLocalItems))
  {
    v8 = *(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_insertionRequest);
    v9 = *(v8 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_dragAndDropCapability);

    if (sub_1004B91A4())
    {
      v11 = v10;
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v9, ObjectType, v11);

      swift_unknownObjectRelease();
      sub_10000794C(v8 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C25RemindersInsertionRequest_parent, v3, &qword_100772140);
      type metadata accessor for TTRRemindersListViewModel.Item();
      sub_10040FBA0();
      TTRDerivedTreeLocation.init(parent:index:)();
      v13 = TTRRemindersListTreeViewModel.steps(forMoving:to:)();

      (*(v5 + 8))(v7, v4);
      return v13;
    }
  }

  return 0;
}

uint64_t sub_1004BD770@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v6 = sub_1004BAF98(a1, a2);

    v7 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
    if (v6)
    {
      v8 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    }

    else
    {
      v8 = &enum case for TTRProcessMoveSubjects.MoveFilterStatus.reject(_:);
    }

    return (*(*(v7 - 8) + 104))(a3, *v8, v7);
  }

  else
  {
    v9 = enum case for TTRProcessMoveSubjects.MoveFilterStatus.accept(_:);
    v10 = type metadata accessor for TTRProcessMoveSubjects.MoveFilterStatus();
    return (*(*(v10 - 8) + 104))(a3, v9, v10);
  }
}

uint64_t sub_1004BD8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
  sub_1004B7B98(a1, v6);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &qword_100772140);
    type metadata accessor for TTRSmartListDragAndDropPresenterCapability();
    return sub_1001D7B8C(a1, a2);
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    return (*(v8 + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_1004BDA10()
{

  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan____lazy_storage___position, &qword_100773380);
  sub_1000301AC(*(v0 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_additionalSubjectFilter));

  return swift_deallocClassInstance();
}

void sub_1004BDB88()
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

void sub_1004BDD30()
{
  sub_100014068(319, &unk_100773248, &qword_10076C700);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004BDE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = _swiftEmptyArrayStorage;
  *(v4 + 24) = 1;
  v9 = OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan____lazy_storage___position;
  v10 = sub_100058000(&qword_10076C700);
  (*(*(v10 - 8) + 56))(v4 + v9, 1, 1, v10);
  *(v4 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_filteredMoveSubjects) = 0;
  *(v4 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_filteredLocalItems) = 0;
  *(v4 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_insertionRequest) = a1;
  v11 = (v4 + OBJC_IVAR____TtCC9Reminders52TTRShowRemindersInListDragAndDropPresenterCapabilityP33_BB814B7023F4CD535F26EAE3B092798C22RemindersInsertionPlan_additionalSubjectFilter);
  *v11 = a3;
  v11[1] = a4;

  sub_10003BE34(a3);
  sub_1004BC370(a2);
  return v4;
}

uint64_t sub_1004BDF28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1004BD770(a1, v6, a2);
}

uint64_t sub_1004BDFAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004BE014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004BE07C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004B8724(a1, v2 + v6, v7, a2);
}

void *sub_1004BE130(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = a3[7];
    v11 = *(a2 + v10);
    *(a1 + v10) = v11;
    v12 = v9;
    v13 = v11;
  }

  return a1;
}

void sub_1004BE214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a1 + *(a2 + 28));
}

uint64_t sub_1004BE294(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = *(a2 + v9);
  *(a1 + v9) = v10;
  v11 = v8;
  v12 = v10;
  return a1;
}

uint64_t sub_1004BE32C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = v9;

  v11 = a3[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  v14 = v13;

  return a1;
}

uint64_t sub_1004BE3D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_1004BE468(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[7];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_1004BE530()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_1004BE5D4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100786AF0);
  v1 = sub_100003E30(v0, qword_100786AF0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1004BE69C()
{
  v1 = *(v0 + 88);
  v2 = (v1 + 40);
  v3 = -*(v1 + 16);
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 2;
    v6 = *v2;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 40);
    swift_unknownObjectRetain();
    v8(ObjectType, v6);
    v10 = v9;
    swift_unknownObjectRelease();
    v2 = v5;
    if (v10)
    {

      return;
    }
  }
}

uint64_t sub_1004BE768()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = sub_100406D10();
    v5 = v4;
    swift_unknownObjectRelease();
    result = 0;
    if ((v5 & 1) == 0 && (v3 & 0x8000000000000000) == 0 && v3 < *(*(v1 + 88) + 16))
    {
      return swift_unknownObjectRetain();
    }
  }

  return result;
}

void sub_1004BE7F8()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 48);
      swift_unknownObjectRetain();
      v6(ObjectType, v4);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_10000C36C(v0 + 6, v0[9]);
  sub_1000928BC();
}

uint64_t sub_1004BE89C()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758(v0 + 48);

  return swift_deallocClassInstance();
}

void sub_1004BE910()
{
  v1 = v0;
  v2 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for TTRIPopoverAnchor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v0 + 88);

  sub_100058000(&qword_100786BC0);
  sub_1004BEDE8();
  Sequence.firstMap<A>(_:)();

  if (!v28)
  {
    sub_1004BE7F8();
    return;
  }

  v25 = v8;
  v26 = v6;
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() alertControllerWithTitle:0 message:v9 preferredStyle:0];

  static TTRLocalizableStrings.Common.alertDiscardChangesButton.getter();
  v11 = swift_allocObject();
  swift_weakInit();

  v12 = String._bridgeToObjectiveC()();

  v31 = sub_1004BEF24;
  v32 = v11;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1001762CC;
  v30 = &unk_10072B898;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:2 handler:v13];
  _Block_release(v13);

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v14 actionWithTitle:v16 style:1 handler:0];

  [v10 addAction:v15];
  [v10 addAction:v17];
  if (!sub_1004BE768())
  {
    (*(v26 + 56))(v4, 1, 1, v5);
    goto LABEL_7;
  }

  v19 = v18;
  ObjectType = swift_getObjectType();
  (*(v19 + 32))(ObjectType, v19);
  swift_unknownObjectRelease();
  v21 = v26;
  if ((*(v26 + 48))(v4, 1, v5) == 1)
  {
LABEL_7:
    sub_1004BEF2C(v4);
    [v10 setPreferredStyle:1];
    goto LABEL_8;
  }

  v22 = v25;
  (*(v21 + 32))(v25, v4, v5);
  UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
  (*(v21 + 8))(v22, v5);
LABEL_8:
  sub_10000C36C((v1 + 48), *(v1 + 72));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_1004BED90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v3 + 40))(ObjectType, v3);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_1004BEDE8()
{
  result = qword_100786BC8;
  if (!qword_100786BC8)
  {
    sub_10005D20C(&qword_100786BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786BC8);
  }

  return result;
}

uint64_t sub_1004BEE4C()
{
  if (qword_100767390 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_100786AF0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1004BE7F8();
  }

  return result;
}

uint64_t sub_1004BEF2C(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076FCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004BEF94()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100786BD0);
  v1 = sub_100003E30(v0, qword_100786BD0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1004BF05C()
{
  v36 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v1 = *(v36 - 8);
  v2 = __chkstk_darwin(v36);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v31 - v5;
  v7 = *(v0 + 56);
  v8 = sub_1005017E8();
  v9 = *(v8 + 2);
  if (v9)
  {
    v32 = v7;
    v37 = _swiftEmptyArrayStorage;
    sub_1004A1FA4(0, v9, 0);
    v10 = v37;
    v35 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v11 = *(v35 - 8);
    v12 = *(v11 + 16);
    v33 = v11 + 16;
    v34 = v12;
    v13 = *(v11 + 80);
    v31[1] = v8;
    v14 = &v8[(v13 + 32) & ~v13];
    v15 = *(v11 + 72);
    do
    {
      v34(&v6[*(v36 + 24)], v14, v35);
      *v6 = TTRListOrCustomSmartListChangeItem.displayName.getter();
      *(v6 + 1) = v16;
      v6[16] = 1;
      v37 = v10;
      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        sub_1004A1FA4(v17 > 1, v18 + 1, 1);
        v10 = v37;
      }

      v10[2] = v18 + 1;
      sub_1002EFE58(v6, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v18);
      v14 += v15;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  v19 = sub_100502000();
  v20 = v19[2];
  if (v20)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_1004A1FA4(0, v20, 0);
    v21 = v37;
    v35 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
    v22 = *(v35 - 8);
    v23 = *(v22 + 16);
    v33 = v22 + 16;
    v34 = v23;
    v24 = *(v22 + 80);
    v32 = v19;
    v25 = v19 + ((v24 + 32) & ~v24);
    v26 = *(v22 + 72);
    do
    {
      v34(&v4[*(v36 + 24)], v25, v35);
      *v4 = TTRListOrCustomSmartListChangeItem.displayName.getter();
      *(v4 + 1) = v27;
      v4[16] = 0;
      v37 = v21;
      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        sub_1004A1FA4(v28 > 1, v29 + 1, 1);
        v21 = v37;
      }

      v21[2] = v29 + 1;
      sub_1002EFE58(v4, v21 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v29);
      v25 += v26;
      --v20;
    }

    while (v20);
  }

  return v10;
}

uint64_t sub_1004BF3A0(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  if (qword_100767398 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100786BD0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  v21 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v9 = TTRListOrCustomSmartListChangeItem.objectID.getter();
  *(inited + 72) = sub_10001DF64();
  *(inited + 48) = v9;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.addListWithNameFormat.getter();
  sub_100058000(&unk_100786CB0);
  v10 = swift_allocObject();
  *(v10 + 16) = v21;
  v12 = *a1;
  v11 = a1[1];
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10005C390();
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;

  static String.localizedStringWithFormat(_:_:)();

  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();

  sub_1002EFDF4(a1, &aBlock[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  sub_1002EFE58(&aBlock[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004C0238;
  *(v17 + 24) = v16;
  aBlock[4] = sub_100068444;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072B9C8;
  v18 = _Block_copy(aBlock);

  [v13 withActionName:v14 block:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004BF754()
{
  v0 = sub_100058000(&unk_100786CC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  TTRListOrCustomSmartListChangeItem.mergeableOrderingNode.getter();
  (*(v1 + 104))(v3, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v0);
  TTRAccountEditor.move(list:to:positionWithinGroup:)();
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return sub_1005016A4();
}

uint64_t sub_1004BF89C(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  if (qword_100767398 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100786BD0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  v21 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v9 = TTRListOrCustomSmartListChangeItem.objectID.getter();
  *(inited + 72) = sub_10001DF64();
  *(inited + 48) = v9;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.removeListWithNameFormat.getter();
  sub_100058000(&unk_100786CB0);
  v10 = swift_allocObject();
  *(v10 + 16) = v21;
  v12 = *a1;
  v11 = a1[1];
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_10005C390();
  *(v10 + 32) = v12;
  *(v10 + 40) = v11;

  static String.localizedStringWithFormat(_:_:)();

  v13 = objc_opt_self();
  v14 = String._bridgeToObjectiveC()();

  sub_1002EFDF4(a1, &aBlock[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  sub_1002EFE58(&aBlock[-2] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1004C0220;
  *(v17 + 24) = v16;
  aBlock[4] = sub_100026410;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072B950;
  v18 = _Block_copy(aBlock);

  [v13 withActionName:v14 block:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004BFC50()
{
  v0 = sub_100058000(&unk_100786CC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  TTRListOrCustomSmartListChangeItem.mergeableOrderingNode.getter();
  (*(v1 + 104))(v3, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v0);
  TTRAccountEditor.move(list:topLevelPosition:)();
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return sub_1005016A4();
}

uint64_t sub_1004BFD90(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  if (qword_100767398 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100786BD0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v10 = TTRListOrCustomSmartListChangeItem.objectID.getter();
  v11 = sub_10001DF64();
  *(inited + 48) = v10;
  *(inited + 72) = v11;
  *(inited + 80) = 0x7865646E69;
  *(inited + 120) = &type metadata for Int;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = a2;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.moveListWithNameFormat.getter();
  sub_100058000(&unk_100786CB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D400;
  v14 = *a1;
  v13 = a1[1];
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_10005C390();
  *(v12 + 32) = v14;
  *(v12 + 40) = v13;

  static String.localizedStringWithFormat(_:_:)();

  v15 = objc_opt_self();
  v16 = String._bridgeToObjectiveC()();

  sub_1002EFDF4(a1, &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  sub_1002EFE58(&aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1004C02C8;
  *(v19 + 24) = v18;
  aBlock[4] = sub_100068444;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072BA40;
  v20 = _Block_copy(aBlock);

  [v15 withActionName:v16 block:v20];

  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004C01A4()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);

  swift_unknownObjectRelease();
  sub_100004758(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C0250(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for TTRIGroupMembershipViewModel.List(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_1004C02C8()
{
  v1 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_1005022F8(v0 + *(v1 + 24) + v3, *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t type metadata accessor for TTRIBoardReminderCellContentView()
{
  result = qword_100786D60;
  if (!qword_100786D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C03C0()
{
  sub_1004C9B90(319, &qword_100786D98, &unk_100775AA0, &unk_100638960, &type metadata accessor for TTRReminderCellTitleViewModel);
  if (v0 <= 0x3F)
  {
    sub_1004C9B90(319, &qword_100786DA0, &qword_100775A90, &unk_100647540, &type metadata accessor for TTRIReminderCellNotesViewModel);
    if (v1 <= 0x3F)
    {
      sub_1004C9B90(319, &qword_100786DA8, &qword_100778F10, &unk_1006428B0, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
      if (v2 <= 0x3F)
      {
        sub_1004C9C04();
        if (v3 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void *sub_1004C05C8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v4 = &unk_10076BCB0;
    v29 = v1;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v2 >= *(v32 + 16))
        {
          goto LABEL_43;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject _accessibilityInternalTextLinks];
      if (v7)
      {
        v8 = v7;
        sub_100003540(0, &qword_10076BCA8);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v5 = v8;
      }

      else
      {
        v9 = _swiftEmptyArrayStorage;
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_41:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_23;
      }

      if (v12)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v36 = v3;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v10)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v16 >> 1) - v15) < v11)
          {
            goto LABEL_45;
          }

          v19 = v14 + 8 * v15 + 32;
          v34 = v2;
          v30 = v14;
          if (v10)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_10000E188(&qword_10076BCB8, v4);
            v20 = v4;
            for (i = 0; i != v17; ++i)
            {
              sub_100058000(v20);
              v22 = sub_10002B474(v35, i, v9);
              v24 = *v23;
              (v22)(v35, 0);
              *(v19 + 8 * i) = v24;
            }
          }

          else
          {
            sub_100003540(0, &qword_10076BCA8);
            swift_arrayInitWithCopy();
            v20 = v4;
          }

          v1 = v29;
          v4 = v20;
          v2 = v34;
          v3 = v36;
          if (v11 >= 1)
          {
            v25 = *(v30 + 16);
            v6 = __OFADD__(v25, v11);
            v26 = v25 + v11;
            if (v6)
            {
              goto LABEL_46;
            }

            *(v30 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_28;
        }
      }

      v3 = v36;
      if (v11 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1004C0994(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1003B3EE4(v3, 0);
  sub_1000EEE78(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1004C0A28()
{
  v1 = v0;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    sub_100058000(&qword_100786F18);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100633540;
    v3 = v2 + 32;
    goto LABEL_4;
  }

  if (*(v0 + qword_100786CF0))
  {

    v9 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

    sub_100058000(&qword_100786F18);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100633540;
    v3 = v10 + 32;
    if (v9)
    {
      *(v10 + 56) = sub_100003540(0, &qword_10076B020);
      *(v10 + 32) = v9;
      v4 = v9;
LABEL_5:
      v5 = qword_100786CF0;
      if (!*(v1 + qword_100786CF0))
      {
        __break(1u);
        goto LABEL_23;
      }

      v6 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

      if (v6)
      {
        v8 = type metadata accessor for TTRIReminderTitleTextView();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          *(v3 + 56) = v8;
          *(v3 + 32) = v7;
          goto LABEL_14;
        }
      }

      *(v3 + 32) = 0u;
      *(v3 + 48) = 0u;
LABEL_14:
      if (*(v1 + v5))
      {
        __chkstk_darwin(v7);

        v11 = TTRGridViewPredefinedContentPopulator.makeViewHiddenOnRemoval(for:createIfNeeded:)();

        *(v3 + 88) = sub_100003540(0, &qword_10076B020);
        *(v3 + 64) = v11;
        if (*(v1 + v5))
        {

          v12 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

          if (v12)
          {
            v13 = type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
            v14 = swift_dynamicCastClass();
            if (v14)
            {
              *(v3 + 120) = v13;
              *(v3 + 96) = v14;
LABEL_21:
              v15 = sub_1004C3360();
              *(v3 + 152) = type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView();
              *(v3 + 128) = v15;
              sub_100058000(&qword_100786F20);
              sub_10000E188(&qword_100786F28, &qword_100786F20);
              Sequence.removingNils<A>()();

              return;
            }
          }

          *(v3 + 96) = 0u;
          *(v3 + 112) = 0u;
          goto LABEL_21;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_4:
    v4 = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    goto LABEL_5;
  }

LABEL_25:
  __break(1u);
}

void sub_1004C0D5C()
{
  if (*(v0 + qword_100786CF0))
  {

    v1 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

    if (v1)
    {
      type metadata accessor for TTRIReminderTitleTextView();
      v2 = swift_dynamicCastClass();
      v3 = v2;
      if (v2)
      {
        if ([v2 canBecomeFirstResponder])
        {
          v4 = [v3 window];
          [v4 makeKeyWindow];

          [v3 becomeFirstResponder];
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1004C0E4C()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100778EC8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = &v1[qword_100786D58];
  swift_beginAccess();
  sub_10000794C(v13, v12, &qword_100778EC8);
  v14 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v12, 1, v14) == 1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  v17 = TTRBoardReminderCellContentConfigurationType.notesTextViewIsHidden.getter();
  sub_1002C51D0(v12, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  if (v17)
  {
    swift_beginAccess();
    if (v16(v13, 1, v14) == 1)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_100058000(&qword_100778F48);
    TTRBoardReminderCellNotesConfiguration.isHidden.setter();
    swift_endAccess();
    sub_10000794C(v13, v9, &qword_100778EC8);
    if (v16(v9, 1, v14) == 1)
    {
LABEL_21:
      __break(1u);
      return;
    }

    sub_10000794C(v13, v6, &qword_100778EC8);
    v18 = v26;
    sub_1004CCA18(v9, v26, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    (*(v15 + 56))(v18, 0, 1, v14);
    swift_beginAccess();
    sub_1004CAE68(v18, v13);
    swift_endAccess();
    sub_1004C406C(v9, v6);
    sub_1004C43C0(v9);
    [v1 setUserInteractionEnabled:*v9];
    sub_1004C5504();
    sub_1000079B4(v6, &qword_100778EC8);
    sub_1002C51D0(v9, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  }

  v19 = qword_100786CF0;
  if (!*&v1[qword_100786CF0])
  {
    goto LABEL_18;
  }

  v27 = 7;

  v20 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

  if (v20)
  {
    type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = [v21 window];

      [v22 makeKeyWindow];
      v20 = v22;
    }
  }

  if (!*&v1[v19])
  {
    goto LABEL_19;
  }

  v27 = 7;

  v23 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

  if (v23)
  {
    type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      [v24 becomeFirstResponder];
    }
  }
}

void *sub_1004C12DC()
{
  v1 = v0;
  sub_100058000(&qword_100786F00);
  result = swift_allocObject();
  *(result + 1) = xmmword_10062D3F0;
  v3 = qword_100786CF0;
  if (!*(v0 + qword_100786CF0))
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = result;

  v5 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

  if (v5)
  {
    type metadata accessor for TTRIReminderTitleTextView();
    result = swift_dynamicCastClass();
    if (result)
    {
      goto LABEL_6;
    }
  }

  result = 0;
LABEL_6:
  v4[4] = result;
  if (!*(v1 + v3))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

  v7 = 0;
  if (v6)
  {
    type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {

      v7 = 0;
    }
  }

  v4[5] = v7;
  sub_100058000(&qword_100786F08);
  type metadata accessor for TTRIReminderTitleTextView();
  sub_10000E188(&qword_100786F10, &qword_100786F08);
  v8 = Sequence.removingNils<A>()();

  v9 = sub_1004C05C8(v8);

  return sub_1004C0994(v9);
}

void sub_1004C149C()
{
  if (!*(v0 + qword_100786CF0))
  {
    __break(1u);
    return;
  }

  v1 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

  if (v1)
  {
    type metadata accessor for TTRIReminderTitleTextView();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = [v2 attributedText];

      if (v3)
      {
        return;
      }
    }

    else
    {
    }
  }

  [objc_allocWithZone(NSAttributedString) init];
}

void sub_1004C1558(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for TTREditingStateOption.InputType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007673A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100786CD0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v32 = v10;
    v12 = v11;
    v33 = swift_slowAlloc();
    v34 = v33;
    *v12 = 136315394;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100004060(v13, v14, &v34);
    v31 = v9;
    v16 = v15;

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100004060(0xD00000000000001DLL, 0x8000000100689C30, &v34);
    v17 = v31;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (!*(v2 + qword_100786CF0))
  {
    __break(1u);
    goto LABEL_21;
  }

  LOBYTE(v34) = 2;

  v18 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

  if (v18)
  {
    type metadata accessor for TTRIReminderTitleTextView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v19;
      (*(v5 + 16))(v7, a1, v4);
      v21 = (*(v5 + 88))(v7, v4);
      if (v21 == enum case for TTREditingStateOption.InputType.unspecified(_:))
      {
LABEL_12:
        UITextInput<>.ttrBeginEditing()();
        v22 = v18;
        v23 = [v20 selectedTextRange];
        if (v23)
        {
        }

        else
        {
          v30 = UITextInput<>.textRangeForEndOfDocument.getter();
          [v20 setSelectedTextRange:v30];
        }

        return;
      }

      if (v21 == enum case for TTREditingStateOption.InputType.pencil(_:))
      {
        [v20 set_textInputSource:3];
        goto LABEL_12;
      }

LABEL_21:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v26 = 136315394;
    v27 = _typeName(_:qualified:)();
    v29 = sub_100004060(v27, v28, &v34);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_100004060(0xD00000000000001DLL, 0x8000000100689C30, &v34);
    _os_log_impl(&_mh_execute_header, v24, v25, "%s: %s - Unable to get titleTextView", v26, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1004C1A50(void (*a1)(void, __n128)@<X1>, uint64_t a2@<X8>)
{
  if (*&v2[qword_100786CF0])
  {
    v5 = v2;

    v6 = TTRGridViewPredefinedContentPopulator.existingView(for:)();

    v7 = 0uLL;
    if (v6)
    {
      a1(0, 0);
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        v10 = [v8 selectedTextRange];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 end];
          [v9 caretRectForPosition:v12];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          [v5 convertRect:v9 fromCoordinateSpace:{v14, v16, v18, v20}];
          v36 = CGRectInset(v35, 0.0, -12.0);
          x = v36.origin.x;
          y = v36.origin.y;
          width = v36.size.width;
          height = v36.size.height;
          [v5 bounds];
          v39.origin.x = v25;
          v39.origin.y = v26;
          v39.size.width = v27;
          v39.size.height = v28;
          v37.origin.x = x;
          v37.origin.y = y;
          v37.size.width = width;
          v37.size.height = height;
          v38 = CGRectIntersection(v37, v39);
          v32 = v38.origin.x;
          v33 = v38.origin.y;
          v31 = v38.size.width;
          v34 = v38.size.height;

          *&v30 = v31;
          *&v7 = v32;
          v29 = 0;
          *(&v7 + 1) = v33;
          *(&v30 + 1) = v34;
LABEL_10:
          *a2 = v7;
          *(a2 + 16) = v30;
          *(a2 + 32) = v29;
          return;
        }

        v29 = 1;
      }

      else
      {

        v29 = 0;
      }

      v30 = 0uLL;
      v7 = 0uLL;
      goto LABEL_10;
    }

    v29 = 0;
    v30 = 0uLL;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1004C1C2C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100786CD0);
  v1 = sub_100003E30(v0, qword_100786CD0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004C1CF4(char *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  sub_1004C2198();
  [v3 setDirectionalLayoutMargins:{11.0, 12.0, 11.0, 12.0}];
  sub_1004C5780();
  sub_1004C1E30(a1);
  sub_100058000(&unk_10076BD70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D400;
  *(v4 + 32) = type metadata accessor for UITraitDisplayScale();
  *(v4 + 40) = &protocol witness table for UITraitDisplayScale;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  sub_1002C51D0(a1, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  return v3;
}

uint64_t sub_1004C1E30(char *a1)
{
  v3 = sub_100058000(&qword_100778EC8);
  __chkstk_darwin(v3 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  v9 = qword_100786D58;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_100778EC8);
  sub_1004CCA18(a1, v5, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  v10 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1004CAE68(v5, v1 + v9);
  swift_endAccess();
  sub_1004C406C(a1, v8);
  sub_1004C43C0(a1);
  [v1 setUserInteractionEnabled:*a1];
  sub_1004C5504();
  return sub_1000079B4(v8, &qword_100778EC8);
}

uint64_t sub_1004C1FEC(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1004CCA80;
  *(v4 + 24) = v3;
  v8[4] = sub_100068444;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100026440;
  v8[3] = &unk_10072BC10;
  v5 = _Block_copy(v8);
  v6 = a1;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004C215C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004CB0D0(*a1);
  *a2 = result;
  return result;
}

void sub_1004C2198()
{
  v1 = &v0[qword_100786D18];
  if (v0[qword_100786D18 + 8])
  {
    v2 = [v0 traitCollection];
    [v2 displayScale];
    v4 = v3;

    *v1 = fmax(v4, 1.0);
    *(v1 + 8) = 0;
  }
}

void sub_1004C2220()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_100786D58;
    swift_beginAccess();
    v3 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = TTRBoardReminderCellCompletedButtonConfiguration.onCompletedPressed.getter();
      if (v4)
      {
        v5 = v4;
        v6 = swift_endAccess();
        v5(v6);

        sub_1000301AC(v5);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

id sub_1004C2328()
{
  v1 = v0;
  v2 = type metadata accessor for TTRHashtagTokenTextInteraction.TokenEditingBehavior();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TTRHashtagTokenTextInteraction.TokenEditingBehavior.inline(_:), v3);
  v6 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextView());
  v7 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)();
  sub_100003540(0, &qword_100771DF0);
  v8 = v7;
  v9 = static UIFont.roundedBodyFont.getter();
  [v8 setFont:v9];

  [v8 setAdjustsFontForContentSizeCategory:1];
  v10 = NUIContainerViewSizeUnbounded[0];
  v11 = NUIContainerViewSizeUnbounded[1];
  v12 = v8;
  LODWORD(v13) = 1132068864;
  [v12 setLayoutSize:v10 withContentPriority:{v11, v13}];
  v14 = [objc_opt_self() labelColor];
  [v12 setTextColor:v14];

  [v12 setBackgroundColor:0];
  v15 = v12;
  v16._countAndFlagsBits = 0x656C746954;
  v17._object = 0x8000000100689C50;
  v16._object = 0xE500000000000000;
  v17._countAndFlagsBits = 0xD00000000000003FLL;
  TTRLocalizedString(_:comment:)(v16, v17);
  v18 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityLabel:v18];

  sub_100003540(0, &unk_10076B090);
  UITextDraggable<>.disableDragInteraction_rdar93793341()();
  [v15 setTextDropDelegate:*(v1 + qword_100786CF8)];
  return v15;
}

void sub_1004C25AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_100786D58;
    swift_beginAccess();
    v3 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = TTRBoardReminderCellInfoButtonConfiguration.onInfoPressed.getter();
      if (v4)
      {
        v5 = v4;
        v6 = swift_endAccess();
        v5(v6);

        sub_1000301AC(v5);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

void sub_1004C26B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_100786D58;
    swift_beginAccess();
    v3 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = TTRBoardReminderCellSubtaskCountConfiguration.onSubtaskCountPressed.getter();
      if (v4)
      {
        v5 = v4;
        v6 = swift_endAccess();
        v5(v6);

        sub_1000301AC(v5);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

id sub_1004C27BC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRHashtagTokenTextInteraction.TokenEditingBehavior();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v34[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for TTRHashtagTokenTextInteraction.TokenEditingBehavior.inline(_:), v3);
  v6 = objc_allocWithZone(type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView());
  v7 = TTRIWhitespaceSelectionAvoidingTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v11 = v7;
  [v11 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  v12 = [v11 textContainer];
  [v12 setLineFragmentPadding:0.0];

  v13 = [v11 textLayoutManager];
  [v13 setUsesFontLeading:0];

  v14 = objc_opt_self();
  v15 = v11;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor:v16];

  [v15 setAdjustsFontForContentSizeCategory:1];
  v17 = [v14 secondaryLabelColor];
  [v15 setTextColor:v17];

  v18 = sub_100003540(0, &qword_100771DF0);
  v19 = static UIFont.roundedSubheadlineFont.getter();
  [v15 setFont:v19];

  v20 = [v15 textContainer];
  [v20 setLineBreakMode:4];

  if (UIAccessibilityIsBoldTextEnabled())
  {
    v21 = static UIFont.roundedHeadlineFont.getter();
  }

  else
  {
    v21 = static UIFont.roundedSubheadlineFont.getter();
  }

  v22 = v21;
  static TTRLocalizableStrings.RemindersList.addNotePlaceholderText.getter();
  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v24 = NSForegroundColorAttributeName;
  v25 = [v14 placeholderTextColor];
  v26 = sub_100003540(0, &qword_100772610);
  *(inited + 40) = v25;
  *(inited + 64) = v26;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v18;
  *(inited + 80) = v22;
  v27 = NSFontAttributeName;
  v28 = v22;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0);
  swift_arrayDestroy();
  v29 = objc_allocWithZone(NSAttributedString);
  v30 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1004CC8E8(&qword_100778A60, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v29 initWithString:v30 attributes:isa];

  [v15 setAttributedPlaceholder:v32];
  sub_100003540(0, &unk_10076B090);
  UITextDraggable<>.disableDragInteraction_rdar93793341()();
  [v15 setTextDropDelegate:*(v1 + qword_100786CF8)];

  return v15;
}

void sub_1004C2C80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_100786D58;
    swift_beginAccess();
    v3 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = TTRBoardReminderCellSuggestedSectionConfiguration.onSuggestedSectionPress.getter();
      if (v4)
      {
        v5 = v4;
        v6 = swift_endAccess();
        v5(v6);

        sub_1000301AC(v5);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

id sub_1004C2D88()
{
  v0 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListLargeImageAttachmentsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1004CC8E8(&qword_100786EB0, type metadata accessor for TTRIBoardReminderCellContentView);
  swift_unknownObjectRetain();
  TTRIRemindersListLargeImageAttachmentsView.delegate.setter();
  v1 = NUIContainerViewSizeUseDefault[0];
  v2 = NUIContainerViewSizeUseDefault[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  v3 = v0;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v4) = v6;
  [v3 setLayoutSize:v1 withContentPriority:{v2, v4}];
  [v3 setClipsToBounds:1];

  TTRIRemindersListLargeImageAttachmentsView.cornerRadius.setter();
  return v3;
}

id sub_1004C2EF8()
{
  type metadata accessor for TTRNoAnimationContainerStackView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setAxis:0];
  [v0 setDistribution:8];
  sub_1004C2198();
  ceil(_:toScale:)();
  [v0 setSpacing:?];
  [v0 setAlignment:3];
  [v0 setDebugBoundingBoxesEnabled:0];
  v1 = NUIContainerViewSizeUseDefault[0];
  v2 = NUIContainerViewSizeUseDefault[1];
  type metadata accessor for UILayoutPriority(0);
  sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v3) = v5;
  [v0 setLayoutSize:v1 withContentPriority:{v2, v3}];

  return v0;
}

objc_class *sub_1004C304C()
{
  v1 = qword_100786D30;
  v2 = *(v0 + qword_100786D30);
  if (v2)
  {
    v3 = *(v0 + qword_100786D30);
  }

  else
  {
    type metadata accessor for TTRIExpandedHitTestButton();
    sub_100003540(0, &qword_10076BA60);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = v4;
    v5 = v0;
    v12.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    isa = UIButton.init(type:primaryAction:)(UIButtonTypeCustom, v12).super.super.super.super.isa;
    sub_1004C2198();
    LODWORD(v7) = 1148846080;
    [(objc_class *)isa setLayoutSize:24.0 withContentPriority:24.0, v7, 0, 0, 0, sub_1004CC930, v11];
    v8 = *(v0 + v1);
    *(v5 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1004C3188()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_100786D58;
    swift_beginAccess();
    v3 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = TTRBoardReminderCellAppLinkConfiguration.onAppLinkPress.getter();
      if (v4)
      {
        v5 = v4;
        v6 = swift_endAccess();
        v5(v6);

        sub_1000301AC(v5);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

id sub_1004C3290()
{
  v1 = qword_100786D38;
  v2 = *(v0 + qword_100786D38);
  if (v2)
  {
    v3 = *(v0 + qword_100786D38);
  }

  else
  {
    type metadata accessor for TTRIRemindersListCellAssigneeView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didPressAssigneeIndicator:"];
    [v5 setNumberOfTouchesRequired:1];
    [v4 addGestureRecognizer:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1004C3360()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListLayout();
  v4 = __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_100786D40;
  v8 = *(v1 + qword_100786D40);
  if (v8)
  {
    v9 = *(v1 + qword_100786D40);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for TTRRemindersListLayout.columns(_:), v4);
    v10 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView());
    v11 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.init(listLayout:)();
    v12 = NUIContainerViewSizeUseDefault[0];
    v13 = NUIContainerViewSizeUseDefault[1];
    type metadata accessor for UILayoutPriority(0);
    v18[1] = 1084227584;
    v18[2] = 1148846080;
    sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v14) = v18[3];
    [v11 setLayoutSize:v12 withContentPriority:{v13, v14}];
    v15 = *(v1 + v7);
    *(v1 + v7) = v11;
    v9 = v11;

    v8 = 0;
  }

  v16 = v8;
  return v9;
}

id sub_1004C3514()
{
  v1 = qword_100786D48;
  v2 = *(v0 + qword_100786D48);
  if (v2)
  {
    v3 = *(v0 + qword_100786D48);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TTRISeparator());
    v6 = TTRISeparator.init(axis:)();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1004C358C()
{
  v1 = qword_100786D50;
  v2 = *(v0 + qword_100786D50);
  if (v2)
  {
    v3 = *(v0 + qword_100786D50);
  }

  else
  {
    v4 = sub_1004C35F0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_1004C35F0(uint64_t a1)
{
  v2 = sub_100058000(&qword_100769CF8);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  static UIButton.Configuration.outlineDisclosure()();
  UIButton.Configuration.title.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v12 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  sub_1004C2198();
  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.imageReservation.setter();
  type metadata accessor for TTRIOutlineDisclosureButton();
  (*(v6 + 16))(v8, v11, v5);
  sub_100003540(0, &qword_10076BA60);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13 = UIButton.init(configuration:primaryAction:)();
  TTRIOutlineDisclosureButton.togglesExpansionAsPrimaryAction.setter();
  [v13 setContentHorizontalAlignment:3];
  [v13 setMinimumLayoutSize:{NUIContainerViewLengthUseDefault, 44.0}];
  v14 = [objc_opt_self() defaultCenter];
  memset(v18, 0, sizeof(v18));
  v15 = [objc_opt_self() mainQueue];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

  sub_1000079B4(v18, &qword_10076AE40);
  (*(v6 + 8))(v11, v5);

  *(a1 + qword_100786D20) = v16;

  return v13;
}

uint64_t sub_1004C39E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedSubheadlineFont.getter();
  sub_10008CD14();
  return AttributeContainer.subscript.setter();
}

void sub_1004C3A94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_100786D58;
    swift_beginAccess();
    v3 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = TTRBoardReminderCellShowSubtasksConfiguration.onShowSubtasksButtonPress.getter();
      if (v4)
      {
        v5 = v4;
        v6 = swift_endAccess();
        v5(v6);

        sub_1000301AC(v5);
      }

      else
      {
        swift_endAccess();
      }
    }
  }
}

void sub_1004C3B9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004C3BF0();
  }
}

void sub_1004C3BF0()
{
  v0 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v3);
  v6 = &v11 - v5;
  v7 = sub_1004C358C(v4);
  UIButton.configuration.getter();
  v8 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v8 - 8) + 48))(v6, 1, v8))
  {
    sub_10000794C(v6, v2, &unk_100772600);
    UIButton.configuration.setter();

    sub_1000079B4(v6, &unk_100772600);
  }

  else
  {
    UIAccessibilityButtonShapesEnabled();
    v9 = String._bridgeToObjectiveC()();

    v10 = [objc_opt_self() systemImageNamed:v9];

    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }
}

id sub_1004C3DD0(void *a1)
{
  type metadata accessor for TTRIRemindersListCellInfoButton();
  sub_100003540(0, &qword_10076BA60);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:v3 primaryAction:{0.0, 0.0, 0.0, 0.0, 0, 0, 0, sub_1004CAE60, v2}];

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  [v5 setImage:v7 forState:0];
  v8 = v5;
  static TTRAccesibility.RemindersList.Label.EditDetails.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setAccessibilityLabel:v9];

  v10 = NUIContainerViewSizeUseDefault[0];
  v11 = NUIContainerViewSizeUseDefault[1];
  v12 = v8;
  LODWORD(v13) = 1148846080;
  [v12 setLayoutSize:v10 withContentPriority:{v11, v13}];
  [v12 setCustomAlignmentRectInsets:{6.0, 0.0, 6.0, 0.0}];

  v14 = v12;
  [v14 sizeToFit];
  [a1 bounds];
  CGRectGetWidth(v16);
  [v14 frame];
  [a1 effectiveUserInterfaceLayoutDirection];
  CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)();
  [v14 setFrame:?];

  return v14;
}

uint64_t sub_1004C406C(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = sub_100058000(&qword_100778EC8);
  v21 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_10076B780);
  result = swift_allocObject();
  *(result + 16) = xmmword_10062D450;
  v12 = *&v2[qword_100786CE8];
  if (v12)
  {
    v13 = result;
    *(result + 32) = v12;
    v14 = v12;
    v13[5] = sub_1004C3514();
    v13[6] = sub_1004C3360();
    v13[7] = sub_1004C358C();
    sub_1004CCA18(a1, &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    sub_10000794C(v22, v6, &qword_100778EC8);
    v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v16 = (v9 + *(v21 + 80) + v15) & ~*(v21 + 80);
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = v13;
    v17[4] = v2;
    sub_1002C5104(v10, v17 + v15, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    sub_100016588(v6, v17 + v16, &qword_100778EC8);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1004CC938;
    *(v18 + 24) = v17;
    aBlock[4] = sub_100026410;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072BB98;
    v19 = _Block_copy(aBlock);
    v20 = v2;

    [v20 performBatchUpdates:v19];
    _Block_release(v19);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1004C43C0(char *a1)
{
  v88 = sub_100058000(&qword_100786DE8);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v79 - v2;
  v101 = sub_100058000(&qword_100786DF0);
  v111 = *(v101 - 8);
  v3 = v111;
  __chkstk_darwin(v101);
  v99 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = &v79 - v6;
  __chkstk_darwin(v7);
  v83 = &v79 - v8;
  __chkstk_darwin(v9);
  v82 = &v79 - v10;
  __chkstk_darwin(v11);
  v81 = &v79 - v12;
  __chkstk_darwin(v13);
  v80 = &v79 - v14;
  __chkstk_darwin(v15);
  v79 = &v79 - v16;
  v17 = type metadata accessor for TTRBoardReminderCellInfoButtonVisibility();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v79 - v22;
  type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  v110 = TTRBoardReminderCellContentConfigurationType.priorityIndicatorIsHidden.getter();
  v105 = TTRBoardReminderCellContentConfigurationType.flaggedIndicatorIsHidden.getter();
  TTRBoardReminderCellContentConfigurationType.infoButtonVisibility.getter();
  (*(v18 + 104))(v20, enum case for TTRBoardReminderCellInfoButtonVisibility.hidden(_:), v17);
  sub_1004CC8E8(&qword_100786DF8, &type metadata accessor for TTRBoardReminderCellInfoButtonVisibility);
  v104 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v18 + 8);
  v24(v20, v17);
  v24(v23, v17);
  v89 = TTRBoardReminderCellContentConfigurationType.listNameIsHidden.getter();
  v94 = TTRBoardReminderCellContentConfigurationType.subtaskCountIsHidden.getter();
  v90 = TTRBoardReminderCellContentConfigurationType.descriptionLabelIsHidden.getter();
  v91 = TTRBoardReminderCellContentConfigurationType.notesTextViewIsHidden.getter();
  v93 = TTRBoardReminderCellContentConfigurationType.locationLabelIsHidden.getter();
  v92 = TTRBoardReminderCellContentConfigurationType.hashtagsLabelIsHidden.getter();
  v97 = TTRBoardReminderCellContentConfigurationType.suggestedSectionButtonIsHidden.getter();
  v96 = TTRBoardReminderCellContentConfigurationType.imageAttachmentsAreHidden.getter();
  v86 = a1;
  v95 = TTRBoardReminderCellContentConfigurationType.accessoriesAreHidden.getter();
  sub_100058000(&qword_100786E00);
  v25 = *(v3 + 72);
  v109 = (*(v111 + 80) + 32) & ~*(v111 + 80);
  v107 = v25;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10062D400;
  v108 = sub_100058000(&qword_100786E08);
  v27 = swift_allocObject();
  v28 = v27;
  v106 = xmmword_100633540;
  *(v27 + 16) = xmmword_100633540;
  *(v27 + 32) = 0;
  if (v110)
  {
    v29 = 14;
  }

  else
  {
    v29 = 1;
  }

  *(v27 + 33) = v29;
  *(v27 + 34) = 2;
  if (v104)
  {
    v30 = 14;
  }

  else
  {
    v30 = 4;
  }

  *(v27 + 35) = v30;
  if (v105)
  {
    v31 = 14;
  }

  else
  {
    v31 = 3;
  }

  v32 = swift_allocObject();
  *(v28 + 36) = v31;
  v112 = v28;
  v33 = sub_100058000(&qword_100786E10);
  v34 = sub_10000E188(&qword_100786E18, &qword_100786E10);
  Sequence.removingNils<A>()();

  static CGFloat.nuiUseDefault.getter();
  sub_1004CAEE8();
  sub_1004CAF3C();
  sub_1004CAF90();
  TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
  v98 = v32;
  *(v32 + 16) = v26;
  v35 = (v32 + 16);
  v104 = v30;
  v105 = v31;
  v102 = v34;
  v103 = v33;
  if (v89)
  {
    v36 = v26;
    v37 = v101;
  }

  else
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v106;
    *(v38 + 32) = 0;
    if (v110)
    {
      v39 = 14;
    }

    else
    {
      v39 = 5;
    }

    *(v38 + 33) = v39;
    *(v38 + 34) = 5;
    *(v38 + 35) = v30;
    *(v38 + 36) = v31;
    v112 = v38;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v26 + 16) + 1, 1, v26);
    }

    v37 = v101;
    v41 = *(v36 + 2);
    v40 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v41 >= v40 >> 1)
    {
      v36 = sub_100547288(v40 > 1, v41 + 1, 1, v36);
    }

    *(v36 + 2) = v41 + 1;
    (*(v111 + 32))(&v36[v109 + v41 * v107]);
    *v35 = v36;
    swift_endAccess();
  }

  v42 = v105;
  if ((v90 & 1) == 0)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v106;
    *(v43 + 32) = 0;
    if (v110)
    {
      v44 = 14;
    }

    else
    {
      v44 = 6;
    }

    *(v43 + 33) = v44;
    *(v43 + 34) = 6;
    *(v43 + 35) = v30;
    *(v43 + 36) = v42;
    v112 = v43;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v45 = v80;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v47 = *(v36 + 2);
    v46 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v47 >= v46 >> 1)
    {
      v36 = sub_100547288(v46 > 1, v47 + 1, 1, v36);
    }

    *(v36 + 2) = v47 + 1;
    (*(v111 + 32))(&v36[v109 + v47 * v107], v45, v37);
    *v35 = v36;
    swift_endAccess();
    v42 = v105;
  }

  if ((v91 & 1) == 0)
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v106;
    *(v48 + 32) = 0;
    if (v110)
    {
      v49 = 14;
    }

    else
    {
      v49 = 7;
    }

    *(v48 + 33) = v49;
    *(v48 + 34) = 7;
    *(v48 + 35) = v30;
    *(v48 + 36) = v42;
    v112 = v48;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v50 = v81;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v52 = *(v36 + 2);
    v51 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v52 >= v51 >> 1)
    {
      v36 = sub_100547288(v51 > 1, v52 + 1, 1, v36);
    }

    *(v36 + 2) = v52 + 1;
    (*(v111 + 32))(&v36[v109 + v52 * v107], v50, v37);
    *v35 = v36;
    swift_endAccess();
    v42 = v105;
  }

  if ((v92 & 1) == 0)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = v106;
    *(v53 + 32) = 0;
    if (v110)
    {
      v54 = 14;
    }

    else
    {
      v54 = 8;
    }

    *(v53 + 33) = v54;
    *(v53 + 34) = 8;
    *(v53 + 35) = v30;
    *(v53 + 36) = v42;
    v112 = v53;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v55 = v82;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v57 = *(v36 + 2);
    v56 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v57 >= v56 >> 1)
    {
      v36 = sub_100547288(v56 > 1, v57 + 1, 1, v36);
    }

    *(v36 + 2) = v57 + 1;
    (*(v111 + 32))(&v36[v109 + v57 * v107], v55, v37);
    *v35 = v36;
    swift_endAccess();
    v42 = v105;
  }

  if ((v93 & 1) == 0)
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v106;
    *(v58 + 32) = 0;
    if (v110)
    {
      v59 = 14;
    }

    else
    {
      v59 = 9;
    }

    *(v58 + 33) = v59;
    *(v58 + 34) = 9;
    *(v58 + 35) = v30;
    *(v58 + 36) = v42;
    v112 = v58;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v60 = v83;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v62 = *(v36 + 2);
    v61 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v62 >= v61 >> 1)
    {
      v36 = sub_100547288(v61 > 1, v62 + 1, 1, v36);
    }

    *(v36 + 2) = v62 + 1;
    (*(v111 + 32))(&v36[v109 + v62 * v107], v60, v37);
    *v35 = v36;
    swift_endAccess();
    v42 = v105;
  }

  if ((v94 & 1) == 0)
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v106;
    *(v63 + 32) = 0;
    if (v110)
    {
      v64 = 14;
    }

    else
    {
      v64 = 10;
    }

    *(v63 + 33) = v64;
    *(v63 + 34) = 10;
    *(v63 + 35) = v30;
    *(v63 + 36) = v42;
    v112 = v63;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    v65 = v84;
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v67 = *(v36 + 2);
    v66 = *(v36 + 3);
    LOBYTE(v30) = v104;
    if (v67 >= v66 >> 1)
    {
      v36 = sub_100547288(v66 > 1, v67 + 1, 1, v36);
    }

    *(v36 + 2) = v67 + 1;
    (*(v111 + 32))(&v36[v109 + v67 * v107], v65, v37);
    *v35 = v36;
    swift_endAccess();
  }

  v68 = v96 ^ 1;
  v69 = v95 ^ 1;
  if ((v97 & 1) == 0)
  {
    v70 = swift_allocObject();
    *(v70 + 16) = v106;
    *(v70 + 32) = 0;
    if (v110)
    {
      v71 = 14;
    }

    else
    {
      v71 = 11;
    }

    *(v70 + 33) = v71;
    *(v70 + 34) = 11;
    *(v70 + 35) = v30;
    *(v70 + 36) = v105;
    v112 = v70;
    Sequence.removingNils<A>()();

    static CGFloat.nuiUseDefault.getter();
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_100547288(0, *(v36 + 2) + 1, 1, v36);
    }

    v73 = *(v36 + 2);
    v72 = *(v36 + 3);
    if (v73 >= v72 >> 1)
    {
      v36 = sub_100547288(v72 > 1, v73 + 1, 1, v36);
    }

    *(v36 + 2) = v73 + 1;
    (*(v111 + 32))(&v36[v109 + v73 * v107], v99, v101);
    *v35 = v36;
    swift_endAccess();
  }

  v74 = v100;
  sub_1004C2198();
  v75 = v98;
  sub_1004C6828(12, v68 & 1, v98);
  sub_1004C6828(13, v69 & 1, v75);
  if (*&v74[qword_100786CF0])
  {
    swift_beginAccess();

    v76 = v85;
    v77 = TTRGridViewPredefinedContentPopulator.GridSpecification.init(rows:)();
    __chkstk_darwin(v77);
    v78 = v86;
    *(&v79 - 2) = v74;
    *(&v79 - 1) = v78;
    TTRGridViewPredefinedContentPopulator.performUpdates(newGridSpecification:subviewUpdateHandler:)();

    (*(v87 + 8))(v76, v88);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004C5504()
{
  v1 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  if ((TTRBoardReminderCellShowSubtasksConfiguration.isHidden.getter() & 1) == 0)
  {
    v10 = sub_1004C358C();
    TTRBoardReminderCellShowSubtasksConfiguration.isShowingSubtasks.getter();
    TTRIOutlineDisclosureButton.isExpanded.setter();

    v16 = qword_100786D50;
    v11 = *(v0 + qword_100786D50);
    UIButton.configuration.getter();
    v12 = type metadata accessor for UIButton.Configuration();
    v13 = *(*(v12 - 8) + 48);
    if (v13(v9, 1, v12))
    {
      sub_10000794C(v9, v3, &unk_100772600);
      UIButton.configuration.setter();

      sub_1000079B4(v9, &unk_100772600);
    }

    else
    {
      TTRBoardReminderCellShowSubtasksConfiguration.showSubtasksButtonTitle.getter();
      UIButton.Configuration.title.setter();
      UIButton.configuration.setter();
    }

    v14 = *(v0 + v16);
    UIButton.configuration.getter();
    if (v13(v6, 1, v12))
    {
      sub_10000794C(v6, v3, &unk_100772600);
      UIButton.configuration.setter();

      sub_1000079B4(v6, &unk_100772600);
    }

    else
    {
      TTRBoardReminderCellShowSubtasksConfiguration.tintColor.getter();
      UIButton.Configuration.baseForegroundColor.setter();
      UIButton.configuration.setter();
    }
  }
}

void sub_1004C5780()
{
  v1 = v0;
  [v0 setAxis:1];
  [v0 setDistribution:0];
  [v0 setAlignment:0];
  [v0 setLayoutMarginsRelativeArrangement:0];
  [v0 setPreservesSuperviewLayoutMargins:1];
  [v0 setDebugBoundingBoxesEnabled:0];
  dispatch thunk of TTRIMarginTransferringContainerStackView.marginTransferActionForArrangedSubview.setter();
  type metadata accessor for TTRNoAnimationContainerGridView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = qword_100786CE8;
  v4 = *&v0[qword_100786CE8];
  *&v0[qword_100786CE8] = v2;
  v5 = v2;

  [v5 setLayoutMarginsRelativeArrangement:1];
  v6 = *&v1[v3];
  if (!v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v6 setPreservesSuperviewLayoutMargins:0];
  v7 = *&v1[v3];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v7 setHorizontalAlignment:0];
  v8 = *&v1[v3];
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v8 setVerticalAlignment:2];
  v9 = *&v1[v3];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  sub_1004C2198();
  ceil(_:toScale:)();
  [v10 setRowSpacing:?];

  v11 = *&v1[v3];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  ceil(_:toScale:)();
  [v12 setColumnSpacing:?];

  v13 = *&v1[v3];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v13 setDebugBoundingBoxesEnabled:0];
  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_100058000(&qword_100786EF8);
  swift_allocObject();
  v15 = v14;
  *&v1[qword_100786CF0] = TTRGridViewPredefinedContentPopulator.init(gridView:)();
}

uint64_t sub_1004C59E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRIMarginTransferAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIOutlineDisclosureButton();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView();
    swift_dynamicCastClass();
  }

  TTRIMarginTransferAction.init(edgesToReceiveMargins:redirectedTarget:)();
  (*(v3 + 32))(a1, v5, v2);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

void sub_1004C5B1C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v9 = sub_100058000(&qword_100778EC8);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_100058000(&qword_100786ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  v33 = sub_100058000(&qword_100778F70);
  v15 = *(v33 - 8);
  v16 = __chkstk_darwin(v33);
  v18 = &v32 - v17;
  v19 = [a1 arrangedSubviews];
  if (!v19 || (v20 = v19, sub_100003540(0, &qword_10076B020), v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v20, LOBYTE(v20) = sub_10012671C(v21, a2), , (v20 & 1) == 0))
  {
    sub_100003540(0, &qword_10076B020);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [a1 setArrangedSubviews:{isa, v32}];
  }

  sub_1004C2198();
  v23 = *(a4 + 2);
  v24 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  v25 = TTRBoardReminderCellContentConfigurationType.showSubtasksButtonIsHidden.getter();
  v26 = 11.0;
  v27 = 12.0;
  if (v23)
  {
    v26 = 12.0;
    v27 = 14.0;
  }

  v28 = 0.0;
  if (v25)
  {
    v28 = v26;
  }

  [a3 setDirectionalLayoutMargins:{v26, v27, v28, 12.0, v32}];
  sub_10000794C(a4 + *(v24 + 112), v18, &qword_100778F70);
  sub_10000794C(v32, v11, &qword_100778EC8);
  if ((*(*(v24 - 8) + 48))(v11, 1, v24) == 1)
  {
    sub_1000079B4(v11, &qword_100778EC8);
    v29 = 1;
  }

  else
  {
    sub_10000794C(&v11[*(v24 + 112)], v14, &qword_100778F70);
    sub_1002C51D0(v11, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
    v29 = 0;
  }

  (*(v15 + 56))(v14, v29, 1, v33);
  sub_1004C5F60(v18);
  sub_1000079B4(v14, &qword_100786ED0);
  sub_1000079B4(v18, &qword_100778F70);
  v30 = sub_1004C3514();
  [v30 setHidden:TTRBoardReminderCellContentConfigurationType.showSubtasksButtonIsHidden.getter() & 1];

  v31 = sub_1004C358C();
  [v31 setHidden:TTRBoardReminderCellContentConfigurationType.showSubtasksButtonIsHidden.getter() & 1];
}

void sub_1004C5F60(uint64_t a1)
{
  v2 = sub_100058000(&qword_100778F80);
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  __chkstk_darwin(v2);
  v5 = &v59 - v4;
  v6 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100786ED8);
  __chkstk_darwin(v8 - 8);
  v10 = &v59 - v9;
  v62 = sub_100058000(&qword_100786EE0);
  __chkstk_darwin(v62);
  v61 = (&v59 - v11);
  v12 = sub_100058000(&qword_100771588);
  __chkstk_darwin(v12 - 8);
  v59 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v59 - v15;
  __chkstk_darwin(v16);
  v64 = &v59 - v17;
  v18 = sub_100058000(&qword_100778F00);
  __chkstk_darwin(v18 - 8);
  v20 = &v59 - v19;
  v21 = sub_100058000(&qword_100778EB0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v59 - v23;
  sub_10000794C(a1, v20, &qword_100778F00);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000079B4(v20, &qword_100778F00);
    v25 = sub_100058000(&qword_100778F70);
    v27 = v67;
    v26 = v68;
    (*(v68 + 2))(v5, a1 + *(v25 + 28), v67);
    v28 = (*(v26 + 11))(v5, v27);
    if (v28 == enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:))
    {
      (*(v26 + 12))(v5, v27);
      if (qword_1007673A0 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100003E30(v29, qword_100786CD0);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "TTRIBoardReminderCellContentView: missing autoComplete module", v32, 2u);
      }

      sub_1002C51D0(v5, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
      goto LABEL_11;
    }

    if (v28 == enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:))
    {
LABEL_11:
      v37 = sub_1004C3360();
      [v37 setHidden:1];

      return;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    swift_beginAccess();
    sub_100058000(&qword_100786EE8);
    TTRBoardReminderInCellModuleState.receive(_:)();
    sub_100058000(&qword_100778F70);
    TTRBoardReminderInCellModuleState.receive(_:)();
    TTRBoardReminderInCellModuleState.consume()();
    swift_endAccess();
    v33 = sub_100058000(&qword_100786EF0);
    v34 = (*(*(v33 - 8) + 48))(v10, 1, v33);
    v35 = v21;
    v36 = v22;
    if (v34 == 1)
    {
      (*(v22 + 8))(v24, v35);
      sub_1000079B4(v10, &qword_100786ED8);
    }

    else
    {
      v67 = v35;
      v68 = v24;
      v38 = v10[16];
      v39 = *(v33 + 64);
      v40 = &v10[*(v33 + 80)];
      v41 = *v40;
      v42 = *(v40 + 1);
      v43 = v61;
      v44 = v62;
      v45 = *(v62 + 64);
      v46 = (v61 + *(v62 + 80));
      *v61 = *v10;
      *(v43 + 16) = v38;
      sub_100016588(&v10[v39], v43 + v45, &qword_100771588);
      *v46 = v41;
      v46[1] = v42;
      v47 = *(v43 + 16);
      v48 = *(v44 + 64);
      swift_unknownObjectRelease();
      v49 = v64;
      sub_100016588(v43 + v48, v64, &qword_100771588);
      v50 = v65;
      if (v47)
      {
        v51 = sub_1004C3360();
        if (swift_unknownObjectWeakLoadStrong())
        {
          type metadata accessor for TTRIReminderCellAutoCompleteViewController();
          sub_100186CA4(v51);
          swift_unknownObjectRelease();
        }
      }

      v52 = v63;
      sub_10000794C(v49, v63, &qword_100771588);
      v53 = v66;
      v54 = (*(v50 + 48))(v52, 1, v66);
      v55 = v68;
      if (v54 == 1)
      {
        swift_unknownObjectRelease();
        sub_1000079B4(v49, &qword_100771588);
        (*(v22 + 8))(v55, v67);
        sub_1000079B4(v52, &qword_100771588);
      }

      else
      {
        v56 = v52;
        v57 = v60;
        sub_1002C5104(v56, v60, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
        v58 = v59;
        sub_1004CCA18(v57, v59, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
        (*(v50 + 56))(v58, 0, 1, v53);
        sub_1002F82D8(v58);
        swift_unknownObjectRelease();
        sub_1002C51D0(v57, type metadata accessor for TTRIReminderCellAutoCompleteViewModel);
        sub_1000079B4(v49, &qword_100771588);
        (*(v36 + 8))(v55, v67);
      }
    }
  }
}

void sub_1004C6828(char a1, char a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100786DF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  if (a2)
  {
    sub_100058000(&qword_100786EC8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10062D400;
    *(v10 + 32) = a1;
    sub_1004CAEE8();
    sub_1004CAF3C();
    sub_1004CAF90();
    TTRGridViewPredefinedContentPopulator.GridRow.init(_:alignment:beforeSpacing:)();
    swift_beginAccess();
    v11 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_100547288(0, v11[2] + 1, 1, v11);
      *(a3 + 16) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_100547288(v13 > 1, v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v9, v6);
    *(a3 + 16) = v11;
    swift_endAccess();
  }
}

void sub_1004C6A2C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v95 = a3;
  v93 = a1;
  v94 = a2;
  v3 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  v14 = sub_100058000(&qword_100786E38);
  __chkstk_darwin(v14 - 8);
  v16 = &v93 - v15;
  TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.viewIDToUpdate.getter();
  switch(v98)
  {
    case 1:
      sub_100003540(0, &qword_100776820);
      v35 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v35)
      {
        v35 = sub_1004CB0E0();
      }

      v36 = v94;
      v37 = v35;
      [v35 setFont:{*(v94 + 8), v93}];
      v38 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
      v39 = *(v36 + *(v38 + 76));
      v40 = v37;
      [v40 setTintColor:v39];
      if (*(v36 + *(v38 + 88) + 8))
      {
        v41 = String._bridgeToObjectiveC()();
      }

      else
      {
        v41 = 0;
      }

      [v40 setText:v41];

      sub_1004CAEE8();
      sub_1004CAF3C();
      sub_1004CAF90();
      v96 = 0u;
      v97 = 0u;
      TTRGridViewPredefinedContentPopulator.SubviewUpdateResult.init(view:userInfo:horizontalAlignment:verticalAlignment:)();

      return;
    case 2:
      type metadata accessor for TTRIReminderTitleTextView();
      v30 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = sub_1004C2328();
      }

      type metadata accessor for TTRIBoardReminderCellContentConfiguration();
      sub_1004C79C0(v31);
      goto LABEL_61;
    case 3:
      sub_100003540(0, &qword_100786E48);
      v32 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v32)
      {
        v32 = sub_1004CB28C();
      }

      [v32 setPreferredSymbolConfiguration:{*(v94 + 24), v93}];
      goto LABEL_61;
    case 4:
      sub_100003540(0, &unk_10077A690);
      v21 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v21)
      {
        v22 = v21;
      }

      else
      {
        type metadata accessor for TTRIRemindersListCellInfoButton();
        sub_100003540(0, &qword_10076BA60);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v55 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v57 = [v56 initWithFrame:v55 primaryAction:{0.0, 0.0, 0.0, 0.0, v93}];

        v58 = v57;
        v59 = String._bridgeToObjectiveC()();
        v60 = [objc_opt_self() systemImageNamed:v59];

        [v58 setImage:v60 forState:0];
        v61 = v58;
        static TTRAccesibility.RemindersList.Label.EditDetails.getter();
        v62 = String._bridgeToObjectiveC()();

        [v61 setAccessibilityLabel:v62];

        v63 = NUIContainerViewSizeUseDefault[0];
        v64 = NUIContainerViewSizeUseDefault[1];
        v22 = v61;
        LODWORD(v65) = 1148846080;
        [v22 setLayoutSize:v63 withContentPriority:{v64, v65}];
        [v22 setCustomAlignmentRectInsets:{6.0, 0.0, 6.0, 0.0}];
      }

      type metadata accessor for TTRIBoardReminderCellContentConfiguration();
      v66 = TTRBoardReminderCellInfoButtonConfiguration.tintColor.getter();
      if (!v66)
      {
        v66 = [objc_opt_self() tintColor];
      }

      v54 = v66;
      [v22 setTintColor:{v66, v93}];
      goto LABEL_60;
    case 5:
      sub_100003540(0, &qword_100776820);
      v42 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v42)
      {
        v42 = sub_1004CB44C();
      }

      v43 = v42;
      v44 = v94;
      type metadata accessor for TTRIBoardReminderCellContentConfiguration();

      v83 = String._bridgeToObjectiveC()();

      [v43 setText:{v83, v93}];

      [v43 setFont:{*(v44 + 16), v93}];
      goto LABEL_61;
    case 6:
      sub_100003540(0, &qword_100776820);
      v46 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v46)
      {
        v46 = sub_1004CB5E0();
      }

      [v46 setAttributedText:{*(v94 + *(type metadata accessor for TTRIBoardReminderCellContentConfiguration() + 96)), v93}];
      goto LABEL_61;
    case 7:
      type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView();
      v33 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = sub_1004C27BC();
      }

      type metadata accessor for TTRIBoardReminderCellContentConfiguration();
      sub_1004C82D0(v34);
      goto LABEL_61;
    case 8:
      sub_100003540(0, &qword_100776820);
      v51 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v51)
      {
        v51 = sub_1004CB6CC();
      }

      v52 = v51;
      v53 = v94;
      if (*(v53 + *(type metadata accessor for TTRIBoardReminderCellContentConfiguration() + 80) + 8))
      {
        v54 = String._bridgeToObjectiveC()();
      }

      else
      {
        v54 = 0;
      }

      [v52 setText:{v54, v93}];
LABEL_60:

      goto LABEL_61;
    case 9:
      v27 = type metadata accessor for TTRILocationIndicator();
      v28 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v28)
      {
        v29 = v28;
        goto LABEL_67;
      }

      v67 = objc_allocWithZone(v27);
      v29 = [v67 init];
      v68 = [objc_opt_self() secondaryLabelColor];
      v69 = v68;
      v70 = OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_textColor;
      v71 = *&v29[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_textColor];
      *&v29[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_textColor] = v68;
      if (v68)
      {
        if (v71)
        {
          sub_100003540(0, &qword_100772610);
          v72 = v69;
          v73 = v71;
          v74 = static NSObject.== infix(_:_:)();

          if (v74)
          {

            goto LABEL_67;
          }
        }

        else
        {
          v84 = v68;
        }
      }

      else if (!v71)
      {
        goto LABEL_67;
      }

      v85 = sub_1005D82AC();
      v86 = *&v29[v70];
      [v85 setTintColor:v86];

      v87 = sub_1005D8418();
      v88 = *&v29[v70];
      [v87 setTextColor:v88];

LABEL_67:
      type metadata accessor for TTRIBoardReminderCellContentConfiguration();
      v89 = TTRBoardReminderCellLocationConfiguration.icon.getter();
      sub_1005D8950(v89);

      v90 = TTRBoardReminderCellLocationConfiguration.attributedDescription.getter();
      v91 = *&v29[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_attributedLocationText];
      *&v29[OBJC_IVAR____TtC9Reminders21TTRILocationIndicator_attributedLocationText] = v90;
      v92 = v90;

      sub_1005D8348();
      sub_1004CAEE8();
      sub_1004CAF3C();
      sub_1004CAF90();
      v96 = 0u;
      v97 = 0u;
LABEL_62:
      TTRGridViewPredefinedContentPopulator.SubviewUpdateResult.init(view:userInfo:horizontalAlignment:verticalAlignment:)();
      return;
    case 10:
      sub_100003540(0, &unk_10077A690);
      v47 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v47)
      {
        static UIButton.Configuration.borderless()();
        UIButton.Configuration.contentInsets.setter();
        (*(v4 + 104))(v6, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v3);
        UIButton.Configuration.titleAlignment.setter();
        sub_100003540(0, &qword_10076BA60);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        (*(v8 + 16))(v10, v13, v7);
        v49 = v48;
        v50 = UIButton.init(configuration:primaryAction:)();
        [v50 setContentHorizontalAlignment:{4, v93}];

        (*(v8 + 8))(v13, v7);
        v47 = v50;
      }

      sub_1004CBD2C(v47, v94);
      goto LABEL_61;
    case 11:
      sub_100003540(0, &unk_10077A690);
      v19 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v19)
      {
        static UIButton.Configuration.plain()();
        UIButton.Configuration.title.setter();
        (*(v4 + 104))(v6, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v3);
        UIButton.Configuration.titleAlignment.setter();
        UIButton.Configuration.contentInsets.setter();
        (*(v8 + 16))(v10, v13, v7);
        sub_100003540(0, &qword_10076BA60);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v20 = UIButton.init(configuration:primaryAction:)();
        [v20 setContentHorizontalAlignment:{4, v93}];
        (*(v8 + 8))(v13, v7);
        v19 = v20;
      }

      sub_1004CC1C4(v19, v94);
      goto LABEL_61;
    case 12:
      type metadata accessor for TTRIRemindersListLargeImageAttachmentsView();
      v23 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v23)
      {
        v23 = sub_1004C2D88();
      }

      v24 = v23;
      v25 = v94;
      v26 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
      sub_1004CC5F0(v24, *(v25 + *(v26 + 64)));
      goto LABEL_61;
    case 13:
      sub_100003540(0, &qword_100786E40);
      v45 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (!v45)
      {
        v45 = sub_1004C2EF8();
      }

      sub_1004C8BA4(v45, v94);
LABEL_61:
      sub_1004CAEE8();
      sub_1004CAF3C();
      sub_1004CAF90();
      v96 = 0u;
      v97 = 0u;
      goto LABEL_62;
    default:
      type metadata accessor for TTRIReminderCompletionButton();
      v17 = TTRGridViewPredefinedContentPopulator.SubviewUpdateContext.cachedView<A>(ofType:)();
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        sub_100003540(0, &qword_10076BA60);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v75 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v76 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v18 = [v76 initWithFrame:v75 primaryAction:{0.0, 0.0, 0.0, 0.0, v93}];

        *v16 = 0;
        *(v16 + 1) = 0;
        v77 = enum case for TTRIReminderCompletionButton.Icon.complete(_:);
        v78 = type metadata accessor for TTRIReminderCompletionButton.Icon();
        v79 = *(v78 - 8);
        (*(v79 + 104))(v16, v77, v78);
        (*(v79 + 56))(v16, 0, 1, v78);
        TTRIReminderCompletionButton.icon.setter();
        [v18 setCustomAlignmentRectInsets:{5.0, 0.0, 5.0, 0.0}];
        LODWORD(v80) = 1148846080;
        [v18 setLayoutSize:NUIContainerViewSizeUseDefault[0] withContentPriority:{NUIContainerViewSizeUseDefault[1], v80}];
      }

      v81 = v94;
      v82 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
      sub_1004CB7D4(v18, v81 + *(v82 + 40));
      sub_1004CAEE8();
      sub_1004CAF3C();
      sub_1004CAF90();
      v96 = 0u;
      v97 = 0u;
      goto LABEL_62;
  }
}

void sub_1004C79C0(void *a1)
{
  v64 = a1;
  v1 = type metadata accessor for TTRReminderCellTitleViewModel();
  v62 = *(v1 - 8);
  v63 = v1;
  __chkstk_darwin(v1);
  v56 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100786E50);
  __chkstk_darwin(v3 - 8);
  v61 = &v54 - v4;
  v58 = sub_100058000(&qword_100786E58);
  __chkstk_darwin(v58);
  v57 = (&v54 - v5);
  v6 = sub_100058000(&qword_100786E60);
  __chkstk_darwin(v6 - 8);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v59 = &v54 - v9;
  __chkstk_darwin(v10);
  v60 = &v54 - v11;
  v65 = sub_100058000(&qword_100778F50);
  v12 = *(v65 - 8);
  __chkstk_darwin(v65);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_100058000(&qword_100781950);
  __chkstk_darwin(v18 - 8);
  v20 = &v54 - v19;
  v21 = sub_100058000(&qword_10078A3B0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v54 - v23;
  sub_100058000(&qword_100778F58);
  TTRBoardReminderCellTitleConfiguration.module.getter();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000079B4(v20, &qword_100781950);
    TTRBoardReminderCellTitleConfiguration.viewModelUpdate.getter();
    v25 = v65;
    v26 = (*(v12 + 88))(v14, v65);
    if (v26 == enum case for TTRBoardReminderCellOptionalUpdate.update<A>(_:))
    {
      (*(v12 + 96))(v14, v25);
      if (qword_1007673A0 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100003E30(v27, qword_100786CD0);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v63;
      if (v30)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "TTRIBoardReminderCellContentView: missing title editing module", v32, 2u);
      }

      (*(v62 + 8))(v14, v31);
      goto LABEL_11;
    }

    if (v26 == enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:))
    {
LABEL_11:
      v37 = String._bridgeToObjectiveC()();
      [v64 setText:v37];

      return;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v24, v20, v21);
    swift_beginAccess();
    sub_100058000(&qword_100786E68);
    v54 = v21;
    TTRBoardReminderInCellModuleState.receive(_:)();
    swift_endAccess();
    TTRBoardReminderCellTitleConfiguration.viewModelUpdate.getter();
    swift_beginAccess();
    TTRBoardReminderInCellModuleState.receive(_:)();
    swift_endAccess();
    (*(v12 + 8))(v17, v65);
    swift_beginAccess();
    v33 = v61;
    TTRBoardReminderInCellModuleState.consume()();
    swift_endAccess();
    v34 = v22;
    v35 = sub_100058000(&qword_100786E70);
    v36 = v24;
    if ((*(*(v35 - 8) + 48))(v33, 1, v35) == 1)
    {
      (*(v34 + 8))(v24, v54);
      sub_1000079B4(v33, &qword_100786E50);
    }

    else
    {
      v38 = *(v33 + 16);
      v39 = *(v35 + 64);
      v40 = (v33 + *(v35 + 80));
      v41 = *v40;
      v42 = v40[1];
      v44 = v57;
      v43 = v58;
      v45 = *(v58 + 64);
      v46 = (v57 + *(v58 + 80));
      *v57 = *v33;
      *(v44 + 16) = v38;
      sub_100016588(v33 + v39, v44 + v45, &qword_100786E60);
      *v46 = v41;
      v46[1] = v42;
      LOBYTE(v46) = *(v44 + 16);
      v47 = *(v43 + 64);
      swift_unknownObjectRelease();
      v48 = v60;
      sub_100016588(v44 + v47, v60, &qword_100786E60);
      if (v46)
      {
        swift_getObjectType();
        dispatch thunk of TTRIReminderCellTitleModuleInterface.setup(forManaging:)();
      }

      v49 = v59;
      sub_10000794C(v48, v59, &qword_100786E60);
      v51 = v62;
      v50 = v63;
      if ((*(v62 + 48))(v49, 1, v63) == 1)
      {
        swift_unknownObjectRelease();
        sub_1000079B4(v48, &qword_100786E60);
        (*(v34 + 8))(v36, v54);
        sub_1000079B4(v49, &qword_100786E60);
      }

      else
      {
        v52 = v56;
        (*(v51 + 32))(v56, v49, v50);
        swift_getObjectType();
        v53 = v55;
        (*(v51 + 16))(v55, v52, v50);
        (*(v51 + 56))(v53, 0, 1, v50);
        dispatch thunk of TTRReminderCellTitleModuleInterface.viewModel.setter();
        swift_unknownObjectRelease();
        (*(v51 + 8))(v52, v50);
        sub_1000079B4(v48, &qword_100786E60);
        (*(v34 + 8))(v36, v54);
      }
    }
  }
}

void sub_1004C82D0(void *a1)
{
  v60 = a1;
  v1 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v57 = *(v1 - 8);
  v58 = v1;
  __chkstk_darwin(v1);
  v52 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100786E78);
  __chkstk_darwin(v3 - 8);
  v59 = &v49 - v4;
  v54 = sub_100058000(&qword_100786E80);
  __chkstk_darwin(v54);
  v53 = (&v49 - v5);
  v6 = sub_100058000(&qword_100786E88);
  __chkstk_darwin(v6 - 8);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v55 = &v49 - v9;
  __chkstk_darwin(v10);
  v56 = &v49 - v11;
  v12 = sub_100058000(&unk_100781940);
  __chkstk_darwin(v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_100058000(&qword_100778EA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v61 = &v49 - v17;
  v18 = sub_100058000(&qword_100778FC8);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  sub_100058000(&qword_100778F48);
  if (TTRBoardReminderCellNotesConfiguration.isHidden.getter())
  {
    TTRBoardReminderCellNotesConfiguration.viewModelUpdate.getter();
    swift_beginAccess();
    sub_100058000(&qword_100786E90);
    TTRBoardReminderInCellModuleState.receive(_:)();
    swift_endAccess();
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    TTRBoardReminderCellNotesConfiguration.module.getter();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      v22 = v60;
      sub_1000079B4(v14, &unk_100781940);
      if (qword_1007673A0 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100003E30(v23, qword_100786CD0);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "TTRIBoardReminderCellContentView: missing notes editing module", v26, 2u);
      }

      v27 = String._bridgeToObjectiveC()();
      [v22 setText:v27];
    }

    else
    {
      v50 = v16;
      (*(v16 + 32))(v61, v14, v15);
      swift_beginAccess();
      sub_100058000(&qword_100786E90);
      v49 = v15;
      TTRBoardReminderInCellModuleState.receive(_:)();
      swift_endAccess();
      TTRBoardReminderCellNotesConfiguration.viewModelUpdate.getter();
      swift_beginAccess();
      TTRBoardReminderInCellModuleState.receive(_:)();
      swift_endAccess();
      (*(v19 + 8))(v21, v18);
      swift_beginAccess();
      v28 = v59;
      TTRBoardReminderInCellModuleState.consume()();
      swift_endAccess();
      v29 = sub_100058000(&qword_100786E98);
      if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
      {
        (*(v50 + 8))(v61, v49);
        sub_1000079B4(v28, &qword_100786E78);
      }

      else
      {
        v30 = v49;
        v31 = v50;
        v32 = *(v28 + 16);
        v33 = *(v29 + 64);
        v34 = (v28 + *(v29 + 80));
        v35 = *v34;
        v36 = v34[1];
        v38 = v53;
        v37 = v54;
        v39 = *(v54 + 64);
        v40 = (v53 + *(v54 + 80));
        *v53 = *v28;
        *(v38 + 16) = v32;
        sub_100016588(v28 + v33, v38 + v39, &qword_100786E88);
        *v40 = v35;
        v40[1] = v36;
        LOBYTE(v40) = *(v38 + 16);
        v41 = *(v37 + 64);
        swift_unknownObjectRelease();
        v42 = v38 + v41;
        v43 = v56;
        sub_100016588(v42, v56, &qword_100786E88);
        if (v40)
        {
          swift_getObjectType();
          dispatch thunk of TTRIReminderCellNotesModuleInterface.setup(forManaging:)();
        }

        v44 = v55;
        sub_10000794C(v43, v55, &qword_100786E88);
        v46 = v57;
        v45 = v58;
        if ((*(v57 + 48))(v44, 1, v58) == 1)
        {
          swift_unknownObjectRelease();
          sub_1000079B4(v43, &qword_100786E88);
          (*(v31 + 8))(v61, v30);
          sub_1000079B4(v44, &qword_100786E88);
        }

        else
        {
          v47 = v52;
          (*(v46 + 32))(v52, v44, v45);
          swift_getObjectType();
          v48 = v51;
          (*(v46 + 16))(v51, v47, v45);
          (*(v46 + 56))(v48, 0, 1, v45);
          dispatch thunk of TTRIReminderCellNotesModuleInterface.viewModel.setter();
          swift_unknownObjectRelease();
          (*(v46 + 8))(v47, v45);
          sub_1000079B4(v43, &qword_100786E88);
          (*(v31 + 8))(v61, v30);
        }
      }
    }
  }
}

void sub_1004C8BA4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1004C9E50(a2, v2);
  v6 = *(v3 + qword_100786D28);
  *(v3 + qword_100786D28) = v5;
  v7 = v5;

  sub_100058000(&qword_10076B920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10062F800;
  *(v8 + 32) = v5;
  v9 = v7;
  *(v8 + 40) = sub_1004C3290();
  *(v8 + 48) = sub_1004C304C();
  sub_100058000(&qword_100780A08);
  sub_100003540(0, &qword_10076B020);
  sub_10000E188(&qword_100788500, &qword_100780A08);
  v10 = Sequence.removingNils<A>()();

  v11 = [a1 arrangedSubviews];
  if (v11 && (v12 = v11, v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v12, , LOBYTE(v12) = sub_10012671C(v13, v10), , , (v12 & 1) != 0))
  {
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a1 setArrangedSubviews:isa];
  }

  sub_1004C2198();
  ceil(_:toScale:)();
  [a1 setSpacing:?];
  type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  v15 = TTRBoardReminderCellContentConfigurationType.appLinkIsHidden.getter();
  v16 = qword_100786D30;
  v17 = *(v3 + qword_100786D30);
  if (v15)
  {
    [v17 setHidden:1];
  }

  else
  {
    [v17 setHidden:0];
    v18 = *(v3 + v16);
    v19 = TTRBoardReminderCellAppLinkConfiguration.icon.getter();
    [v18 setBackgroundImage:v19 forState:0];
  }

  v20 = TTRBoardReminderCellContentConfigurationType.assigneeIsHidden.getter();
  v21 = qword_100786D38;
  v22 = *(v3 + qword_100786D38);
  if (v20)
  {
    v23 = v22;
    [v23 setHidden:1];
  }

  else
  {
    [v22 setHidden:0];
    v23 = *(v3 + v21);
    TTRBoardReminderCellAssigneeConfiguration.contact.getter();
    TTRIRemindersListCellAssigneeView.contact.setter();
  }
}

uint64_t sub_1004C8EE4(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v5 = a1;
  }

  v6 = &v3[qword_100786D58];
  swift_beginAccess();
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  result = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = TTRBoardReminderCellAssigneeConfiguration.onAssigneePress.getter();
    if (v9)
    {
      v10 = v9;
      swift_endAccess();
      v11 = sub_1004C3290();
      v10();
      sub_1000301AC(v10);

      v3 = v11;
    }

    else
    {
      swift_endAccess();
    }

    return sub_1000079B4(v12, &qword_10076AE40);
  }

  return result;
}

id sub_1004C9030(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[qword_100786CE8] = 0;
  *&v4[qword_100786CF0] = 0;
  v10 = qword_100786CF8;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  sub_100058000(&unk_100775AA0);
  type metadata accessor for TTRReminderCellTitleViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100775A90);
  type metadata accessor for TTRIReminderCellNotesViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100778F10);
  type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  v11 = &v4[qword_100786D18];
  *v11 = 0;
  v11[8] = 1;
  *&v4[qword_100786D20] = 0;
  *&v4[qword_100786D28] = 0;
  *&v4[qword_100786D30] = 0;
  *&v4[qword_100786D38] = 0;
  *&v4[qword_100786D40] = 0;
  *&v4[qword_100786D48] = 0;
  *&v4[qword_100786D50] = 0;
  v12 = qword_100786D58;
  v13 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1004C92B0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_100786CE8] = 0;
  *&v1[qword_100786CF0] = 0;
  v4 = qword_100786CF8;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  sub_100058000(&unk_100775AA0);
  type metadata accessor for TTRReminderCellTitleViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100775A90);
  type metadata accessor for TTRIReminderCellNotesViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100778F10);
  type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  v5 = &v1[qword_100786D18];
  *v5 = 0;
  v5[8] = 1;
  *&v1[qword_100786D20] = 0;
  *&v1[qword_100786D28] = 0;
  *&v1[qword_100786D30] = 0;
  *&v1[qword_100786D38] = 0;
  *&v1[qword_100786D40] = 0;
  *&v1[qword_100786D48] = 0;
  *&v1[qword_100786D50] = 0;
  v6 = qword_100786D58;
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  if (a1)
  {
    sub_100003540(0, &qword_10076B020);
    v8.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithArrangedSubviews:", v8.super.isa);

  return v9;
}

id sub_1004C9534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100003540(0, &qword_10076B020);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  return sub_1004C92B0(v3);
}

id sub_1004C958C(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_100786CE8] = 0;
  *&v1[qword_100786CF0] = 0;
  v4 = qword_100786CF8;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  sub_100058000(&unk_100775AA0);
  type metadata accessor for TTRReminderCellTitleViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100775A90);
  type metadata accessor for TTRIReminderCellNotesViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  sub_100058000(&qword_100778F10);
  type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
  TTRBoardReminderInCellModuleState.init(moduleInterfacesEqual:)();
  v5 = &v1[qword_100786D18];
  *v5 = 0;
  v5[8] = 1;
  *&v1[qword_100786D20] = 0;
  *&v1[qword_100786D28] = 0;
  *&v1[qword_100786D30] = 0;
  *&v1[qword_100786D38] = 0;
  *&v1[qword_100786D40] = 0;
  *&v1[qword_100786D48] = 0;
  *&v1[qword_100786D50] = 0;
  v6 = qword_100786D58;
  v7 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_1004C980C()
{

  v1 = qword_100786D00;
  v2 = sub_100058000(&qword_100786E68);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_100786D08;
  v4 = sub_100058000(&qword_100786E90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = qword_100786D10;
  v6 = sub_100058000(&qword_100786EE8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return sub_1000079B4(v0 + qword_100786D58, &qword_100778EC8);
}

uint64_t sub_1004C99CC(uint64_t a1)
{

  v2 = qword_100786D00;
  v3 = sub_100058000(&qword_100786E68);
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_100786D08;
  v5 = sub_100058000(&qword_100786E90);
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = qword_100786D10;
  v7 = sub_100058000(&qword_100786EE8);
  (*(*(v7 - 8) + 8))(a1 + v6, v7);

  return sub_1000079B4(a1 + qword_100786D58, &qword_100778EC8);
}

void sub_1004C9B90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_10005D20C(a3);
    a5(255);
    v7 = type metadata accessor for TTRBoardReminderInCellModuleState();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1004C9C04()
{
  if (!qword_100786DB0)
  {
    type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100786DB0);
    }
  }
}

uint64_t getEnumTagSinglePayload for TTRIBoardReminderCellContentView.ContentGridSubview(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardReminderCellContentView.ContentGridSubview(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1004C9DFC()
{
  result = qword_100786DE0;
  if (!qword_100786DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100786DE0);
  }

  return result;
}

id sub_1004C9E50(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v2 = type metadata accessor for URL();
  v51 = *(v2 - 8);
  __chkstk_darwin(v2);
  v52 = &v47[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100058000(&qword_100786EB8);
  __chkstk_darwin(v4);
  v6 = &v47[-v5];
  v7 = sub_100058000(&unk_100775660);
  __chkstk_darwin(v7 - 8);
  v50 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v47[-v10];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  v15 = type metadata accessor for TTRBoardReminderCellURLConfiguration.Attachment();
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v47[-v19];
  type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  sub_1004CC8E8(&qword_100778EF8, type metadata accessor for TTRIBoardReminderCellContentConfiguration);
  v21 = 0;
  if (TTRBoardReminderCellContentConfigurationType.urlIsHidden.getter())
  {
    return v21;
  }

  v22 = TTRBoardReminderCellURLConfiguration.attachments.getter();
  if (!*(v22 + 16))
  {

    return 0;
  }

  v24 = v54;
  v23 = v55;
  (*(v54 + 16))(v17, v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v55);

  (*(v24 + 32))(v20, v17, v23);
  v25 = *(v53 + qword_100786D28);
  if (!v25)
  {
    goto LABEL_18;
  }

  v21 = v25;
  v26 = [v21 URL];
  v49 = v20;
  if (v26)
  {
    v27 = v26;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v51;
  v30 = *(v51 + 56);
  v30(v14, v28, 1, v2);
  TTRBoardReminderCellURLConfiguration.Attachment.url.getter();
  v30(v11, 0, 1, v2);
  v31 = *(v4 + 48);
  sub_10000794C(v14, v6, &unk_100775660);
  sub_10000794C(v11, &v6[v31], &unk_100775660);
  v32 = *(v29 + 48);
  if (v32(v6, 1, v2) == 1)
  {
    sub_1000079B4(v11, &unk_100775660);
    sub_1000079B4(v14, &unk_100775660);
    if (v32(&v6[v31], 1, v2) == 1)
    {
      sub_1000079B4(v6, &unk_100775660);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v33 = v50;
  sub_10000794C(v6, v50, &unk_100775660);
  if (v32(&v6[v31], 1, v2) == 1)
  {
    sub_1000079B4(v11, &unk_100775660);
    sub_1000079B4(v14, &unk_100775660);
    (*(v51 + 8))(v33, v2);
LABEL_13:
    sub_1000079B4(v6, &qword_100786EB8);
LABEL_17:

    v20 = v49;
LABEL_18:
    TTRBoardReminderCellURLConfiguration.Attachment.url.getter();
    TTRBoardReminderCellURLConfiguration.Attachment.attachmentID.getter();
    v41 = objc_allocWithZone(type metadata accessor for TTRIRemindersListReminderCellLinkView());
    v21 = TTRIRemindersListReminderCellLinkView.init(url:attachmentID:)();
    [v21 _setDisableAnimations:1];
    [v21 _setPreferredSizeClass:2];
    v42 = [objc_allocWithZone(LPLinkRendererSizeClassParameters) init];
    [v42 setOnlyShowIcon:1];
    [v21 _setSizeClassParameters:v42];
    sub_1004C2198();
    type metadata accessor for UILayoutPriority(0);
    v56 = 0x40000000;
    v57 = 1148846080;
    sub_1004CC8E8(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v43) = v58;
    [v21 setLayoutSize:24.0 withContentPriority:{24.0, v43}];

    goto LABEL_19;
  }

  v34 = v51;
  v35 = &v6[v31];
  v36 = v52;
  (*(v51 + 32))(v52, v35, v2);
  sub_1004CC8E8(&qword_100786EC0, &type metadata accessor for URL);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v34 + 8);
  v37(v36, v2);
  sub_1000079B4(v11, &unk_100775660);
  sub_1000079B4(v14, &unk_100775660);
  v37(v33, v2);
  sub_1000079B4(v6, &unk_100775660);
  if ((v48 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_100003540(0, &qword_100775690);
  v38 = TTRIRemindersListReminderCellLinkView.attachmentID.getter();
  v39 = TTRBoardReminderCellURLConfiguration.Attachment.attachmentID.getter();
  v40 = static NSObject.== infix(_:_:)();

  if ((v40 & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = v49;
LABEL_19:
  v44 = TTRBoardReminderCellURLConfiguration.Attachment.metadata.getter();
  if (v44)
  {
    v45 = v44;
    dispatch thunk of TTRIRemindersListReminderCellLinkView.setLoadedMetadataOnce(_:)();
  }

  (*(v54 + 8))(v20, v55);
  return v21;
}