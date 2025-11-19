uint64_t sub_100136E4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = TTRReminderDetailSubject.initialReminderChangeItem.getter();
    v6 = [v5 objectID];

    sub_100139614(v6, a4);
  }

  swift_getObjectType();
  return dispatch thunk of TTRIReminderDetailModuleInterface.navigate<A>(to:animated:moduleInterfaceType:)();
}

uint64_t sub_100136F3C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  result = sub_10013993C(a1, a2, a3, a4, a5);
  if (!v5)
  {
  }

  return result;
}

uint64_t sub_100136F64()
{
  swift_unknownObjectWeakDestroy();
  sub_10003B788(v0 + 24);
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_100136FF8()
{
  v0 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  sub_10046187C(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100139338(&unk_100781820, 255, type metadata accessor for OpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

uint64_t sub_100137108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001AA3C;

  return sub_100132B88(a1, a2, a3);
}

uint64_t sub_1001371B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  __chkstk_darwin(v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100139BF4(v1 + OBJC_IVAR____TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource_item, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for URL();
    a1[3] = v6;
    v7 = sub_1000317B8(a1);
    return (*(*(v6 - 8) + 32))(v7, v5, v6);
  }

  else
  {
    v9 = sub_100058000(&qword_10076DE60);

    v10 = [objc_allocWithZone(UIImage) init];
    a1[3] = sub_100003540(0, &qword_10076FCB0);
    *a1 = v10;
    v11 = type metadata accessor for URL();
    return (*(*(v11 - 8) + 8))(v5, v11);
  }
}

uint64_t sub_1001373D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v32[-v10];
  v12 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  __chkstk_darwin(v12);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100139BF4(v2 + OBJC_IVAR____TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource_item, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v6 + 32);
    v15(v9, v14, v5);
    *(a2 + 24) = v5;
    v16 = sub_1000317B8(a2);
    return v15(v16, v9, v5);
  }

  v18 = sub_100058000(&qword_10076DE60);

  v19 = *(v6 + 32);
  v19(v11, v14, v5);
  if (a1)
  {
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
    {

LABEL_8:
      *(a2 + 24) = v5;
      v25 = sub_1000317B8(a2);
      return v19(v25, v11, v5);
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_8;
    }
  }

  URL.startAccessingSecurityScopedResource()();
  v26 = Data.init(contentsOf:options:)();
  v28 = v27;
  v29 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v31 = [v29 initWithData:isa];

  sub_100139D84(v26, v28);
  URL.stopAccessingSecurityScopedResource()();
  if (v31)
  {
    *(a2 + 24) = sub_100003540(0, &qword_10076FCB0);
    *a2 = v31;
    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    result = (*(v6 + 8))(v11, v5);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100137AD8()
{
  result = type metadata accessor for TTRIRemindersListRouterShareSheetItem(319);
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

uint64_t *sub_100137B88(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    if (EnumCaseMultiPayload != 1)
    {
      v9 = sub_100058000(&qword_10076DE60);
      v10 = *(v9 + 48);
      v11 = (a1 + v10);
      v12 = (a2 + v10);
      v14 = *v12;
      v13 = v12[1];
      *v11 = v14;
      v11[1] = v13;
      v15 = *(v9 + 64);
      v16 = *(a2 + v15);
      *(a1 + v15) = v16;

      v17 = v16;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_100137CBC(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(a1, v3);
  if (EnumCaseMultiPayload != 1)
  {
    v4 = sub_100058000(&qword_10076DE60);

    v5 = *(a1 + *(v4 + 64));
  }
}

uint64_t sub_100137D70(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  if (EnumCaseMultiPayload != 1)
  {
    v6 = sub_100058000(&qword_10076DE60);
    v7 = *(v6 + 48);
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    v11 = *v9;
    v10 = v9[1];
    *v8 = v11;
    v8[1] = v10;
    v12 = *(v6 + 64);
    v13 = *(a2 + v12);
    *(a1 + v12) = v13;

    v14 = v13;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100137E50(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100137F48(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    if (EnumCaseMultiPayload != 1)
    {
      v6 = sub_100058000(&qword_10076DE60);
      v7 = *(v6 + 48);
      v8 = (a1 + v7);
      v9 = (a2 + v7);
      *v8 = *v9;
      v8[1] = v9[1];
      v10 = *(v6 + 64);
      v11 = *(a2 + v10);
      *(a1 + v10) = v11;

      v12 = v11;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100137F48(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100137FA4(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  if (EnumCaseMultiPayload != 1)
  {
    v6 = sub_100058000(&qword_10076DE60);
    *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
    *(a1 + *(v6 + 64)) = *(a2 + *(v6 + 64));
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100138070(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100137F48(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    if (EnumCaseMultiPayload != 1)
    {
      v6 = sub_100058000(&qword_10076DE60);
      *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
      *(a1 + *(v6 + 64)) = *(a2 + *(v6 + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10013814C()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_getTupleTypeLayout3();
    v3[4] = v3;
    v3[5] = v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_100138204(uint64_t a1, uint64_t a2)
{
  result = sub_100139338(&unk_10076DF10, a2, type metadata accessor for TTRIRemindersListRouter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10013825C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = TTRReminderDetailSubject.initialReminderChangeItem.getter();
    v6 = [v5 objectID];

    sub_100139614(v6, a4);
  }
}

uint64_t sub_100138310(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v40 = a7;
  v35 = a6;
  v41 = a5;
  v39 = a4;
  v42 = a3;
  v37 = a2;
  v36 = a1;
  v33 = a9;
  v10 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_100058000(&qword_10076DF38);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v34 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v16 = *(v34 - 8);
  __chkstk_darwin(v34);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRIReminderDetailStyle();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TTRReminderDetailSubject();
  v23 = *(v38 - 8);
  __chkstk_darwin(v38);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = a8;
  v55[4] = v33;
  v26 = sub_1000317B8(v55);
  (*(*(a8 - 8) + 16))(v26, v35, a8);
  v27 = v36;
  TTRReminderDetailSubject.init(reminderChangeItem:)();
  *v22 = 1;
  (*(v20 + 104))(v22, enum case for TTRIReminderDetailStyle.quickBarDueDatePicker(_:), v19);
  v28 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DateVisibleSection();
  (*(*(v28 - 8) + 16))(v18, v37, v28);
  v29 = v34;
  (*(v16 + 104))(v18, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.dueDate(_:), v34);
  v30 = type metadata accessor for TTRSectionLite();
  (*(*(v30 - 8) + 56))(v15, 1, 1, v30);
  v31 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
  v43 = v25;
  v44 = v40;
  v45 = v18;
  v46 = v39;
  v47 = v41;
  v48 = v22;
  v49 = v42;
  v50 = 1;
  v51 = v15;
  v52 = v12;
  v53 = v55;
  v54 = 0;
  firstly<A>(closure:)();

  sub_1000079B4(v12, &qword_10076DF30);
  sub_1000079B4(v15, &qword_10076DF38);
  (*(v16 + 8))(v18, v29);
  (*(v20 + 8))(v22, v19);
  (*(v23 + 8))(v25, v38);
  return sub_100004758(v55);
}

uint64_t sub_100138804(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v65 = a7;
  v66 = a4;
  v68 = a5;
  v60 = a1;
  v61 = a3;
  v64 = a9;
  v12 = type metadata accessor for TTRIPopoverAnchor();
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v59 = &v57 - v15;
  v16 = sub_100058000(&unk_10076FCD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  v22 = sub_100058000(&unk_10076DF90);
  __chkstk_darwin(v22 - 8);
  v24 = &v57 - v23;
  v25 = type metadata accessor for TTRIHashtagEditorPresentationStyle();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __chkstk_darwin(v29);
  v32 = &v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v33;
  (*(v33 + 16))(v32, a6, a8, v30);
  type metadata accessor for TTRIHashtagEditorAssembly();
  *v28 = a2;
  (*(v26 + 104))(v28, enum case for TTRIHashtagEditorPresentationStyle.batchEdit(_:), v25);
  v34 = type metadata accessor for TTRHashtagEditorModuleState();
  (*(*(v34 - 8) + 56))(v24, 1, 1, v34);
  v35 = static TTRIHashtagEditorAssembly.createViewController(style:reminderChangeItem:previousModuleState:delegate:undoManager:)();
  sub_1000079B4(v24, &unk_10076DF90);
  (*(v26 + 8))(v28, v25);
  swift_unknownObjectRelease();
  v36 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v35];
  v66 = v32;
  v68 = a8;
  v38 = v62;
  v37 = v63;
  dispatch thunk of TTRIRemindersListDetailPopoverAnchorProviding.acquirePopoverAnchor()();
  v64 = v21;
  sub_10000794C(v21, v18, &unk_10076FCD0);
  if ((*(v38 + 48))(v18, 1, v37) == 1)
  {
    v39 = v36;
    sub_1000079B4(v18, &unk_10076FCD0);
  }

  else
  {
    v40 = *(v38 + 32);
    v41 = v59;
    v40(v59, v18, v37);
    v61 = v36;
    UIPopoverArrowDirection.addingRTLFallback()();
    v42 = v35;
    v43 = v58;
    TTRIPopoverAnchor.withPermittedArrowDirectionsIfNil(_:)();
    v44 = *(v38 + 8);
    v44(v41, v37);
    v45 = v43;
    v35 = v42;
    v40(v41, v45, v37);
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    v44(v41, v37);
  }

  v46 = [v36 presentationController];

  if (v46)
  {
    [v46 setDelegate:v35];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    v49 = [Strong presentedViewController];
    if (v49)
    {
      v50 = v49;
      v51 = swift_allocObject();
      *(v51 + 16) = v48;
      *(v51 + 24) = v36;
      *(v51 + 32) = 1;
      aBlock[4] = sub_100139DD8;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_1007175F0;
      v52 = _Block_copy(aBlock);
      v53 = v36;
      v54 = v48;

      [v50 dismissViewControllerAnimated:1 completion:v52];
      _Block_release(v52);

      v35 = v54;
      v48 = v53;
      v36 = v50;
    }

    else
    {
      [v48 presentViewController:v36 animated:1 completion:0];
    }

    v55 = v36;

    v36 = v48;
    v35 = v55;
  }

  sub_1000079B4(v64, &unk_10076FCD0);
  return (*(v67 + 8))(v66, v68);
}

uint64_t sub_100138E84(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a7;
  v34 = a6;
  v40 = a5;
  v37 = a4;
  v41 = a3;
  v39 = a2;
  v35 = a1;
  v33 = a9;
  v10 = sub_100058000(&qword_10076DF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_100058000(&qword_10076DF38);
  __chkstk_darwin(v13 - 8);
  v15 = &v32 - v14;
  v32 = type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  v16 = *(v32 - 8);
  __chkstk_darwin(v32);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRIReminderDetailStyle();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TTRReminderDetailSubject();
  v23 = *(v36 - 8);
  __chkstk_darwin(v36);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[3] = a8;
  v54[4] = v33;
  v26 = sub_1000317B8(v54);
  (*(*(a8 - 8) + 16))(v26, v34, a8);
  v27 = v35;
  TTRReminderDetailSubject.init(reminderChangeItem:)();
  (*(v20 + 104))(v22, enum case for TTRIReminderDetailStyle.assignmentPicker(_:), v19);
  v28 = v32;
  (*(v16 + 104))(v18, enum case for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection.assignments(_:), v32);
  v29 = type metadata accessor for TTRSectionLite();
  (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
  v30 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  (*(*(v30 - 8) + 56))(v12, 1, 1, v30);
  v42 = v25;
  v43 = v38;
  v44 = v18;
  v45 = v37;
  v46 = v40;
  v47 = v22;
  v48 = v39;
  v49 = v41;
  v50 = v15;
  v51 = v12;
  v52 = v54;
  v53 = 1;
  firstly<A>(closure:)();

  sub_1000079B4(v12, &qword_10076DF30);
  sub_1000079B4(v15, &qword_10076DF38);
  (*(v16 + 8))(v18, v28);
  (*(v20 + 8))(v22, v19);
  (*(v23 + 8))(v25, v36);
  return sub_100004758(v54);
}

uint64_t sub_100139338(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100139380()
{
  v1 = *(type metadata accessor for TTRListOrCustomSmartList() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1001336B0(v2, v3, v4);
}

uint64_t sub_100139468(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderDetailSubject() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100136F3C(a1, *(v1 + 24), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100139510(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderDetailSubject() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  return sub_100136E4C(a1, *(v1 + 24), v1 + v4, *(v1 + v5));
}

id sub_100139614(void *a1, void *a2)
{
  v4 = type metadata accessor for AppEntityID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMFeatureFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for REMFeatureFlags.viewAnnotation(_:), v8);
  v12 = REMFeatureFlags.isEnabled.getter();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    result = [a2 isViewLoaded];
    if (result)
    {
      result = [a2 view];
      if (result)
      {
        v14 = result;
        type metadata accessor for ReminderEntity();
        v15 = a1;
        AppEntityID.init(objectID:)();
        sub_100139338(&qword_10076DF78, 255, &type metadata accessor for ReminderEntity);
        UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

        return (*(v5 + 8))(v7, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100139850(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = TTRReminderDetailSubject.initialReminderChangeItem.getter();
    v5 = [v4 objectID];

    sub_100139614(v5, a3);
  }

  swift_getObjectType();
  return dispatch thunk of TTRIReminderDetailModuleInterface.navigate<A>(to:animated:moduleInterfaceType:)();
}

uint64_t sub_10013993C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = TTRReminderDetailSubject.initialReminderChangeItem.getter();
    v8 = [v7 objectID];

    sub_100139614(v8, a4);
  }

  return a5;
}

uint64_t sub_100139A04(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRReminderDetailSubject() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_10013825C(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100139AAC()
{
  v1 = *(type metadata accessor for TTRReminderDetailSubject() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for REMNavigationSpecifier.ReminderPathSpecifier.DetailSection();
  return sub_100139850(*(v0 + 16), v0 + v2, *(v0 + v3));
}

uint64_t sub_100139BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100139C58()
{
  v1 = type metadata accessor for TTRIRemindersListRouterShareSheetItem(0);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100139BF4(v0 + OBJC_IVAR____TtCC9Reminders23TTRIRemindersListRouterP33_6FFDCD23D13881F9EFBB4406934282BE18ActivityItemSource_item, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100137F48(v3);
    return 0;
  }

  else
  {
    v5 = sub_100058000(&qword_10076DE60);
    v6 = &v3[*(v5 + 48)];
    v4 = *v6;
    v7 = *(v6 + 1);

    if (!v7)
    {
      v4 = 0;
    }

    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 8))(v3, v8);
  }

  return v4;
}

uint64_t sub_100139D84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100139DF0()
{
  result = qword_10076DFC0;
  if (!qword_10076DFC0)
  {
    sub_100003540(255, &qword_10076DFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076DFC0);
  }

  return result;
}

uint64_t sub_100139ED8(uint64_t a1, void (*a2)(uint64_t))
{
  updated = type metadata accessor for TTRRemindersBoardPresentationTreesManagementPresenterCapability.DeferredUpdateFlags();
  v4 = *(updated - 8);
  __chkstk_darwin(updated);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    a2(v8);
    TTRRemindersBoardPresentationTreesManagementPresenterCapability.scheduleUpdate(for:)();

    return (*(v4 + 8))(v6, updated);
  }

  return result;
}

uint64_t sub_100139FFC()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_10013A080@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v29 = type metadata accessor for TTRRemindersBoardCellPresentationStates();
  v5 = *(v29 - 8);
  v6 = __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = v1[9];
  v12 = v1[10];
  sub_10000C36C(v1 + 6, v11);
  (*(v12 + 16))(v11, v12);
  v14 = v13;
  ObjectType = swift_getObjectType();
  (*(v14 + 208))(ObjectType, v14);
  swift_unknownObjectRelease();
  swift_getObjectType();
  v16 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStates.getter();
  v20 = v1[9];
  v19 = v1[10];
  sub_10000C36C(v1 + 6, v20);
  (*(v19 + 16))(v20, v19);
  v22 = v21;
  v23 = swift_getObjectType();
  (*(v22 + 152))(v23, v22);
  swift_unknownObjectRelease();
  v24 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v4, 1, v24) == 1)
  {
    sub_1000079B4(v4, &unk_10078A380);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v25 + 8))(v4, v24);
  }

  v32 = swift_getObjectType();
  v33 = *(v18 + 8);
  v31 = v16;
  v26 = v29;
  (*(v5 + 16))(v8, v10, v29);
  swift_unknownObjectRetain();
  TTRRemindersBoardPresentationTrees.init(baseTree:isCollapsed:shouldhideEmptySectionless:placeholderRemindersAreHidden:cellPresentationStates:)();
  swift_unknownObjectRelease();
  return (*(v5 + 8))(v10, v26);
}

uint64_t sub_10013A408()
{
  v0 = type metadata accessor for TTRRemindersBoardPresentationTrees();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  TTRRemindersBoardPresentationTreesManagementPresenterCapability.presentationTree.getter();
  TTRRemindersBoardPresentationTrees.baseTree.getter();
  (*(v1 + 8))(v3, v0);
  TTRRemindersBoardCollapsedStatesPresenterCapability.pruneNonExistentItemIDs(with:)();
  return sub_100004758(v6);
}

uint64_t sub_10013A504(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10013A548(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v49 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v7 + 16);
  v50 = a1;
  v17 = a1;
  v18 = v16;
  (v16)(v11, v17, v6, v13);
  if ((*(v7 + 88))(v11, v6) == enum case for TTRRemindersListViewModel.ItemID.sectionID(_:))
  {
    (*(v7 + 96))(v11, v6);
    (*(v51 + 32))(v15, v11, v52);
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    v19 = (*(v3 + 88))(v5, v2);
    if (v19 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(v3 + 8))(v5, v2);
      v47 = sub_100003540(0, &unk_10076B890);
      sub_100058000(&qword_10076B780);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_10062D410;
      v48 = sub_100003540(0, &qword_10076BA60);
      v20 = static TTRLocalizableStrings.Common.renameButton.getter();
      v41 = v21;
      v42 = v20;
      v22 = String._bridgeToObjectiveC()();
      v44 = objc_opt_self();
      v23 = [v44 systemImageNamed:v22];

      v24 = swift_allocObject();
      swift_weakInit();
      v46 = v15;
      v25 = v49;
      v43 = v18;
      v18(v49, v50, v6);
      v26 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v24;
      v40 = *(v7 + 32);
      v40(v27 + v26, v25, v6);
      v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v29 = v45;
      *(v45 + 32) = v28;
      v30 = static TTRLocalizableStrings.Common.deleteButton.getter();
      v41 = v31;
      v42 = v30;
      v32 = String._bridgeToObjectiveC()();
      v33 = [v44 systemImageNamed:v32];

      v34 = swift_allocObject();
      swift_weakInit();
      v43(v25, v50, v6);
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      v40(v35 + v26, v25, v6);
      *(v29 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v53.value.super.isa = 0;
      v53.is_nil = 0;
      isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v36, 0, v53, 0, 0xFFFFFFFFFFFFFFFFLL, v29, v39).super.super.isa;
      (*(v51 + 8))(v46, v52);
      return isa;
    }

    if (v19 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) || v19 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
    {
      (*(v51 + 8))(v15, v52);
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      if (v19 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v51 + 8))(v15, v52);
    }
  }

  else
  {
    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

uint64_t sub_10013ABB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v3 = sub_100058000(&unk_100781850);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for TTRRemindersBoardPresentationTrees();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TTRRemindersBoardPresentationTreesManagementPresenterCapability.presentationTree.getter();
    TTRRemindersBoardPresentationTrees.baseTree.getter();
    (*(v10 + 8))(v12, v9);
    sub_10000C36C(v22, v22[3]);
    dispatch thunk of TTRTreeContentsQueryable.item(withID:)();
    if ((*(v14 + 48))(v8, 1, v13) == 1)
    {

      sub_1000079B4(v8, &qword_100772140);
      return sub_100004758(v22);
    }

    else
    {
      (*(v14 + 32))(v16, v8, v13);
      sub_100004758(v22);
      v18 = enum case for TTREditingStateOption.InputType.unspecified(_:);
      v19 = type metadata accessor for TTREditingStateOption.InputType();
      v20 = *(v19 - 8);
      (*(v20 + 104))(v5, v18, v19);
      (*(v20 + 56))(v5, 0, 1, v19);
      sub_10013AF44(v16, v5);

      sub_1000079B4(v5, &unk_100781850);
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_10013AF44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100781850);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000794C(a2, v6, &unk_100781850);
    v12 = *(v8 + 48);
    if (v12(v6, 1, v7) == 1)
    {
      (*(v8 + 104))(v10, enum case for TTREditingStateOption.InputType.unspecified(_:), v7);
      if (v12(v6, 1, v7) != 1)
      {
        sub_1000079B4(v6, &unk_100781850);
      }
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
    }

    sub_10047968C(a1, v10);
    swift_unknownObjectRelease();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_10013B168()
{
  v0 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v0 - 8);
  v2 = v17 - v1;
  v3 = type metadata accessor for TTRRemindersBoardPresentationTrees();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    TTRRemindersBoardPresentationTreesManagementPresenterCapability.presentationTree.getter();
    TTRRemindersBoardPresentationTrees.baseTree.getter();
    (*(v4 + 8))(v6, v3);
    sub_10000C36C(v17, v18);
    dispatch thunk of TTRTreeContentsQueryable.item(withID:)();
    if ((*(v8 + 48))(v2, 1, v7) == 1)
    {

      sub_1000079B4(v2, &qword_100772140);
    }

    else
    {
      (*(v8 + 32))(v10, v2, v7);
      sub_100004758(v17);
      v13 = v12[9];
      v14 = v12[11];
      v15 = sub_10000C36C(v12 + 6, v13);
      v18 = v13;
      v19 = v14;
      v16 = sub_1000317B8(v17);
      (*(*(v13 - 8) + 16))(v16, v15, v13);
      (*(v14 + 88))(v10, TTRReminderIDsWithMatchingHashtagsProvider.init(reminders:), 0, v13, v14);

      (*(v8 + 8))(v10, v7);
    }

    return sub_100004758(v17);
  }

  return result;
}

uint64_t sub_10013B49C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersBoardPresentationTrees();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersBoardPresentationTreesManagementPresenterCapability.presentationTree.getter();
  v6 = TTRRemindersBoardPresentationTrees.isCollapsible(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();
  if (dispatch thunk of TTRRemindersBoardItemCollapsedStates.isCollapsed(_:)())
  {
    return 0;
  }

  sub_100058000(&qword_100772760);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10062D400;
  (*(v9 + 16))(v11 + v10, a1, v8);
  v12[1] = v11;
  sub_100058000(&unk_1007821D0);
  sub_10011763C(&unk_100784540, &unk_1007821D0);
  dispatch thunk of TTRRemindersBoardItemCollapsedStates.collapse<A>(_:)();

  TTRRemindersBoardPresentationTreesManagementPresenterCapability.performPendingUpdatesImmediately()();
  return 1;
}

uint64_t sub_10013B6DC@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.Item.BoardViewCasesInItem();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v45 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for TTRRemindersBoardPresentationTrees();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersBoardPresentationTreesManagementPresenterCapability.presentationTree.getter();
  TTRRemindersBoardPresentationTrees.baseTree.getter();
  (*(v16 + 8))(v18, v15);
  sub_10000C36C(v50, v51);
  dispatch thunk of TTRTreeContentsQueryable.item(withID:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_100772140);
    v19 = sub_100058000(&qword_100769530);
    (*(*(v19 - 8) + 56))(v49, 1, 1, v19);
    return sub_100004758(v50);
  }

  (*(v10 + 32))(v14, v8, v9);
  sub_10000C36C(v50, v51);
  v44 = *(v10 + 16);
  v44(v5, v14, v9);
  v20 = *(v10 + 56);
  v20(v5, 0, 1, v9);
  v21 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
  sub_1000079B4(v5, &qword_100772140);
  if (v21 < 1)
  {
    (*(v10 + 8))(v14, v9);
    v30 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
    v31 = sub_100058000(&qword_100769530);
    v32 = *(v31 - 8);
    v28 = v49;
    (*(v32 + 104))(v49, v30, v31);
LABEL_14:
    (*(v32 + 56))(v28, 0, 1, v31);
    return sub_100004758(v50);
  }

  v43 = v52;
  sub_10000C36C(v50, v51);
  v44(v5, v14, v9);
  v20(v5, 0, 1, v9);
  v22 = v48;
  dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
  sub_1000079B4(v5, &qword_100772140);
  v23 = v45;
  TTRRemindersListViewModel.Item.boardViewCasesOnly.getter();
  v24 = v46;
  v25 = v47;
  v26 = (*(v46 + 88))(v23, v47);
  if (v26 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.section(_:))
  {
    v27 = *(v10 + 8);
    v27(v22, v9);
    v27(v14, v9);
    (*(v24 + 8))(v23, v25);
    v28 = v49;
LABEL_6:
    v29 = sub_100058000(&qword_100769530);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    return sub_100004758(v50);
  }

  v28 = v49;
  if (v26 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.reminder(_:) || v26 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.uncommittedReminder(_:))
  {
    (*(v24 + 8))(v23, v25);
    v38 = v48;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v39 = *(v10 + 8);
    v39(v38, v9);
    v39(v14, v9);
    v40 = enum case for TTRRelativeInsertionPosition.after<A>(_:);
    v31 = sub_100058000(&qword_100769530);
    v32 = *(v31 - 8);
    (*(v32 + 104))(v28, v40, v31);
    goto LABEL_14;
  }

  if (v26 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.placeholderReminder(_:))
  {
    v33 = v48;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v34 = *(v10 + 8);
    v34(v33, v9);
    v34(v14, v9);
    v35 = enum case for TTRRelativeInsertionPosition.before<A>(_:);
    v36 = sub_100058000(&qword_100769530);
    v37 = *(v36 - 8);
    (*(v37 + 104))(v28, v35, v36);
    (*(v37 + 56))(v28, 0, 1, v36);
    (*(v24 + 8))(v23, v25);
    return sub_100004758(v50);
  }

  if (v26 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.unknown(_:))
  {
    v42 = *(v10 + 8);
    v42(v48, v9);
    v42(v14, v9);
    goto LABEL_6;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10013BF18(uint64_t a1, char a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.BoardViewCasesInItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.boardViewCasesOnly.getter();
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.section(_:))
  {
    goto LABEL_2;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.reminder(_:))
  {
    goto LABEL_4;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.uncommittedReminder(_:) || v7 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.placeholderReminder(_:))
  {
LABEL_2:
    a2 = 0;
LABEL_4:
    (*(v4 + 8))(v6, v3);
    return a2 & 1;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.BoardViewCasesInItem.unknown(_:))
  {
    a2 = 0;
    return a2 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10013C088()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v2 = *(Strong + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 64);
  v5 = v1;
  v6 = v4(ObjectType, v2);

  if (v6)
  {
    v7 = UIView.firstResponderDescendant.getter();
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRelease();
  return v7;
}

void *sub_10013C13C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_collectionView);
  v2 = v1;
  swift_unknownObjectRelease();
  return v1;
}

id sub_10013C1A8(uint64_t a1)
{
  v2 = sub_100058000(&unk_100781850);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v100 = &v93 - v6;
  v98 = sub_100058000(&qword_10076E0C8);
  __chkstk_darwin(v98);
  v97 = &v93 - v7;
  v111 = type metadata accessor for TTREditingStateOption.InputType();
  v8 = *(v111 - 8);
  v9 = __chkstk_darwin(v111);
  v96 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v93 - v11;
  v108 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v114 = *(v108 - 8);
  __chkstk_darwin(v108);
  v113 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_10078A380);
  v14 = __chkstk_darwin(v13 - 8);
  v106 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v112 = &v93 - v16;
  v17 = sub_100058000(&qword_100784550);
  v18 = __chkstk_darwin(v17 - 8);
  v99 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v93 - v20;
  v22 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates();
  v109 = *(v22 - 8);
  v110 = v22;
  __chkstk_darwin(v22);
  v120 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100058000(&qword_10076E0D0);
  v27 = __chkstk_darwin(v26 - 8);
  v107 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v93 - v29;
  v31 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v31 - 8);
  v33 = &v93 - v32;
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v101 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v93 - v38;
  v119 = a1;
  TTRRemindersListTreeViewModelUpdateContext.itemToStartEditing.getter();
  v40 = sub_100058000(&unk_1007756F0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v103 = v41 + 48;
  v104 = v42;
  v43 = v42(v30, 1, v40);
  v116 = v34;
  v95 = v5;
  v118 = v21;
  v115 = v8;
  v105 = v40;
  if (v43 == 1)
  {
    sub_1000079B4(v30, &qword_10076E0D0);
    v44 = v35;
    (*(v35 + 56))(v33, 1, 1, v34);
LABEL_4:
    sub_1000079B4(v33, &qword_100772140);
    v48 = v117;
    v35 = v44;
    goto LABEL_6;
  }

  v45 = v8;
  v46 = *(v40 + 48);
  v47 = *(v35 + 32);
  v47(v33, v30, v34);
  (*(v35 + 56))(v33, 0, 1, v34);
  (*(v45 + 8))(&v30[v46], v111);
  v44 = v35;
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    goto LABEL_4;
  }

  v49 = v116;
  v47(v39, v33, v116);
  v48 = v117;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  TTRRemindersBoardCellPresentationStatesPresenterCapability.prepareToInsertAndEdit(_:)();
  (*(v93 + 8))(v25, v94);
  (*(v35 + 8))(v39, v49);
LABEL_6:
  v51 = v112;
  v50 = v113;
  TTRRemindersListTreeViewModelUpdateContext.shouldReload.getter();
  TTRRemindersListTreeViewModelUpdateContext.updatedItemIDs.getter();
  TTRRemindersListTreeViewModelUpdateContext.animated.getter();
  TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForDataModelUpdate(shouldReload:itemIDsToForceUpdate:animated:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v53 = v114;
  v54 = v115;
  v55 = v118;
  if (Strong)
  {
    v56 = Strong;
    result = [Strong isViewLoaded];
    if (result)
    {
      if (!*&v56[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability])
      {
        __break(1u);
        return result;
      }

      TTRRemindersBoardPresentationTreesManagementViewCapability.applyPresentationTrees(with:)();
    }

    swift_unknownObjectRelease();
  }

  v58 = v48[9];
  v59 = v48[10];
  sub_10000C36C(v48 + 6, v58);
  (*(v59 + 16))(v58, v59);
  v61 = v60;
  ObjectType = swift_getObjectType();
  (*(v61 + 152))(ObjectType, v61);
  swift_unknownObjectRelease();
  v63 = v106;
  sub_10000794C(v51, v106, &unk_10078A380);
  v64 = 1;
  v65 = v108;
  if ((*(v53 + 48))(v63, 1, v108) != 1)
  {
    (*(v53 + 32))(v50, v63, v65);
    if (TTRRemindersListViewModel.ListInfo.canToggleCompletedReminderVisbility.getter() & 1) != 0 && (TTRRemindersListViewModel.ListInfo.completedRemindersShown.getter() & 1) != 0 && (TTRRemindersListViewModel.ListInfo.canClearCompletedReminders.getter())
    {
      TTRRemindersListViewModel.ListInfo.completedRemindersState(completedRowHasShowHide:)();
      v64 = 0;
    }

    (*(v53 + 8))(v50, v65);
  }

  sub_1000079B4(v51, &unk_10078A380);
  v66 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  (*(*(v66 - 8) + 56))(v55, v64, 1, v66);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v67 = v99;
    sub_10000794C(v55, v99, &qword_100784550);
    sub_100477384(v67);
    swift_unknownObjectRelease();
  }

  v68 = v107;
  TTRRemindersListTreeViewModelUpdateContext.itemToStartEditing.getter();
  v69 = v105;
  if (v104(v68, 1, v105) == 1)
  {
    sub_1000079B4(v55, &qword_100784550);
    (*(v109 + 8))(v120, v110);
    return sub_1000079B4(v68, &qword_10076E0D0);
  }

  else
  {
    v70 = *(v69 + 48);
    v71 = v98;
    v72 = *(v98 + 48);
    v73 = *(v35 + 32);
    v74 = v97;
    v119 = v35;
    v75 = v116;
    v73(v97, v68, v116);
    v76 = *(v54 + 32);
    v77 = v68 + v70;
    v78 = v111;
    v76(&v74[v72], v77, v111);
    v79 = *(v71 + 48);
    v80 = v101;
    v73(v101, v74, v75);
    v81 = &v74[v79];
    v82 = v102;
    v83 = v76;
    v76(v102, v81, v78);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v84 = v100;
      (*(v54 + 16))(v100, v82, v78);
      (*(v54 + 56))(v84, 0, 1, v78);
      v85 = v95;
      sub_10000794C(v84, v95, &unk_100781850);
      v86 = *(v54 + 48);
      v87 = v86(v85, 1, v78);
      v88 = v118;
      if (v87 == 1)
      {
        v89 = v96;
        (*(v54 + 104))(v96, enum case for TTREditingStateOption.InputType.unspecified(_:), v78);
        if (v86(v85, 1, v78) != 1)
        {
          sub_1000079B4(v85, &unk_100781850);
        }
      }

      else
      {
        v89 = v96;
        v83(v96, v85, v78);
      }

      v91 = v101;
      sub_10047968C(v101, v89);
      swift_unknownObjectRelease();
      v92 = *(v54 + 8);
      v92(v89, v78);
      sub_1000079B4(v100, &unk_100781850);
      v92(v102, v78);
      (*(v119 + 8))(v91, v116);
      v90 = v88;
    }

    else
    {
      (*(v54 + 8))(v82, v78);
      (*(v119 + 8))(v80, v75);
      v90 = v118;
    }

    sub_1000079B4(v90, &qword_100784550);
    return (*(v109 + 8))(v120, v110);
  }
}

uint64_t sub_10013CF08(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(v3 + 16);
    v11(v8, a1, v2);
    v12 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    v11(v6, v10 + v12, v2);
    swift_beginAccess();
    (*(v3 + 24))(v10 + v12, v8, v2);
    swift_endAccess();
    sub_10038A3F8(v6);
    swift_unknownObjectRelease();
    v13 = *(v3 + 8);
    v13(v6, v2);
    return (v13)(v8, v2);
  }

  return result;
}

uint64_t sub_10013D0BC(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 16))(v5, a1, v2);
    v8 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
    swift_beginAccess();
    (*(v3 + 24))(v7 + v8, v5, v2);
    swift_endAccess();
    sub_10037D260();
    swift_unknownObjectRelease();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

id sub_10013D204()
{
  v0 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForUpdatedItems(_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v1 + 8))(v3, v0);
  }

  v5 = Strong;
  result = [Strong isViewLoaded];
  if (!result)
  {
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v3, v0);
  }

  if (*&v5[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability])
  {

    TTRRemindersBoardPresentationTreesManagementViewCapability.applyPresentationTrees(with:)();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10013D354(void *a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  sub_10000C36C(a1, a1[3]);
  TTRRemindersListEditingState.editingItem.getter();
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100772140);
    v10 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v9 + 8))(v4, v8);
    v10 = 0;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v11 - 8) + 56))(v7, v10, 1, v11);
  TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.setter();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_10000C36C(a1, a1[3]);
    v14 = dispatch thunk of TTRRemindersListEditingState.isEditingTable.getter() & 1;
    sub_10037C41C();
    if (v14 != [v13 isEditing])
    {
      UIViewController.endFirstResponderEditing()();
      v15 = type metadata accessor for TTRIShowRemindersViewController();
      v16.receiver = v13;
      v16.super_class = v15;
      objc_msgSendSuper2(&v16, "setEditing:animated:", v14, 1);
      [*&v13[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] setEditing:v14 animated:1];
      sub_10037DD70(1, 1);
      sub_10037FFC0();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013D604(uint64_t a1)
{
  v2 = type metadata accessor for TTRSharedWithYouHighlight();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775700);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_100058000(&qword_10076E0B8);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v21 = v5;
    v14 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
    swift_beginAccess();
    v15 = *(v9 + 48);
    sub_10000794C(v13 + v14, v11, &qword_100775700);
    v22 = a1;
    sub_10000794C(a1, &v11[v15], &qword_100775700);
    v16 = *(v3 + 48);
    if (v16(v11, 1, v2) == 1)
    {
      if (v16(&v11[v15], 1, v2) == 1)
      {
        swift_unknownObjectRelease();
        return sub_1000079B4(v11, &qword_100775700);
      }
    }

    else
    {
      sub_10000794C(v11, v8, &qword_100775700);
      if (v16(&v11[v15], 1, v2) != 1)
      {
        v17 = &v11[v15];
        v18 = v21;
        (*(v3 + 32))(v21, v17, v2);
        sub_10013ED04(&qword_10076E0C0, &type metadata accessor for TTRSharedWithYouHighlight);
        v19 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20 = *(v3 + 8);
        v20(v18, v2);
        v20(v8, v2);
        sub_1000079B4(v11, &qword_100775700);
        if (v19)
        {
          return swift_unknownObjectRelease();
        }

        goto LABEL_8;
      }

      (*(v3 + 8))(v8, v2);
    }

    sub_1000079B4(v11, &qword_10076E0B8);
LABEL_8:
    swift_beginAccess();
    sub_10013EC94(v22, v13 + v14);
    swift_endAccess();
    sub_10037C41C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013D9A4(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  sub_10000794C(a1, v4, &qword_100772140);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100772140);
    v10 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v9 + 8))(v4, v8);
    v10 = 0;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v11 - 8) + 56))(v7, v10, 1, v11);
  return TTRRemindersBoardCellPresentationStatesPresenterCapability.itemIDWithAnchoredPopover.setter();
}

uint64_t sub_10013DB88()
{
  v0 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v1 + 104))(v3, enum case for TTRRemindersListItemStateTracker.CellState.viewModelLoaded(_:), v0);
    v4 = TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)();
    (*(v1 + 8))(v3, v0);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = type metadata accessor for PromiseError();
    sub_10013ED04(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PromiseError.cancelled(_:), v6);
    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10013DD8C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(sub_10038B740() + 32) = *(result + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight);

    sub_1001751B0(a1, a2);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10013DE30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong view];
    if (v1)
    {
      v2 = v1;
      UIView.ttr_displayScale.getter();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10013DEA4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = [result view];
    if (result)
    {
      v1 = result;
      v2 = UIView.ttr_userInterfaceLayoutDirection.getter();
      swift_unknownObjectRelease();

      return v2;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

BOOL sub_10013DF10()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v1 = [Strong traitCollection];
  v2 = [v1 horizontalSizeClass];

  swift_unknownObjectRelease();
  return v2 == 1;
}

uint64_t sub_10013DF8C()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  sub_100390560();
  v1 = v0;
  swift_unknownObjectRelease();
  return v1;
}

void *sub_10013DFE8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = [result _appearState];
    swift_unknownObjectRelease();
    return (v1 == 0);
  }

  return result;
}

uint64_t sub_10013E034()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10047C0F8();
    v1 = v0;
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_10013E0C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TTRDerivedUntouchedPresentationTreeMaker();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_10072C4E8;
  *a1 = result;
  return result;
}

uint64_t sub_10013E110(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10038E060(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013E168(char *a1, char a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10038E190(a1, a2 & 1, a3 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013E20C()
{
  sub_100058000(&qword_10076E0B0);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_10011763C(&unk_100784560, &qword_10076E0B0);
  sub_10013ED04(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  Sequence.mapToSet<A>(_:)();
  return TTRRemindersBoardCellPresentationStatesPresenterCapability.itemIDsWithPonderingTextEffect.setter();
}

double sub_10013E2FC@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    ObjectType = swift_getObjectType();
    if (sub_100380378(a1, a2))
    {
      *(a3 + 24) = ObjectType;
      *a3 = v7;
      return result;
    }

    swift_unknownObjectRelease();
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_10013E37C(uint64_t a1)
{
  v3 = v1[9];
  v4 = v1[11];
  v5 = sub_10000C36C(v1 + 6, v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 240))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_10013E438(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10047E630(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013E494@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10047EE54(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v3 = type metadata accessor for TTRIPopoverAnchor();
    return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  }
}

uint64_t sub_10013E544(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = sub_10047F094(a1, a2 & 1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = type metadata accessor for PromiseError();
    sub_10013ED04(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PromiseError.cancelled(_:), v6);
    sub_100058000(&unk_10078A2F0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10013E680(uint64_t a1, UITableViewScrollPosition a2, char a3)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRIRemindersBoardMainViewController();
    v6 = sub_10048079C(a1, a2, a3 & 1);
    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    v8 = type metadata accessor for PromiseError();
    sub_10013ED04(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PromiseError.cancelled(_:), v8);
    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10013E800(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10037F35C(a1 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013E858@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10013E8C8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10038B740();
    sub_100176334();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_10013E92C()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v0 = UIAccessibilityAnnouncementNotification;
    v1 = String._bridgeToObjectiveC()();
    UIAccessibilityPostNotification(v0, v1);
  }
}

uint64_t sub_10013E9C0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  return swift_endAccess();
}

void sub_10013EA08()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong viewIfLoaded];
    [v1 layoutBelowIfNeeded];
    swift_unknownObjectRelease();
  }
}

id sub_10013EA8C()
{
  v0 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForMoves()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v1 + 8))(v3, v0);
  }

  v5 = Strong;
  result = [Strong isViewLoaded];
  if (!result)
  {
    swift_unknownObjectRelease();
    return (*(v1 + 8))(v3, v0);
  }

  if (*&v5[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability])
  {

    TTRRemindersBoardPresentationTreesManagementViewCapability.applyPresentationTrees(with:)();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  __break(1u);
  return result;
}

char *sub_10013EBD4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    result = [result isViewLoaded];
    if (result)
    {
      if (!*&v1[OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presentationTreesCapability])
      {
        __break(1u);
        return result;
      }

      TTRRemindersBoardPresentationTreesManagementViewCapability.applyPresentationTrees(with:)();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013EC94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100775700);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013ED04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013ED64()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10013EE40(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for TTRRemindersListViewModel.ItemID() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_10013EEC8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076E0D8);
  v1 = sub_100003E30(v0, qword_10076E0D8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10013EF90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong navigationController];

      if (v11)
      {
        v12 = [v11 popViewControllerAnimated:1];
      }
    }

    v13 = type metadata accessor for TTRListOrCustomSmartList();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v8, a2, v13);
    (*(v14 + 56))(v8, 0, 1, v13);
    a4(v8);
  }

  else
  {
    v15 = type metadata accessor for TTRListOrCustomSmartList();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v8, a2, v15);
    (*(v16 + 56))(v8, 0, 1, v15);
    a4(v8);
  }

  return sub_10013F39C(v8);
}

void sub_10013F1E4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10013F350();
    v2 = static HLPHelpViewController.viewController(forShowing:)();
    if (v2)
    {
      oslog = v2;
      [v1 presentViewController:? animated:? completion:?];

      goto LABEL_9;
    }
  }

  if (qword_100766F58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10076E0D8);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Attempted to open help with an empty view controller or HLPHelpViewController", v5, 2u);
  }

LABEL_9:
}

unint64_t sub_10013F350()
{
  result = qword_1007759E0;
  if (!qword_1007759E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007759E0);
  }

  return result;
}

uint64_t sub_10013F39C(uint64_t a1)
{
  v2 = sub_100058000(&unk_10076DF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10013F404(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      sub_100003540(0, &qword_10076BB00);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1002613B0(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_10013F4C8@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v5 - 8);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v8 - 8);
  v10 = v50 - v9;
  v11 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v11 - 8);
  v13 = v50 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v62 = *(v14 - 8);
  v63 = v14;
  __chkstk_darwin(v14);
  v65 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v16 = *(v61 - 8);
  __chkstk_darwin(v61);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v19 - 8);
  v21 = v50 - v20;
  v22 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v22 - 8);
  v24 = v50 - v23;
  v25 = *(v1 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group);
  if (v25)
  {
    v26 = v1;
    v57 = v13;
    v58 = v10;
    v59 = v7;
    v60 = v4;
    v27 = v25;
    *v24 = [v27 objectID];
    v24[8] = 1;
    v28 = enum case for TTRListType.list(_:);
    v29 = type metadata accessor for TTRListType();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v24, v28, v29);
    (*(v30 + 56))(v24, 0, 1, v29);
    v54 = v27;
    v31 = [v27 name];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v33;
    v53 = v32;

    v51 = static TTRListColors.SmartList.all.getter();
    v34 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
    v35 = *(*(v34 - 8) + 56);
    v55 = v21;
    v35(v21, 1, 1, v34);
    v56 = v26;
    swift_getObjectType();
    v36 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
    if (v36)
    {
      swift_unknownObjectRelease();
    }

    TTRRemindersListSectionMenuCapabilities.init()();
    v50[1] = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v16 + 8))(v18, v61);
    v37 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
    if (v37)
    {
      swift_unknownObjectRelease();
    }

    (*(v62 + 104))(v65, enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:), v63);
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
    v38 = v67;
    sub_1000079B4(v66, &qword_1007693C0);
    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
    {
      swift_getObjectType();
      LODWORD(v63) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
      swift_unknownObjectRelease();
    }

    else
    {
      LODWORD(v63) = 0;
    }

    LODWORD(v56) = v38 != 0;
    LODWORD(v62) = v37 != 0;
    LODWORD(v61) = v36 != 0;
    v44 = v54;
    v45 = [v54 name];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
    (*(*(v46 - 8) + 56))(v57, 1, 1, v46);
    v47 = type metadata accessor for TTRTemplatePublicLinkData();
    (*(*(v47 - 8) + 56))(v58, 1, 1, v47);
    TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
    TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
    v48 = v64;
    TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

    v49 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
  }

  else
  {
    v39 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v40 = *(*(v39 - 8) + 56);
    v41 = v39;
    v42 = v64;

    return v40(v42, 1, 1, v41);
  }
}

uint64_t sub_10013FCC0()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_10013FDD0()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.all(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10013FEE0@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = swift_allocObject();
  swift_weakInit();
  *a1 = sub_10014AB68;
  a1[1] = v2;
  v3 = enum case for TTRRemindersListSubtaskDisplayStyle.itemSpecific(_:);
  v4 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_10013FF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_100140098(a1);

    v5 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle();
    if (v4)
    {
      v6 = &enum case for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle.subtaskCount(_:);
    }

    else
    {
      v6 = &enum case for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle.childItems(_:);
    }

    return (*(*(v5 - 8) + 104))(a2, *v6, v5);
  }

  else
  {
    v7 = enum case for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle.subtaskCount(_:);
    v8 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle();
    return (*(*(v8 - 8) + 104))(a2, v7, v8);
  }
}

uint64_t sub_100140098(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v44 = &v40 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v42 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v9 + 16);
  v43 = a1;
  v18(v13, a1, v8);
  v19 = (*(v9 + 88))(v13, v8);
  if (v19 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:) || v19 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v9 + 96))(v13, v8);
    (*(v15 + 32))(v17, v13, v14);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v21 = (*(v5 + 88))(v7, v4);
    if (v21 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
    {
      goto LABEL_7;
    }

    if (v21 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v5 + 96))(v7, v4);
      v41 = *v7;
      v22 = [v41 entityName];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      sub_100003540(0, &qword_10076E8E8);
      v26 = [swift_getObjCClassFromMetadata() cdEntityName];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v27 == v23 && v29 == v25)
      {
      }

      else
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v31 & 1) == 0)
        {
          sub_100003540(0, &qword_10076E8F0);
          v35 = [swift_getObjCClassFromMetadata() cdEntityName];
          v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v37;

          if (v36 == v23 && v38 == v25)
          {
          }

          else
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v39 & 1) == 0)
            {
              v32 = TTRRemindersListViewModel.SectionHeader.isCustomSmartList.getter();

              (*(v15 + 8))(v17, v14);
              return v32 & 1;
            }
          }

          (*(v15 + 8))(v17, v14);

          v30 = v44;
          goto LABEL_28;
        }
      }

      (*(v15 + 8))(v17, v14);

      goto LABEL_27;
    }

    if (v21 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v21 == enum case for TTRRemindersListViewModel.SectionID.date(_:) || v21 == enum case for TTRRemindersListViewModel.SectionID.day(_:) || v21 == enum case for TTRRemindersListViewModel.SectionID.month(_:) || v21 == enum case for TTRRemindersListViewModel.SectionID.year(_:) || v21 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
    {
LABEL_7:
      (*(v15 + 8))(v17, v14);
      (*(v5 + 8))(v7, v4);
      goto LABEL_30;
    }

    if (v21 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
    {
      (*(v15 + 8))(v17, v14);
      (*(v5 + 8))(v7, v4);
      goto LABEL_27;
    }

    if (v21 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
    {
      (*(v15 + 8))(v17, v14);
      (*(v5 + 8))(v7, v4);
      v30 = v44;
      goto LABEL_28;
    }
  }

  else
  {
    if (v19 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
    {
      (*(v9 + 8))(v13, v8);
LABEL_27:
      v30 = v44;
      goto LABEL_28;
    }

    v30 = v44;
    if (v19 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:))
    {
      (*(v9 + 8))(v13, v8);
LABEL_28:

      TTRRemindersListTreeViewModel.parent(of:)();

      if ((*(v9 + 48))(v30, 1, v8) != 1)
      {
        v33 = v42;
        (*(v9 + 32))(v42, v30, v8);
        v32 = sub_100140098(v33);
        (*(v9 + 8))(v33, v8);
        return v32 & 1;
      }

      sub_1000079B4(v30, &qword_100772140);
LABEL_30:
      v32 = 0;
      return v32 & 1;
    }

    if (v19 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v19 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v19 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v19 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      (*(v9 + 8))(v13, v8);
      goto LABEL_30;
    }

    v32 = 0;
    if (v19 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v19 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      return v32 & 1;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1001408E4()
{
  sub_100058000(&qword_1007693A8);
  v0 = type metadata accessor for TTRRemindersListViewModel.LeadingActionConfiguration();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10062D400;
  (*(v1 + 104))(v3 + v2, enum case for TTRRemindersListViewModel.LeadingActionConfiguration.indentation(_:), v0);
  return v3;
}

uint64_t sub_1001409C4@<X0>(_BYTE *a1@<X8>)
{
  v43 = a1;
  v44 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v44);
  v40 = (v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v41 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = (v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = v38 - v7;
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v11 = v38 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  v14 = __chkstk_darwin(v12);
  v39 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v38 - v15;
  v17 = v1;

  TTRRemindersListTreeViewModel.primarySectionItem.getter();

  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v11, 1, v18) == 1)
  {
    sub_1000079B4(v11, &qword_100772140);
LABEL_8:
    v21 = v43;
LABEL_9:
    *v21 = 0;
    swift_storeEnumTagMultiPayload();
    v22 = 0;
    v23 = sub_10057F4D0;
    goto LABEL_10;
  }

  if ((*(v19 + 88))(v11, v18) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v19 + 8))(v11, v18);
    goto LABEL_8;
  }

  (*(v19 + 96))(v11, v18);
  v38[0] = *(v42 + 32);
  v38[1] = v42 + 32;
  (v38[0])(v16, v11, v12);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v17 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v20 = sub_100145ED8(v8);

    (*(v41 + 8))(v8, v3);
    v21 = v43;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v27 = v41;
    (*(v41 + 32))(v6, v8, v3);
    if ((*(v27 + 88))(v6, v3) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v27 + 8))(v6, v3);
      v21 = v43;
LABEL_18:
      (*(v42 + 8))(v16, v12);
      goto LABEL_9;
    }

    (*(v27 + 96))(v6, v3);
    v20 = *v6;
    v21 = v43;
  }

  if (TTRRemindersListViewModel.SectionHeader.isCustomSmartList.getter())
  {

    v28 = &enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
    v29 = v40;
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v30 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.list(with:)();
    swift_unknownObjectRelease();
    if (v30)
    {

      v29 = v40;
      *v40 = v30;
      v28 = &enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:);
    }

    else
    {
      v31 = v40;
      *v40 = v20;
      v29 = v31;
      v28 = &enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
    }
  }

  v32 = *v28;
  v33 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v33 - 8) + 104))(v29, v32, v33);
  swift_storeEnumTagMultiPayload();
  v34 = v39;
  v35 = v16;
  v36 = v38[0];
  (v38[0])(v39, v35, v12);
  v37 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v22 = swift_allocObject();
  v36(v22 + v37, v34, v12);
  sub_10014AA38(v29, v21);
  v23 = sub_10014AAF8;
LABEL_10:
  v24 = v23;
  result = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  v26 = &v21[*(result + 20)];
  *v26 = v24;
  v26[1] = v22;
  return result;
}

uint64_t sub_100140FC4@<X0>(uint64_t a1@<X8>)
{
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_100141038@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = __chkstk_darwin(v5);
  v59 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v64 = &v57 - v9;
  v10 = __chkstk_darwin(v8);
  v63 = &v57 - v11;
  __chkstk_darwin(v10);
  v13 = &v57 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v66 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  v20 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v23);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v25 = 0;
  v65 = v26;
  swift_storeEnumTagMultiPayload();
  v69 = v1;

  TTRRemindersListTreeViewModel.parent(of:)();

  v27 = type metadata accessor for TTRRemindersListViewModel.Item();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v22, 1, v27) == 1)
  {
    goto LABEL_2;
  }

  v58 = a1;
  v32 = (*(v28 + 88))(v22, v27);
  if (v32 != enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    if (v32 == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v28 + 96))(v22, v27);
      v28 = v66;
      (*(v66 + 32))(v17, v22, v14);
      a1 = v64;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      if (*(v69 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
      {

        v36 = sub_100145ED8(a1);

        (*(v67 + 8))(a1, v68);
        (*(v28 + 8))(v17, v14);
        if (!v36)
        {
          goto LABEL_35;
        }

LABEL_29:
        sub_10014AA9C(v25);
        v54 = v58;
        *v58 = v36;
        v55 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
        v56 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v56 - 8) + 104))(v54, v55, v56);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_27;
    }

    if (v32 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
    {
      (*(v28 + 96))(v22, v27);
      v38 = v60;
      v37 = v61;
      v39 = v62;
      (*(v61 + 32))(v60, v22, v62);
      v40 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v41 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
      v42 = v69;
      swift_beginAccess();
      v43 = *(v42 + v41);

      v44 = sub_10013F404(v40, v43);

      (*(v37 + 8))(v38, v39);
      if (v44)
      {
        sub_10014AA9C(v25);
        v45 = v58;
        *v58 = v44;
        v45[1] = 0;
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_35;
    }

    if (v32 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v32 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v32 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v32 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v32 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v32 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      (*(v28 + 8))(v22, v27);
      a1 = v58;
    }

    else
    {
      a1 = v58;
      if (v32 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v32 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_27:
        (*(v28 + 8))(v17, v14);
        v52 = v67;
        v51 = v68;
        v53 = v59;
        (*(v67 + 32))(v59, a1, v68);
        if ((*(v52 + 88))(v53, v51) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
        {
          (*(v52 + 96))(v53, v51);
          v36 = *v53;
          goto LABEL_29;
        }

        (*(v52 + 8))(v53, v51);
LABEL_35:
        v29 = v25;
        v30 = v58;
        return sub_10014AA38(v29, v30);
      }
    }

LABEL_2:
    v29 = v25;
    v30 = a1;
    return sub_10014AA38(v29, v30);
  }

  (*(v28 + 96))(v22, v27);
  v33 = v66;
  (*(v66 + 32))(v19, v22, v14);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v69 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v34 = sub_100145ED8(v13);

    (*(v67 + 8))(v13, v68);
    (*(v33 + 8))(v19, v14);
    v35 = v58;
    if (!v34)
    {
      goto LABEL_32;
    }
  }

  else
  {
    (*(v33 + 8))(v19, v14);
    v47 = v67;
    v46 = v68;
    v48 = v63;
    (*(v67 + 32))(v63, v13, v68);
    if ((*(v47 + 88))(v48, v46) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v47 + 8))(v48, v46);
      v35 = v58;
LABEL_32:
      v29 = v25;
      v30 = v35;
      return sub_10014AA38(v29, v30);
    }

    (*(v47 + 96))(v48, v46);
    v34 = *v48;
    v35 = v58;
  }

  sub_10014AA9C(v25);
  *v35 = v34;
  v49 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
  v50 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v50 - 8) + 104))(v35, v49, v50);
  return swift_storeEnumTagMultiPayload();
}

double sub_100141958@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - v10;
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = (v5 + 16);
  v15 = (v5 + 88);
  v16 = (v5 + 8);
  if (sub_100140098(a1))
  {
    v17 = sub_100141C14();
    v18 = *v14;
    (*v14)(v13, a1, v4);
    if ((*v15)(v13, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
    {
      (*v16)(v13, v4);
      v19 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
      *(a2 + 24) = v19;
      *(a2 + 32) = &off_10071A5E0;
      v20 = sub_1000317B8(a2);
      v18(v20, a1, v4);
      *(v20 + *(v19 + 20)) = v17;
      *(v20 + *(v19 + 24)) = 0;
      return result;
    }

    (*v16)(v13, v4);
  }

  else
  {
    v22 = sub_100141CE8();
    v23 = *v14;
    (*v14)(v11, a1, v4);
    if ((*v15)(v11, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
    {
      (*v16)(v11, v4);
      v23(v8, a1, v4);
      *(a2 + 24) = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
      *(a2 + 32) = &off_10072B818;
      v24 = sub_1000317B8(a2);
      sub_1004B7ED8(v8, v22, v24);
      return result;
    }

    (*v16)(v11, v4);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_100141C14()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    type metadata accessor for DragAndDropPresenterCapability();
    v2 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v3 = REMSmartListTypeCustom;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 1;
    *(v2 + 24) = &off_100717DB8;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

uint64_t sub_100141CE8()
{
  v1 = OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropUtils;
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropUtils))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource____lazy_storage___dragAndDropUtils);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_100717DF0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_100141D84(void *a1)
{
  v2 = sub_100141CE8();
  if (sub_1004B91A4())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = [a1 objectID];
    v7 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

    v8 = *(v7 + 16);

    return v8 == 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_100141E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a2;
  v5 = sub_100058000(&qword_100772140);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v10, &qword_100772140);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000079B4(v10, &qword_100772140);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (sub_100140098(v14))
    {
      sub_100141C14();
      (*(v12 + 16))(v8, v14, v11);
      (*(v12 + 56))(v8, 0, 1, v11);
      sub_1001D6AC0(v8, v17, a3);

      sub_1000079B4(v8, &qword_100772140);
      return (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 8))(v14, v11);
  }

  sub_100141CE8();
  sub_1004B7628(a1, v17, a3);
}

uint64_t sub_1001420EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (sub_100140098(a1))
  {
    sub_100141C14();
    sub_1001D6C98(a1, a2);
  }

  else
  {
    sub_100141CE8();
    sub_1004B7834(a1, a2);
  }
}

uint64_t sub_100142160(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v122 = type metadata accessor for TTRSectionID();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = (&v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for Date();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v128 = *(v5 - 1);
  v129 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v6);
  v123 = &v102 - v10;
  __chkstk_darwin(v9);
  v127 = (&v102 - v11);
  v131 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v12 = *(v131 - 8);
  v13 = __chkstk_darwin(v131);
  v124 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v130 = &v102 - v15;
  v16 = sub_100058000(&qword_100772140);
  v17 = __chkstk_darwin(v16 - 8);
  v125 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v102 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v102 - v26;
  v126 = v2;

  TTRRemindersListTreeViewModel.parent(of:)();
  v28 = v22;

  v29 = *(v22 + 48);
  if (v29(v20, 1, v21) == 1)
  {
    v30 = v20;
    return sub_1000079B4(v30, &qword_100772140);
  }

  v115 = v12;
  (*(v28 + 32))(v27, v20, v21);
  (*(v28 + 16))(v25, v27, v21);
  v32 = *(v28 + 88);
  if (v32(v25, v21) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v49 = *(v28 + 8);
    v49(v27, v21);
    return (v49)(v25, v21);
  }

  v112 = v32;
  v107 = v8;
  v113 = v27;
  v33 = *(v28 + 96);
  v114 = v21;
  v111 = v28 + 96;
  v110 = v33;
  v33(v25, v21);
  v34 = v115;
  v35 = *(v115 + 32);
  v36 = v130;
  v109 = v115 + 32;
  v108 = v35;
  v35(v130, v25, v131);
  v37 = v127;
  v38 = v28;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v40 = v128;
  v39 = v129;
  v41 = v128[11];
  v106 = (v128 + 11);
  v105 = v41;
  v42 = v41(v37, v129);
  if (v42 != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    (*(v34 + 8))(v36, v131);
    (*(v38 + 8))(v113, v114);
    return (v40[1])(v37, v39);
  }

  v43 = v42;
  v104 = v38;
  v103 = v40[12];
  v103(v37, v39);
  v44 = *v37;
  v45 = v126;

  v46 = v125;
  v47 = v113;
  TTRRemindersListTreeViewModel.parent(of:)();

  v48 = v114;
  if (v29(v46, 1, v114) == 1)
  {

    (*(v115 + 8))(v130, v131);
    (*(v104 + 8))(v47, v48);
    v30 = v46;
    return sub_1000079B4(v30, &qword_100772140);
  }

  if (v112(v46, v48) != enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {

    (*(v115 + 8))(v130, v131);
    v54 = *(v104 + 8);
    v55 = v114;
    v54(v47, v114);
    return (v54)(v46, v55);
  }

  v110(v46, v114);
  v50 = v124;
  v108(v124, v46, v131);
  v51 = v123;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v52 = v115;
  if (*(v45 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v53 = sub_100145ED8(v51);

    (v128[1])(v51, v129);
    if (v53)
    {
      v128 = v44;
      goto LABEL_18;
    }

LABEL_30:
    v97 = v104;
    v98 = *(v52 + 8);
    v99 = v131;
    v98(v50, v131);
    v98(v130, v99);
    return (*(v97 + 8))(v47, v114);
  }

  v56 = v128;
  v57 = v107;
  v58 = v51;
  v59 = v129;
  (v128[4])(v107, v58, v129);
  if (v105(v57, v59) != v43)
  {

    (v56[1])(v57, v59);
    goto LABEL_30;
  }

  v128 = v44;
  v103(v57, v59);
  v53 = *v57;
LABEL_18:
  v60 = TTRRemindersListViewModel.SectionHeader.isCustomSmartList.getter();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if (v60)
  {
    v61 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.customSmartList(with:)();
    swift_unknownObjectRelease();
    if (v61)
    {
      v62 = [v61 customContext];
      v63 = v113;
      if (!v62 || (v64 = v62, v65 = REMSmartListCustomContext.filter.getter(), v64, !v65))
      {

        v100 = *(v115 + 8);
        v101 = v131;
        v100(v50, v131);
        v100(v130, v101);
        return (*(v104 + 8))(v63, v114);
      }

      v66 = v116;
      Date.init()();
      v67 = v119;
      TTRReminderEditor.edit(toMatch:now:)();
      (*(v117 + 8))(v66, v118);
      sub_100058000(&qword_10076B780);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D420;
      v69 = TTRReminderEditor.changeItem.getter();
      v129 = v53;
      v70 = v69;
      v71 = [v69 objectID];

      *(inited + 32) = v71;
      sub_10001D5F8(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      type metadata accessor for TTRSmartListEditor();
      v133 = v61;
      v72 = v61;
      v73 = TTRReminderEditor.changeItem.getter();
      v74 = [v73 saveRequest];

      v132 = v67;
      type metadata accessor for TTRReminderEditor();
      sub_10014A9F0(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
      TTRUndoableEditing.undoManager.getter();
      TTROneshotEditing.init(item:saveRequest:undoManager:)();
      v75 = v120;
      v76 = v128;
      *v120 = v128;
      v77 = v121;
      v78 = v122;
      (*(v121 + 104))(v75, enum case for TTRSectionID.sectioned(_:), v122);
      v79 = v76;
      TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

      (*(v77 + 8))(v75, v78);
      v80 = *(v115 + 8);
      v81 = v124;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v82 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.list(with:)();
  swift_unknownObjectRelease();
  if (!v82)
  {
LABEL_26:

    v80 = *(v115 + 8);
    v81 = v50;
    goto LABEL_27;
  }

  sub_100058000(&qword_10076B780);
  v83 = swift_initStackObject();
  *(v83 + 16) = xmmword_10062D420;
  v84 = v119;
  v85 = TTRReminderEditor.changeItem.getter();
  v86 = [v85 objectID];

  *(v83 + 32) = v86;
  sub_10001D5F8(v83);
  swift_setDeallocating();
  swift_arrayDestroy();
  type metadata accessor for TTRListEditor();
  v133 = v82;
  v87 = v82;
  v88 = TTRReminderEditor.changeItem.getter();
  v89 = [v88 saveRequest];
  v90 = v50;

  v132 = v84;
  type metadata accessor for TTRReminderEditor();
  sub_10014A9F0(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
  TTRUndoableEditing.undoManager.getter();
  TTROneshotEditing.init(item:saveRequest:undoManager:)();
  v91 = v120;
  v92 = v128;
  *v120 = v128;
  v93 = v121;
  v94 = v122;
  (*(v121 + 104))(v91, enum case for TTRSectionID.sectioned(_:), v122);
  v95 = v92;
  TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

  (*(v93 + 8))(v91, v94);
  v80 = *(v115 + 8);
  v81 = v90;
LABEL_27:
  v96 = v131;
  v80(v81, v131);
  v80(v130, v96);
  return (*(v104 + 8))(v113, v114);
}

uint64_t sub_100143098(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_100141CE8();
  v8 = sub_1004B91A4();
  if (v8)
  {
    v9 = v7;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v6, ObjectType, v9);
    swift_unknownObjectRelease();

    v8 = a3(a1, 1, a2, v6);
  }

  else
  {
  }

  return v8;
}

uint64_t sub_100143184(void *a1, uint64_t a2)
{
  v73 = a2;
  v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = __chkstk_darwin(v8);
  v65 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v67 = &v58 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v70 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100772140);
  v15 = __chkstk_darwin(v14 - 8);
  v66 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = (&v58 - v17);
  v74 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v74 - 8);
  v20 = __chkstk_darwin(v74);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v72 = &v58 - v23;
  v75 = v2;
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v24 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v24 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v64 = v22;
  v62 = a1;
  v60 = v7;
  v61 = v5;
  v63 = v12;

  TTRRemindersListTreeViewModel.parent(of:)();

  v25 = v19;
  v26 = *(v19 + 48);
  v27 = v74;
  if (v26(v18, 1, v74) == 1)
  {
    v28 = &qword_100772140;
    v29 = v18;
LABEL_5:
    sub_1000079B4(v29, v28);
LABEL_29:
    v53 = 0;
    return v53 & 1;
  }

  v58 = v4;
  v30 = v72;
  v59 = *(v25 + 32);
  v59(v72, v18, v27);

  v31 = TTRRemindersListTreeViewModel.isSubtask(_:)();

  v32 = v64;
  if (v31)
  {

    v33 = v66;
    TTRRemindersListTreeViewModel.parent(of:)();

    if (v26(v33, 1, v27) == 1)
    {
      sub_1000079B4(v33, &qword_100772140);
    }

    else
    {
      (*(v25 + 8))(v30, v27);
      v59(v30, v33, v27);
    }
  }

  (*(v25 + 16))(v32, v30, v27);
  v34 = v25;
  if ((*(v25 + 88))(v32, v27) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v40 = *(v25 + 8);
    v40(v30, v27);
    v40(v32, v27);
    goto LABEL_29;
  }

  (*(v25 + 96))(v32, v27);
  v35 = v70;
  v36 = v63;
  (*(v71 + 32))(v70, v32, v63);
  v37 = v67;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v75 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v38 = sub_100145ED8(v37);

    (*(v68 + 8))(v37, v69);
    v39 = v62;
    if (!v38)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v41 = v68;
    v42 = v65;
    v43 = v37;
    v44 = v69;
    (*(v68 + 32))(v65, v43, v69);
    v45 = (*(v41 + 88))(v42, v44);
    v39 = v62;
    if (v45 != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v41 + 8))(v42, v44);
LABEL_23:
      (*(v71 + 8))(v35, v36);
      (*(v34 + 8))(v30, v74);
      goto LABEL_29;
    }

    (*(v41 + 96))(v42, v44);
    v38 = *v42;
  }

  if (TTRRemindersListViewModel.SectionHeader.isCustomSmartList.getter())
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v46 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.customSmartList(with:)();
    swift_unknownObjectRelease();
    if (v46)
    {
      v47 = [v46 customContext];
      if (v47)
      {
        v48 = v47;
        v49 = REMSmartListCustomContext.filter.getter();

        if (v49)
        {
          sub_100058000(&qword_10076E928);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_10062D400;
          sub_10000B0D8(v39, v50 + 32);
          static Set<>.typesSupportedByCustomSmartList.getter();
          v80 = &type metadata for TTRReminderIDsWithMatchingHashtagsProvider;
          v81 = sub_10014A994();
          v79[0] = v50;
          v51 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();
          v75 = v51;

          sub_100004758(v79);
          *&v77 = v51;
          sub_10000B0D8(v39, v79);
          v76 = v51;
          sub_100058000(&qword_10076E938);
          sub_10011763C(&qword_10076E940, &qword_10076E938);
          Sequence<>.postFetchPredicateTypes.getter();
          v52 = v60;
          REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(reminder:forEvaluatingAgainst:)();
          v53 = Sequence<>.evaluate(with:)();

          (*(v61 + 8))(v52, v58);
          (*(v71 + 8))(v35, v36);
          (*(v34 + 8))(v72, v74);

          return v53 & 1;
        }
      }
    }
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v54 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.list(with:)();
  swift_unknownObjectRelease();
  if (!v54)
  {

    (*(v71 + 8))(v35, v36);
    (*(v34 + 8))(v72, v74);
    goto LABEL_29;
  }

  sub_10000C36C(v39, v39[3]);
  dispatch thunk of TTRReminderProtocol.ttrList.getter();
  if (!v78)
  {

    (*(v71 + 8))(v35, v36);
    (*(v34 + 8))(v72, v74);
    v28 = &unk_100775680;
    v29 = &v77;
    goto LABEL_5;
  }

  sub_100005FD0(&v77, v79);
  sub_100003540(0, &qword_100775690);
  v55 = [v54 objectID];
  sub_10000C36C(v79, v80);
  v56 = dispatch thunk of TTRListProtocol.objectID.getter();
  v53 = static NSObject.== infix(_:_:)();

  (*(v71 + 8))(v35, v36);
  (*(v34 + 8))(v72, v74);
  sub_100004758(v79);
  return v53 & 1;
}

uint64_t sub_100143C40@<X0>(uint64_t *a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = __chkstk_darwin(v2);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v35 = &v34 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListTreeViewModel.parent(of:)();

  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &qword_100772140);
LABEL_9:
    v24 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    return (*(*(v24 - 8) + 56))(v41, 1, 1, v24);
  }

  (*(v15 + 32))(v17, v13, v14);

  TTRRemindersListTreeViewModel.parent(of:)();

  if (v18(v11, 1, v14) == 1)
  {
    (*(v15 + 8))(v17, v14);
    sub_1000079B4(v11, &qword_100772140);
    goto LABEL_9;
  }

  if ((*(v15 + 88))(v11, v14) != enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    v23 = *(v15 + 8);
    v23(v17, v14);
    v23(v11, v14);
    goto LABEL_9;
  }

  (*(v15 + 96))(v11, v14);
  v20 = v38;
  v19 = v39;
  v21 = v40;
  (*(v39 + 32))(v38, v11, v40);
  if (TTRRemindersListViewModel.SectionHeader.isCustomSmartList.getter())
  {
    sub_1001442B0(v41);
    (*(v19 + 8))(v20, v21);
    return (*(v15 + 8))(v17, v14);
  }

  v25 = v35;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v1 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v26 = sub_100145ED8(v25);

    (*(v36 + 8))(v25, v37);
    (*(v19 + 8))(v20, v21);
    (*(v15 + 8))(v17, v14);
    if (!v26)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*(v19 + 8))(v20, v21);
    (*(v15 + 8))(v17, v14);
    v28 = v36;
    v27 = v37;
    v29 = v34;
    (*(v36 + 32))(v34, v25, v37);
    if ((*(v28 + 88))(v29, v27) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v28 + 8))(v29, v27);
      goto LABEL_9;
    }

    (*(v28 + 96))(v29, v27);
    v26 = *v29;
  }

  v30 = v41;
  *v41 = v26;
  v31 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
  v32 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v30, v31, v32);
  return (*(v33 + 56))(v30, 0, 1, v32);
}

uint64_t sub_1001442B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_10076D018);
  __chkstk_darwin(v3 - 8);
  v5 = v31 - v4;
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v31[0] = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = v31 - v14;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v1 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v16 = sub_100145ED8(v15);

    (*(v10 + 8))(v15, v9);
    if (!v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    (*(v10 + 32))(v13, v15, v9);
    if ((*(v10 + 88))(v13, v9) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v10 + 8))(v13, v9);
      goto LABEL_14;
    }

    (*(v10 + 96))(v13, v9);
    v16 = *v13;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.customSmartList(with:)();
  swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_12;
  }

  v18 = [v17 customContext];
  if (!v18 || (v19 = v18, v20 = REMSmartListCustomContext.filter.getter(), v19, !v20))
  {

LABEL_12:
    goto LABEL_14;
  }

  REMCustomSmartListFilterDescriptor.lists.getter();
  v21 = v31[0];
  if ((*(v31[0] + 48))(v5, 1, v6) == 1)
  {

    sub_1000079B4(v5, &qword_10076D018);
  }

  else
  {
    (*(v21 + 32))(v8, v5, v6);
    v27 = v21;
    v28 = [objc_opt_self() daemonUserDefaults];
    v29 = [v28 preferredDefaultListID];

    v30 = REMCustomSmartListFilterDescriptor.FilterLists.alternateTargetList(for:defaultListID:)();
    (*(v27 + 8))(v8, v6);

    if (v30)
    {
      *a1 = v30;
      v22 = &enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
      goto LABEL_15;
    }
  }

LABEL_14:
  v22 = &enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
LABEL_15:
  v23 = *v22;
  v24 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v25 = *(v24 - 8);
  (*(v25 + 104))(a1, v23, v24);
  return (*(v25 + 56))(a1, 0, 1, v24);
}

void *sub_1001447DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group);
  if (v1)
  {
    sub_100003540(0, &qword_1007865E0);
    v2 = v1;
    v1 = static NSUserActivity.forStoringListPayload(for:)();
  }

  return v1;
}

uint64_t sub_100144844()
{
  v1 = type metadata accessor for TTRUserActivityListPayload.State();
  result = __chkstk_darwin(v1);
  v5 = (&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group);
  if (v6)
  {
    *v5 = v6;
    (*(v3 + 104))(v5, enum case for TTRUserActivityListPayload.State.list(_:));
    v9[3] = type metadata accessor for TTRUserActivityListPayload();
    v9[4] = &protocol witness table for TTRUserActivityListPayload;
    sub_1000317B8(v9);
    v7 = v6;
    TTRUserActivityListPayload.init(state:)();
    NSUserActivity.setPayload(_:)();

    return sub_100004758(v9);
  }

  return result;
}

uint64_t sub_100144970()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group);
  if (!v16)
  {
    return 0;
  }

  v30 = v3;
  v31 = v2;
  sub_100003540(0, &qword_1007865E0);
  v17 = v16;
  v18 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v19 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v17;
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v20);
    swift_unknownObjectRelease();
    v22 = type metadata accessor for TTRRemindersListViewModel.Item();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1000079B4(v12, &qword_100772140);
      v24 = 1;
    }

    else
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v23 + 8))(v12, v22);
      v24 = 0;
    }

    v17 = v29;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v25 - 8) + 56))(v15, v24, 1, v25);
  v26 = *(sub_100058000(&qword_10076E920) + 48);
  *v5 = [v17 objectID];
  sub_10000794C(v15, v5 + v26, &unk_10076BB50);
  (*(v30 + 104))(v5, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v31);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v32[3] = v6;
  v32[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v27 = sub_1000317B8(v32);
  (*(v7 + 16))(v27, v9, v6);
  NSUserActivity.setPayload(_:)();

  (*(v7 + 8))(v9, v6);
  sub_1000079B4(v15, &unk_10076BB50);
  sub_100004758(v32);
  return v18;
}

uint64_t sub_100144DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRAccesibility.SectionHeaderType.other(_:);
  v3 = type metadata accessor for TTRAccesibility.SectionHeaderType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_100144E8C@<X0>(char *a1@<X8>)
{
  v62 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = __chkstk_darwin(v2);
  v53 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v55 = &v51 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v58 = *(v6 - 8);
  v59 = v6;
  __chkstk_darwin(v6);
  v60 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  v9 = __chkstk_darwin(v8 - 8);
  v54 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v51 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v61 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v51 - v17;

  TTRRemindersListTreeViewModel.parent(of:)();

  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_1000079B4(v12, &qword_100772140);
    v20 = type metadata accessor for TTRAutoCompleteReminderListScope();
    return (*(*(v20 - 8) + 56))(v62, 1, 1, v20);
  }

  v51 = *(v14 + 32);
  v51(v18, v12, v13);
  v52 = v1;

  v22 = TTRRemindersListTreeViewModel.isSubtask(_:)();

  v23 = v13;
  v24 = v14;
  if (v22)
  {

    v25 = v54;
    TTRRemindersListTreeViewModel.parent(of:)();

    if (v19(v25, 1, v23) == 1)
    {
      sub_1000079B4(v25, &qword_100772140);
    }

    else
    {
      (*(v14 + 8))(v18, v23);
      v51(v18, v25, v23);
    }
  }

  v26 = v61;
  (*(v14 + 16))(v61, v18, v23);
  if ((*(v14 + 88))(v26, v23) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v34 = *(v14 + 8);
    v34(v18, v23);
    v34(v26, v23);
    v33 = v62;
LABEL_25:
    v48 = type metadata accessor for TTRAutoCompleteReminderListScope();
    return (*(*(v48 - 8) + 56))(v33, 1, 1, v48);
  }

  v54 = v18;
  v27 = v23;
  (*(v14 + 96))(v26, v23);
  v29 = v58;
  v28 = v59;
  v30 = v60;
  (*(v58 + 32))(v60, v26, v59);
  v31 = v55;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v52 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v32 = sub_100145ED8(v31);

    (*(v56 + 8))(v31, v57);
    v33 = v62;
    if (!v32)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v36 = v56;
    v35 = v57;
    v37 = v53;
    (*(v56 + 32))(v53, v31, v57);
    if ((*(v36 + 88))(v37, v35) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v36 + 8))(v37, v35);
      v33 = v62;
LABEL_21:
      (*(v29 + 8))(v30, v28);
LABEL_24:
      (*(v24 + 8))(v54, v27);
      goto LABEL_25;
    }

    (*(v36 + 96))(v37, v35);
    v32 = *v37;
    v33 = v62;
  }

  if (TTRRemindersListViewModel.SectionHeader.isCustomSmartList.getter())
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v38 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.customSmartList(with:)();
    swift_unknownObjectRelease();
    if (v38)
    {
      v39 = [v38 customContext];
      if (v39)
      {
        v40 = v39;
        v41 = v24;
        v42 = *(sub_100058000(&qword_10076E918) + 48);
        *v33 = [v38 accountID];
        v43 = REMSmartListCustomContext.filter.getter();
        if (v43)
        {
          v44 = v43;
          REMCustomSmartListFilterDescriptor.lists.getter();

          (*(v29 + 8))(v60, v28);
          (*(v41 + 8))(v54, v27);
        }

        else
        {

          (*(v29 + 8))(v60, v28);
          (*(v41 + 8))(v54, v27);
          v49 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
          (*(*(v49 - 8) + 56))(&v33[v42], 1, 1, v49);
        }

        v50 = enum case for TTRAutoCompleteReminderListScope.matching(_:);
        v46 = type metadata accessor for TTRAutoCompleteReminderListScope();
        v47 = *(v46 - 8);
        (*(v47 + 104))(v33, v50, v46);
        return (*(v47 + 56))(v33, 0, 1, v46);
      }

      v32 = v38;
    }

    (*(v29 + 8))(v60, v28);
    goto LABEL_24;
  }

  (*(v29 + 8))(v30, v28);
  (*(v24 + 8))(v54, v27);
  *v33 = v32;
  v45 = enum case for TTRAutoCompleteReminderListScope.list(_:);
  v46 = type metadata accessor for TTRAutoCompleteReminderListScope();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v33, v45, v46);
  return (*(v47 + 56))(v33, 0, 1, v46);
}

uint64_t sub_1001457A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = __chkstk_darwin(v3);
  v41 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v42 = &v40 - v6;
  v48 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v14, &qword_100772140);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1000079B4(v14, &qword_100772140);
LABEL_3:
    v19 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
    return (*(*(v19 - 8) + 56))(v49, 1, 1, v19);
  }

  (*(v16 + 32))(v18, v14, v15);
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  v21 = (*(v9 + 88))(v11, v8);
  if (v21 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:))
  {
    (*(v9 + 96))(v11, v8);
    v22 = v45;
    v23 = v47;
    (*(v45 + 32))(v47, v11, v48);
    v24 = v42;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    if (*(v46 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
    {

      v25 = sub_100145ED8(v24);

      (*(v43 + 8))(v24, v44);
      if (!v25)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v27 = v43;
      v26 = v44;
      v28 = v41;
      (*(v43 + 32))(v41, v24, v44);
      if ((*(v27 + 88))(v28, v26) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
      {
        (*(v27 + 8))(v28, v26);
LABEL_21:
        (*(v22 + 8))(v23, v48);
        (*(v16 + 8))(v18, v15);
        v33 = v49;
        goto LABEL_22;
      }

      (*(v27 + 96))(v28, v26);
      v25 = *v28;
    }

    v29 = TTRRemindersListViewModel.SectionHeader.isCustomSmartList.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    v30 = (v22 + 8);
    v31 = (v16 + 8);
    if (v29)
    {
      v32 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.customSmartList(with:)();

      swift_unknownObjectRelease();
      (*v30)(v47, v48);
      (*v31)(v18, v15);
      v33 = v49;
      if (v32)
      {
        *v49 = v32;
        v34 = &enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:);
LABEL_19:
        v36 = *v34;
        v37 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
        v38 = *(v37 - 8);
        (*(v38 + 104))(v33, v36, v37);
        return (*(v38 + 56))(v33, 0, 1, v37);
      }
    }

    else
    {
      v35 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.list(with:)();

      swift_unknownObjectRelease();
      (*v30)(v47, v48);
      (*v31)(v18, v15);
      v33 = v49;
      if (v35)
      {
        *v49 = v35;
        v34 = &enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:);
        goto LABEL_19;
      }
    }

LABEL_22:
    v39 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
    return (*(*(v39 - 8) + 56))(v33, 1, 1, v39);
  }

  if (v21 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:))
  {
    (*(v16 + 8))(v18, v15);
    (*(v9 + 8))(v11, v8);
    goto LABEL_3;
  }

  if (v21 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
  {
    (*(v16 + 8))(v18, v15);
    goto LABEL_3;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_100145ED8(uint64_t a1)
{
  v3 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v3 - 8);
  v5 = &v64 - v4;
  v6 = type metadata accessor for TTRSection();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = &v64 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
  {
LABEL_2:
    (*(v14 + 8))(v16, v13);
    return 0;
  }

  if (v17 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    goto LABEL_4;
  }

  if (v17 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v17 == enum case for TTRRemindersListViewModel.SectionID.date(_:) || v17 == enum case for TTRRemindersListViewModel.SectionID.day(_:) || v17 == enum case for TTRRemindersListViewModel.SectionID.month(_:) || v17 == enum case for TTRRemindersListViewModel.SectionID.year(_:) || v17 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
  {
    goto LABEL_2;
  }

  if (v17 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
  {
    (*(v14 + 96))(v16, v13);
    return *v16;
  }

  if (v17 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
  {
LABEL_4:
    v64 = v7;
    (*(v14 + 96))(v16, v13);
    v65 = *v16;
    v19 = [v65 entityName];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v20;

    v21 = [objc_opt_self() cdEntityName];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == v16 && v24 == v13)
    {
      goto LABEL_11;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
LABEL_12:

      return v65;
    }

    v27 = [objc_opt_self() cdEntityName];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (v28 == v16 && v30 == v13)
    {
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_12;
  }

  v37 = [objc_opt_self() cdEntityName];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  if (v38 == v16 && v40 == v13)
  {
    goto LABEL_11;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_12;
  }

  sub_100003540(0, &qword_10076E8E8);
  v42 = [swift_getObjCClassFromMetadata() cdEntityName];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  if (v43 == v16 && v45 == v13)
  {
    goto LABEL_39;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v47)
  {
LABEL_41:
    v46 = v64;
    goto LABEL_42;
  }

  sub_100003540(0, &qword_10076E8F0);
  v52 = [swift_getObjCClassFromMetadata() cdEntityName];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  if (v53 == v16 && v55 == v13)
  {
    goto LABEL_39;
  }

  v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v56)
  {
    goto LABEL_41;
  }

  sub_100003540(0, &qword_10076E8F8);
  v57 = [swift_getObjCClassFromMetadata() cdEntityName];
  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v59;

  if (v58 == v16 && v60 == v13)
  {
LABEL_39:
    v46 = v64;

LABEL_42:

    goto LABEL_43;
  }

  v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v46 = v64;
  if ((v61 & 1) == 0)
  {

    return 0;
  }

LABEL_43:
  if (!swift_unknownObjectWeakLoadStrong())
  {

    (*(v46 + 56))(v5, 1, 1, v6);
    goto LABEL_47;
  }

  v48 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  (*(v48 + 16))(ObjectType, v48);
  swift_unknownObjectRelease();
  v50 = v65;
  TTRSection.init(with:store:)();
  if ((*(v46 + 48))(v5, 1, v6) == 1)
  {

LABEL_47:
    sub_1000079B4(v5, &unk_100775960);
    return 0;
  }

  (*(v46 + 32))(v12, v5, v6);
  (*(v46 + 16))(v10, v12, v6);
  v51 = (*(v46 + 88))(v10, v6);
  if (v51 == enum case for TTRSection.listSection(_:) || v51 == enum case for TTRSection.smartListSection(_:) || v51 == enum case for TTRSection.templateSection(_:))
  {

    (*(v46 + 96))(v10, v6);
    v62 = *v10;
    v63 = [*v10 parentID];

    (*(v46 + 8))(v12, v6);
    return v63;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100146760()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v8 = sub_100145ED8(v7);

    (*(v2 + 8))(v7, v1);
    if (!v8)
    {
      return 0;
    }

LABEL_6:
    swift_getObjectType();
    swift_unknownObjectRetain();
    v9 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.customSmartList(with:)();

    swift_unknownObjectRelease();
    return v9;
  }

  (*(v2 + 32))(v5, v7, v1);
  if ((*(v2 + 88))(v5, v1) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    goto LABEL_6;
  }

  (*(v2 + 8))(v5, v1);
  return 0;
}

void sub_100146958()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group);
}

uint64_t sub_1001469C8()
{
  v0 = sub_10056FD38();

  swift_unknownObjectRelease();

  v1 = *(v0 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowGroupViewModelSource()
{
  result = qword_10076E1F0;
  if (!qword_10076E1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100146B48(void *a1)
{
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = [a1 objectID];
  v7 = OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group;
  v8 = *(v1 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group);
  if (!v8)
  {
    if (v6)
    {
      goto LABEL_9;
    }

    v14 = 0;
LABEL_13:
    *(v1 + v7) = a1;

    v20 = a1;
    sub_10013F4C8(v5);
    sub_10056F540(v5);
    return sub_1000079B4(v5, &unk_10078A380);
  }

  v9 = [v8 objectID];
  v10 = v9;
  if (!v6)
  {
    v6 = v9;
    if (v9)
    {
      goto LABEL_9;
    }

    v14 = *(v1 + v7);
    goto LABEL_13;
  }

  if (v9)
  {
    sub_100003540(0, &qword_10076BA50);
    v11 = static NSObject.== infix(_:_:)();

    v12 = *(v1 + v7);
    *(v1 + v7) = a1;

    v13 = a1;
    sub_10013F4C8(v5);
    sub_10056F540(v5);
    if (v11)
    {
      return sub_1000079B4(v5, &unk_10078A380);
    }

    goto LABEL_10;
  }

LABEL_9:

  v15 = *(v1 + v7);
  *(v1 + v7) = a1;

  v16 = a1;
  sub_10013F4C8(v5);
  sub_10056F540(v5);
LABEL_10:
  v17 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 88))(1, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  return sub_1000079B4(v5, &unk_10078A380);
}

uint64_t sub_100146D48(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v67 = a2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v65 = v62 - v7;
  v70 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v8 = *(v70 - 8);
  __chkstk_darwin(v70);
  v10 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076E8D0);
  __chkstk_darwin(v11);
  v13 = v62 - v12;
  v14 = sub_100058000(&unk_10078A380);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v62 - v18;
  if (a1)
  {
    v20 = *(v4 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group);
    *(v4 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_group) = a1;
    v21 = a1;
  }

  v22 = REMRemindersListDataView.ListsSectionsModel.completedRemindersCount.getter();
  v23 = v4 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_completedRemindersCount;
  *v23 = v22;
  *(v23 + 8) = v24 & 1;
  sub_10013F4C8(v19);
  v64 = v19;
  sub_10000794C(v19, v17, &unk_10078A380);
  v25 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v17, 1, v25) == 1)
  {
    sub_1000079B4(v17, &unk_10078A380);
    v27 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
    (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
LABEL_5:
    *(v4 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance) = 0;
LABEL_29:

    v50 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
    v52 = v51;
    v53 = REMRemindersListDataView.ListsSectionsModel.lists.getter();
    __chkstk_darwin(v53);
    v62[-4] = v50;
    v62[-3] = v52;
    v54 = v64;
    v62[-2] = v4;
    v62[-1] = v54;
    v55 = sub_1003993A8(sub_10014A6E0, &v62[-6], v53);

    v56 = type metadata accessor for TTRRemindersListObjectIDAndSectionIDCombinedReminderIDProvider();
    v57 = static TTRRemindersListReminderIDProviding<>.uniqueWithinSection.getter();
    v58 = type metadata accessor for TTRRemindersListViewModel.Item();
    v59 = v65;
    (*(*(v58 - 8) + 56))(v65, 1, 1, v58);
    v72[3] = v56;
    v72[4] = &protocol witness table for TTRRemindersListObjectIDAndSectionIDCombinedReminderIDProvider;
    v72[0] = v57;
    sub_10000B0D8(v72, v71);
    v60 = swift_allocObject();
    *(v60 + 16) = v55;
    sub_100005FD0(v71, v60 + 24);
    *(v60 + 64) = v4;

    sub_100586238(1, v54, sub_10014A704, v60, v66, 0, v59);

    sub_1000079B4(v59, &qword_100772140);

    sub_100004758(v72);
    return sub_1000079B4(v54, &unk_10078A380);
  }

  TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
  (*(v26 + 8))(v17, v25);
  v28 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v13, 0, 1, v28);
  v30 = (*(v29 + 88))(v13, v28);
  if (v30 == enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:) || v30 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
  {
    goto LABEL_5;
  }

  if (v30 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
  {
    goto LABEL_34;
  }

  v31 = REMRemindersListDataView.ListsSectionsModel.lists.getter();
  v32 = *(v31 + 16);
  if (!v32)
  {

    v37 = _swiftEmptyArrayStorage;
LABEL_28:
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
    v49 = swift_allocObject();
    *(v49 + 64) = 0;
    *(v49 + 24) = 0;
    *(v49 + 32) = 0;
    *(v49 + 16) = 0;
    swift_unknownObjectWeakInit();
    *(v49 + 128) = 0u;
    *(v49 + 144) = 0u;
    *(v49 + 96) = 0u;
    *(v49 + 112) = 0u;
    *(v49 + 64) = &off_10072ED30;
    swift_unknownObjectWeakAssign();
    *(v49 + 80) = v37;
    *(v49 + 88) = 0;
    *(v49 + 72) = v37;
    *(v49 + 40) = &_swiftEmptySetSingleton;
    *(v49 + 48) = 1;
    *(v4 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance) = v49;

    goto LABEL_29;
  }

  v62[1] = v31;
  v63 = v4;
  v34 = *(v8 + 16);
  v33 = v8 + 16;
  v35 = v31 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
  v68 = *(v33 + 56);
  v69 = v34;
  v36 = (v33 - 8);
  v37 = _swiftEmptyArrayStorage;
  while (1)
  {
    v38 = v70;
    v69(v10, v35, v70);
    v39 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    (*v36)(v10, v38);
    v40 = *(v39 + 16);
    v41 = v37[2];
    v42 = v41 + v40;
    if (__OFADD__(v41, v40))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v42 <= v37[3] >> 1)
    {
      if (*(v39 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v41 <= v42)
      {
        v44 = v41 + v40;
      }

      else
      {
        v44 = v41;
      }

      v37 = sub_100547DFC(isUniquelyReferenced_nonNull_native, v44, 1, v37);
      if (*(v39 + 16))
      {
LABEL_22:
        v45 = (v37[3] >> 1) - v37[2];
        type metadata accessor for REMRemindersListDataView.SectionLite();
        if (v45 < v40)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v40)
        {
          v46 = v37[2];
          v47 = __OFADD__(v46, v40);
          v48 = v46 + v40;
          if (v47)
          {
            goto LABEL_33;
          }

          v37[2] = v48;
        }

        goto LABEL_12;
      }
    }

    if (v40)
    {
      goto LABEL_31;
    }

LABEL_12:
    v35 += v68;
    if (!--v32)
    {

      v4 = v63;
      goto LABEL_28;
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
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100147514@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, void (*a5)(uint64_t *, void, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v194 = a5;
  v192 = a4;
  v169 = a3;
  v168 = a2;
  v239 = a1;
  v148 = a6;
  v167 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v210 = *(v167 - 8);
  __chkstk_darwin(v167);
  v166 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v187 = *(v226 - 8);
  __chkstk_darwin(v226);
  v209 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_100058000(&qword_10076E8D8);
  v8 = __chkstk_darwin(v208);
  v240 = (&v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v207 = &v145 - v10;
  v206 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v211 = *(v206 - 8);
  __chkstk_darwin(v206);
  v205 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v12 - 8);
  v225 = &v145 - v13;
  v224 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v232 = *(v224 - 8);
  __chkstk_darwin(v224);
  v223 = (&v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v151 = *(v214 - 8);
  v15 = __chkstk_darwin(v214);
  v237 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v213 = &v145 - v18;
  __chkstk_darwin(v17);
  v152 = &v145 - v19;
  v20 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v20 - 8);
  v193 = &v145 - v21;
  v22 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v23 = *(v22 - 8);
  v235 = v22;
  v236 = v23;
  __chkstk_darwin(v22);
  v234 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v231 = *(v222 - 8);
  __chkstk_darwin(v222);
  v221 = &v145 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v230 = *(v220 - 8);
  __chkstk_darwin(v220);
  v219 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v27 - 8);
  v218 = &v145 - v28;
  v217 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v229 = *(v217 - 8);
  __chkstk_darwin(v217);
  v216 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v150 = *(v228 - 8);
  v30 = __chkstk_darwin(v228);
  v204 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v149 = &v145 - v32;
  v238 = type metadata accessor for TTRListColors.Color();
  v154 = *(v238 - 8);
  v33 = __chkstk_darwin(v238);
  v215 = &v145 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v145 - v35;
  v227 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v153 = *(v227 - 8);
  v37 = __chkstk_darwin(v227);
  v165 = &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v41 = &v145 - v40;
  __chkstk_darwin(v39);
  v43 = &v145 - v42;
  v44 = sub_100058000(&qword_10076E8E0);
  v45 = v44 - 8;
  __chkstk_darwin(v44);
  v47 = (&v145 - v46);
  v48 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = &v145 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v239, v47, &qword_10076E8E0);
  v52 = *v47;
  v53 = *(v45 + 56);
  v145 = v49;
  v54 = *(v49 + 32);
  v146 = v48;
  v54(v51, v47 + v53, v48);
  v168(v52);
  v55 = REMRemindersListDataView.ListsSectionsModel.List.listColor.getter();
  v203 = type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)();

  v239 = REMRemindersListDataView.ListsSectionsModel.List.listName.getter();
  v56 = v154;
  v57 = *(v154 + 16);
  v58 = v216;
  v212 = v36;
  v59 = v238;
  v202 = v154 + 16;
  v201 = v57;
  v57(v216, v36, v238);
  v60 = *(v229 + 104);
  v200 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.listName(_:);
  v229 += 104;
  v199 = v60;
  v60(v58);
  v61 = *(v153 + 16);
  v147 = v43;
  v164 = v153 + 16;
  v163 = v61;
  v61(v41, v43, v227);
  v62 = *(v56 + 56);
  v198 = v56 + 56;
  v197 = v62;
  v62(v218, 1, 1, v59);
  v63 = *(v230 + 104);
  v230 += 104;
  v196 = v63;
  v63(v219, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v220);
  v64 = *(v231 + 104);
  v231 += 104;
  v195 = v64;
  v64(v221, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v222);
  v65 = v149;
  v66 = v235;
  v233 = v41;
  TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
  v67 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
  v68 = v234;
  v239 = v51;
  REMRemindersListDataView.ListsSectionsModel.List.listType.getter();
  v69 = (v236[11])(v68, v66);
  if (v69 == enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:))
  {
    v70 = v193;
    sub_10000794C(v194, v193, &unk_10078A380);
    v71 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v70, 1, v71) == 1)
    {
      sub_1000079B4(v70, &unk_10078A380);
      v73 = 0;
LABEL_6:
      v74 = v226;
      v75 = v150;
      v76 = v215;
      goto LABEL_15;
    }

    v77 = TTRRemindersListViewModel.ListInfo.shouldAutoCategorizeItems.getter();
    (*(v72 + 8))(v70, v71);
    v74 = v226;
    v75 = v150;
    v76 = v215;
    if ((v77 & 1) == 0)
    {
      goto LABEL_14;
    }

    type metadata accessor for TTRUserDefaults();
    v78 = static TTRUserDefaults.appUserDefaults.getter();
    v79 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
    v80 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)();

    if ((v80 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_12:
    if (*&v192[OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance])
    {

      v84 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
      sub_100148FF8(v84);
      v67 = v85;
    }

    goto LABEL_14;
  }

  if (v69 == enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:))
  {
    v73 = 1;
    goto LABEL_6;
  }

  if (v69 != enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.grocery(_:))
  {
LABEL_34:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  type metadata accessor for TTRUserDefaults();
  v81 = static TTRUserDefaults.appUserDefaults.getter();
  v82 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
  v83 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)();

  v74 = v226;
  v75 = v150;
  v76 = v215;
  if (v83)
  {
    goto LABEL_12;
  }

LABEL_14:
  v73 = 0;
LABEL_15:
  v86 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
  v87 = v223;
  *v223 = v86;
  v88 = *(v232 + 104);
  v162 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
  v232 += 104;
  v194 = v88;
  v88(v87);
  v89 = *(v75 + 16);
  v90 = v225;
  v91 = v228;
  v193 = v75 + 16;
  v192 = v89;
  (v89)(v225, v65, v228);
  v92 = *(v75 + 56);
  v191 = v75 + 56;
  v190 = v92;
  v92(v90, 0, 1, v91);
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  v93 = *(v67 + 16);
  if (v93)
  {
    v241 = _swiftEmptyArrayStorage;
    sub_1004A22E0(0, v93, 0);
    v94 = v241;
    v189 = *(v67 + 16);
    v185 = type metadata accessor for REMRemindersListDataView.SectionLite();
    v95 = *(v185 - 8);
    v183 = v67 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v182 = v95 + 16;
    v184 = v95;
    v181 = v95 + 32;
    v180 = (v187 + 88);
    v179 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v161 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v178 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:);
    v177 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:);
    v160 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
    v159 = (v153 + 104);
    v158 = (v210 + 1);
    v176 = (v75 + 8);
    v96 = 0;
    v157 = (v187 + 96);
    v156 = (v153 + 8);
    v155 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
    v210 = (v151 + 16);
    v175 = (v154 + 8);
    v174 = (v151 + 8);
    v173 = v211 + 32;
    LODWORD(v187) = v73;
    v186 = v93;
    v188 = v67;
    while (v189 != v96)
    {
      if (v96 >= *(v67 + 16))
      {
        goto LABEL_32;
      }

      v236 = v94;
      v97 = v208;
      v98 = *(v208 + 48);
      v99 = v184;
      v100 = v207;
      v101 = v185;
      (*(v184 + 16))(&v207[v98], v183 + *(v184 + 72) * v96, v185);
      v102 = v240;
      *v240 = v96;
      v103 = *(v97 + 48);
      (*(v99 + 32))(&v103[v102], &v100[v98], v101);
      v104 = REMRemindersListDataView.ListsSectionsModel.List.listColor.getter();
      static TTRListColors.color(for:)();

      v234 = v103;
      v105 = v209;
      REMRemindersListDataView.SectionLite.type.getter();
      v106 = (*v180)(v105, v74);
      v235 = v96;
      if (v106 == v179)
      {
        (*v157)(v105, v74);
        v172 = *v105;
        v107 = v105[2];
        v171 = v105[1];
        v170 = v107;

        v108 = v233;
        v168(v96);
        v109 = v216;
        v110 = v238;
        v111 = v201;
        v201(v216, v212, v238);
        v199(v109, v200, v217);
        v196(v219, v178, v220);
        v195(v221, v177, v222);
        v112 = v108;
        v113 = v227;
        v163(v165, v112, v227);
        v114 = v76;
        v115 = v218;
        v111(v218, v114, v110);
        v197(v115, 0, 1, v110);
        v116 = v113;
        v117 = v204;
        v74 = v226;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v119 = v223;
        v118 = v224;
        *v223 = v172;
        v194(v119, v162, v118);
        v120 = v225;
        v121 = v228;
        (v192)(v225, v117, v228);
        v190(v120, 0, 1, v121);
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        (*v176)(v117, v121);
        (*v156)(v233, v116);
      }

      else
      {
        if (v106 != v161)
        {
          goto LABEL_33;
        }

        v122 = *(REMRemindersListDataView.ListsSectionsModel.List.sections.getter() + 16);

        LODWORD(v172) = v122 > 1;
        v123 = v216;
        v124 = v238;
        v125 = v201;
        v201(v216, v212, v238);
        v199(v123, v200, v217);
        v196(v219, v178, v220);
        v195(v221, v177, v222);
        (*v159)(v233, v160, v227);
        v126 = v218;
        v125(v218, v76, v124);
        v197(v126, 0, 1, v124);
        v127 = v204;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v128 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
        v130 = v223;
        v129 = v224;
        *v223 = v128;
        v194(v130, v155, v129);
        v131 = v225;
        v132 = v228;
        (v192)(v225, v127, v228);
        v190(v131, 0, 1, v132);
        v133 = v166;
        TTRRemindersListSectionMenuCapabilities.init()();
        TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
        (*v158)(v133, v167);
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        (*v176)(v127, v132);
        v74 = v226;
      }

      REMRemindersListDataView.SectionLite.reminders.getter();
      v134 = v186;
      if (v187)
      {
        Array<A>.replacingSubtasksWithNil()();
      }

      v76 = v215;
      v135 = *v210;
      v136 = v237;
      v137 = v214;
      (*v210)(v213, v237, v214);
      v138 = v205;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      (*v175)(v76, v238);
      (*v174)(v136, v137);
      sub_1000079B4(v240, &qword_10076E8D8);
      v94 = v236;
      v241 = v236;
      v140 = v236[2];
      v139 = v236[3];
      if (v140 >= v139 >> 1)
      {
        sub_1004A22E0(v139 > 1, v140 + 1, 1);
        v94 = v241;
      }

      v96 = v235 + 1;
      v94[2] = v140 + 1;
      (*(v211 + 32))(v94 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v140, v138, v206);
      v67 = v188;
      if (v134 == v96)
      {

        v141 = v151;
        v75 = v150;
        v65 = v149;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_34;
  }

  v141 = v151;
  v135 = *(v151 + 16);
LABEL_30:
  v142 = v152;
  v143 = v214;
  v135(v213, v152, v214);
  TTRRemindersListTreeViewModel.SectionsContainer.init(header:sections:)();
  (*(v141 + 8))(v142, v143);
  (*(v75 + 8))(v65, v228);
  (*(v153 + 8))(v147, v227);
  (*(v154 + 8))(v212, v238);
  return (*(v145 + 8))(v239, v146);
}

void sub_100148FF8(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v54 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v38 - v10;
  swift_beginAccess();
  v12 = *(a1 + 16);

  v46 = v13;
  v52 = v12;
  if (!v12)
  {
LABEL_27:

    return;
  }

  v14 = 0;
  v16 = *(v7 + 16);
  v15 = v7 + 16;
  v45 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v49 = a1 + v45;
  v50 = v16;
  v55 = *(v15 + 56);
  v48 = (v3 + 88);
  v47 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
  v41 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
  v39 = v13 & 0xC000000000000001;
  v40 = (v3 + 96);
  v17 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 < 0)
  {
    v17 = v13;
  }

  v38[1] = v17;
  v44 = v13 + 56;
  v18 = v15;
  v19 = (v15 + 16);
  v20 = _swiftEmptyArrayStorage;
  v51 = v18;
  v38[0] = v18 - 8;
  v53 = v6;
  v42 = v2;
  while (1)
  {
    v50(v11, v49 + v55 * v14, v6);
    REMRemindersListDataView.SectionLite.type.getter();
    v21 = (*v48)(v5, v2);
    if (v21 != v47)
    {
      break;
    }

    (*v40)(v5, v2);
    v22 = *v5;

    if ((REMRemindersListDataView.SectionLite.isEmpty.getter() & 1) == 0)
    {
      goto LABEL_21;
    }

    if (v39)
    {
      v23 = v22;
      v24 = __CocoaSet.contains(_:)();

      v2 = v42;
      v6 = v53;
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (*(v46 + 16))
      {
        v43 = sub_100003540(0, &qword_10076BA50);
        v25 = NSObject._rawHashValue(seed:)(*(v46 + 40));
        v26 = v46;
        v27 = -1 << *(v46 + 32);
        v28 = v25 & ~v27;
        if ((*(v44 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (1)
          {
            v30 = *(*(v26 + 48) + 8 * v28);
            v31 = static NSObject.== infix(_:_:)();

            if (v31)
            {
              break;
            }

            v28 = (v28 + 1) & v29;
            v26 = v46;
            if (((*(v44 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

LABEL_21:

          v2 = v42;
          v6 = v53;
LABEL_22:
          v32 = *v19;
          (*v19)(v54, v11, v6);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1004A1B84(0, v20[2] + 1, 1);
            v20 = v56;
          }

          v35 = v20[2];
          v34 = v20[3];
          if (v35 >= v34 >> 1)
          {
            sub_1004A1B84(v34 > 1, v35 + 1, 1);
            v20 = v56;
          }

          v20[2] = v35 + 1;
          v36 = v20 + v45 + v35 * v55;
          v6 = v53;
          v32(v36, v54, v53);
          goto LABEL_7;
        }
      }

LABEL_5:

      v2 = v42;
      v6 = v53;
    }

    (*v38[0])(v11, v6);
LABEL_7:
    if (++v14 == v52)
    {
      goto LABEL_27;
    }
  }

  if (v21 == v41)
  {
    goto LABEL_22;
  }

  if (qword_1007671C0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_100003E30(v37, qword_10077DCD0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown section type", 20, 2);
  __break(1u);
}

uint64_t sub_10014953C()
{

  sub_100058000(&qword_100769360);
  sub_10011763C(&qword_100769368, &qword_100769360);
  v1 = TTRRemindersListTreeViewModel.reminderItemsToUpdate<A>(forUpdated:)();

  v2 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v3 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v1, ObjectType, v3);

  return swift_unknownObjectRelease();
}

double sub_100149650@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v1 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v10 = sub_100145ED8(v9);

    (*(v4 + 8))(v9, v3);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v4 + 8))(v7, v3);
      goto LABEL_10;
    }

    (*(v4 + 96))(v7, v3);
    v10 = *v7;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.list(with:)();
  swift_unknownObjectRelease();
  if (v11)
  {
    *(a1 + 24) = &type metadata for TTRShowRemindersInListDragAndDropREMListTarget;
    *(a1 + 32) = &off_100714578;

    *a1 = v11;
    return result;
  }

LABEL_10:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_100149880(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
  swift_beginAccess();
  v5 = *(v2 + v4);

  v6 = sub_10013F404(a2, v5);

  return v6;
}

id sub_1001498F8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  *a1 = v3;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();

  return v3;
}

void *sub_100149958(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076E910);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v27[0] = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  sub_10000C36C(a1, v14);
  result = (*(v15 + 8))(v14, v15);
  if (result)
  {

    (*(v11 + 16))(v13, a2, v10);
    v17 = (*(v11 + 88))(v13, v10);
    if (v17 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
LABEL_3:
      (*(v11 + 8))(v13, v10);
      return 0;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v11 + 96))(v13, v10);
      v18 = v27[0];
      (*(v27[0] + 32))(v9, v13, v7);
      v19 = v27[1];
      if (sub_1001D6FFC())
      {
        v21 = v20;
        ObjectType = swift_getObjectType();
        (*(v21 + 16))(v19, v9, ObjectType, v21);
        swift_unknownObjectRelease();
        (*(v18 + 8))(v9, v7);
        v23 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
        v24 = 1;
        if ((*(*(v23 - 8) + 48))(v6, 1, v23) != 1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        (*(v18 + 8))(v9, v7);
        v25 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
        (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      }

      v24 = 0;
LABEL_19:
      sub_1000079B4(v6, &qword_10076E910);
      return v24;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v17 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v17 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v17 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v17 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      goto LABEL_3;
    }

    if (v17 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:))
    {
      return 0;
    }

    else
    {
      v26 = v17 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:);
      result = 0;
      if (!v26)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100149DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v24 = a3;
  v25 = a2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v8, &qword_100772140);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1000079B4(v8, &qword_100772140);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_1000079B4(v11, &qword_10076E900);
    goto LABEL_5;
  }

  TTRRemindersListViewModel.Item.sectionHeader.getter();
  (*(v17 + 8))(v8, v16);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*(v13 + 32))(v15, v11, v12);
  if (!swift_weakLoadStrong())
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_5;
  }

  v20 = sub_100146760();

  (*(v13 + 8))(v15, v12);
  if (!v20)
  {
LABEL_5:
    v18 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
    return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  }

  v21 = *(sub_100058000(&qword_10076E908) + 64);
  *a4 = v25;
  *(a4 + 1) = v20;
  v22 = sub_100058000(&unk_100775620);
  (*(*(v22 - 8) + 16))(&a4[v21], v24, v22);
  v23 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(a4, 0, 1, v23);
}

uint64_t sub_10014A1E0()
{
  sub_10003B788(v0 + 16);

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10014A24C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v1 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {

    v10 = sub_100145ED8(v9);

    (*(v4 + 8))(v9, v3);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    if ((*(v4 + 88))(v7, v3) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v4 + 8))(v7, v3);
      goto LABEL_13;
    }

    (*(v4 + 96))(v7, v3);
    v10 = *v7;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.customSmartList(with:)();
  swift_unknownObjectRelease();
  if (!v11)
  {
LABEL_12:

    goto LABEL_13;
  }

  v12 = [v11 customContext];
  if (!v12)
  {

    goto LABEL_12;
  }

  v13 = v12;
  v14 = REMSmartListCustomContext.filter.getter();

  if (v14)
  {
    *a1 = v14;
    v15 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
  }

LABEL_13:
  v17 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

uint64_t sub_10014A51C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance);
  if (v4 && swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 64);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);

    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v9 = a1;
    TTRSection.init(with:store:)();
  }

  else
  {
    v11 = type metadata accessor for TTRSection();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t sub_10014A640(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders27TTRShowGroupViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

uint64_t sub_10014A714()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

unint64_t sub_10014A994()
{
  result = qword_10076E930;
  if (!qword_10076E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076E930);
  }

  return result;
}

uint64_t sub_10014A9F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014AA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014AA9C(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10014AAF8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TTRRemindersListViewModel.SectionHeader();

  return sub_100140FC4(a1);
}

uint64_t sub_10014AB80()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076E948);
  v1 = sub_100003E30(v0, qword_10076E948);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10014AC48(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TTRIHashtagWrappingCollectionView.FocusStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRHashtagCollectionViewAllTagsButtonState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v4[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_selectionRequestObserver] = 0;
  v19 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_hashtags;
  v20 = type metadata accessor for TTRAccountsListsViewModel.Hashtags();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  type metadata accessor for TTRIHashtagWrappingCollectionView();
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *v18 = static TTRLocalizableStrings.Hashtags.allTagsText.getter();
  v18[1] = v22;
  (*(v16 + 104))(v18, enum case for TTRHashtagCollectionViewAllTagsButtonState.shown(_:), v15);
  TTRIHashtagWrappingCollectionView.allTagsButtonState.setter();
  TTRIHashtagWrappingCollectionView.allowsEmptySelection.setter();
  (*(v12 + 104))(v14, enum case for TTRIHashtagWrappingCollectionView.FocusStyle.selectionFollowsFocus(_:), v11);
  TTRIHashtagWrappingCollectionView.focusStyle.setter();
  TTRIHashtagWrappingCollectionView.allowsExcludedSelection.setter();
  *&v5[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_collectionView] = v21;
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v23 = v21;
  v24 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v41[4] = &type metadata for ContentConfigurationForContentBoxView;
  v41[5] = sub_10014C42C();
  v25 = v24;
  UICollectionViewCell.contentConfiguration.setter();
  v26 = [v25 contentView];
  v27 = type metadata accessor for ContentBoxView(0);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    if (qword_100766F60 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100003E30(v29, qword_10076E948);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "TTRIAccountsListsViewPinnedListsCell_collectionView: failed to create ContentBoxView", v32, 2u);
    }

    v28 = [objc_allocWithZone(v27) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v26 = v28;
  }

  v33 = v28;
  v34 = v26;
  v35 = v33;
  [v35 setLayoutMarginsRelativeArrangement:0];
  [v35 setPreservesSuperviewLayoutMargins:1];
  [v35 setHorizontalAlignment:0];
  [v35 setVerticalAlignment:0];
  [v35 setDebugBoundingBoxesEnabled:0];

  sub_100058000(&qword_10076B780);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10062D420;
  *(v36 + 32) = v23;
  sub_10014C480();
  v37 = v23;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 setArrangedSubviews:isa];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_10076EA40);
  swift_allocObject();
  v39 = TTRViewModelObserver.init(didReceiveNewValue:)();

  *&v25[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_selectionRequestObserver] = v39;

  return v25;
}

void sub_10014B18C()
{
  v0 = sub_100058000(&qword_10076EA48);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.Hashtags(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_10076EA50);
  TTRViewModelObserver.ValueChangeInfo.isInitialSubscription.getter();
  TTRViewModelObserver.ValueChangeInfo.isInitialSubscription.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (*(Strong + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_selectionRequestObserver))
    {

      TTRViewModelObserver.localValue.getter();

      if ((*(v4 + 48))(v2, 1, v3) == 1)
      {

        sub_1000079B4(v2, &qword_10076EA48);
      }

      else
      {
        sub_10014C5BC(v2, v6);
        TTRIHashtagWrappingCollectionView.setSelection(_:animated:)();
        sub_100029A00(v6, type metadata accessor for TTRIAccountsListsInnerSelectionRequest.Hashtags);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10014B474(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_100058000(&qword_10076EA20);
  v4 = __chkstk_darwin(v3 - 8);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v39 = &v37 - v6;
  v40 = type metadata accessor for TTRAccountsListsViewModel.Hashtags();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v37 - v21;
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  v42 = v2;
  sub_100030908();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v14[*(v12 + 28)], v10, &unk_10077A660);
  v25 = sub_100058000(&qword_10077A670);
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v10, 1, v25) == 1)
  {
    sub_100029A00(v14, type metadata accessor for TTRIAccountsListsItemIntermediateViewModel);
    return sub_1000079B4(v10, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_100029A00(v14, type metadata accessor for TTRIAccountsListsItemIntermediateViewModel);
    (*(v26 + 8))(v10, v25);
    (*(v16 + 32))(v24, v22, v15);
    (*(v16 + 16))(v19, v24, v15);
    if ((*(v16 + 88))(v19, v15) == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      (*(v16 + 96))(v19, v15);
      v29 = v37;
      v28 = v38;
      v30 = v19;
      v31 = v40;
      (*(v38 + 32))(v37, v30, v40);
      v32 = v39;
      (*(v28 + 16))(v39, v29, v31);
      (*(v28 + 56))(v32, 0, 1, v31);
      v33 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_hashtags;
      v34 = v42;
      swift_beginAccess();
      v35 = v41;
      sub_10000794C(v34 + v33, v41, &qword_10076EA20);
      swift_beginAccess();
      sub_10014C4CC(v32, v34 + v33);
      swift_endAccess();
      sub_10014BC20(v35);
      sub_1000079B4(v35, &qword_10076EA20);
      sub_1000079B4(v32, &qword_10076EA20);
      (*(v28 + 8))(v29, v31);
      return (*(v16 + 8))(v24, v15);
    }

    else
    {
      v36 = *(v16 + 8);
      v36(v24, v15);
      return (v36)(v19, v15);
    }
  }
}

id sub_10014BA30()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "_bridgedUpdateConfigurationUsingState:", isa);

  v4 = UICellConfigurationState.traitCollection.getter();
  v5 = [v4 listEnvironment];

  if (v5 == 4)
  {
    v6 = 0;
    top = 14.0;
    leading = 14.0;
    bottom = 14.0;
    trailing = 14.0;
  }

  else
  {
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    v6 = 10;
  }

  v11 = *&v1[OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_collectionView];
  [v11 setEdgesPreservingSuperviewLayoutMargins:v6];
  return [v11 setDirectionalLayoutMargins:{top, leading, bottom, trailing}];
}

uint64_t sub_10014BC20(uint64_t a1)
{
  v30 = a1;
  v2 = type metadata accessor for TTRAccountsListsViewModel.Hashtags();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v28 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v26[-v6];
  v8 = sub_100058000(&qword_10076EA20);
  v9 = __chkstk_darwin(v8 - 8);
  v29 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v26[-v11];
  v13 = sub_100058000(&qword_10076EA30);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v26[-v15];
  v17 = OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_hashtags;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_10000794C(v1 + v17, v16, &qword_10076EA20);
  sub_10000794C(v30, &v16[v18], &qword_10076EA20);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      v20 = v16;
      return sub_1000079B4(v20, &qword_10076EA20);
    }
  }

  else
  {
    sub_10000794C(v16, v12, &qword_10076EA20);
    if (v19(&v16[v18], 1, v2) != 1)
    {
      (*(v3 + 32))(v7, &v16[v18], v2);
      sub_10014C630(&qword_10076EA38, &type metadata accessor for TTRAccountsListsViewModel.Hashtags);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = v3;
      v25 = *(v3 + 8);
      v25(v7, v2);
      v25(v12, v2);
      result = sub_1000079B4(v16, &qword_10076EA20);
      if (v27)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v3 + 8))(v12, v2);
  }

  v30 = v3;
  sub_1000079B4(v16, &qword_10076EA30);
LABEL_7:
  v21 = v29;
  sub_10000794C(v1 + v17, v29, &qword_10076EA20);
  if (v19(v21, 1, v2) == 1)
  {
    v20 = v21;
    return sub_1000079B4(v20, &qword_10076EA20);
  }

  v23 = v30;
  v24 = v28;
  (*(v30 + 32))(v28, v21, v2);
  TTRAccountsListsViewModel.Hashtags.labels.getter();
  TTRIHashtagWrappingCollectionView.hashtagLabels.setter();
  TTRAccountsListsViewModel.Hashtags.isEnabled.getter();
  TTRIHashtagWrappingCollectionView.isEnabled.setter();
  return (*(v23 + 8))(v24, v2);
}

uint64_t sub_10014C088()
{

  return sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders29TTRIAccountsListsHashtagsCell_hashtags, &qword_10076EA20);
}

id sub_10014C1A4(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_10014C214(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_10014C480();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithArrangedSubviews:", isa);

  return v6;
}

id sub_10014C2B0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

unint64_t sub_10014C330@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForContentBoxView;
  result = sub_10014C42C();
  *(a1 + 32) = result;
  return result;
}

void (*sub_10014C364(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 24) = &type metadata for ContentConfigurationForContentBoxView;
  *(v2 + 32) = sub_10014C42C();
  return sub_10009D584;
}

uint64_t sub_10014C3DC(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650);
  return swift_dynamicCast();
}

unint64_t sub_10014C42C()
{
  result = qword_10076EA18;
  if (!qword_10076EA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076EA18);
  }

  return result;
}

unint64_t sub_10014C480()
{
  result = qword_10076B020;
  if (!qword_10076B020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076B020);
  }

  return result;
}

uint64_t sub_10014C4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076EA20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_10014C53C()
{
  type metadata accessor for ContentBoxView(0);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10014C630(&qword_10076EA58, type metadata accessor for ContentBoxView);
  return v0;
}

uint64_t sub_10014C5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIAccountsListsInnerSelectionRequest.Hashtags(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014C630(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10014C698(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265646E696D6552;
  }

  else
  {
    v3 = 0x73746E756F636341;
  }

  if (v2)
  {
    v4 = 0xEC0000007473694CLL;
  }

  else
  {
    v4 = 0xED00007473694C73;
  }

  if (*a2)
  {
    v5 = 0x7265646E696D6552;
  }

  else
  {
    v5 = 0x73746E756F636341;
  }

  if (*a2)
  {
    v6 = 0xED00007473694C73;
  }

  else
  {
    v6 = 0xEC0000007473694CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10014C754()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014C7EC()
{
  String.hash(into:)();
}

Swift::Int sub_10014C870()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014C904@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100712730, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10014C964(uint64_t *a1@<X8>)
{
  v2 = 0x73746E756F636341;
  if (*v1)
  {
    v2 = 0x7265646E696D6552;
  }

  v3 = 0xEC0000007473694CLL;
  if (*v1)
  {
    v3 = 0xED00007473694C73;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10014C9BC()
{
  result = qword_10076EA60;
  if (!qword_10076EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076EA60);
  }

  return result;
}

id sub_10014CA18(void *a1)
{
  v3 = objc_allocWithZone(v1);

  v4 = a1;
  v5 = TTRICollectionViewTreeBackedDiffableDataSource.init(collectionView:cellProvider:)();
  dispatch thunk of TTRICollectionViewTreeBackedDiffableDataSource.isBatchedIncrementalUpdatesDisabled_workaroundRdar145323570.setter();

  return v5;
}

uint64_t TTRListDetailListViewModelSource.viewModel(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1;

  return TTRListDetailViewModel.init(changeItem:)(v3, a2);
}

uint64_t sub_10014CB18@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  return TTRListDetailViewModel.init(changeItem:)(v3, a2);
}

uint64_t TTRListDetailCustomSmartListViewModelSource.viewModel(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1;

  return TTRListDetailViewModel.init(changeItem:)(v3, a2);
}

uint64_t sub_10014CBE0(void *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TTRListColors();
  v10[3] = sub_100003540(0, a2);
  v10[4] = a4;
  v10[0] = a1;
  v7 = a1;
  v8 = static TTRListColors.availableColors(for:)();
  sub_100004758(v10);
  return v8;
}

uint64_t sub_10014CC84(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for TTRListColors();
  v11[3] = sub_100003540(0, a3);
  v11[4] = a5;
  v11[0] = a2;
  v8 = a2;
  v9 = static TTRListColors.remColor(for:list:)();
  sub_100004758(v11);
  return v9;
}

uint64_t sub_10014CD14@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;

  return TTRListDetailViewModel.init(changeItem:)(v3, a2);
}

uint64_t sub_10014CD6C(void **a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  type metadata accessor for TTRListColors();
  v12[3] = sub_100003540(0, a4);
  v12[4] = a6;
  v12[0] = v8;
  v9 = v8;
  v10 = static TTRListColors.availableColors(for:)();
  sub_100004758(v12);
  return v10;
}

uint64_t sub_10014CE10(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = *a2;
  type metadata accessor for TTRListColors();
  v13[3] = sub_100003540(0, a5);
  v13[4] = a7;
  v13[0] = v9;
  v10 = v9;
  v11 = static TTRListColors.remColor(for:list:)();
  sub_100004758(v13);
  return v11;
}

uint64_t TTRListDetailCreationViewModelSource.viewModel(for:)@<X0>(char *a1@<X8>)
{

  return TTRListDetailViewModel.init(changeItem:)(v2, a1);
}

uint64_t TTRListDetailCreationViewModelSource.availableSymbolicColors(for:)(uint64_t a1)
{
  type metadata accessor for TTRListColors();
  v4[3] = type metadata accessor for TTRListDetailCreationChangeItem(0);
  v4[4] = sub_10014CF44();
  v4[0] = a1;

  v2 = static TTRListColors.availableColors(for:)();
  sub_100004758(v4);
  return v2;
}

unint64_t sub_10014CF44()
{
  result = qword_10076EAB8;
  if (!qword_10076EAB8)
  {
    type metadata accessor for TTRListDetailCreationChangeItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076EAB8);
  }

  return result;
}

uint64_t TTRListDetailCreationViewModelSource.remColor(for:changeItem:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRListColors();
  v5[3] = type metadata accessor for TTRListDetailCreationChangeItem(0);
  v5[4] = sub_10014CF44();
  v5[0] = a2;

  v3 = static TTRListColors.remColor(for:list:)();
  sub_100004758(v5);
  return v3;
}

uint64_t sub_10014D01C@<X0>(char *a1@<X8>)
{

  return TTRListDetailViewModel.init(changeItem:)(v2, a1);
}

uint64_t sub_10014D058(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for TTRListColors();
  v4[3] = type metadata accessor for TTRListDetailCreationChangeItem(0);
  v4[4] = sub_10014CF44();
  v4[0] = v1;

  v2 = static TTRListColors.availableColors(for:)();
  sub_100004758(v4);
  return v2;
}

uint64_t sub_10014D0C4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for TTRListColors();
  v5[3] = type metadata accessor for TTRListDetailCreationChangeItem(0);
  v5[4] = sub_10014CF44();
  v5[0] = v2;

  v3 = static TTRListColors.remColor(for:list:)();
  sub_100004758(v5);
  return v3;
}

void TTRListDetailTemplateViewModelSource.viewModel(for:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1;

  TTRListDetailViewModel.init(changeItem:)(v3, a2);
}

void sub_10014D1B4(id *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;

  TTRListDetailViewModel.init(changeItem:)(v3, a2);
}

uint64_t sub_10014D2B8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076EDC8);
  v1 = sub_100003E30(v0, qword_10076EDC8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10014D380()
{
  v1 = v0[13];
  if (!v1)
  {
    return 0;
  }

  if (v1 == 1)
  {
    return 0;
  }

  v3 = v0[16];
  if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  v4 = v0[19];
  v9 = v0[17];
  v5 = v0[13];
  v6 = v0[14];
  sub_10014E5A0(v1);

  sub_100081340(v7);
  v8 = *(v9 + 16);

  if (v8 || *(v4 + 16) || (v3 & 1) == 0)
  {
    sub_10014E578(v5);
    return 0;
  }

  else
  {

    sub_10014E578(v5);
    return v6;
  }
}

BOOL sub_10014D4E8()
{
  v1 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  if ((*(*(v0 + 48) + 32) - 1) <= 1)
  {
    return 0;
  }

  type metadata accessor for TTRUserDefaults();
  v9 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.lastSeenWelcomeScreenVersion.getter();

  (*(v2 + 104))(v5, enum case for TTRUserDefaults.WelcomeScreenVersion.never(_:), v1);
  sub_10014E3E8(&qword_10076EEA8, &type metadata accessor for TTRUserDefaults.WelcomeScreenVersion);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  return v11[1] != v11[0];
}

uint64_t sub_10014D6B0()
{
  v1 = v0;
  v17[1] = *v0;
  v2 = sub_100058000(&qword_10076C938);
  __chkstk_darwin(v2 - 8);
  v4 = v17 - v3;
  v17[0] = sub_100058000(&qword_10076EEB0);
  v5 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v7 = v17 - v6;
  if (qword_100766F68 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10076EDC8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "requestLoadUpgradeInfo: called", v11, 2u);
  }

  v17[3] = sub_10012A16C();
  sub_1000A96A0();
  v12 = static OS_dispatch_queue.main.getter();
  v17[2] = v12;
  v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_100058000(&qword_10076DAE8);
  sub_10000E188(&qword_10076DAF0, &qword_10076DAE8);
  sub_10014E3E8(&qword_10076C960, sub_1000A96A0);
  Publisher.receive<A>(on:options:)();
  sub_1000079B4(v4, &qword_10076C938);

  sub_10000E188(&qword_10076EEB8, &qword_10076EEB0);
  v14 = v17[0];
  v15 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
  (*(v5 + 8))(v7, v14);
  v1[20] = v15;
}

uint64_t sub_10014DA74(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  if (qword_100766F68 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_10076EDC8);
  sub_10014E430(v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  sub_10014E49C(v2);
  if (os_log_type_enabled(v10, v11))
  {
    buf = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    v20 = v2;
    *buf = 136315138;
    v21 = v3;
    v22 = v4;
    v23 = v5;
    v24 = v6;
    v25 = v7;
    v26 = v8;
    sub_10014E430(v2);
    v12 = String.init<A>(describing:)();
    v16 = v11;
    v14 = sub_100004060(v12, v13, &v19);

    *(buf + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v16, "requestLoadUpgradeInfo: upgradeInfoPublisher received upgradeInfo: %s", buf, 0xCu);
    sub_100004758(v18);
  }

  else
  {
  }

  v20 = v2;
  v21 = v3;
  v22 = v4;
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  sub_10014E430(v2);
  return sub_10014DCB4(&v20);
}

uint64_t sub_10014DCB4(uint64_t a1)
{
  v3 = *(v1 + 104);
  v4 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v4;
  *(v1 + 136) = *(a1 + 32);
  *(v1 + 152) = *(a1 + 48);
  sub_10014E508(a1, v13);
  sub_10014E578(v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_1000079B4(a1, &qword_10076EEC0);
  }

  v6 = Strong;
  v7 = sub_10014D380();
  v8 = (v6 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel);
  v9 = *(v6 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel);
  v10 = *(v6 + OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel + 8);
  *v8 = v7;
  v8[1] = v11;
  sub_10014E588(v9, v10);
  sub_100464B2C();
  sub_1000079B4(a1, &qword_10076EEC0);
  return swift_unknownObjectRelease();
}

void sub_10014DDD4()
{
  if (qword_100766F68 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10076EDC8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "requestLoadUpgradeInfo: upgradeInfoPublisher completed", v2, 2u);
  }
}

void sub_10014DEBC()
{
  v1 = v0[13];
  if (v1 == 1)
  {
    if (qword_100766F68 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100003E30(v2, qword_10076EDC8);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Need non-nil upgradeInfo in order to proceed", v4, 2u);
    }
  }

  else
  {
    v6 = v0[18];
    v5 = v0[19];
    v8 = v0[16];
    v7 = v0[17];
    v10 = v0[14];
    v9 = v0[15];
    v12[0] = v0[13];
    v12[1] = v10;
    v12[2] = v9;
    v12[3] = v8;
    v12[4] = v7;
    v12[5] = v6;
    v12[6] = v5;
    sub_10000C36C(v0 + 8, v0[11]);
    sub_10014E430(v1);
    sub_1002A719C(v12);

    sub_10014E578(v1);
  }
}

void *sub_10014E0CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRUserDefaults.WelcomeScreenVersion();
  __chkstk_darwin(v7 - 8);
  v8 = v3[13];
  if (v8 == 1)
  {
    if (qword_100766F68 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_10076EDC8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, a2, v12, 2u);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v14 = result;
      type metadata accessor for TTRUserDefaults();
      v15 = static TTRUserDefaults.appUserDefaults.getter();
      static TTRUserDefaults.WelcomeScreenVersion.current.getter();
      TTRUserDefaults.lastSeenWelcomeScreenVersion.setter();

      sub_10000C36C((v14 + 72), *(v14 + 96));
      swift_unknownObjectRetain();
      sub_100502974(a3, v14);
    }
  }

  else
  {
    v23 = a1;
    v24[0] = v3[13];
    v16 = v3[15];
    v17 = v3[16];
    v18 = v3[17];
    v20 = v3[18];
    v19 = v3[19];
    v24[1] = v3[14];
    v24[2] = v16;
    v24[3] = v17;
    v24[4] = v18;
    v24[5] = v20;
    v24[6] = v19;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v21 = result;
      sub_10014E5A0(v8);
      sub_10046E6FC(v24);
      type metadata accessor for TTRUserDefaults();
      v22 = static TTRUserDefaults.appUserDefaults.getter();
      static TTRUserDefaults.WelcomeScreenVersion.current.getter();
      TTRUserDefaults.lastSeenWelcomeScreenVersion.setter();

      sub_10000C36C((v21 + 72), *(v21 + 96));
      swift_unknownObjectRetain();
      sub_100502974(v23, v21);

      return sub_10014E578(v8);
    }
  }

  return result;
}

uint64_t sub_10014E358()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  swift_unknownObjectRelease();
  sub_100004758(v0 + 64);
  sub_10014E578(*(v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_10014E3E8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10014E430(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

void *sub_10014E49C(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10014E508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076EEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10014E578(void *result)
{
  if (result != 1)
  {
    return sub_10014E49C(result);
  }

  return result;
}

uint64_t sub_10014E588(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
  }

  return result;
}

void *sub_10014E5A0(void *result)
{
  if (result != 1)
  {
    return sub_10014E430(result);
  }

  return result;
}

uint64_t sub_10014E5C0(uint64_t a1, void (*a2)(char *), uint64_t a3, unsigned int *a4)
{
  v6 = type metadata accessor for TTRTemplateSharingAction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, *a4, v6);
  a2(v9);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10014E6B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v66 = a3;
  v6 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v55 - v11;
  v13 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  TTRTemplatePublicLinkData.stateToDisplay.getter();
  v18 = *(v14 + 88);
  v64 = v16;
  v19 = v18(v16, v13);
  if (v19 == enum case for TTRTemplatePublicLinkData.StateToDisplay.created(_:))
  {
    v61 = static TTRLocalizableStrings.Templates.updateLink.getter();
    v57 = v20;
    v21 = String._bridgeToObjectiveC()();
    v56 = objc_opt_self();
    v22 = [v56 _systemImageNamed:v21];
    v63 = v13;
    v55[0] = v22;

    v60 = v17;
    TTRTemplatePublicLinkData.capabilities.getter();
    static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
    v59 = sub_10014EE2C();
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v23 = *(v7 + 8);
    v55[2] = v7 + 8;
    v58 = v23;
    v23(v10, v6);
    v23(v12, v6);
    v62 = v14;
    v24 = sub_100003540(0, &qword_10076BA60);
    v25 = swift_allocObject();
    v27 = v65;
    v26 = v66;
    *(v25 + 16) = v66;
    *(v25 + 24) = v27;

    v55[1] = v24;
    v61 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v57 = static TTRLocalizableStrings.Templates.sendLink.getter();
    v28 = String._bridgeToObjectiveC()();
    v29 = v56;
    v30 = [v56 _systemImageNamed:v28];

    v31 = swift_allocObject();
    *(v31 + 16) = v26;
    *(v31 + 24) = v27;

    v57 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    static TTRLocalizableStrings.Templates.stopSharing.getter();
    v55[0] = v32;
    v33 = String._bridgeToObjectiveC()();
    v34 = v29;
    v35 = [v29 _systemImageNamed:v33];

    TTRTemplatePublicLinkData.capabilities.getter();
    static TTRTemplatePublicLinkData.Capabilities.stopSharing.getter();
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v36 = v58;
    v58(v10, v6);
    v36(v12, v6);
    v37 = swift_allocObject();
    *(v37 + 16) = v66;
    *(v37 + 24) = v27;

    v38 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &unk_10076B890);
    v39 = static TTRLocalizableStrings.Templates.manageLink.getter();
    v41 = v40;
    v42 = String._bridgeToObjectiveC()();
    v43 = [v34 _systemImageNamed:v42];

    sub_100058000(&qword_10076B780);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006322B0;
    v45 = v57;
    *(v44 + 32) = v61;
    *(v44 + 40) = v45;
    *(v44 + 48) = v38;
    v53 = v44;
    v46._countAndFlagsBits = v39;
    v46._object = v41;
    v67.value.super.isa = v43;
    v67.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v46, 0, v67, 0, 0xFFFFFFFFFFFFFFFFLL, v53, v54).super.super.isa;
    (*(v62 + 8))(v64, v63);
    return isa;
  }

  else if (v19 == enum case for TTRTemplatePublicLinkData.StateToDisplay.notRequested(_:))
  {
    if (a2)
    {
      static TTRLocalizableStrings.Templates.shareTemplate.getter();
      v49 = String._bridgeToObjectiveC()();
      v50 = [objc_opt_self() _systemImageNamed:v49];

      TTRTemplatePublicLinkData.capabilities.getter();
      static TTRTemplatePublicLinkData.Capabilities.createLink.getter();
      sub_10014EE2C();
      dispatch thunk of SetAlgebra.isSuperset(of:)();
      v51 = *(v7 + 8);
      v51(v10, v6);
      v51(v12, v6);
      sub_100003540(0, &qword_10076BA60);
      v52 = swift_allocObject();
      *(v52 + 16) = v66;
      *(v52 + 24) = v65;

      return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_10014EE2C()
{
  result = qword_10076EEC8;
  if (!qword_10076EEC8)
  {
    type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076EEC8);
  }

  return result;
}

uint64_t sub_10014EF14()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076EED0);
  v1 = sub_100003E30(v0, qword_10076EED0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10014EFDC()
{
  v33 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v1 = *(v33 - 8);
  v2 = __chkstk_darwin(v33);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v25 - v4;
  v6 = *(v0 + 48);
  v7 = TTRListEditor.changeItem.getter();
  v8 = *(*(v6 + 48) + 16);

  v32 = v8;
  if (v8)
  {
    v10 = 0;
    v30 = v1 + 16;
    v27 = (v1 + 8);
    v11 = &_swiftEmptyArrayStorage;
    v28 = (v1 + 32);
    v26 = v7;
    v31 = result;
    while (1)
    {
      if (v10 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v14 = *(v1 + 72);
      (*(v1 + 16))(v5, result + v13 + v14 * v10, v33);
      v15 = TTRListOrCustomSmartListChangeItem.parentListID.getter();
      v16 = [v7 objectID];
      v12 = v16;
      if (!v15)
      {
        break;
      }

      if (!v16)
      {
        v12 = v15;
LABEL_4:

        goto LABEL_5;
      }

      sub_100003540(0, &qword_10076BA50);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_13;
      }

LABEL_5:
      (*v27)(v5, v33);
LABEL_6:
      ++v10;
      result = v31;
      if (v32 == v10)
      {
        goto LABEL_19;
      }
    }

    if (!v16)
    {
LABEL_13:
      v18 = *v28;
      (*v28)(v29, v5, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004A1F60(0, v11[2] + 1, 1);
        v11 = v34;
      }

      v21 = v11[2];
      v20 = v11[3];
      if (v21 >= v20 >> 1)
      {
        sub_1004A1F60(v20 > 1, v21 + 1, 1);
        v11 = v34;
      }

      v11[2] = v21 + 1;
      v18(v11 + v13 + v21 * v14, v29, v33);
      v7 = v26;
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v11 = &_swiftEmptyArrayStorage;
LABEL_19:

  v22 = v11[2];

  if (v22)
  {
    static TTRLocalizableStrings.GroupDetail.includedListsCountText(withCount:)();
  }

  v23 = [v7 name];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v24;
}

uint64_t sub_10014F30C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = TTRListEditor.changeItem.getter();
  if (qword_100766F70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_10076EED0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v9 = [v6 objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v9;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  static TTRLocalizableStrings.UndoAction.renameGroup.getter();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = a1;
  v12[4] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100150208;
  *(v13 + 24) = v12;
  v17[4] = sub_100068444;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100026440;
  v17[3] = &unk_100718240;
  v14 = _Block_copy(v17);

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014F5E4()
{
  v0 = String.validatedListName()();
  TTRListEditor.edit(name:)(v0);
}

void sub_10014F630()
{
  v1 = v0;
  v2 = TTRListEditor.changeItem.getter();
  if (qword_100766F70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10076EED0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v5 = [v2 objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v5;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  sub_10000C36C((v0 + 64), *(v0 + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  v8 = TTRListEditor.changeItem.getter();
  v9 = [v8 saveRequest];

  sub_100003540(0, &qword_100777780);
  v10 = static OS_dispatch_queue.main.getter();
  v24 = sub_1002D7140;
  v25 = 0;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100009DE4;
  v23 = &unk_100718150;
  v11 = _Block_copy(&aBlock);
  [v9 saveWithQueue:v10 completion:v11];
  _Block_release(v11);

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_9:

    return;
  }

  v13 = v12;
  if (*(v1 + 104))
  {
    static TTRLocalizableStrings.UndoAction.renameGroup.getter();
    v14 = objc_opt_self();
    v15 = String._bridgeToObjectiveC()();

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v1;
    v16[4] = &off_100718100;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1001501FC;
    *(v17 + 24) = v16;
    v24 = sub_100026410;
    v25 = v17;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_100026440;
    v23 = &unk_1007181C8;
    v18 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v14 withActionName:v15 block:v18];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    swift_unknownObjectRelease();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
}

void sub_10014FA60()
{
  v1 = TTRListEditor.changeItem.getter();
  if (qword_100766F70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10076EED0);
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
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  sub_10000C36C((v0 + 64), *(v0 + 88));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
}

void sub_10014FC1C()
{
  v1 = v0;
  v2 = v0[6];
  v3 = TTRListEditor.changeItem.getter();
  if (qword_100766F70 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10076EED0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v37 = v3;
  v6 = [v3 objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v6;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  v7 = sub_10000C36C(v0 + 8, v0[11]);
  v8 = *(v2 + 32);
  v9 = TTRListEditor.changeItem.getter();
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  v36 = *v7;
  v12 = objc_allocWithZone(TTRUndoManager);
  v13 = v10;

  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 initWithDebugIdentifier:v14];

  type metadata accessor for TTRIGroupMembershipInteractor();
  v34[1] = v1;
  v16 = swift_allocObject();
  v16[3] = 0;
  swift_unknownObjectWeakInit();
  v16[9] = 0;
  v16[4] = v9;
  v16[5] = v8;
  v16[6] = v13;
  type metadata accessor for TTRAccountEditor();
  sub_100150214(&qword_10076EFB0, &type metadata accessor for TTRAccountEditor);
  v17 = v8;
  v35 = v13;
  v18 = v15;
  v19 = v9;
  TTRUndoableEditing.init(changeItem:undoManager:)();
  v20 = v39[0];
  v16[7] = v11;
  v16[8] = v20;
  v16[9] = NSUndoManager.observeChanges<A>(target:handler:)();

  v21 = type metadata accessor for TTRIGroupMembershipRouter();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39[3] = v21;
  v39[4] = &off_100726828;
  v39[0] = v22;
  type metadata accessor for TTRIGroupMembershipPresenter();
  v23 = swift_allocObject();
  v24 = sub_10000AE84(v39, v21);
  v25 = __chkstk_darwin(v24);
  v27 = (v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v23[12] = v21;
  v23[13] = &off_100726828;
  v23[9] = v29;
  v23[3] = 0;
  swift_unknownObjectWeakInit();
  v23[5] = 0;
  swift_unknownObjectWeakInit();
  v23[7] = v16;
  v23[8] = &off_10072CB68;
  v23[6] = v18;
  v30 = v18;

  sub_100004758(v39);
  type metadata accessor for TTRIGroupMembershipViewController();
  v39[0] = v23;
  v39[1] = &off_10072B8D8;
  v39[2] = v30;
  sub_100150214(&qword_100769F10, type metadata accessor for TTRIGroupMembershipViewController);
  static TTRTypedController<>.instantiateFromStoryboard(with:)();

  v31 = v38;
  v16[3] = &off_10072B8C8;
  swift_unknownObjectWeakAssign();

  v23[3] = &off_100714400;
  swift_unknownObjectWeakAssign();
  v23[5] = &off_1007180F8;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    [Strong pushViewController:v31 animated:1];
  }
}

uint64_t sub_100150180()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  swift_unknownObjectRelease();
  sub_100004758(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_100150214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015026C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v47 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v4 - 8);
  v46 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v6 - 8);
  v45 = v35 - v7;
  v8 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v8 - 8);
  v43 = v35 - v9;
  v40 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v40 - 8);
  __chkstk_darwin(v40);
  v49 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v15 - 8);
  v17 = v35 - v16;
  v18 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v18 - 8);
  v20 = v35 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.assigned(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  v26 = REMSmartListType.longTitle.getter();
  v36 = v27;
  v37 = v26;
  v41 = static TTRListColors.SmartList.assigned.getter();
  v28 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v29 = *(*(v28 - 8) + 56);
  v42 = v17;
  v29(v17, 1, 1, v28);
  v44 = v1;
  swift_getObjectType();
  v30 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
  if (v30)
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v38 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v39);
  v31 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
  if (v31)
  {
    swift_unknownObjectRelease();
  }

  (*(v10 + 104))(v49, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v40);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v50, &qword_1007693C0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    LODWORD(v40) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v40) = 0;
  }

  LODWORD(v39) = v31 != 0;
  v35[3] = v30 != 0;
  v32 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
  v33 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t sub_100150958()
{
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

uint64_t sub_100150AB4()
{
  sub_100058000(&qword_10076F6F0);
  type metadata accessor for TTRRemindersListViewModel.AssignmentData.VisibleElements();
  *(swift_allocObject() + 16) = xmmword_10062D400;
  static TTRRemindersListViewModel.AssignmentData.VisibleElements.originatorString.getter();
  sub_100155004(&qword_10076F6F8, &type metadata accessor for TTRRemindersListViewModel.AssignmentData.VisibleElements);
  sub_100058000(&qword_10076F700);
  sub_10011763C(&qword_10076F708, &qword_10076F700);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100150C14()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.assigned(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_100150D24()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.assigned(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100150E34@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_hasCompletedReminders) & 1;
  v3 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.noAssigned(_:);
  v4 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_100150EBC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v8 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v8 - 8) + 104))(a3, v7, v8);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v3;
  v10 = (a3 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v10 = sub_100154FF8;
  v10[1] = v9;
}

uint64_t sub_100150FB4@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 objectID];

    *a2 = v5;
    v6 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    v14 = *(v7 - 8);
    (*(v14 + 104))(a2, v6, v7);
    v8 = *(v14 + 56);
    v9 = a2;
    v10 = 0;
    v11 = v7;
  }

  else
  {
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    v8 = *(*(v12 - 8) + 56);
    v11 = v12;
    v9 = a2;
    v10 = 1;
  }

  return v8(v9, v10, 1, v11);
}

uint64_t sub_1001510DC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = __chkstk_darwin(v2);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = 0;
  swift_storeEnumTagMultiPayload();

  TTRRemindersListTreeViewModel.parent(of:)();

  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v12, 1, v16) != 1)
  {
    v31 = a1;
    v18 = (*(v17 + 88))(v12, v16);
    if (v18 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
      goto LABEL_3;
    }

    if (v18 == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v17 + 96))(v12, v16);
      v22 = v32;
      (*(v32 + 32))(v9, v12, v7);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      (*(v22 + 8))(v9, v7);
      v24 = v33;
      v23 = v34;
      v25 = v35;
      (*(v34 + 32))(v33, v6, v35);
      if ((*(v23 + 88))(v24, v25) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
      {
        (*(v23 + 96))(v24, v25);
        v26 = *v24;
        sub_10014AA9C(v15);
        v27 = v31;
        *v31 = v26;
        v28 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
        v29 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v29 - 8) + 104))(v27, v28, v29);
        return swift_storeEnumTagMultiPayload();
      }

      (*(v23 + 8))(v24, v25);
      v19 = v15;
      v20 = v31;
      return sub_10014AA38(v19, v20);
    }

    if (v18 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
    {
      sub_10014AA38(v15, v31);
      return (*(v17 + 8))(v12, v16);
    }

    if (v18 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v18 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v18 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v18 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v18 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
LABEL_3:
      (*(v17 + 8))(v12, v16);
      a1 = v31;
    }

    else
    {
      a1 = v31;
      if (v18 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v18 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }
  }

  v19 = v15;
  v20 = a1;
  return sub_10014AA38(v19, v20);
}

double sub_100151638@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001517D8();
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = *(v5 + 88);
  v11 = (v5 + 8);
  if (v10(v7, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v11)(v7, v4);
    v12 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = &off_10071A5E0;
    v13 = sub_1000317B8(a2);
    v9(v13, a1, v4);
    *(v13 + *(v12 + 20)) = v8;
    *(v13 + *(v12 + 24)) = 0;
  }

  else
  {

    (*v11)(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001517D8()
{
  v1 = OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    _s9Reminders30DragAndDropPresenterCapabilityCMa_0();
    v2 = swift_allocObject();
    v3 = REMSmartListTypeAssigned;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 2;
    *(v2 + 24) = &off_100718268;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

uint64_t sub_100151894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1001517D8();
  sub_10000794C(a1, v8, &qword_100772140);
  v10 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.AttributeMatchingRequest(0);
  v11 = swift_allocObject();
  result = sub_100154F88(v8, v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_parent);
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_childIndex) = a2;
  *(v11 + OBJC_IVAR____TtCC9Reminders42TTRSmartListDragAndDropPresenterCapabilityP33_EB37CBC97CD33B7B0DA5877F68F3A24924AttributeMatchingRequest_dragAndDropCapability) = v9;
  a3[3] = v10;
  a3[4] = &off_10071A4F0;
  *a3 = v11;
  return result;
}

void sub_1001519A0()
{
  v0 = TTRReminderEditor.changeItem.getter();
  REMReminderChangeItem.ttrAssignmentContext.getter();

  if (v7)
  {
    sub_10000C36C(v6, v7);
    v1 = dispatch thunk of TTRReminderAssignmentContextProtocol.currentAssignment.getter();
    sub_100004758(v6);
    if (v1)
    {

      return;
    }
  }

  else
  {
    sub_1000079B4(v6, &qword_100769988);
  }

  v2 = TTRReminderEditor.changeItem.getter();
  REMReminderChangeItem.ttrList.getter();

  if (v7)
  {
    sub_10000C36C(v6, v7);
    v3 = dispatch thunk of TTRListProtocol.shareeForCurrentUser.getter();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 objectID];

      sub_100004758(v6);
      if (v5)
      {
        TTRReminderEditor.addAssignment(assigneeID:originatorID:)();
      }
    }

    else
    {
      sub_100004758(v6);
    }
  }

  else
  {
    sub_1000079B4(v6, &unk_100775680);
  }
}

uint64_t sub_100151AEC(void *a1)
{
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v2 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_10000C36C(a1, a1[3]);
  dispatch thunk of TTRReminderProtocol.ttrAssignmentContext.getter();
  if (!v11)
  {
    v8 = &qword_100769988;
LABEL_10:
    sub_1000079B4(v10, v8);
    goto LABEL_11;
  }

  sub_10000C36C(v10, v11);
  v3 = dispatch thunk of TTRReminderAssignmentContextProtocol.currentAssignment.getter();
  sub_100004758(v10);
  if (!v3)
  {
LABEL_11:
    v7 = 0;
    return v7 & 1;
  }

  sub_10000C36C(a1, a1[3]);
  dispatch thunk of TTRReminderProtocol.ttrList.getter();
  if (!v11)
  {

    v8 = &unk_100775680;
    goto LABEL_10;
  }

  sub_10000C36C(v10, v11);
  v4 = dispatch thunk of TTRListProtocol.shareeForCurrentUser.getter();
  sub_100004758(v10);
  if (!v4)
  {

    goto LABEL_11;
  }

  sub_100003540(0, &qword_100775690);
  v5 = [v4 objectID];
  v6 = [v3 assigneeID];
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_100151CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1001517D8();
  sub_1001D6AC0(a1, a2, a3);
}

uint64_t sub_100151D40@<X0>(void *a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListTreeViewModel.parent(of:)();

  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1000079B4(v10, &qword_100772140);
  }

  else if ((*(v16 + 88))(v10, v15) == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v16 + 96))(v10, v15);
    (*(v12 + 32))(v14, v10, v11);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    (*(v12 + 8))(v14, v11);
    (*(v2 + 32))(v5, v7, v1);
    if ((*(v2 + 88))(v5, v1) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
    {
      (*(v2 + 96))(v5, v1);
      v17 = *v5;
      v18 = v25;
      *v25 = v17;
      v19 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
      v20 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      v21 = *(v20 - 8);
      (*(v21 + 104))(v18, v19, v20);
      return (*(v21 + 56))(v18, 0, 1, v20);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v16 + 8))(v10, v15);
  }

  v23 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  return (*(*(v23 - 8) + 56))(v25, 1, 1, v23);
}

uint64_t sub_1001521C0()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.assigned(_:);
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v5 - 8) + 104))(v3, v4, v5);
  (*(v1 + 104))(v3, enum case for TTRUserActivityListPayload.State.predefinedSmartListType(_:), v0);
  v8[3] = type metadata accessor for TTRUserActivityListPayload();
  v8[4] = &protocol witness table for TTRUserActivityListPayload;
  sub_1000317B8(v8);
  TTRUserActivityListPayload.init(state:)();
  NSUserActivity.setPayload(_:)();
  return sub_100004758(v8);
}

uint64_t sub_100152314()
{
  v29 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  sub_100003540(0, &qword_1007865E0);
  v28 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v14 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v15);
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TTRRemindersListViewModel.Item();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) != 1)
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v18 + 8))(v10, v17);
      v19 = 0;
      goto LABEL_6;
    }

    sub_1000079B4(v10, &qword_100772140);
  }

  v19 = 1;
LABEL_6:
  v20 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v20 - 8) + 56))(v13, v19, 1, v20);
  v21 = *(sub_100058000(&qword_1007693A0) + 48);
  v22 = enum case for TTRListType.PredefinedSmartListType.assigned(_:);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v23 - 8) + 104))(v3, v22, v23);
  sub_10000794C(v13, &v3[v21], &unk_10076BB50);
  (*(v1 + 104))(v3, enum case for TTRUserActivityWindowSceneRestorationPayload.State.predefinedSmartListType(_:), v29);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v30[3] = v4;
  v30[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v24 = sub_1000317B8(v30);
  (*(v5 + 16))(v24, v7, v4);
  v25 = v28;
  NSUserActivity.setPayload(_:)();
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v13, &unk_10076BB50);
  sub_100004758(v30);
  return v25;
}

id sub_10015274C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100152884@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRAutoCompleteReminderListScope.anyListForCKAccounts(_:);
  v3 = type metadata accessor for TTRAutoCompleteReminderListScope();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_10015295C()
{
  swift_unknownObjectRelease();
}

uint64_t sub_1001529AC()
{
  v0 = *(sub_10056FD38() + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_smartList);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowAssignedViewModelSource()
{
  result = qword_10076F010;
  if (!qword_10076F010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100152B10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v118 = sub_100058000(&qword_10076F6E0);
  v5 = __chkstk_darwin(v118);
  v117 = (&v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v116 = &v96 - v7;
  v115 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v120 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v102 = &v96 - v10;
  v11 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v11 - 8);
  v100 = &v96 - v12;
  v101 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v104 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v98 = *(v105 - 8);
  __chkstk_darwin(v105);
  v97 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&qword_10076F6E8);
  __chkstk_darwin(v15 - 8);
  v17 = &v96 - v16;
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v107 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for REMRemindersListDataView.ListsModel();
  v113 = *(v112 - 8);
  __chkstk_darwin(v112);
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRListType.SortingCapability();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v106 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v96 - v27;
  v114 = OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_smartList;
  v29 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_smartList);
  v103 = a2;
  v110 = v18;
  v109 = v19;
  v108 = v17;
  if (!v29)
  {
    v31 = REMRemindersListDataView.AssignedModel.assignedSmartList.getter();
    if (!v31)
    {
      goto LABEL_15;
    }

    v30 = 0;
LABEL_7:
    v32 = v31;
    v33 = [v31 sortingStyle];

    if (v30)
    {
      if (v33)
      {
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
        if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
        {
          LODWORD(v111) = 1;
        }

        else
        {
          LODWORD(v111) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_18;
      }

      goto LABEL_12;
    }

    if (v33)
    {
      LODWORD(v111) = 0;
      goto LABEL_18;
    }

LABEL_15:
    LODWORD(v111) = 1;
    goto LABEL_19;
  }

  v30 = [v29 sortingStyle];
  v31 = REMRemindersListDataView.AssignedModel.assignedSmartList.getter();
  if (v31)
  {
    goto LABEL_7;
  }

  if (!v30)
  {
    goto LABEL_15;
  }

LABEL_12:
  LODWORD(v111) = 0;
  v33 = v30;
LABEL_18:

LABEL_19:
  v38 = *(v2 + v114);
  v39 = REMRemindersListDataView.AssignedModel.assignedSmartList.getter();
  v40 = v39;
  if (v39)
  {
  }

  v41 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v24 + 16))(v28, v2 + v41, v23);
  v42 = (*(v24 + 88))(v28, v23);
  if (v42 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    v43 = v38 == 0;
    v44 = v113;
    if (((v43 ^ (v40 != 0)) & 1) == 0)
    {
      v45 = v42;
      v46 = REMRemindersListDataView.AssignedModel.assignedSmartList.getter();
      v47 = v46;
      if (v46)
      {
      }

      v48 = v47 != 0;
      v49 = v106;
      *v106 = v48;
      (*(v24 + 104))(v49, v45, v23);
      swift_beginAccess();
      (*(v24 + 40))(v3 + v41, v49, v23);
      swift_endAccess();
    }
  }

  else
  {
    (*(v24 + 8))(v28, v23);
    v44 = v113;
  }

  v50 = REMRemindersListDataView.AssignedModel.assignedSmartList.getter();
  v51 = v114;
  v52 = *(v3 + v114);
  *(v3 + v114) = v50;

  REMRemindersListDataView.AssignedModel.listsModel.getter();
  v53 = REMRemindersListDataView.ListsModel.completedRemindersCount.getter();
  v55 = v54;
  v56 = *(v44 + 1);
  v57 = v112;
  v56(v22, v112);
  v58 = v3 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_completedRemindersCount;
  *v58 = v53;
  *(v58 + 8) = v55 & 1;
  REMRemindersListDataView.AssignedModel.listsModel.getter();
  LOBYTE(v53) = REMRemindersListDataView.ListsModel.hasCompletedReminders.getter();
  v56(v22, v57);
  *(v3 + OBJC_IVAR____TtC9Reminders30TTRShowAssignedViewModelSource_hasCompletedReminders) = v53;
  if (v111)
  {
    sub_10015026C(v104);
    v113 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
    v114 = v59;
    REMRemindersListDataView.AssignedModel.listsModel.getter();
    v60 = REMRemindersListDataView.ListsModel.groups.getter();
    v56(v22, v57);
    v61 = *(v60 + 16);
    if (v61)
    {
      v98 = v3;
      v122[0] = _swiftEmptyArrayStorage;
      sub_1004A22E0(0, v61, 0);
      v62 = v122[0];
      v63 = *(v60 + 16);
      v64 = 0;
      v111 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
      v65 = *(v111 - 8);
      v108 = (v60 + ((v65[80] + 32) & ~v65[80]));
      v107 = v65 + 16;
      v110 = v65;
      v106 = v65 + 32;
      v105 = v119 + 32;
      if (v63 >= v61)
      {
        v66 = v61;
      }

      else
      {
        v66 = v63;
      }

      v112 = v66;
      v109 = v60;
      v67 = v116;
      while (v112 != v64)
      {
        if (v64 >= *(v60 + 16))
        {
          goto LABEL_47;
        }

        v68 = v62;
        v69 = v118;
        v70 = *(v118 + 48);
        v71 = v110;
        v72 = v111;
        (*(v110 + 16))(&v67[v70], &v108[*(v110 + 72) * v64], v111);
        v73 = v117;
        *v117 = v64;
        (*(v71 + 32))(v73 + *(v69 + 48), &v67[v70], v72);
        sub_10015395C(v73, v113, v114, v120);
        sub_1000079B4(v73, &qword_10076F6E0);
        v62 = v68;
        v122[0] = v68;
        v75 = v68[2];
        v74 = v68[3];
        if (v75 >= v74 >> 1)
        {
          sub_1004A22E0(v74 > 1, v75 + 1, 1);
          v62 = v122[0];
        }

        ++v64;
        v62[2] = v75 + 1;
        (*(v119 + 32))(v62 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v75, v120, v115);
        v60 = v109;
        if (v61 == v64)
        {

          v3 = v98;
          goto LABEL_42;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      sub_1000079B4(v60, &qword_10076F6E0);

      __break(1u);
    }

    else
    {

      v62 = _swiftEmptyArrayStorage;
LABEL_42:
      v82 = v99;
      v83 = v100;
      v84 = v104;
      v85 = v101;
      (*(v99 + 16))(v100, v104, v101);
      (*(v82 + 56))(v83, 0, 1, v85);
      v86 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
      v87 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
      v88 = type metadata accessor for TTRRemindersListViewModel.Item();
      v89 = v102;
      (*(*(v88 - 8) + 56))(v102, 1, 1, v88);
      v122[3] = v86;
      v122[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
      v122[0] = v87;
      sub_10000B0D8(v122, v121);
      v90 = swift_allocObject();
      *(v90 + 16) = v62;
      sub_100005FD0(v121, v90 + 24);
      *(v90 + 64) = v3;

      sub_100586238(1, v83, sub_100070528, v90, v103, 0, v89);

      sub_1000079B4(v89, &qword_100772140);
      sub_1000079B4(v83, &unk_10078A380);
      (*(v82 + 8))(v84, v85);

      return sub_100004758(v122);
    }
  }

  else
  {
    v76 = *(v3 + v51);
    if (v76)
    {
      v77 = [v76 sortingStyle];
      v78 = v108;
      REMSortingStyle.dataViewSortingStyle.getter();

      v79 = v109;
      v80 = v110;
      (*(v109 + 56))(v78, 0, 1, v110);
      v81 = v107;
      (*(v79 + 32))(v107, v78, v80);
    }

    else
    {
      v79 = v109;
      v92 = v108;
      v80 = v110;
      (*(v109 + 56))(v108, 1, 1, v110);
      v93 = v98;
      v94 = v97;
      v95 = v105;
      (*(v98 + 104))(v97, enum case for TTRListType.PredefinedSmartListType.assigned(_:), v105);
      v81 = v107;
      TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
      (*(v93 + 8))(v94, v95);
      if ((*(v79 + 48))(v92, 1, v80) != 1)
      {
        sub_1000079B4(v92, &qword_10076F6E8);
      }
    }

    sub_10057A85C();
    return (*(v79 + 8))(v81, v80);
  }

  return result;
}

uint64_t sub_10015395C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a4;
  v68 = a3;
  v69 = a2;
  v64 = a1;
  v4 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v4 - 8);
  v77 = &v51 - v5;
  v74 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = __chkstk_darwin(v7);
  v73 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v70 = &v51 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v65 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v14 - 8);
  v58 = &v51 - v15;
  v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TTRListColors.Color();
  v79 = *(v18 - 8);
  v80 = v18;
  __chkstk_darwin(v18);
  v81 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v82 = *(v83 - 8);
  v20 = __chkstk_darwin(v83);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v51 - v23;
  v25 = sub_100058000(&qword_10076F6E0);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v51 - v27;
  v29 = type metadata accessor for REMRemindersListDataView.ListsModel.Sublist();
  v54 = v29;
  v55 = *(v29 - 8);
  v30 = v55;
  __chkstk_darwin(v29);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v64, v28, &qword_10076F6E0);
  v33 = *v28;
  (*(v30 + 32))(v32, &v28[*(v26 + 56)], v29);
  v34 = v24;
  v51 = v24;
  v69(v33);
  v35 = REMRemindersListDataView.ListsModel.Sublist.listColor.getter();
  type metadata accessor for TTRListColors();
  v36 = v81;
  static TTRListColors.color(for:)();

  REMRemindersListDataView.ListsModel.Sublist.listName.getter();
  v37 = v79;
  v38 = v80;
  v39 = v52;
  (*(v79 + 16))(v52, v36, v80);
  (*(v53 + 104))(v39, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.listName(_:), v56);
  (*(v82 + 16))(v22, v34, v83);
  (*(v37 + 56))(v58, 1, 1, v38);
  (*(v62 + 104))(v60, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v63);
  (*(v66 + 104))(v65, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v67);
  v40 = v57;
  TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
  v41 = REMRemindersListDataView.ListsModel.Sublist.listID.getter();
  v43 = v71;
  v42 = v72;
  *v71 = v41;
  (*(v42 + 104))(v43, enum case for TTRRemindersListViewModel.SectionID.objectID(_:), v74);
  v44 = v59;
  v45 = v77;
  v46 = v61;
  (*(v59 + 16))(v77, v40, v61);
  (*(v44 + 56))(v45, 0, 1, v46);
  v47 = v70;
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  v49 = v75;
  v48 = v76;
  (*(v75 + 16))(v73, v47, v76);
  REMRemindersListDataView.ListsModel.Sublist.reminders.getter();
  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
  (*(v49 + 8))(v47, v48);
  (*(v44 + 8))(v40, v46);
  (*(v79 + 8))(v81, v80);
  (*(v82 + 8))(v51, v83);
  return (*(v55 + 8))(v32, v54);
}

uint64_t sub_1001542CC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v32 = *(v10 - 8);
  v33 = v10;
  __chkstk_darwin(v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  sub_10000C36C(a1, v18);
  v19 = (*(v17 + 8))(v18, v17);
  if (!v19)
  {
    goto LABEL_4;
  }

  v20 = v19;
  (*(v14 + 16))(v16, a2, v13);
  v21 = (*(v14 + 88))(v16, v13);
  if (v21 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_3;
  }

  if (v21 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v14 + 96))(v16, v13);
    v24 = v32;
    v25 = v16;
    v26 = v33;
    (*(v32 + 32))(v12, v25, v33);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    v27 = [v20 list];
    v28 = [v27 remObjectID];

    *v7 = v28;
    v30 = v34;
    v29 = v35;
    (*(v34 + 104))(v7, enum case for TTRRemindersListViewModel.SectionID.objectID(_:), v35);
    v22 = static TTRRemindersListViewModel.SectionID.== infix(_:_:)();

    v31 = *(v30 + 8);
    v31(v7, v29);
    v31(v9, v29);
    (*(v24 + 8))(v12, v26);
    return v22 & 1;
  }

  if (v21 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v21 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v21 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v21 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v21 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v21 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v21 == enum case for TTRRemindersListViewModel.Item.tip(_:))
  {
LABEL_3:

    (*(v14 + 8))(v16, v13);
LABEL_4:
    v22 = 0;
    return v22 & 1;
  }

  if (v21 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v21 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
  {

    v22 = 0;
    return v22 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100154738()
{
  sub_10003B788(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10015479C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  (*(v3 + 32))(v6, v8, v2);
  if ((*(v3 + 88))(v6, v2) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    (*(v3 + 96))(v6, v2);

    v9 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v11 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }
}

uint64_t sub_100154988()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v5, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v5, v1);
    v15(v7, v1);
    return v14 & 1;
  }

  if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    return v14 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100154C50@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRSection();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100154D08()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_100154F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100155004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100155050()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076F710);
  v1 = sub_100003E30(v0, qword_10076F710);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_10015511C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for TTRSection();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100155350())
  {
    sub_1002E8008(a1, v6);
    swift_unknownObjectRelease();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v11 = *(v8 + 32);
      v11(v10, v6, v7);
      v12 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.MoveSectionSubjectForItem(0);
      *(a2 + 24) = v12;
      *(a2 + 32) = &off_100718370;
      v13 = sub_1000317B8(a2);
      v14 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v14 - 8) + 16))(v13, a1, v14);
      v11(v13 + *(v12 + 20), v10, v7);
      return result;
    }
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  sub_1000079B4(v6, &unk_100775960);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_100155350()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    if (qword_100766F78 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_10076F710);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Missing TTRRemindersListDragAndDropSectionsPresenterCapabilityDelegate", v4, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100155444()
{
  result = sub_100155350();
  if (result)
  {
    v1 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 64);
      ObjectType = swift_getObjectType();
      v4 = (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001554CC()
{
  v1 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___hasValidInsertionLocation;
  v2 = *(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___hasValidInsertionLocation);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_100155834(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_100155510@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&qword_10076F9E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___creationTarget;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_10076F9E8);
  v10 = sub_100058000(&qword_100775970);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &qword_100775970);
  }

  sub_1000079B4(v8, &qword_10076F9E8);
  sub_100155720(v1, a1);
  sub_10000794C(a1, v5, &qword_100775970);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v5, v1 + v9, &qword_10076F9E8);
  return swift_endAccess();
}

uint64_t sub_100155720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent;
  v5 = sub_100155350();
  if (v5)
  {
    v6 = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 64);
      ObjectType = swift_getObjectType();
      (*(v7 + 40))(a1 + v4, ObjectType, v7);
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v10 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v11 = *(*(v10 - 8) + 56);

  return v11(a2, 1, 1, v10);
}

uint64_t sub_100155834(uint64_t a1)
{
  v2 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v51 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_100775970);
  __chkstk_darwin(v18 - 8);
  v20 = &v41 - v19;
  sub_100155510(&v41 - v19);
  v21 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  sub_1000079B4(v20, &qword_100775970);
  if (v22 == 1)
  {
    return 0;
  }

  v23 = *(a1 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_dragAndDropCapability);
  result = sub_100155444();
  if (!result)
  {
    return result;
  }

  v42 = v4;
  v25 = TTRRemindersListTreeViewModel.presentationTree.getter();
  swift_getObjectType();
  v54 = v25;
  v26 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
  swift_unknownObjectRelease();
  if (*(a1 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_childIndex) < v26)
  {
    v41 = v23;
    v27 = TTRRemindersListTreeViewModel.presentationTree.getter();
    swift_getObjectType();
    v54 = v27;
    dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
    swift_unknownObjectRelease();
    TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
    v28 = v51;
    v29 = (*(v51 + 88))(v14, v12);
    if (v29 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
    {
      (*(v28 + 96))(v14, v12);
      v31 = v45;
      v30 = v46;
      v32 = v47;
      (*(v46 + 32))(v45, v14, v47);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      v33 = v48;
      TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
      (*(v43 + 8))(v9, v44);
      v35 = v49;
      v34 = v50;
      v36 = (*(v49 + 88))(v33, v50);
      if (v36 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
      {
        (*(v35 + 8))(v33, v34);
        if (sub_100155350())
        {
          v37 = v42;
          sub_1002E8008(v17, v42);
          swift_unknownObjectRelease();

          (*(v30 + 8))(v31, v32);
          (*(v52 + 8))(v17, v53);
          v38 = type metadata accessor for TTRSection();
          v39 = 1;
          if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
          {
            goto LABEL_20;
          }
        }

        else
        {

          (*(v30 + 8))(v31, v32);
          (*(v52 + 8))(v17, v53);
          v40 = type metadata accessor for TTRSection();
          v37 = v42;
          (*(*(v40 - 8) + 56))(v42, 1, 1, v40);
        }

        v39 = 0;
LABEL_20:
        sub_1000079B4(v37, &unk_100775960);
        return v39;
      }

      if (v36 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
      {

        (*(v30 + 8))(v31, v32);
        (*(v52 + 8))(v17, v53);
        (*(v35 + 8))(v33, v34);
        return 1;
      }

      if (v36 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {

        (*(v30 + 8))(v31, v32);
        (*(v52 + 8))(v17, v53);
        (*(v35 + 8))(v33, v34);
        return 0;
      }

      if (v36 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {

        (*(v30 + 8))(v31, v32);
        (*(v52 + 8))(v17, v53);
        return 0;
      }

LABEL_24:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    if (v29 != enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
    {
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_24;
    }

    (*(v52 + 8))(v17, v53);
  }

  return 0;
}

uint64_t sub_100156054()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent, &qword_100772140);

  sub_1000079B4(v0 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___creationTarget, &qword_10076F9E8);

  return swift_deallocClassInstance();
}

uint64_t sub_1001560F8@<X0>(char *a1@<X8>)
{
  v3 = sub_100058000(&qword_10076FA00);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan____lazy_storage___position;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v8, &qword_10076FA00);
  v10 = sub_100058000(&unk_100775A30);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_100016588(v8, a1, &unk_100775A30);
  }

  sub_1000079B4(v8, &qword_10076FA00);
  sub_100156308(v1, a1);
  sub_10000794C(a1, v5, &unk_100775A30);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10000D184(v5, v1 + v9, &qword_10076FA00);
  return swift_endAccess();
}

uint64_t sub_100156308@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100058000(&unk_100775960);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for TTRSection();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v63 = *(v12 - 8);
  v64 = v12;
  __chkstk_darwin(v12);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v68 = *(v14 - 8);
  v69 = v14;
  __chkstk_darwin(v14);
  v65 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v72 = *(v16 - 8);
  v73 = v16;
  __chkstk_darwin(v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v74 = *(v19 - 8);
  v75 = v19;
  __chkstk_darwin(v19);
  v76 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - v22;
  v24 = *(a1 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B21SectionsInsertionPlan_insertionRequest);
  v61 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_dragAndDropCapability;

  v25 = sub_100155444();

  if (!v25)
  {
    goto LABEL_11;
  }

  v57 = v10;
  v58 = v8;
  v59 = v7;
  v60 = v6;
  v71 = a2;
  v26 = TTRRemindersListTreeViewModel.presentationTree.getter();
  swift_getObjectType();
  v77 = v26;
  v27 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent;
  sub_10000794C(v24 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent, v23, &qword_100772140);
  v28 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
  sub_1000079B4(v23, &qword_100772140);
  swift_unknownObjectRelease();
  if (*(v24 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_childIndex) >= v28)
  {

    a2 = v71;
    goto LABEL_11;
  }

  v29 = TTRRemindersListTreeViewModel.presentationTree.getter();
  swift_getObjectType();
  v77 = v29;
  sub_10000794C(v24 + v27, v23, &qword_100772140);
  dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
  sub_1000079B4(v23, &qword_100772140);
  swift_unknownObjectRelease();
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  v30 = v72;
  v31 = v73;
  v32 = (*(v72 + 88))(v18, v73);
  if (v32 != enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
  {
    a2 = v71;
    if (v32 != enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
    {
      goto LABEL_22;
    }

    (*(v74 + 8))(v76, v75);

LABEL_11:
    v53 = sub_100058000(&qword_10076FA08);
    return (*(*(v53 - 8) + 56))(a2, 1, 1, v53);
  }

  (*(v30 + 96))(v18, v31);
  v33 = v68;
  v34 = v65;
  v35 = v18;
  v36 = v69;
  (*(v68 + 32))(v65, v35, v69);
  v37 = v62;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v38 = v66;
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v63 + 8))(v37, v64);
  v39 = v67;
  v40 = v70;
  v41 = (*(v67 + 88))(v38, v70);
  if (v41 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    if (v41 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
    {

      (*(v33 + 8))(v34, v36);
      (*(v74 + 8))(v76, v75);
      (*(v39 + 8))(v38, v40);
      v55 = enum case for TTRRelativeInsertionPosition.afterAll<A>(_:);
      v51 = sub_100058000(&qword_10076FA08);
      v52 = *(v51 - 8);
      v49 = v71;
      (*(v52 + 104))(v71, v55, v51);
      return (*(v52 + 56))(v49, 0, 1, v51);
    }

    a2 = v71;
    if (v41 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
    {

      (*(v33 + 8))(v34, v36);
      (*(v74 + 8))(v76, v75);
      (*(v39 + 8))(v38, v40);
      goto LABEL_11;
    }

    if (v41 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
    {

      (*(v33 + 8))(v34, v36);
      (*(v74 + 8))(v76, v75);
      goto LABEL_11;
    }

LABEL_22:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v39 + 96))(v38, v40);
  v42 = *v38;

  if (sub_100155350())
  {
    v43 = v60;
    v44 = v76;
    sub_1002E8008(v76, v60);

    swift_unknownObjectRelease();

    (*(v33 + 8))(v34, v36);
    (*(v74 + 8))(v44, v75);
    v46 = v58;
    v45 = v59;
    if ((*(v58 + 48))(v43, 1, v59) != 1)
    {
      v47 = *(v46 + 32);
      v48 = v57;
      v47(v57, v43, v45);
      v49 = v71;
      v47(v71, v48, v45);
      v50 = enum case for TTRRelativeInsertionPosition.before<A>(_:);
      v51 = sub_100058000(&qword_10076FA08);
      v52 = *(v51 - 8);
      (*(v52 + 104))(v49, v50, v51);
      return (*(v52 + 56))(v49, 0, 1, v51);
    }
  }

  else
  {

    (*(v33 + 8))(v34, v36);
    (*(v74 + 8))(v76, v75);
    v43 = v60;
    (*(v58 + 56))(v60, 1, 1, v59);
  }

  sub_1000079B4(v43, &unk_100775960);
  v56 = sub_100058000(&qword_10076FA08);
  return (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
}