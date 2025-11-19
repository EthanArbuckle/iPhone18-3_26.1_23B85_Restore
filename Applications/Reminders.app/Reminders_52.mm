void **sub_10059EA7C(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListMatchedAttributeValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v10 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v10 - 8) + 16))(a1, a2, v10);
      goto LABEL_8;
    case 2:
      v8 = *a2;
      *a1 = *a2;
      v9 = v8;
      goto LABEL_8;
    case 0:
      v7 = type metadata accessor for DateComponents();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_10059EC04(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DateComponents();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_10059ED24(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListMatchedAttributeValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v8 = type metadata accessor for REMHashtagLabelSpecifier();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DateComponents();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_10059EE68()
{
  result = type metadata accessor for DateComponents();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMHashtagLabelSpecifier();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

unint64_t sub_10059EF58()
{
  result = qword_10078E3D8;
  if (!qword_10078E3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078E3D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRRemindersListEditingInteractionOptions.IOS(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10059F070()
{
  result = qword_10078E3F8[0];
  if (!qword_10078E3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10078E3F8);
  }

  return result;
}

uint64_t sub_10059F120()
{
  type metadata accessor for TTRITreeViewNode();
  v3 = static Array._allocateUninitialized(_:)();
  v0 = type metadata accessor for Array();
  swift_getWitnessTable();
  swift_allocObject();
  v1 = sub_10059F4E4(&v3, v0);

  return v1;
}

uint64_t *sub_10059F1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a3;
  v20 = a2;
  v18 = a1;
  v5 = *v3;
  v6 = type metadata accessor for TTRITreeViewExpandedState();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v5 + 80);
  v12 = *(v11 - 8);
  __chkstk_darwin(v8);
  v14 = &v18 - v13;
  swift_beginAccess();
  v21 = v4[2];
  type metadata accessor for TTRITreeViewNode();
  type metadata accessor for Array();
  swift_getWitnessTable();
  if (Collection.isEmpty.getter())
  {
    (*(v12 + 16))(v14, v18, v11);
    (*(v7 + 16))(v10, v19, v6);
    v15 = v20;

    v16 = sub_10023D440(v14, v15, v10);
  }

  else
  {
    swift_beginAccess();
    swift_getWitnessTable();
    swift_getWitnessTable();
    RangeReplaceableCollection<>.removeLast()();
    swift_endAccess();
    v16 = v22;

    sub_10023C47C(v18, v20, v19);
  }

  return v16;
}

uint64_t sub_10059F494()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10059F4E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = v16 - v9;
  v11 = *(a2 - 8);
  __chkstk_darwin(v8);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 16);
  v14(v13, a1, a2);
  *(v3 + 16) = Sequence.reversed()();
  v14(v13, a1, a2);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v16[1])
    {
      break;
    }

    sub_10023C3E0();
  }

  (*(v7 + 8))(v10, AssociatedTypeWitness);
  return v3;
}

uint64_t sub_10059F6F0@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v1 - 8);
  v35 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v3 - 8);
  v34 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v5 - 8);
  v33 = v30 - v6;
  v7 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v7 - 8);
  v32 = v30 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v13 - 8);
  v15 = v30 - v14;
  v16 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v16 - 8);
  v18 = (v30 - v17);
  swift_getObjectType();
  v19 = dispatch thunk of TTRShowRecentlyDeletedDataModelSourceType.account.getter();
  v20 = [v19 objectID];

  *v18 = v20;
  v21 = enum case for TTRListType.recentlyDeletedList(_:);
  v22 = type metadata accessor for TTRListType();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v18, v21, v22);
  (*(v23 + 56))(v18, 0, 1, v22);
  v31 = v20;
  v30[1] = static TTRLocalizableStrings.RecentlyDeletedList.genericRecentlyDeletedTitle.getter();
  type metadata accessor for TTRListColors();
  static TTRListColors.recentlyDeleted.getter();
  v24 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  (*(v10 + 104))(v12, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v9);
  v25 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  v26 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  v27 = v36;
  TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

  v28 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
}

uint64_t sub_10059FC48@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2[5];
  v4 = enum case for TTRReminderListCompletionBehavior.requireConfirmationForRecoverReminders(_:);
  v5 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v5 - 8) + 104))(&a1[v3], v4, v5);
  *a1 = 2;
  a1[v2[6]] = 0;
  a1[v2[7]] = 1;
  a1[v2[8]] = 1;
  a1[v2[9]] = 1;
  a1[v2[10]] = 1;
  a1[v2[11]] = 1;
  a1[v2[12]] = 1;
  a1[v2[13]] = 0;
  return result;
}

uint64_t sub_10059FD18()
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

double sub_10059FEA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_1005A0064();
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = *(v5 + 88);
  v14 = (v5 + 8);
  if (v13(v10, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v14)(v10, v4);
    v12(v7, a1, v4);
    *(a2 + 24) = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 32) = &off_10072B818;
    v15 = sub_1000317B8(a2);
    sub_1004B7ED8(v7, v11, v15);
  }

  else
  {

    (*v14)(v10, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1005A0064()
{
  v1 = OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_10072F2A8;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1005A0100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_1005A0064();
  sub_1004B7628(a1, a2, a3);
}

uint64_t sub_1005A015C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1005A0064();
  sub_1004B7834(a1, a2);
}

uint64_t sub_1005A01B0()
{
  swift_unknownObjectRelease();
}

uint64_t sub_1005A0200()
{
  v0 = sub_10056FD38();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowRecentlyDeletedViewModelSource()
{
  result = qword_10078E4C8;
  if (!qword_10078E4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A0354(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v42 = v38 - v3;
  v4 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v4 - 8);
  v40 = v38 - v5;
  v39 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v38[0] = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  __chkstk_darwin(v8 - 8);
  v38[1] = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v10 - 8);
  v41 = v38 - v11;
  v12 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v16 - 8);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v38 - v20;
  REMRemindersListDataView.FlatModel.remindersCount.getter();
  sub_10000794C(v21, v18, &qword_100769378);
  v22 = (*(v13 + 48))(v18, 1, v12);
  v23 = 0;
  v24 = 0;
  if (v22 != 1)
  {
    (*(v13 + 32))(v15, v18, v12);
    v23 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v24 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    (*(v13 + 8))(v15, v12);
  }

  sub_1000079B4(v21, &qword_100769378);
  v25 = v44;
  v26 = v44 + OBJC_IVAR____TtC9Reminders37TTRShowRecentlyDeletedViewModelSource_remindersCount;
  *v26 = v23;
  *(v26 + 8) = v24;
  *(v26 + 16) = v22 == 1;
  v27 = v41;
  sub_10059F6F0(v41);
  REMRemindersListDataView.FlatModel.reminders.getter();
  sub_100058000(&qword_100770900);
  type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D400;
  v29 = enum case for TTRRemindersListViewModel.SectionID.NamedID.remindersInListSection(_:);
  v30 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v30 - 8) + 104))(v7, v29, v30);
  (*(v38[0] + 104))(v7, enum case for TTRRemindersListViewModel.SectionID.named(_:), v39);
  v31 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
  v32 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
  v33 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v35 = v42;
  (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  v46[3] = v32;
  v46[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
  v46[0] = v33;
  sub_10000B0D8(v46, v45);
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  sub_100005FD0(v45, v36 + 24);
  *(v36 + 64) = v25;

  sub_100586238(1, v27, sub_100070528, v36, v43, 0, v35);

  sub_1000079B4(v35, &qword_100772140);
  sub_1000079B4(v27, &unk_10078A380);

  return sub_100004758(v46);
}

unint64_t sub_1005A09F0()
{
  result = qword_10078EA40;
  if (!qword_10078EA40)
  {
    type metadata accessor for TTRShowRecentlyDeletedViewModelSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078EA40);
  }

  return result;
}

uint64_t sub_1005A0A48()
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

unint64_t sub_1005A0CC8()
{
  result = qword_100772610;
  if (!qword_100772610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100772610);
  }

  return result;
}

char *sub_1005A0D14(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v33 = *a2;
    *v4 = *a2;
    v4 = (v33 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v7 = a2[1];
    v8 = a2[2];
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    v9 = a2[3];
    *(a1 + 24) = v9;
    v10 = a3[10];
    v11 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
    v12 = *(*(v11 - 8) + 16);
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v12(&v4[v10], a2 + v10, v11);
    v16 = a3[11];
    v17 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
    (*(*(v17 - 8) + 16))(&v4[v16], a2 + v16, v17);
    v18 = a3[12];
    v19 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
    (*(*(v19 - 8) + 16))(&v4[v18], a2 + v18, v19);
    v20 = a3[13];
    v21 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
    (*(*(v21 - 8) + 16))(&v4[v20], a2 + v20, v21);
    v22 = a3[14];
    v23 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
    (*(*(v23 - 8) + 16))(&v4[v22], a2 + v22, v23);
    v24 = a3[15];
    v25 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
    (*(*(v25 - 8) + 16))(&v4[v24], a2 + v24, v25);
    v26 = a3[16];
    v27 = &v4[v26];
    v28 = a2 + v26;
    *&v4[v26] = *(a2 + v26);
    v29 = &v4[v26 + 8];
    v31 = (a2 + v26 + 8);
    v30 = *v31;

    if (v30)
    {
      v32 = *(v28 + 16);
      *(v27 + 1) = v30;
      *(v27 + 2) = v32;
    }

    else
    {
      *v29 = *v31;
    }

    v34 = a3[17];
    v35 = sub_100058000(&qword_100778F58);
    (*(*(v35 - 8) + 16))(&v4[v34], a2 + v34, v35);
    v36 = a3[18];
    v37 = sub_100058000(&qword_100778F48);
    (*(*(v37 - 8) + 16))(&v4[v36], a2 + v36, v37);
    v38 = a3[19];
    v39 = a3[20];
    v72 = *(a2 + v38);
    *&v4[v38] = v72;
    v40 = &v4[v39];
    v41 = (a2 + v39);
    v42 = v41[1];
    *v40 = *v41;
    *(v40 + 1) = v42;
    v43 = a3[22];
    v4[a3[21]] = *(a2 + a3[21]);
    v44 = &v4[v43];
    v45 = (a2 + v43);
    v46 = v45[1];
    *v44 = *v45;
    *(v44 + 1) = v46;
    v47 = a3[23];
    v48 = a3[24];
    v49 = &v4[v47];
    v50 = (a2 + v47);
    v51 = v50[1];
    *v49 = *v50;
    *(v49 + 1) = v51;
    v52 = *(a2 + v48);
    *&v4[v48] = v52;
    v53 = a3[25];
    v54 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
    v71 = *(*(v54 - 8) + 16);
    v55 = v72;

    v56 = v52;
    v71(&v4[v53], a2 + v53, v54);
    v57 = a3[26];
    v58 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
    (*(*(v58 - 8) + 16))(&v4[v57], a2 + v57, v58);
    v59 = a3[27];
    v60 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
    (*(*(v60 - 8) + 16))(&v4[v59], a2 + v59, v60);
    v61 = a3[28];
    v62 = &v4[v61];
    v63 = a2 + v61;
    v64 = sub_100058000(&qword_100778EB0);
    v65 = *(v64 - 8);
    if ((*(v65 + 48))(v63, 1, v64))
    {
      v66 = sub_100058000(&qword_100778F00);
      memcpy(v62, v63, *(*(v66 - 8) + 64));
    }

    else
    {
      (*(v65 + 16))(v62, v63, v64);
      (*(v65 + 56))(v62, 0, 1, v64);
    }

    v67 = sub_100058000(&qword_100778F70);
    v68 = *(v67 + 28);
    v69 = sub_100058000(&qword_100778F80);
    (*(*(v69 - 8) + 16))(&v62[v68], &v63[v68], v69);
    v62[*(v67 + 32)] = v63[*(v67 + 32)];
  }

  return v4;
}

uint64_t sub_1005A12DC(id *a1, int *a2)
{
  v4 = a2[10];
  v5 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a2[11];
  v7 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = a2[12];
  v9 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v9 - 8) + 8))(a1 + v8, v9);
  v10 = a2[13];
  v11 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  v12 = a2[14];
  v13 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v13 - 8) + 8))(a1 + v12, v13);
  v14 = a2[15];
  v15 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v15 - 8) + 8))(a1 + v14, v15);
  v16 = a1 + a2[16];

  if (*(v16 + 1))
  {
  }

  v17 = a2[17];
  v18 = sub_100058000(&qword_100778F58);
  (*(*(v18 - 8) + 8))(a1 + v17, v18);
  v19 = a2[18];
  v20 = sub_100058000(&qword_100778F48);
  (*(*(v20 - 8) + 8))(a1 + v19, v20);

  v21 = a2[25];
  v22 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  (*(*(v22 - 8) + 8))(a1 + v21, v22);
  v23 = a2[26];
  v24 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v24 - 8) + 8))(a1 + v23, v24);
  v25 = a2[27];
  v26 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v26 - 8) + 8))(a1 + v25, v26);
  v27 = a1 + a2[28];
  v28 = sub_100058000(&qword_100778EB0);
  v29 = *(v28 - 8);
  if (!(*(v29 + 48))(v27, 1, v28))
  {
    (*(v29 + 8))(v27, v28);
  }

  v30 = *(sub_100058000(&qword_100778F70) + 28);
  v31 = sub_100058000(&qword_100778F80);
  v32 = *(*(v31 - 8) + 8);

  return v32(&v27[v30], v31);
}

uint64_t sub_1005A1720(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  v8 = *(a2 + 24);
  *(a1 + 24) = v8;
  v9 = a3[10];
  v10 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v11 = *(*(v10 - 8) + 16);
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v11(a1 + v9, a2 + v9, v10);
  v15 = a3[11];
  v16 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v16 - 8) + 16))(a1 + v15, a2 + v15, v16);
  v17 = a3[12];
  v18 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
  v19 = a3[13];
  v20 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v20 - 8) + 16))(a1 + v19, a2 + v19, v20);
  v21 = a3[14];
  v22 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v22 - 8) + 16))(a1 + v21, a2 + v21, v22);
  v23 = a3[15];
  v24 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v24 - 8) + 16))(a1 + v23, a2 + v23, v24);
  v25 = a3[16];
  v26 = a1 + v25;
  v27 = a2 + v25;
  *(a1 + v25) = *(a2 + v25);
  v28 = (a1 + v25 + 8);
  v30 = (a2 + v25 + 8);
  v29 = *v30;

  if (v29)
  {
    v31 = *(v27 + 16);
    *(v26 + 8) = v29;
    *(v26 + 16) = v31;
  }

  else
  {
    *v28 = *v30;
  }

  v32 = a3[17];
  v33 = sub_100058000(&qword_100778F58);
  (*(*(v33 - 8) + 16))(a1 + v32, a2 + v32, v33);
  v34 = a3[18];
  v35 = sub_100058000(&qword_100778F48);
  (*(*(v35 - 8) + 16))(a1 + v34, a2 + v34, v35);
  v36 = a3[19];
  v37 = a3[20];
  v70 = *(a2 + v36);
  *(a1 + v36) = v70;
  v38 = (a1 + v37);
  v39 = (a2 + v37);
  v40 = v39[1];
  *v38 = *v39;
  v38[1] = v40;
  v41 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  v42 = (a1 + v41);
  v43 = (a2 + v41);
  v44 = v43[1];
  *v42 = *v43;
  v42[1] = v44;
  v45 = a3[23];
  v46 = a3[24];
  v47 = (a1 + v45);
  v48 = (a2 + v45);
  v49 = v48[1];
  *v47 = *v48;
  v47[1] = v49;
  v50 = *(a2 + v46);
  *(a1 + v46) = v50;
  v51 = a3[25];
  v52 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v69 = *(*(v52 - 8) + 16);
  v53 = v70;

  v54 = v50;
  v69(a1 + v51, a2 + v51, v52);
  v55 = a3[26];
  v56 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v56 - 8) + 16))(a1 + v55, a2 + v55, v56);
  v57 = a3[27];
  v58 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v58 - 8) + 16))(a1 + v57, a2 + v57, v58);
  v59 = a3[28];
  v60 = (a1 + v59);
  v61 = (a2 + v59);
  v62 = sub_100058000(&qword_100778EB0);
  v63 = *(v62 - 8);
  if ((*(v63 + 48))(v61, 1, v62))
  {
    v64 = sub_100058000(&qword_100778F00);
    memcpy(v60, v61, *(*(v64 - 8) + 64));
  }

  else
  {
    (*(v63 + 16))(v60, v61, v62);
    (*(v63 + 56))(v60, 0, 1, v62);
  }

  v65 = sub_100058000(&qword_100778F70);
  v66 = *(v65 + 28);
  v67 = sub_100058000(&qword_100778F80);
  (*(*(v67 - 8) + 16))(&v60[v66], &v61[v66], v67);
  v60[*(v65 + 32)] = v61[*(v65 + 32)];
  return a1;
}

uint64_t sub_1005A1C9C(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  *(a1 + 8) = v7;
  v8 = v7;

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  *(a1 + 16) = v10;
  v11 = v10;

  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  *(a1 + 24) = v13;
  v14 = v13;

  v15 = a3[10];
  v16 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  v17 = a3[11];
  v18 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v18 - 8) + 24))(a1 + v17, a2 + v17, v18);
  v19 = a3[12];
  v20 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v20 - 8) + 24))(a1 + v19, a2 + v19, v20);
  v21 = a3[13];
  v22 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v22 - 8) + 24))(a1 + v21, a2 + v21, v22);
  v23 = a3[14];
  v24 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v24 - 8) + 24))(a1 + v23, a2 + v23, v24);
  v25 = a3[15];
  v26 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v26 - 8) + 24))(a1 + v25, a2 + v25, v26);
  v27 = a3[16];
  v28 = a1 + v27;
  v29 = a2 + v27;
  *(a1 + v27) = *(a2 + v27);

  v30 = *(v29 + 8);
  if (*(v28 + 8))
  {
    if (v30)
    {
      v31 = *(v29 + 16);
      *(v28 + 8) = v30;
      *(v28 + 16) = v31;

      goto LABEL_8;
    }
  }

  else if (v30)
  {
    v32 = *(v29 + 16);
    *(v28 + 8) = v30;
    *(v28 + 16) = v32;

    goto LABEL_8;
  }

  *(v28 + 8) = *(v29 + 8);
LABEL_8:
  v33 = a3[17];
  v34 = sub_100058000(&qword_100778F58);
  (*(*(v34 - 8) + 24))(a1 + v33, a2 + v33, v34);
  v35 = a3[18];
  v36 = sub_100058000(&qword_100778F48);
  (*(*(v36 - 8) + 24))(a1 + v35, a2 + v35, v36);
  v37 = a3[19];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  *(a1 + v37) = v39;
  v40 = v39;

  v41 = a3[20];
  v42 = (a1 + v41);
  v43 = (a2 + v41);
  *v42 = *v43;
  v42[1] = v43[1];

  *(a1 + a3[21]) = *(a2 + a3[21]);
  v44 = a3[22];
  v45 = (a1 + v44);
  v46 = (a2 + v44);
  *v45 = *v46;
  v45[1] = v46[1];

  v47 = a3[23];
  v48 = (a1 + v47);
  v49 = (a2 + v47);
  *v48 = *v49;
  v48[1] = v49[1];

  v50 = a3[24];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  *(a1 + v50) = v52;
  v53 = v52;

  v54 = a3[25];
  v55 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  (*(*(v55 - 8) + 24))(a1 + v54, a2 + v54, v55);
  v56 = a3[26];
  v57 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v57 - 8) + 24))(a1 + v56, a2 + v56, v57);
  v58 = a3[27];
  v59 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v59 - 8) + 24))(a1 + v58, a2 + v58, v59);
  v60 = a3[28];
  v61 = (a1 + v60);
  v62 = (a2 + v60);
  v63 = sub_100058000(&qword_100778EB0);
  v64 = *(v63 - 8);
  v65 = *(v64 + 48);
  v66 = v65(v61, 1, v63);
  v67 = v65(v62, 1, v63);
  if (!v66)
  {
    if (!v67)
    {
      (*(v64 + 24))(v61, v62, v63);
      goto LABEL_14;
    }

    (*(v64 + 8))(v61, v63);
    goto LABEL_13;
  }

  if (v67)
  {
LABEL_13:
    v68 = sub_100058000(&qword_100778F00);
    memcpy(v61, v62, *(*(v68 - 8) + 64));
    goto LABEL_14;
  }

  (*(v64 + 16))(v61, v62, v63);
  (*(v64 + 56))(v61, 0, 1, v63);
LABEL_14:
  v69 = sub_100058000(&qword_100778F70);
  v70 = *(v69 + 28);
  v71 = sub_100058000(&qword_100778F80);
  (*(*(v71 - 8) + 24))(&v61[v70], &v62[v70], v71);
  v61[*(v69 + 32)] = v62[*(v69 + 32)];
  return a1;
}

uint64_t sub_1005A22FC(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v6 = a3[10];
  v7 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[11];
  v9 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[12];
  v11 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
  v12 = a3[13];
  v13 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
  v14 = a3[14];
  v15 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v15 - 8) + 32))(a1 + v14, a2 + v14, v15);
  v16 = a3[15];
  v17 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v17 - 8) + 32))(a1 + v16, a2 + v16, v17);
  v18 = a3[16];
  v19 = a3[17];
  v20 = a1 + v18;
  v21 = a2 + v18;
  *v20 = *v21;
  *(v20 + 16) = *(v21 + 16);
  v22 = sub_100058000(&qword_100778F58);
  (*(*(v22 - 8) + 32))(a1 + v19, a2 + v19, v22);
  v23 = a3[18];
  v24 = sub_100058000(&qword_100778F48);
  (*(*(v24 - 8) + 32))(a1 + v23, a2 + v23, v24);
  v25 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[24];
  *(a1 + a3[23]) = *(a2 + a3[23]);
  *(a1 + v27) = *(a2 + v27);
  v28 = a3[25];
  v29 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
  v30 = a3[26];
  v31 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v31 - 8) + 32))(a1 + v30, a2 + v30, v31);
  v32 = a3[27];
  v33 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v33 - 8) + 32))(a1 + v32, a2 + v32, v33);
  v34 = a3[28];
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v37 = sub_100058000(&qword_100778EB0);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37))
  {
    v39 = sub_100058000(&qword_100778F00);
    memcpy(v35, v36, *(*(v39 - 8) + 64));
  }

  else
  {
    (*(v38 + 32))(v35, v36, v37);
    (*(v38 + 56))(v35, 0, 1, v37);
  }

  v40 = sub_100058000(&qword_100778F70);
  v41 = *(v40 + 28);
  v42 = sub_100058000(&qword_100778F80);
  (*(*(v42 - 8) + 32))(&v35[v41], &v36[v41], v42);
  v35[*(v40 + 32)] = v36[*(v40 + 32)];
  return a1;
}

uint64_t sub_1005A27DC(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v7 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v8 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v9 = a3[10];
  v10 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[11];
  v12 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = a3[12];
  v14 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  (*(*(v14 - 8) + 40))(a1 + v13, a2 + v13, v14);
  v15 = a3[13];
  v16 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  (*(*(v16 - 8) + 40))(a1 + v15, a2 + v15, v16);
  v17 = a3[14];
  v18 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  (*(*(v18 - 8) + 40))(a1 + v17, a2 + v17, v18);
  v19 = a3[15];
  v20 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  (*(*(v20 - 8) + 40))(a1 + v19, a2 + v19, v20);
  v21 = a3[16];
  v22 = a1 + v21;
  v23 = a2 + v21;
  *(a1 + v21) = *(a2 + v21);

  v24 = *(v23 + 8);
  if (*(v22 + 8))
  {
    if (v24)
    {
      v25 = *(v23 + 16);
      *(v22 + 8) = v24;
      *(v22 + 16) = v25;

      goto LABEL_8;
    }
  }

  else if (v24)
  {
    v26 = *(v23 + 16);
    *(v22 + 8) = v24;
    *(v22 + 16) = v26;
    goto LABEL_8;
  }

  *(v22 + 8) = *(v23 + 8);
LABEL_8:
  v27 = a3[17];
  v28 = sub_100058000(&qword_100778F58);
  (*(*(v28 - 8) + 40))(a1 + v27, a2 + v27, v28);
  v29 = a3[18];
  v30 = sub_100058000(&qword_100778F48);
  (*(*(v30 - 8) + 40))(a1 + v29, a2 + v29, v30);
  v31 = a3[19];
  v32 = *(a1 + v31);
  *(a1 + v31) = *(a2 + v31);

  v33 = a3[20];
  v34 = (a1 + v33);
  v35 = (a2 + v33);
  v37 = *v35;
  v36 = v35[1];
  *v34 = v37;
  v34[1] = v36;

  v38 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  v42 = *v40;
  v41 = v40[1];
  *v39 = v42;
  v39[1] = v41;

  v43 = a3[23];
  v44 = (a1 + v43);
  v45 = (a2 + v43);
  v47 = *v45;
  v46 = v45[1];
  *v44 = v47;
  v44[1] = v46;

  v48 = a3[24];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);

  v50 = a3[25];
  v51 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  (*(*(v51 - 8) + 40))(a1 + v50, a2 + v50, v51);
  v52 = a3[26];
  v53 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  (*(*(v53 - 8) + 40))(a1 + v52, a2 + v52, v53);
  v54 = a3[27];
  v55 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  (*(*(v55 - 8) + 40))(a1 + v54, a2 + v54, v55);
  v56 = a3[28];
  v57 = (a1 + v56);
  v58 = (a2 + v56);
  v59 = sub_100058000(&qword_100778EB0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 48);
  v62 = v61(v57, 1, v59);
  v63 = v61(v58, 1, v59);
  if (!v62)
  {
    if (!v63)
    {
      (*(v60 + 40))(v57, v58, v59);
      goto LABEL_14;
    }

    (*(v60 + 8))(v57, v59);
    goto LABEL_13;
  }

  if (v63)
  {
LABEL_13:
    v64 = sub_100058000(&qword_100778F00);
    memcpy(v57, v58, *(*(v64 - 8) + 64));
    goto LABEL_14;
  }

  (*(v60 + 32))(v57, v58, v59);
  (*(v60 + 56))(v57, 0, 1, v59);
LABEL_14:
  v65 = sub_100058000(&qword_100778F70);
  v66 = *(v65 + 28);
  v67 = sub_100058000(&qword_100778F80);
  (*(*(v67 - 8) + 40))(&v57[v66], &v58[v66], v67);
  v57[*(v65 + 32)] = v58[*(v65 + 32)];
  return a1;
}

uint64_t type metadata accessor for TTRIBoardReminderCellContentConfiguration()
{
  result = qword_10078EAA0;
  if (!qword_10078EAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A2E54()
{
  type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRBoardReminderCellLocationConfiguration();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
        if (v3 <= 0x3F)
        {
          type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
          if (v4 <= 0x3F)
          {
            type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
            if (v5 <= 0x3F)
            {
              sub_1005A3280(319, &qword_10078EAB0, &unk_100775AA0, &unk_100638960, &type metadata accessor for TTRBoardReminderCellTitleConfiguration);
              if (v6 <= 0x3F)
              {
                sub_1005A320C();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for TTRBoardReminderCellURLConfiguration();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
                      if (v10 <= 0x3F)
                      {
                        sub_1005A3280(319, &unk_10078EAC0, &qword_100778F10, &unk_1006428B0, type metadata accessor for TTRIBoardReminderCellAutoCompleteConfiguration);
                        if (v11 <= 0x3F)
                        {
                          swift_initStructMetadata();
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
    }
  }
}

void sub_1005A320C()
{
  if (!qword_10078EAB8)
  {
    sub_10005D20C(&qword_100775A90);
    type metadata accessor for TTRIReminderCellNotesViewModel();
    v0 = type metadata accessor for TTRBoardReminderCellNotesConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_10078EAB8);
    }
  }
}

void sub_1005A3280(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10005D20C(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1005A32E8()
{
  result = qword_10078EB50;
  if (!qword_10078EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078EB50);
  }

  return result;
}

uint64_t sub_1005A333C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100778F00);
  __chkstk_darwin(v2 - 8);
  v43 = &v40 - v3;
  v4 = sub_100058000(&qword_100778FC8);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = &v40 - v5;
  v6 = sub_100058000(&unk_100781940);
  __chkstk_darwin(v6 - 8);
  v8 = &v40 - v7;
  v9 = sub_100058000(&qword_100778F50);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = sub_100058000(&qword_100781950);
  __chkstk_darwin(v13 - 8);
  v15 = &v40 - v14;
  v16 = sub_100058000(&qword_100778F30);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_100058000(&qword_100778F38);
  __chkstk_darwin(v19 - 8);
  v21 = &v40 - v20;
  *a1 = 1;
  *(a1 + 2) = 0;
  v22 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v23 = type metadata accessor for TTRReminderCellStyle.CompletedButtonType();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  TTRBoardReminderCellCompletedButtonConfiguration.init(isCompleted:tintColor:style:preferredSymbolConfiguration:onCompletedPressed:)();
  TTRBoardReminderCellLocationConfiguration.init(icon:attributedDescription:preferredSymbolConfiguration:)();
  TTRBoardReminderCellShowSubtasksConfiguration.init(isShowingSubtasks:subtaskCount:tintColor:subtaskFont:onShowSubtasksButtonPress:)();
  TTRBoardReminderCellSubtaskCountConfiguration.init(subtaskCountString:tintColor:onSubtaskCountPressed:)();
  TTRBoardReminderCellSuggestedSectionConfiguration.init(sectionTitle:onSuggestedSectionPress:isEditingItem:isInMultiSelectMode:)();
  v24 = type metadata accessor for TTRBoardReminderCellInfoButtonState();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  TTRBoardReminderCellInfoButtonConfiguration.init(infoButtonState:infoButtonSymbolConfiguration:tintColor:onInfoPressed:)();
  v25 = (a1 + v22[16]);
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 0;
  v26 = sub_100058000(&qword_10078A3B0);
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  v27 = enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:);
  (*(v10 + 104))(v12, enum case for TTRBoardReminderCellOptionalUpdate.keepCurrent<A>(_:), v9);
  sub_100058000(&unk_100775AA0);
  TTRBoardReminderCellTitleConfiguration.init(module:viewModelUpdate:)();
  v28 = sub_100058000(&qword_100778EA0);
  (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
  (*(v41 + 104))(v40, v27, v42);
  sub_100058000(&qword_100775A90);
  type metadata accessor for TTRIReminderCellNotesViewModel();
  TTRBoardReminderCellNotesConfiguration.init(isHidden:module:viewModelUpdate:)();
  *(a1 + v22[19]) = 0;
  v29 = (a1 + v22[20]);
  *v29 = 0;
  v29[1] = 0;
  *(a1 + v22[21]) = 2;
  v30 = (a1 + v22[22]);
  *v30 = 0;
  v30[1] = 0;
  v31 = (a1 + v22[23]);
  *v31 = 0;
  v31[1] = 0;
  *(a1 + v22[24]) = 0;
  TTRBoardReminderCellURLConfiguration.init(attachments:)();
  TTRBoardReminderCellAssigneeConfiguration.init(contact:name:onAssigneePress:)();
  TTRBoardReminderCellAppLinkConfiguration.init(icon:name:onAppLinkPress:)();
  v32 = a1 + v22[28];
  v33 = sub_100058000(&qword_100778EB0);
  v34 = *(*(v33 - 8) + 56);
  v35 = v43;
  v34(v43, 1, 1, v33);
  v36 = sub_100058000(&qword_100778F70);
  v37 = *(v36 + 28);
  v38 = sub_100058000(&qword_100778F80);
  (*(*(v38 - 8) + 104))(v32 + v37, v27, v38);
  v34(v32, 1, 1, v33);
  *(v32 + *(v36 + 32)) = 1;
  return sub_1005A4E68(v35, v32);
}

uint64_t sub_1005A3A58(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1005A3B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3B78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for TTRBoardReminderCellCompletedButtonConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A3C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_100058000(&qword_100778F58);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3C90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 68);
  v5 = sub_100058000(&qword_100778F58);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A3D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_100058000(&qword_100778F48);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3DB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = sub_100058000(&qword_100778F48);
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A3E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3ECC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = type metadata accessor for TTRBoardReminderCellLocationConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A3F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A3FD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for TTRBoardReminderCellShowSubtasksConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A40E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = type metadata accessor for TTRBoardReminderCellSubtaskCountConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A417C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A41F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = type metadata accessor for TTRBoardReminderCellSuggestedSectionConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A42FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = type metadata accessor for TTRBoardReminderCellInfoButtonConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4394@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1];
  v5 = v3[2];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;

  return sub_10003BE34(v4);
}

__n128 sub_1005A43E4(__n128 *a1, uint64_t a2)
{
  v6 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = (v2 + *(a2 + 64));

  sub_10008E7F0(v4->n128_u64[1], v4[1].n128_u64[0]);
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v3;
  return result;
}

void *sub_1005A445C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 76));
  v3 = v2;
  return v2;
}

void sub_1005A4488(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 76);

  *(v2 + v4) = a1;
}

uint64_t sub_1005A44E4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 80));

  return v2;
}

uint64_t sub_1005A451C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 80));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1005A45BC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 88));

  return v2;
}

uint64_t sub_1005A45F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 88));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1005A4658(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 92));

  return v2;
}

uint64_t sub_1005A4690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 92));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void *sub_1005A46F4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 96));
  v3 = v2;
  return v2;
}

void sub_1005A4720(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);

  *(v2 + v4) = a1;
}

uint64_t sub_1005A477C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 100);
  v5 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A47F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);
  v5 = type metadata accessor for TTRBoardReminderCellURLConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  v5 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A48FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 104);
  v5 = type metadata accessor for TTRBoardReminderCellAssigneeConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 108);
  v5 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1005A4A08(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 108);
  v5 = type metadata accessor for TTRBoardReminderCellAppLinkConfiguration();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1005A4AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100787710);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7 - 8];
  v9 = type metadata accessor for UICellConfigurationState();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1005A4D44(v3, a2);
  sub_10000B0D8(a1, v17);
  sub_100058000(&qword_100787718);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    *(a2 + 1) = UICellConfigurationState.isSelected.getter() & 1;
    UICellConfigurationState.isEditing.getter();
    type metadata accessor for TTRIBoardReminderCellContentConfiguration();
    TTRBoardReminderCellSuggestedSectionConfiguration.isInMultiSelectMode.setter();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v14(v8, 1, 1, v9);
    return sub_1005A4DA8(v8);
  }
}

id sub_1005A4CA8(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRIBoardReminderCellContentView();
  sub_1005A4D44(v1, v3);
  v4 = sub_1004C1CF4(v3);
  sub_1005A4E10();
  return v4;
}

uint64_t sub_1005A4D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIBoardReminderCellContentConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A4DA8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100787710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005A4E10()
{
  result = qword_10078EB58;
  if (!qword_10078EB58)
  {
    type metadata accessor for TTRIBoardReminderCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078EB58);
  }

  return result;
}

uint64_t sub_1005A4E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100778F00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t destroy for TTRIBoardReminderCellImageAttachmentsConfiguration(uint64_t a1)
{

  if (*(a1 + 8))
  {
  }

  return result;
}

void *sub_1005A4F28(void *a1, void *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    *(a1 + 1) = *v5;
  }

  return a1;
}

void *assignWithCopy for TTRIBoardReminderCellImageAttachmentsConfiguration(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (!a1[1])
  {
    if (v4)
    {
      v6 = a2[2];
      a1[1] = v4;
      a1[2] = v6;

      return a1;
    }

LABEL_7:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[2];
  a1[1] = v4;
  a1[2] = v5;

  return a1;
}

void *assignWithTake for TTRIBoardReminderCellImageAttachmentsConfiguration(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (!a1[1])
  {
    if (v4)
    {
      v6 = a2[2];
      a1[1] = v4;
      a1[2] = v6;
      return a1;
    }

LABEL_7:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[2];
  a1[1] = v4;
  a1[2] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardReminderCellImageAttachmentsConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for TTRIBoardReminderCellImageAttachmentsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *sub_1005A5184(uint64_t *a1, uint64_t *a2)
{
  v4 = *(sub_100058000(&qword_1007724A0) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

void *sub_1005A5300(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(sub_100058000(&qword_1007724A0) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *sub_1005A54A4(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(sub_100058000(&qword_1007724A0) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *sub_1005A55D4(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(sub_100058000(&qword_1007724A0) - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1005A5788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t sub_1005A57F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t sub_1005A5858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t sub_1005A58BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

id sub_1005A5920(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts] = _swiftEmptyArrayStorage;
  v4 = &v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate] = 1;
  *&v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarViewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews] = _swiftEmptyArrayStorage;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_10002A9FC();
  }

  return v6;
}

uint64_t sub_1005A5A4C()
{
  v1 = *&v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize];
  v2 = *&v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 8];
  v3 = v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 16];
  v4 = [v0 traitCollection];
  v49 = sub_1005A6114(v1, v2, v3, v4);
  rect = v5;

  v6 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts;
  swift_beginAccess();
  v7 = *&v0[v6];
  if (v7 >> 62)
  {
    goto LABEL_27;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = sub_1005A65A4(v8);

  [v0 bounds];
  CGRectGetWidth(v51);
  v11 = *&v0[v6];
  if (v11 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = v9;
  if (v12)
  {
    do
    {
      v48 = v13 & 0xC000000000000001;
      if ((v13 & 0xC000000000000001) != 0 || v12 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews;
        v15 = 0.0;
        v16 = 4;
        v47 = v13;
        while (1)
        {
          v17 = v16 - 4;
          if (v48)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(v13 + 8 * v16);
          }

          v19 = v18;
          swift_beginAccess();
          v20 = *&v0[v14];
          if ((v20 & 0xC000000000000001) != 0)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v17 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              v8 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_3;
            }

            if (v17 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v21 = *(v20 + 8 * v16);
          }

          v22 = v21;
          swift_endAccess();
          sub_100058000(&qword_10076B780);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_10062D420;
          swift_beginAccess();
          v24 = *&v0[v6];
          if ((v24 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            if (v17 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_26;
            }

            v25 = *(v24 + 8 * v16);
          }

          *(v23 + 32) = v25;
          swift_endAccess();
          sub_100003540(0, &qword_100783DE0);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v19 setContacts:isa];

          [v0 effectiveUserInterfaceLayoutDirection];
          CGRect.flippedForRTLIfNeeded(for:inContainerWithWidth:)();
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v35 = [v19 view];
          [v35 setFrame:{v28, v30, v32, v34}];

          v36 = [v0 traitCollection];
          sub_1005A6A74(v36);

          v37 = [v0 traitCollection];
          [v37 displayScale];

          UIFloorToScale();
          v39 = -v38;
          v52.origin.x = v28;
          v52.origin.y = v30;
          v52.size.width = v32;
          v52.size.height = v34;
          v53 = CGRectInset(v52, v39, v39);
          x = v53.origin.x;
          y = v53.origin.y;
          width = v53.size.width;
          height = v53.size.height;
          [v22 setFrame:?];
          v44 = [v22 layer];
          v54.origin.x = x;
          v54.origin.y = y;
          v54.size.width = width;
          v54.size.height = height;
          [v44 setCornerRadius:CGRectGetWidth(v54) * 0.5];

          v55.origin.y = 0.0;
          v55.origin.x = v15;
          v55.size.width = v49;
          v55.size.height = rect;
          v45 = CGRectGetWidth(v55);

          v15 = v15 + v45 * 0.75;
          ++v16;
          --v12;
          v13 = v47;
          if (!v12)
          {
          }
        }
      }

LABEL_30:
      __break(1u);
LABEL_31:
      v12 = v10;
      v13 = v9;
    }

    while (v10);
  }
}

uint64_t sub_1005A5F8C(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3 = a2;
    if (!(*v3 >> 62))
    {
      v4 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = -v4;
      if (!__OFSUB__(0, v4))
      {
        goto LABEL_5;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  v8 = result;
  v10 = a3;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  a3 = v10;
  v4 = v9;
  result = v8;
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_19;
  }

LABEL_5:
  v6 = -result;
  if (v5 <= 0 && v5 > v6)
  {
    goto LABEL_22;
  }

  result = v4 - result;
  if (__OFADD__(v4, v6))
  {
    goto LABEL_20;
  }

  if (v4 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return a3();
}

id sub_1005A60BC(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarsNeedUpdate] = 1;
  [a1 invalidateIntrinsicContentSize];

  return [a1 setNeedsLayout];
}

double sub_1005A6114(uint64_t a1, int a2, char a3, id a4)
{
  v6 = [a4 preferredContentSizeCategory];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    goto LABEL_15;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_6:

LABEL_16:
    v23 = 1;
    goto LABEL_17;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
LABEL_15:

    goto LABEL_16;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
LABEL_14:

    v23 = 2;
    goto LABEL_17;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_21;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
    goto LABEL_14;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
LABEL_21:

    v23 = 2;
  }

  else
  {
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
      goto LABEL_14;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = 2;
    if ((v35 & 1) == 0)
    {
      v23 = 0;
    }
  }

LABEL_17:
  if (a3)
  {
    return dbl_1006478E0[v23];
  }

  else
  {
    return dbl_1006478E0[v23] / 24.0 * *&a1;
  }
}

uint64_t sub_1005A63E4(uint64_t result, unint64_t a2, unint64_t *a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v12 = result;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    result = v12;
    v7 = -v6;
    if (!__OFSUB__(0, v6))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v4 = a3;
  v3 = a2;
  v5 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = -v6;
  if (__OFSUB__(0, v6))
  {
    goto LABEL_32;
  }

LABEL_4:
  v8 = -result;
  if (v7 > 0 || v7 <= v8)
  {
    v9 = v6 - result;
    if (__OFADD__(v6, v8))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v6 < v9)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v6 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v9 = 0;
    if (!v5)
    {
LABEL_8:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_13:
  if (result < v9)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v9 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v5)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v6)
  {
    goto LABEL_35;
  }

  if (v6 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v3 & 0xC000000000000001) == 0 || v9 == v6)
  {

    if (!v5)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v9 < v6)
  {
    sub_100003540(0, v4);

    v10 = v9;
    do
    {
      v11 = v10 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v10);
      v10 = v11;
    }

    while (v6 != v11);
    if (!v5)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return _CocoaArrayWrapper.subscript.getter();
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1005A65A4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarViewControllers;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result <= a1;
    if (result < a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = result <= a1;
    if (result < a1)
    {
LABEL_3:
      v8 = a1 - result;
      if (__OFSUB__(a1, result))
      {
        __break(1u);
      }

      else if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8)
        {
          v45 = objc_opt_self();
          v44 = kCAFilterDestOut;
          v9 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews;
          do
          {
            v10 = [objc_allocWithZone(CNAvatarViewController) init];
            [v10 setThreeDTouchEnabled:0];
            v11 = [v10 view];
            [v11 setTranslatesAutoresizingMaskIntoConstraints:1];
            v12 = [objc_allocWithZone(UIView) init];
            [v12 setTranslatesAutoresizingMaskIntoConstraints:1];
            v13 = [v45 whiteColor];
            [v12 setBackgroundColor:v13];

            v14 = [v12 layer];
            v15 = [objc_allocWithZone(CAFilter) initWithType:v44];
            [v14 setCompositingFilter:v15];

            [v2 insertSubview:v11 atIndex:0];
            [v2 insertSubview:v12 atIndex:0];
            swift_beginAccess();
            v16 = v10;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            swift_beginAccess();
            v17 = v12;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v2[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            --v8;
          }

          while (v8);
        }

        return *&v2[v4];
      }

      __break(1u);
      goto LABEL_28;
    }
  }

  if (v7)
  {
    return *&v2[v4];
  }

  v18 = result - a1;
  if (__OFSUB__(result, a1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = *&v2[v4];

  sub_1005A63E4(v18, v19, &qword_10076BC68);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = (v25 >> 1) - v23;
  if (v25 >> 1 != v23)
  {
    if ((v25 >> 1) <= v23)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v27 = (v21 + 8 * v23);
    do
    {
      v28 = *v27++;
      v29 = v28;
      v30 = [v29 viewIfLoaded];
      [v30 removeFromSuperview];

      --v26;
    }

    while (v26);
  }

  swift_unknownObjectRelease();
  v31 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_avatarBorderViews;
  swift_beginAccess();
  v32 = *&v2[v31];

  sub_1005A63E4(v18, v32, &qword_10076B020);
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v39 = (v38 >> 1) - v36;
  if (v38 >> 1 == v36)
  {
LABEL_24:
    swift_unknownObjectRelease();
    swift_beginAccess();
    sub_1005A5F8C(v18, sub_100100BD8, v42);
    swift_endAccess();
    swift_beginAccess();
    sub_1005A5F8C(v18, sub_100100DD8, v43);
    swift_endAccess();
    return *&v2[v4];
  }

  if ((v38 >> 1) > v36)
  {
    v40 = (v34 + 8 * v36);
    do
    {
      v41 = *v40++;
      [v41 removeFromSuperview];
      --v39;
    }

    while (v39);
    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

double sub_1005A6A74(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_15;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 2.0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
LABEL_15:

    return 2.0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
LABEL_14:

    return 3.0;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_18;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_14;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_18:

    return 3.0;
  }

  else
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
      goto LABEL_14;
    }

    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 1.5;
    if (v29)
    {
      return 3.0;
    }
  }

  return result;
}

void sub_1005A6CF8()
{
  v1 = OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_contacts;
  swift_beginAccess();
  if (*&v0[v1] >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v2 = *&v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize];
  v3 = *&v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 8];
  v4 = v0[OBJC_IVAR____TtC9Reminders22TTRIStackedAvatarsView_unscaledAvatarSize + 16];
  v5 = [v0 traitCollection];
  sub_1005A6114(v2, v3, v4, v5);
}

uint64_t sub_1005A6DF4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078ECD8);
  v1 = sub_100003E30(v0, qword_10078ECD8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_1005A6EBC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_100003540(0, &qword_100775690);
      return static NSObject.== infix(_:_:)() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_1005A6F2C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005A6F84();
  }

  return result;
}

void sub_1005A6F84()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 96);
  if (v2)
  {
    sub_10000C36C((v0 + 72), v2);

    CurrentValueSubject.value.getter();

    v3 = v6;
    if (v6)
    {
      v4 = [v6 canUndo];
      v5 = [v6 canRedo];
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  if (v4 != *(v1 + 112) || ((v5 ^ *(v1 + 113)) & 1) != 0)
  {
    *(v1 + 112) = v4;
    *(v1 + 113) = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100081EF8(0xD00000000000001CLL, 0x800000010068D020);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1005A7098(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1005A8210(a1, v1 + 72);
  swift_endAccess();
  v4 = *(v1 + 96);
  if (v4)
  {
    sub_10000C36C((v1 + 72), v4);
    swift_allocObject();
    swift_weakInit();

    sub_100058000(&qword_10078BFD0);
    sub_1005A82F0();
    v5 = Publisher<>.sink(receiveValue:)();

    sub_1005A8280(a1);
  }

  else
  {
    sub_1005A8280(a1);
    v5 = 0;
  }

  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_undoManagerCancellable) = v5;
}

uint64_t sub_1005A71C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 112) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor) = 0;
  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget) = 1;
  *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_undoManagerCancellable) = 0;
  *(v2 + 120) = a1;
  v5 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListType;
  v6 = type metadata accessor for TTRRemindersListDefaultListType();
  (*(*(v6 - 8) + 32))(v2 + v5, a2, v6);
  return v2;
}

void sub_1005A7298(void *a1)
{
  v3 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget;
  v4 = *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget);
  if (!v4)
  {
    sub_1003904D8(0);
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  v5 = v4 == 1 || a1 == 0;
  if (v5 || (sub_100003540(0, &qword_100775690), v6 = v4, v7 = static NSObject.== infix(_:_:)(), sub_1003904D8(v4), (v7 & 1) == 0))
  {
LABEL_9:
    sub_1005A7370();
    v8 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1003904D8(v8);
    v9 = a1;

    sub_1005A73F8(a1);
  }
}

void sub_1005A7370()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor;
  if (*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor))
  {

    TTRDataViewMonitor.pause()();

    *(v0 + v1) = 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget);
  *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget) = 1;
  sub_1003904D8(v2);
  v3 = *(v0 + 64);
  *(v0 + 64) = 0;
}

uint64_t sub_1005A73F8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for TTRDataViewMonitorEnvironmentInfo();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for TTRRemindersListDefaultListType();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor;
  if (!*(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListDataViewMonitor))
  {
    v20[0] = v4;
    if (qword_100767480 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_10078ECD8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "TTRIRemindersListNavigationBarInteractor start fetching and monitoring default list", v15, 2u);
    }

    v16 = v2[15];
    (*(v7 + 16))(v10, v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListType, v6);
    type metadata accessor for TTRIRemindersListNavigationBarDefaultListDataView(0);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    (*(v7 + 32))(v17 + OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_defaultListType, v10, v6);
    *(v17 + OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_listFetchingTarget) = a1;
    sub_100003540(0, &qword_100777780);
    v18 = a1;
    v19 = v16;

    static OS_dispatch_queue.main.getter();
    type metadata accessor for RDIDispatchQueue();
    static RDIDispatchQueue.utilityQueue.getter();
    static RDIDispatchQueue.storeUserInteractiveQueue.getter();
    TTRDataViewMonitorEnvironmentInfo.init()();
    v20[2] = 0;
    v20[3] = a1;
    v20[1] = v17;
    sub_100058000(&qword_10078EEE0);
    swift_allocObject();
    sub_1005A8354(&qword_10078EEE8, type metadata accessor for TTRIRemindersListNavigationBarInteractor);

    *(v2 + v11) = TTRDataViewMonitor.init<A>(initialData:dataView:delegate:queue:backgroundQueue:userInteractiveBackgroundQueue:environmentInfo:)();

    TTRDataViewMonitor.resume(userInteractive:)(1);
  }

  return result;
}

void sub_1005A7790(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget);
  if (v5)
  {
    if (v5 == 1 || a2 == 0)
    {
      return;
    }

    sub_100003540(0, &qword_100775690);
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();
    sub_1003904D8(v5);
    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_1003904D8(0);
    if (a2)
    {
      return;
    }
  }

  v9 = *(v2 + 64);
  if (v9)
  {
    if (a1)
    {
      sub_100003540(0, &qword_10076ABC0);
      v10 = v9;
      v11 = a1;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        return;
      }

      v9 = *(v2 + 64);
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v9 = 0;
  }

  *(v2 + 64) = a1;
  v13 = a1;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100081EF8(0xD000000000000012, 0x800000010068D060);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1005A7904()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  swift_unknownObjectRelease();

  sub_1005A8280(v0 + 72);
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_defaultListType;
  v2 = type metadata accessor for TTRRemindersListDefaultListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1003904D8(*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarInteractor_listFetchingTarget));

  return v0;
}

uint64_t sub_1005A79C4()
{
  sub_1005A7904();

  return swift_deallocClassInstance();
}

uint64_t sub_1005A7A44()
{
  result = type metadata accessor for TTRRemindersListDefaultListType();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1005A7B20(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  swift_unknownObjectRelease();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    sub_100081EF8(0xD00000000000001FLL, 0x800000010068D040);

    return swift_unknownObjectRelease();
  }

  else
  {

    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1005A7BC0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = dispatch thunk of TTRRemindersListEditingSession.acquirerName.getter();
  v4 = v3;
  v5 = (v0 + 48);
  if (*(v0 + 48))
  {
    v6 = v2;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v7 = dispatch thunk of TTRRemindersListEditingSession.acquirerName.getter();
    v9 = v8;
    swift_unknownObjectRelease();
    if (v6 == v7 && v4 == v9)
    {
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        return result;
      }
    }

    *v5 = 0;
    *(v1 + 56) = 0;
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100081EF8(0xD00000000000001FLL, 0x800000010068D040);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1005A7D74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1005A7DD4(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1005A7E68;
}

void sub_1005A7E68(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1005A7EF0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100081EF8(0xD00000000000001FLL, 0x800000010068D040);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005A7F98()
{
  v1 = OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_defaultListType;
  v2 = type metadata accessor for TTRRemindersListDefaultListType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1005A8074()
{
  result = type metadata accessor for TTRRemindersListDefaultListType();
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

void **assignWithCopy for TTRIRemindersListNavigationBarListFetchingTarget(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for TTRIRemindersListNavigationBarListFetchingTarget(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1005A8198(uint64_t *a1)
{
  result = sub_1005A8534();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1005A8210(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10078EED0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A8280(uint64_t a1)
{
  v2 = sub_100058000(&qword_10078EED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1005A82F0()
{
  result = qword_10078EED8;
  if (!qword_10078EED8)
  {
    sub_10005D20C(&qword_10078BFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078EED8);
  }

  return result;
}

uint64_t sub_1005A8354(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005A839C()
{
  if (qword_100767480 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10078ECD8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    swift_getErrorValue();
    v4 = Error.rem_errorDescription.getter();
    v6 = sub_100004060(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TTRIRemindersListNavigationBarDefaultListDataView: did hit error {error: %s}", v2, 0xCu);
    sub_100004758(v3);
  }

  else
  {
  }
}

uint64_t sub_1005A8534()
{
  v1 = type metadata accessor for TTRRemindersListDefaultListType();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_listFetchingTarget);
  if (v6)
  {
    v7 = *(v0 + 16);
    v20 = 0;
    v8 = v6;
    v9 = [v7 fetchListWithObjectID:v8 error:&v20];
    if (v9)
    {
      v10 = v9;
      v11 = v20;
LABEL_4:

LABEL_5:
      v12 = v6;
      return v10;
    }

    v10 = v20;
    _convertNSErrorToError(_:)();
LABEL_10:

    swift_willThrow();
    return v10;
  }

  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC9Reminders49TTRIRemindersListNavigationBarDefaultListDataView_defaultListType, v1, v3);
  v13 = (*(v2 + 88))(v5, v1);
  if (v13 == enum case for TTRRemindersListDefaultListType.cloudKitListWithAccountID(_:))
  {
    (*(v2 + 96))(v5, v1);
    v8 = *v5;
    v14 = *(v0 + 16);
    v20 = 0;
    v10 = [v14 fetchDefaultListRequiringCloudKitAccountWithAccountID:v8 error:&v20];
    if (!v20)
    {
      goto LABEL_4;
    }

    v15 = v20;
    goto LABEL_10;
  }

  if (v13 == enum case for TTRRemindersListDefaultListType.any(_:))
  {
    v16 = *(v0 + 16);
    v20 = 0;
    v17 = [v16 fetchDefaultListWithError:&v20];
    goto LABEL_15;
  }

  if (v13 == enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:))
  {
    v18 = *(v0 + 16);
    v20 = 0;
    v17 = [v18 fetchDefaultListRequiringCloudKitWithError:&v20];
LABEL_15:
    v10 = v17;
    if (v20)
    {
      v20;

      swift_willThrow();
      return v10;
    }

    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1005A87F4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005A8850(uint64_t a1)
{
  v41 = a1;
  v53 = *v1;
  v54 = type metadata accessor for TTRRemindersPrintingHTMLResult();
  v44 = *(v54 - 8);
  v45 = *(v44 + 64);
  __chkstk_darwin(v54);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_1007701A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_100058000(&qword_10078EFC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - v10;
  v12 = sub_100058000(&qword_10078EFC8);
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  __chkstk_darwin(v12);
  v42 = &v38 - v14;
  v49 = sub_100058000(&qword_10078EFD0);
  v52 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v38 - v15;
  v16 = sub_100058000(&qword_10078EFD8);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  __chkstk_darwin(v16);
  v46 = &v38 - v18;
  v55 = 1;
  Just.init(_:)();
  v19 = [objc_opt_self() mainRunLoop];
  v55 = v19;
  v20 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_100003540(0, &qword_10076DFB0);
  sub_10000E188(&qword_10078EFE0, &qword_10078EFC0);
  sub_100139DF0();
  Publisher.receive<A>(on:options:)();
  sub_1005A8F8C(v7);

  (*(v9 + 8))(v11, v8);
  v21 = v44;
  v40 = *(v44 + 16);
  v22 = v4;
  v38 = v4;
  v23 = v54;
  v40(v4, a1, v54);
  v24 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v39 = v45 + v24;
  v25 = swift_allocObject();
  v45 = *(v21 + 32);
  v45(v25 + v24, v22, v23);
  static Subscribers.Demand.unlimited.getter();
  sub_100058000(&qword_10078EFE8);
  sub_10000E188(&qword_10078EFF0, &qword_10078EFC8);
  sub_10000E188(&qword_10078EFF8, &qword_10078EFE8);
  v26 = v43;
  v27 = v47;
  v28 = v42;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v48 + 8))(v28, v27);
  v29 = v38;
  v30 = v54;
  v40(v38, v41, v54);
  v31 = (v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v45(v32 + v24, v29, v30);
  *(v32 + v31) = v53;
  sub_100003540(0, &qword_10078F000);
  sub_10000E188(&qword_10078F008, &qword_10078EFD0);
  v33 = v46;
  v34 = v49;
  Publisher.map<A>(_:)();

  (*(v52 + 8))(v26, v34);
  sub_10000E188(&qword_10078F010, &qword_10078EFD8);
  v35 = v50;
  v36 = Publisher.eraseToAnyPublisher()();
  (*(v51 + 8))(v33, v35);
  return v36;
}

uint64_t sub_1005A8F8C(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007701A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A8FF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TTRWebViewLoadingStateHelper.HTMLSource();
  __chkstk_darwin(v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = [objc_allocWithZone(type metadata accessor for TTRWebViewLoadingStateHelper()) init];
  v6 = *(sub_100058000(&qword_1007856B0) + 48);
  *v4 = TTRRemindersPrintingHTMLResult.html.getter();
  v4[1] = v7;
  TTRRemindersPrintingHTMLResult.baseURL.getter();
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(v4 + v6, 0, 1, v8);
  swift_storeEnumTagMultiPayload();
  v9 = sub_100494100(v4);

  result = sub_10049570C(v4);
  *a1 = v9;
  return result;
}

uint64_t sub_1005A912C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTRRemindersPrintingHTMLResult();

  return sub_1005A8FF4(a1);
}

uint64_t sub_1005A91AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  TTRRemindersPrintingHTMLResult.jobName.getter();
  TTRRemindersPrintingHTMLResult.footerText.getter();
  v4 = sub_1005A92D4(v3);

  *a2 = v4;
  return result;
}

uint64_t sub_1005A9228@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TTRRemindersPrintingHTMLResult();

  return sub_1005A91AC(a1, a2);
}

uint64_t sub_1005A92D4(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003540(0, &qword_100777780);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = [objc_opt_self() printInfo];
    v9 = String._bridgeToObjectiveC()();
    [v8 setJobName:v9];

    [v8 setOutputType:0];
    v10 = [objc_opt_self() sharedPrintController];
    [v10 setPrintInfo:v8];
    v11 = objc_opt_self();

    v12 = [v11 sharedApplication];
    [v12 userInterfaceLayoutDirection];

    v13 = objc_allocWithZone(type metadata accessor for TTRIReminderPrintPageRenderer());
    v14 = sub_1005B89CC();
    v15 = [a1 viewPrintFormatter];
    [v14 addPrintFormatter:v15 startingAtPageAtIndex:0];

    [v10 setPrintPageRenderer:v14];
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1005A9588(uint64_t *a1, void **a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v119 = a6;
  v112 = a4;
  v120 = a1;
  v121 = type metadata accessor for TTRRemindersListLayout();
  v117 = *(v121 - 8);
  v8 = __chkstk_darwin(v121);
  v101 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v118 = &v100 - v11;
  v12 = __chkstk_darwin(v10);
  v100 = &v100 - v13;
  __chkstk_darwin(v12);
  v114 = &v100 - v14;
  v15 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v16 = __chkstk_darwin(v15 - 8);
  v110 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v111 = &v100 - v18;
  v113 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v113);
  v124 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRListType.SortingCapability();
  __chkstk_darwin(v20 - 8);
  v109 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TTRRemindersListDefaultListType();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v23 - 8);
  v104 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v25 - 8);
  v107 = (&v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v31 = *(v123 - 8);
  v32 = __chkstk_darwin(v123);
  v34 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v122 = &v100 - v35;
  if (a3)
  {
    v36 = sub_1005AA650();
    v37 = &protocol witness table for REMList;
    v38 = a3;
  }

  else
  {
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v130[2] = 0;
    v130[1] = 0;
  }

  v130[0] = v38;
  v131 = v36;
  v132 = v37;
  v102 = a3;
  static REMRemindersListDataView.SortingStyle.fallbackForREMList.getter();
  v103 = a3;
  v39 = v122;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v40 = v123;
  v115 = *(v31 + 8);
  v116 = v31 + 8;
  v115(v34, v123);
  sub_1004D3F04(v130);
  v41 = *a2;
  (*(v28 + 104))(v30, enum case for TTRRemindersListDataModelSourceCountCompleted.onWhenShowingCompleted(_:), v27);
  (*(v31 + 16))(v34, v39, v40);
  v42 = type metadata accessor for TTRUserDefaults();
  v43 = v41;
  v44 = static TTRUserDefaults.appUserDefaults.getter();
  v132 = &protocol witness table for TTRUserDefaults;
  v131 = v42;
  v130[0] = v44;
  type metadata accessor for TTRShowRemindersInListDataModelSource();
  swift_allocObject();
  v45 = v102;
  v46 = TTRShowRemindersInListDataModelSource.init(store:list:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)();
  v47 = v107;
  sub_10010BD5C(a2, v107, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v48 = v104;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v49 = v105;
  (v106[13])(v105, enum case for TTRRemindersListDefaultListType.any(_:), v108);
  sub_10007786C(v47, v48, v49, v130);
  v50 = v130[0];

  v51 = v50;
  v52 = v109;
  static TTRListType.SortingCapability.sortingCapabilityForNonSmartList.getter();
  v53 = static TTRUserDefaults.appUserDefaults.getter();
  v108 = v51;
  v54 = sub_1005AA3D4(v46, v51, v52, v53);
  sub_10010BD5C(a2, v47, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v130, v127);
  v55 = sub_10014C630(&qword_100781100, type metadata accessor for TTRShowRemindersInListViewModelSource);
  v56 = v124;
  sub_10010BD5C(v47, v124, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v57 = v113;
  sub_10010BCAC(v127, v56 + *(v113 + 20));
  v58 = (v56 + *(v57 + 24));
  *v58 = v54;
  v58[1] = v55;
  v59 = v127[0];
  sub_100058000(&qword_10076C230);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v129, v126, &qword_100769608);
  v61 = *(v126[5] + 8);
  *(v60 + 32) = v126[4];
  *(v60 + 40) = v61;
  sub_10000794C(&v128, v125, &qword_100769600);
  swift_retain_n();
  v62 = v59;
  swift_unknownObjectRelease();
  *(v60 + 48) = v125[3];
  sub_100004758(v125);
  sub_100004758(v126);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v63 = swift_allocObject();
  v64 = sub_1003A6D60(v62, v54, v60, v63);
  v109 = v54;

  sub_10010BD08(v127);
  sub_10010BE0C(v47, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v65 = *(v57 + 28);
  v106 = v64;
  *(v56 + v65) = v64;
  v66 = v111;
  sub_100078BBC(v111);
  v107 = type metadata accessor for TTRIShowRemindersInListPresenter();
  v67 = swift_allocObject();
  *(v67 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController) = 0;
  *(v67 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_shouldShowReminderDeletePrivacyWarningIfNeeded) = 0;
  v68 = (v67 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_dataModelSource);
  *v68 = v46;
  v68[1] = &protocol witness table for TTRShowRemindersInListDataModelSource;
  v69 = v110;
  sub_10010BD5C(v66, v110, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v113 = v46;

  v70 = v112;
  swift_unknownObjectRetain();
  v71 = sub_1003A56E4(v69, v70, v67);
  sub_10010BE0C(v66, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v72 = *(v71 + 144);
  ObjectType = swift_getObjectType();
  v74 = *(v72 + 112);

  if (v74(ObjectType, v72))
  {
    swift_getObjectType();
    v75 = v100;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v76 = v117;
    v77 = v114;
    v78 = v75;
    v79 = v121;
    (*(v117 + 32))(v114, v78, v121);
  }

  else
  {
    v76 = v117;
    v77 = v114;
    v79 = v121;
    (*(v117 + 104))(v114, enum case for TTRRemindersListLayout.list(_:), v121);
  }

  v112 = sub_1003A4A1C(v77, v71);
  v114 = v80;
  v82 = v81;
  v84 = v83;
  (*(v76 + 8))(v77, v79);
  v117 = swift_getObjectType();
  *(v71 + 24) = *(v84 + 8);
  v121 = v82;
  swift_unknownObjectWeakAssign();
  v85 = *(v71 + 144);
  v86 = swift_getObjectType();
  v87 = *(v85 + 112);

  if (v87(v86, v85))
  {
    swift_getObjectType();
    v88 = v101;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v89 = v118;
    (*(v76 + 32))(v118, v88, v79);
  }

  else
  {

    v89 = v118;
    (*(v76 + 104))(v118, enum case for TTRRemindersListLayout.list(_:), v79);
  }

  v90 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v91 = v112;
  v118 = v91;
  v92 = sub_1003A6D94(v71, v91, v114, v89, 0, 1, 0, v90);

  v93 = *(v84 + 32);
  v94 = v92;
  v93(v92, &off_100723D78, v117, v84);
  sub_10014C630(&qword_10078F040, type metadata accessor for TTRIShowRemindersInListPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10014C630(&qword_10078F048, type metadata accessor for TTRShowRemindersInListViewModelSource);

  v95 = v94;
  dispatch thunk of TTRShowRemindersInListDataModelSource.delegate.setter();

  sub_10056FEB0(v96, &off_10071A9B0);

  v106[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v133, v127, &qword_100769600);
  v97 = v127[4];
  swift_unknownObjectRelease();
  *(v97 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v127);
  sub_10000794C(&v134, v127, &qword_100769608);
  swift_getObjectType();
  sub_10014C630(&unk_10078F050, type metadata accessor for TTRIShowRemindersInListPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v127);
  dispatch thunk of TTRShowRemindersInListDataModelSource.start(fetchesInitialDataSynchronously:)();
  v98 = v120;
  v120[3] = v107;
  v98[4] = &off_10072DB98;

  swift_unknownObjectRelease();
  *v98 = v71;
  v115(v122, v123);
  sub_10010BE0C(v124, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v130);
  return v95;
}

id TTRIShowRemindersInListAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowRemindersInListAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowRemindersInListAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowRemindersInListAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005AA3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for TTRListType.SortingCapability();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = ObjectType;
  v23[4] = &off_10072C130;
  v23[0] = a4;
  type metadata accessor for TTRShowRemindersInListViewModelSource();
  v13 = swift_allocObject();
  v14 = sub_10000AE84(v23, ObjectType);
  __chkstk_darwin(v14);
  v16 = (v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v16;
  v22[3] = ObjectType;
  v22[4] = &off_10072C130;
  v22[0] = v18;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_list) = 0;
  v19 = v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_remindersCount;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_hasIncompleteOrCompletedReminders) = 2;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_showLargeAttachmentsValue) = 1;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_sectionsContextInstance) = 0;
  *(v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource____lazy_storage___groceryTipFetchHelper) = 0;
  sub_10000B0D8(v22, v13 + OBJC_IVAR____TtC9Reminders37TTRShowRemindersInListViewModelSource_userDefaults);
  (*(v10 + 16))(v12, a3, v9);
  v20 = sub_1003A649C(a1, a2, v12, v13);
  (*(v10 + 8))(a3, v9);
  sub_100004758(v22);
  sub_100004758(v23);
  return v20;
}

unint64_t sub_1005AA650()
{
  result = qword_10076ABC0;
  if (!qword_10076ABC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076ABC0);
  }

  return result;
}

uint64_t sub_1005AA69C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1004E836C(v4, v8);
}

void sub_1005AA748()
{
  v2 = TTRAppBundleIdentifier.getter();
  v3 = v0;
  v1._countAndFlagsBits = 0x6E6F69746365732ELL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  qword_10078F060 = v2;
  *algn_10078F068 = v3;
}

uint64_t type metadata accessor for TTRIRemindersListDragSection()
{
  result = qword_10078F098;
  if (!qword_10078F098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005AA890()
{
  result = type metadata accessor for TTRSection();
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

id sub_1005AAB9C(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  _Block_copy(a4);
  if (qword_100767488 != -1)
  {
    swift_once();
  }

  v8 = qword_10078F060;
  v9 = *algn_10078F068;
  v10 = qword_10078F060 == a1 && *algn_10078F068 == a2;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = objc_opt_self();
    _StringGuts.grow(_:)(28);

    v12._countAndFlagsBits = v8;
    v12._object = v9;
    String.append(_:)(v12);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v11 internalErrorWithDebugDescription:{v13, 0xD00000000000001ALL, 0x800000010067EBB0}];

LABEL_9:
    v15 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v15);

    return 0;
  }

  sub_1003FA088();
  if ((static NSItemProviderWriting.canWriteTypeIdentifier(_:)() & 1) == 0)
  {
    v21 = objc_opt_self();
    _StringGuts.grow(_:)(30);

    v22._countAndFlagsBits = a1;
    v22._object = a2;
    String.append(_:)(v22);
    v23 = String._bridgeToObjectiveC()();

    v14 = [v21 internalErrorWithDebugDescription:{v23, 0xD00000000000001CLL, 0x80000001006893D0}];

    goto LABEL_9;
  }

  TTRSection.displayName.getter();
  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();
  v24[4] = sub_1002354C8;
  v24[5] = v7;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_1005AA69C;
  v24[3] = &unk_10072F548;
  v19 = _Block_copy(v24);

  v20 = [v17 loadDataWithTypeIdentifier:v18 forItemProviderCompletionHandler:v19];
  _Block_release(v19);

  return v20;
}

id sub_1005AAEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(type metadata accessor for TTRIInsetTextField()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [objc_opt_self() quaternarySystemFillColor];
  [v8 setBackgroundColor:v9];

  TTRIInsetTextField.horizontalInset.setter();
  [v8 _setContinuousCornerRadius:12.0];
  v10 = v8;
  UIAccessibilityIsBoldTextEnabled();
  sub_100003540(0, &qword_100771DF0);
  v11 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  [v10 setFont:v11];

  [v10 setTextAlignment:1];
  [v10 setClearButtonMode:1];
  *&v4[OBJC_IVAR____TtC9Reminders27TTRIListDetailNameTableCell_nameTextField] = v10;
  v12 = objc_allocWithZone(type metadata accessor for TTRITextCellTextFieldTextArea());
  v13 = v10;
  v14 = TTRITextCellTextFieldTextArea.init(textField:)();
  v15 = &v4[OBJC_IVAR____TtC9Reminders27TTRIListDetailNameTableCell_textArea];
  *v15 = v14;
  *(v15 + 1) = &protocol witness table for TTRITextCellTextFieldTextArea;
  v16 = v14;
  if (a3)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v44.receiver = v4;
  v44.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v44, "initWithStyle:reuseIdentifier:", a1, v17);

  v19 = v18;
  [v13 addTarget:v19 action:"textFieldEditingDidBegin" forControlEvents:0x10000];
  [v13 addTarget:v19 action:"textFieldEditingDidEnd" forControlEvents:0x40000];
  v20 = v19;
  v21 = [v20 contentView];
  [v21 addSubview:v13];

  v22 = objc_opt_self();
  sub_100058000(&qword_10076B780);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100634FC0;
  v24 = [v20 contentView];
  v25 = [v24 leadingAnchor];

  v26 = [v13 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-16.0];

  *(v23 + 32) = v27;
  v28 = [v20 contentView];
  v29 = [v28 trailingAnchor];

  v30 = [v13 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:16.0];

  *(v23 + 40) = v31;
  v32 = [v20 contentView];
  v33 = [v32 topAnchor];

  v34 = [v13 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v23 + 48) = v35;
  v36 = [v20 contentView];

  v37 = [v36 bottomAnchor];
  v38 = [v13 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:16.0];

  *(v23 + 56) = v39;
  v40 = [v13 heightAnchor];

  v41 = [v40 constraintEqualToConstant:56.0];
  *(v23 + 64) = v41;
  sub_100003540(0, &qword_10076BAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];

  return v20;
}

void sub_1005AB51C()
{
  v1 = [*&v0[OBJC_IVAR____TtC9Reminders27TTRIListDetailNameTableCell_nameTextField] isEditing];
  v2 = objc_opt_self();
  v3 = &selRef_systemFillColor;
  if (!v1)
  {
    v3 = &selRef_quaternarySystemFillColor;
  }

  v4 = [v2 *v3];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = v4;
  v10[4] = sub_1005AB854;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10001047C;
  v10[3] = &unk_10072F598;
  v7 = _Block_copy(v10);
  v8 = v4;
  v9 = v0;

  [v5 animateWithDuration:v7 animations:0.2];

  _Block_release(v7);
}

uint64_t sub_1005AB790@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRITableCellContentPrototypeCellView.cellClass(_:);
  v3 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1005AB870()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078F0E0);
  v1 = sub_100003E30(v0, qword_10078F0E0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005AB938()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list];
  v7 = [v6 account];
  v8 = [v7 accountTypeHost];

  LODWORD(v7) = [v8 isCloudKit];
  if (v7)
  {
    v9 = [v6 account];
    v10 = [v9 remObjectID];

    v11 = [v10 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = [v6 store];
    v16 = String._bridgeToObjectiveC()();
    sub_100003540(0, &qword_100777780);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v14;
    v46 = sub_1005AD560;
    v47 = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009DE4;
    v45 = &unk_10072F638;
    v19 = _Block_copy(aBlock);

    [v15 addCKShareObserverIfNeededForAccountID:v16 queue:v17 completion:v19];
    _Block_release(v19);
  }

  v20 = objc_opt_self();
  v21 = [v6 account];
  v22 = [v20 newCloudContainerForAccount:v21];

  REMList.ttrGroceryContext.getter();
  if (v45)
  {
    sub_10000C36C(aBlock, v45);
    ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(aBlock);
  }

  else
  {
    sub_1000079B4(aBlock, &qword_1007757E0);
    ShouldCategorizeGrocery = 0;
  }

  v43 = v22;
  v24 = sub_1005AC188(v1, v22);
  [v24 setAvailablePermissions:10];
  type metadata accessor for TTRUserDefaults();
  v25 = static TTRUserDefaults.appUserDefaults.getter();
  v26 = TTRUserDefaults.publicSharingEnabled.getter();

  if (v26)
  {
    [v24 setAvailablePermissions:{objc_msgSend(v24, "availablePermissions") | 1}];
  }

  static TTRLocalizableStrings.Sharing.Notifications.sectionHeaderTitle.getter();
  v27 = String._bridgeToObjectiveC()();

  [v24 _setSectionTitleForAuxiliarySwitches:v27];

  sub_100461868(_swiftEmptyArrayStorage);
  sub_100003540(0, &qword_10078F1F8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v24 _setParticipantDetails:isa];

  if (ShouldCategorizeGrocery)
  {
    static TTRLocalizableStrings.Sharing.Notifications.enableAddedItemNotifications.getter();
  }

  else
  {
    static TTRLocalizableStrings.Sharing.Notifications.enableAddedReminderNotifications.getter();
  }

  v29 = String._bridgeToObjectiveC()();

  [v24 _setPrimaryAuxiliarySwitchTitle:v29];

  v30 = [v6 remObjectID];
  v31 = [v30 stringRepresentation];

  if (!v31)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = String._bridgeToObjectiveC()();
  }

  v32 = objc_opt_self();
  v33 = [v32 daemonUserDefaults];
  v34 = [v33 muteNotificationOptionsForSharedList:v31];

  [v24 _setPrimaryAuxiliarySwitchState:(v34 & 1) == 0];
  if (ShouldCategorizeGrocery)
  {
    static TTRLocalizableStrings.Sharing.Notifications.enableCompletedItemNotifications.getter();
  }

  else
  {
    static TTRLocalizableStrings.Sharing.Notifications.enableCompletedReminderNotifications.getter();
  }

  v35 = String._bridgeToObjectiveC()();

  [v24 _setSecondaryAuxiliarySwitchTitle:v35];

  v36 = [v6 remObjectID];
  v37 = [v36 stringRepresentation];

  if (!v37)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
  }

  v38 = [v32 daemonUserDefaults];
  v39 = [v38 muteNotificationOptionsForSharedList:v37];

  [v24 _setSecondaryAuxiliarySwitchState:(v39 & 2) == 0];
  v40 = v24;
  [v40 setModalPresentationStyle:2];
  [v40 setDelegate:v1];

  return v40;
}

void sub_1005ABF90(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100767490 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_10078F0E0);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100004060(a2, a3, &v12);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_100004060(v9, v10, &v12);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not add share observer for {accountID: %s, error: %s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

id sub_1005AC188(char *a1, void *a2)
{
  v4 = *&a1[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list];
  v5 = [v4 store];
  v6 = [v4 objectID];
  *&aBlock = 0;
  v7 = [v5 fetchShareForListWithID:v6 error:&aBlock];

  if (aBlock)
  {
    v8 = aBlock;

    swift_willThrow();
LABEL_3:
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1005AD568;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(UICloudSharingController);
    v25 = sub_1005AD570;
    v26 = v10;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v24 = sub_1005AD19C;
    *(&v24 + 1) = &unk_10072F6B0;
    v12 = _Block_copy(&aBlock);
    v13 = a1;
    v14 = a2;
    v15 = [v11 initWithPreparationHandler:v12];
    _Block_release(v12);

    return v15;
  }

  if (!v7)
  {
    goto LABEL_3;
  }

  static CKShare.SystemFieldKey.thumbnailImageData.getter();
  sub_100003540(0, &qword_10076FCB0);
  type metadata accessor for RemindersUICoreBundleLookupObject();
  v16 = static RemindersUICoreBundleLookupObject.bundle.getter();
  v17 = static UIImage.ttr_image(named:in:)();

  if (v17 && (v18 = UIImagePNGRepresentation(v17), v17, v18))
  {
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(&v24 + 1) = &type metadata for Data;
    v25 = &protocol witness table for Data;
    *&aBlock = v19;
    *(&aBlock + 1) = v21;
  }

  else
  {
    v25 = 0;
    aBlock = 0u;
    v24 = 0u;
  }

  sub_100003540(0, &qword_10078F200);
  CKRecordKeyValueSetting.subscript.setter();
  v15 = [objc_allocWithZone(UICloudSharingController) initWithShare:v7 container:a2];

  return v15;
}

void sub_1005AC4A0(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, char *a4, uint64_t a5)
{
  v8 = *&a4[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list];
  v9 = [v8 store];
  v10 = [v8 objectID];
  v31 = 0;
  v11 = [v9 createShareForListWithID:v10 appIconData:0 error:&v31];

  v12 = v31;
  if (v31)
  {
    v13 = v31;

    swift_willThrow();
    if (qword_100767490 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_10078F0E0);
    v15 = a4;
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v19 = 138412546;
      *(v19 + 4) = v8;
      *v28 = v8;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v30 = a2;
      v20 = v8;
      v21 = Error.localizedDescription.getter();
      v23 = sub_100004060(v21, v22, &v31);

      *(v19 + 14) = v23;
      a2 = v30;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to create share for list {list: %@, error: %s}", v19, 0x16u);
      sub_1000079B4(v28, &unk_10076DF80);

      sub_100004758(v29);
    }

    v24 = v16;
    v25 = 0;
    v26 = 0;
    v27 = v12;
  }

  else
  {
    if (!v11)
    {
      return;
    }

    v24 = v11;
    v25 = v11;
    v26 = a5;
    v27 = 0;
  }

  a2(v25, v26, v27);
}

id sub_1005AC7AC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list) remObjectID];
  v2 = [v1 stringRepresentation];

  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = [objc_opt_self() daemonUserDefaults];
  v4 = [v3 muteNotificationOptionsForSharedList:v2];

  return v4;
}

void sub_1005AC874(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list) remObjectID];
  v5 = [v3 stringRepresentation];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v4 = [objc_opt_self() daemonUserDefaults];
  [v4 setMuteNotificationOptions:a1 forSharedList:v5];
}

id sub_1005AC97C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIListSharingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005ACB28(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 share];
  if (v14)
  {
    v15 = v14;
    v16 = *(v4 + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list);
    v17 = [v16 account];
    v18 = [v17 remObjectID];

    v19 = [v18 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    (*(v10 + 8))(v13, v9);
    v20 = [v16 store];
    v21 = String._bridgeToObjectiveC()();

    sub_100003540(0, &qword_100777780);
    v22 = static OS_dispatch_queue.main.getter();
    aBlock[4] = a2;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009DE4;
    aBlock[3] = a3;
    v23 = _Block_copy(aBlock);
    [v20 *a4];
    _Block_release(v23);
  }
}

void sub_1005ACD94(uint64_t a1, const char *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100767490 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_10078F0E0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_100004060(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 0xCu);
      sub_100004758(v7);
    }

    else
    {
    }
  }
}

void sub_1005AD19C(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void sub_1005AD254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_1005AD2D4(uint64_t a1)
{
  if (qword_100767490 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10078F0E0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100004060(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to save share with error %s", v6, 0xCu);
    sub_100004758(v7);
  }

  v11 = v1 + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 16))(v1, a1, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005AD498()
{
  sub_100003540(0, &qword_10076FCB0);
  type metadata accessor for RemindersUICoreBundleLookupObject();
  v0 = static RemindersUICoreBundleLookupObject.bundle.getter();
  v1 = static UIImage.ttr_image(named:in:)();

  if (!v1)
  {
    return 0;
  }

  v2 = UIImagePNGRepresentation(v1);

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id TTRIWhatsNewAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWhatsNewAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIWhatsNewAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWhatsNewAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005AD684(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMStore) init];
  type metadata accessor for TTRWhatsNewInteractor();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 32) = v3;
  v5 = type metadata accessor for TTRIWhatsNewRouter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19[3] = v5;
  v19[4] = &off_100714508;
  v19[0] = v6;
  type metadata accessor for TTRIWhatsNewPresenter();
  v7 = swift_allocObject();
  v8 = sub_10000AE84(v19, v5);
  __chkstk_darwin(v8);
  v10 = (&v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v7[11] = v5;
  v7[12] = &off_100714508;
  v7[8] = v12;
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v7[5] = 0;
  swift_unknownObjectWeakInit();
  v7[6] = v4;
  v7[7] = &off_1007266E8;
  v13 = v3;

  sub_100004758(v19);
  v14 = objc_allocWithZone(type metadata accessor for TTRIWhatsNewViewController());

  v16 = sub_100472E60(v15);

  v7[5] = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v16;
}

uint64_t sub_1005AD8B4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078F230);
  v1 = sub_100003E30(v0, qword_10078F230);
  if (qword_100767278 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005AD97C()
{
  v0 = sub_100058000(&unk_100775660);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v19 - v4;
  URL.init(string:)();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_100284F94(v5, v3);
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    v11 = 0;
    if ((*(v9 + 48))(v3, 1, v8) != 1)
    {
      URL._bridgeToObjectiveC()(v10);
      v11 = v12;
      (*(v9 + 8))(v3, v8);
    }

    sub_100008E04(&_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = [v7 openSensitiveURL:v11 withOptions:isa];

    if ((v14 & 1) == 0)
    {
      if (qword_100767498 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_10078F230);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRICloudIsOffProvider: Failed to open Settings to turn on iCloud for Reminders", v18, 2u);
      }
    }

    return sub_1005ADC18(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005ADC18(uint64_t a1)
{
  v2 = sub_100058000(&unk_100775660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005ADCCC()
{
  v0 = sub_1005ADD10();
  v1 = TTRIInlineButtonAttachmentTextView.attachmentToken.getter();

  return v1;
}

id sub_1005ADD10()
{
  v1 = qword_10078F250;
  v2 = *(v0 + qword_10078F250);
  if (v2)
  {
    v3 = *(v0 + qword_10078F250);
  }

  else
  {
    v4 = sub_1005AE4EC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1005ADD74()
{
  v0 = sub_1005ADD10();
  v1 = TTRIInlineButtonAttachmentTextView.menuOptions.getter();

  return v1;
}

void sub_1005ADDA8()
{
  v0 = sub_1005ADD10();
  TTRIInlineButtonAttachmentTextView.selectedItem.getter();
}

void (*sub_1005ADDF8(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for Optional();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  v9 = sub_1005ADD10();
  TTRIInlineButtonAttachmentTextView.selectedItem.getter();

  return sub_1005ADF30;
}

void sub_1005ADF30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1005AEA70(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1005AEA70(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_1005AE00C()
{
  v0 = sub_1005ADD10();
  v1 = [v0 text];

  if (v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1005AE078(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  sub_1005AE00C();
  *a1 = v3;
  a1[1] = v4;
  return sub_1005AE0C0;
}

uint64_t sub_1005AE0C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    v4 = sub_1005ADD10();
    v5._countAndFlagsBits = v3;
    v5._object = v2;
    TTRIInlineButtonAttachmentTextView.applyText(_:)(v5);
  }

  else
  {
    v6 = sub_1005ADD10();
    v7._countAndFlagsBits = v3;
    v7._object = v2;
    TTRIInlineButtonAttachmentTextView.applyText(_:)(v7);
  }
}

void sub_1005AE148()
{
  v0 = sub_1005ADD10();
  v1 = [v0 attributedText];

  if (!v1)
  {
    __break(1u);
  }
}

void (*sub_1005AE194(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  sub_1005AE148();
  *a1 = v3;
  return sub_1005AE1DC;
}

void sub_1005AE1DC(id *a1, char a2)
{
  v5 = *a1;
  if (a2)
  {
    v2.super.isa = *a1;
    isa = v2.super.isa;
    sub_1005AEBD0(v2);
  }

  else
  {
    v4.super.isa = *a1;
    sub_1005AEBD0(v4);
  }
}

uint64_t sub_1005AE23C()
{
  sub_1005AE264();

  return swift_getObjCClassFromMetadata();
}

id sub_1005AE26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[qword_10078F248 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[qword_10078F250] = 0;
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v15.receiver = v3;
  v15.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v15, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = v8;
  v10 = [v9 containerView];
  [v10 setLayoutMarginsRelativeArrangement:1];
  [v10 setPreservesSuperviewLayoutMargins:1];
  v11 = v10;
  [v11 setHorizontalAlignment:0];
  [v11 setVerticalAlignment:0];

  [v11 setDebugBoundingBoxesEnabled:0];
  sub_100058000(&qword_10076B780);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10062D420;
  *(v12 + 32) = sub_1005ADD10();
  sub_10014C480();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setArrangedSubviews:isa];

  [v9 setSelectionStyle:0];
  [v9 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v9;
}

id sub_1005AE46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005AE26C(a3, a4, v6);
}

id sub_1005AE4EC()
{
  swift_getObjectType();
  type metadata accessor for TTRIInlineButtonAttachmentTextView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_getWitnessTable();
  swift_unknownObjectRetain();
  TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter();
  return v0;
}

void sub_1005AE5AC(uint64_t a1)
{
  sub_10003B788(a1 + qword_10078F248);
  v2 = *(a1 + qword_10078F250);
}

uint64_t sub_1005AE67C(uint64_t a1)
{
  sub_1005AEA70(a1);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*sub_1005AE6F8(void *a1))(void *)
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
  v2[4] = sub_1005ADDF8(v2);
  return sub_1005AECA8;
}

uint64_t sub_1005AE790(uint64_t a1, void *a2)
{
  sub_1005AEB6C(a1, a2);
}

void (*sub_1005AE7CC(void *a1))(void *)
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
  v2[4] = sub_1005AE078(v2);
  return sub_1005AECA8;
}

void sub_1005AE864(NSAttributedString a1)
{
  sub_1005AEBD0(a1);
}

void (*sub_1005AE8A8(void *a1))(void *)
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
  v2[4] = sub_1005AE194(v2);
  return sub_1005AE91C;
}

uint64_t sub_1005AE920(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000C38F4(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1005AE980()
{
  swift_getObjectType();
  type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  v0 = UIView.firstDescendantView<A>(ofType:passing:)();
  if (v0 && (v1 = v0, v2 = [v0 accessibilityLabel], v1, v2))
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_1005AE148();
    v7 = v6;
    swift_getWitnessTable();
    v8._countAndFlagsBits = v3;
    v8._object = v5;
    TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(v7, v8);
  }

  else
  {
    sub_1005AE148();
  }
}

void sub_1005AEA70(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  v6 = sub_1005ADD10();
  (*(v3 + 16))(v5, a1, v2);
  TTRIInlineButtonAttachmentTextView.selectedItem.setter();
}

void sub_1005AEB6C(uint64_t a1, void *a2)
{
  v5 = sub_1005ADD10();
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  TTRIInlineButtonAttachmentTextView.applyText(_:)(v4);
}

void sub_1005AEBD0(NSAttributedString a1)
{
  v2 = sub_1005ADD10();
  TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(a1, 0);
}

void sub_1005AEC28()
{
  *(v0 + qword_10078F248 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_10078F250) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005AED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v7 = type metadata accessor for TTRIMenuItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29[0] = v29 - v9;
  v29[1] = a3;
  v29[2] = a4;
  v10 = type metadata accessor for TTRIFilterOperationCellContentState.Option();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v32 = v29 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = __chkstk_darwin(TupleTypeMetadata2);
  v17 = v29 - v16;
  v19 = *(v18 + 48);
  v30 = v11;
  v20 = *(v11 + 16);
  v20(v29 - v16, v31, v10, v15);
  (v20)(&v17[v19], a2, v10);
  v31 = v8;
  v21 = *(v8 + 48);
  if (v21(v17, 1, v7) == 1)
  {
    v22 = 1;
    if (v21(&v17[v19], 1, v7) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v20)(v32, v17, v10);
    if (v21(&v17[v19], 1, v7) != 1)
    {
      v23 = v31;
      v24 = &v17[v19];
      v25 = v29[0];
      (*(v31 + 32))(v29[0], v24, v7);
      v26 = v32;
      v22 = static TTRIMenuItem.== infix(_:_:)();
      v27 = *(v23 + 8);
      v27(v25, v7);
      v27(v26, v7);
LABEL_8:
      v14 = v30;
      goto LABEL_9;
    }

    (*(v31 + 8))(v32, v7);
  }

  v22 = 0;
  v10 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v17, v10);
  return v22 & 1;
}

uint64_t sub_1005AF070(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRIFilterOperationCellContentState.Option();
  swift_getWitnessTable();
  if ((static Array<A>.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRIFilterOperationCellContentState();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void sub_1005AF1F8(void *a1, uint64_t a2)
{
  v17[1] = a2;
  v3 = *((swift_isaMask & *a1) + 0x50);
  v4 = type metadata accessor for TTRIFilterOperationCellContentState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v17 - v6);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - v10;
  TTRITableCellContent.state.getter();
  v12 = *(v3 - 8);
  (*(v12 + 16))(v11, v7 + *(v4 + 40), v3);
  v13 = *(v5 + 8);
  v13(v7, v4);
  (*(v12 + 56))(v11, 0, 1, v3);
  sub_1005B1884(v11);
  (*(v9 + 8))(v11, v8);
  TTRITableCellContent.state.getter();
  v14 = v7[2];

  v13(v7, v4);
  *(a1 + qword_10078F400) = v14;
  sub_1005AFBDC();

  TTRITableCellContent.state.getter();
  v15 = *v7;
  v16 = v7[1];

  v13(v7, v4);
  sub_1005AF4B4(v15, v16);
}

void sub_1005AF4B4(uint64_t a1, unint64_t a2)
{
  v6 = sub_1005AFB78();
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  if (!a2)
  {
    a2 = 0xE000000000000000;
  }

  v5 = a2;
  TTRIInlineButtonAttachmentTextView.applyText(_:)(*&v4);
}

uint64_t sub_1005AF52C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 containerView];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_100026410;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100026440;
  v9[3] = &unk_10072FA30;
  v7 = _Block_copy(v9);

  [v5 performBatchUpdates:v7];

  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005AF7A8(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + qword_1007A8990);
  v4 = type metadata accessor for TTRIFilterOperationCellContentState();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v11 = *(v3 - 8);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_1000046FC(a1, v24);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, v3);
    (*(v11 + 32))(v14, v10, v3);
    v17 = TTRITableCellContent.state.modify();
    (*(v11 + 24))(v18 + *(v4 + 40), v14, v3);
    v17(v24, 0);
    v19 = (v1 + *((swift_isaMask & *v1) + qword_1007A8990 + 16));
    swift_beginAccess();
    v20 = *v19;
    if (*v19)
    {
      swift_endAccess();

      TTRITableCellContent.state.getter();
      v20(v6);
      sub_1000301AC(v20);
      (*(v23 + 8))(v6, v4);
      return (*(v11 + 8))(v14, v3);
    }

    else
    {
      (*(v11 + 8))(v14, v3);
      return swift_endAccess();
    }
  }

  else
  {
    v16(v10, 1, 1, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

id sub_1005AFB78()
{
  v1 = qword_10078F408;
  v2 = *(v0 + qword_10078F408);
  if (v2)
  {
    v3 = *(v0 + qword_10078F408);
  }

  else
  {
    v4 = sub_1005B03AC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1005AFBDC()
{
  v1 = qword_10078F400;
  v2 = *((swift_isaMask & *v0) + 0x50);
  v3 = *((swift_isaMask & *v0) + 0x58);
  type metadata accessor for TTRIFilterOperationCellContentState.Option();

  swift_getWitnessTable();
  v4 = static Array<A>.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    v5 = sub_1005AFB78();
    v10[5] = *(v0 + v1);
    __chkstk_darwin(v5);
    v10[2] = v2;
    v10[3] = v3;
    v6 = type metadata accessor for Array();
    v7 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();

    WitnessTable = swift_getWitnessTable();
    sub_1000868E8(sub_1005B1A60, v10, v6, v7, &type metadata for Never, WitnessTable, &protocol witness table for Never, v9);

    TTRIInlineButtonAttachmentTextView.menuOptions.setter();
  }
}

uint64_t sub_1005AFD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  __chkstk_darwin(a1);
  v3 = type metadata accessor for TTRIMenuItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v7 = type metadata accessor for TTRIFilterOperationCellContentState.Option();
  v8 = __chkstk_darwin(v7);
  v10 = &v16 - v9;
  (*(v11 + 16))(&v16 - v9, a1, v8);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    v12 = &enum case for TTRIInlineButtonAttachmentTextView.Option.separator<A>(_:);
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    TTRIMenuItem.title.getter();
    TTRIMenuItem.image.getter();
    TTRIMenuItem.item.getter();
    TTRIMenuItem.init(title:image:item:selectedTitle:)();
    (*(v4 + 8))(v6, v3);
    v12 = &enum case for TTRIInlineButtonAttachmentTextView.Option.item<A>(_:);
  }

  v13 = *v12;
  v14 = type metadata accessor for TTRIInlineButtonAttachmentTextView.Option();
  return (*(*(v14 - 8) + 104))(v17, v13, v14);
}

uint64_t sub_1005B004C()
{
  sub_1005AE264();

  return swift_getObjCClassFromMetadata();
}

id sub_1005B0074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[qword_10078F3F8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = qword_10078F400;
  type metadata accessor for TTRIFilterOperationCellContentState.Option();
  *&v3[v7] = Array.init()();
  *&v3[qword_10078F408] = 0;
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v22.receiver = v3;
  v22.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v22, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = objc_opt_self();
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 textAttachmentViewProviderClassForFileType:v12];

  if (!v13)
  {
    type metadata accessor for TTRIMenuButtonAttachmentProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = String._bridgeToObjectiveC()();
    [v10 registerTextAttachmentViewProviderClass:ObjCClassFromMetadata forFileType:v15];
  }

  v16 = v11;
  v17 = [v16 containerView];
  [v17 setLayoutMarginsRelativeArrangement:1];
  [v17 setPreservesSuperviewLayoutMargins:1];
  v18 = v17;
  [v18 setHorizontalAlignment:0];
  [v18 setVerticalAlignment:0];

  sub_100058000(&qword_10076B780);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10062D420;
  *(v19 + 32) = sub_1005AFB78();
  sub_10014C480();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 setArrangedSubviews:isa];

  [v16 setSeparatorInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v16;
}

id sub_1005B0338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1005B0074(a3, a4, v6);
}

id sub_1005B03AC()
{
  swift_getObjectType();
  type metadata accessor for TTRIInlineButtonAttachmentTextView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  TTRIInlineButtonAttachmentTextView.attachmentToken.setter();
  swift_getWitnessTable();
  swift_unknownObjectRetain();
  TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter();
  return v0;
}

void sub_1005B0484(uint64_t a1)
{
  sub_10003B788(a1 + qword_10078F3F8);

  v2 = *(a1 + qword_10078F408);
}

uint64_t sub_1005B04F8()
{
  result = type metadata accessor for TTRIMenuItem();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *sub_1005B0574(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for TTRIMenuItem();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1005B06C8(uint64_t a1)
{
  v2 = type metadata accessor for TTRIMenuItem();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_1005B0788(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1005B08A0(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_1005B0A20(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1005B0B38(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIMenuItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_1005B0CE0(uint64_t a1)
{
  v2 = type metadata accessor for TTRIMenuItem();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_1005B0D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIMenuItem();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_1005B0DDC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1005B0E84(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-25 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    a1[1] = v10;
    v11 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v12 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v11 = *v12;
    v13 = *(v5 + 16);

    v13(v11 + 1, v12 + 1, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  return a1;
}

uint64_t sub_1005B0FA0(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 8) & ~*(v4 + 80);

  return v5(v6);
}

void *sub_1005B1024(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(*(v7 - 8) + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;

  v8(v10 & ~v9, v11 & ~v9, v7);
  return a1;
}

void *sub_1005B10D4(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;

  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 24))((v6 + *(v8 + 80) + 8) & ~*(v8 + 80), (v7 + *(v8 + 80) + 8) & ~*(v8 + 80));
  return a1;
}

_OWORD *sub_1005B119C(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void *sub_1005B1224(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = *(*(a3 + 16) - 8);
  (*(v9 + 40))((v7 + *(v9 + 80) + 8) & ~*(v9 + 80), (v8 + *(v9 + 80) + 8) & ~*(v9 + 80));
  return a1;
}

uint64_t sub_1005B12CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1005B1458(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1005B16C8(uint64_t a1)
{
  v3 = v1 + qword_10078F3F8;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1005B1758()
{
  swift_getObjectType();
  type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
  v0 = UIView.firstDescendantView<A>(ofType:passing:)();
  if (!v0 || (v1 = v0, v2 = [v0 accessibilityLabel], v1, !v2))
  {
    v7 = sub_1005AFB78();
    [v7 attributedText];
    goto LABEL_6;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1005AFB78();
  v7 = [v6 attributedText];

  if (v7)
  {
    swift_getWitnessTable();
    v8._countAndFlagsBits = v3;
    v8._object = v5;
    TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(v7, v8);

LABEL_6:

    return;
  }

  __break(1u);
}

void sub_1005B1884(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  v6 = sub_1005AFB78();
  (*(v3 + 16))(v5, a1, v2);
  TTRIInlineButtonAttachmentTextView.selectedItem.setter();
}

void sub_1005B1980()
{
  *(v0 + qword_10078F3F8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = qword_10078F400;
  type metadata accessor for TTRIFilterOperationCellContentState.Option();
  *(v0 + v1) = Array.init()();
  *(v0 + qword_10078F408) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005B1A80()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078F590);
  v1 = sub_100003E30(v0, qword_10078F590);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1005B1B48(uint64_t a1)
{
  sub_100058000(&qword_100785FB0);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_10062D3F0;
  v4 = *(a1 + 16);
  *(v2 + 32) = v4;
  *(v2 + 40) = 0;
  *(v2 + 48) = v4;
  *(v2 + 56) = 1;
  return result;
}

uint64_t sub_1005B1BB8()
{
  sub_100058000(&qword_100774070);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10062D3F0;
  *(v0 + 32) = 1;
  *(v0 + 72) = 0;
  sub_1005B3968();
  AnyHashable.init<A>(_:)();
  *(v0 + 120) = 1;
  return v0;
}

uint64_t sub_1005B1C30()
{
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  sub_100323E20();
  static TTRLocalizableStrings.RecentlyDeletedList.deleteAllActionText.getter();
  swift_allocObject();
  swift_weakInit();
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_1005B1D64()
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
    sub_100084EC0(0, 0, v2, &unk_1006482E8, v6);
  }

  return result;
}

uint64_t sub_1005B1E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1005B1F18;

  return sub_1005B2914();
}

uint64_t sub_1005B1F18(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1 & 1;

    return _swift_task_switch(sub_1005B2068, 0, 0);
  }
}

uint64_t sub_1005B2068()
{
  if (*(v0 + 72) == 1)
  {
    v1 = OBJC_IVAR____TtC9Reminders32TTRIShowRecentlyDeletedPresenter_dataModelSource;
    *(v0 + 32) = *(*(v0 + 16) + 104);
    *(v0 + 40) = v1;
    type metadata accessor for MainActor();
    *(v0 + 48) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1005B2150, v3, v2);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1005B2150()
{
  v1 = v0[5];
  v2 = v0[2];

  v0[7] = *(v2 + v1);
  v0[8] = *(v2 + v1 + 8);

  return _swift_task_switch(sub_1005B21D0, 0, 0);
}

uint64_t sub_1005B21D0()
{
  swift_getObjectType();
  v1 = dispatch thunk of TTRShowRecentlyDeletedDataModelSourceType.account.getter();
  sub_100256C8C(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1005B225C(uint64_t a1)
{
  v24 = a1;
  v1 = type metadata accessor for TTRRemindersListViewModel.Item();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  if (qword_1007674A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_10078F590);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  static TTRLocalizableStrings.RecentlyDeletedList.recoverReminderAlertTitle.getter();
  static TTRLocalizableStrings.RecentlyDeletedList.recoverReminderAlertMessage.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v23 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v7 = String._bridgeToObjectiveC()();

  v30 = sub_1005B267C;
  v31 = 0;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1001762CC;
  v29 = &unk_10072FA58;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v22 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  static TTRLocalizableStrings.Common.recoverButton.getter();
  v10 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v10, v24, v1);
  v11 = v1;
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v25;
  v14 = v10;
  v15 = v23;
  (*(v2 + 32))(v13 + v12, v14, v11);

  v16 = String._bridgeToObjectiveC()();

  v30 = sub_1005B3838;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1001762CC;
  v29 = &unk_10072FAA8;
  v17 = _Block_copy(&aBlock);

  v18 = [v9 actionWithTitle:v16 style:0 handler:v17];
  _Block_release(v17);

  v19 = v22;
  [v15 addAction:v22];
  [v15 addAction:v18];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    [Strong presentViewController:v15 animated:1 completion:0];
  }
}

uint64_t sub_1005B267C()
{
  if (qword_1007674A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_10078F590);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();
}

uint64_t sub_1005B271C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100058000(&qword_100775608);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  sub_100058000(&qword_100772150);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10062D400;
  (*(v8 + 16))(v10 + v9, a3, v7);
  v11 = enum case for REMRDLUserOperationDetail.rdl_tapToRecover(_:);
  v12 = type metadata accessor for REMRDLUserOperationDetail();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v6, v11, v12);
  (*(v13 + 56))(v6, 0, 1, v12);
  sub_10024E244(v10, 0, v6);

  return sub_1000079B4(v6, &qword_100775608);
}

uint64_t sub_1005B2914()
{
  v1[6] = v0;
  sub_100058000(&qword_100776250);
  v1[7] = swift_task_alloc();
  v2 = sub_100058000(&qword_100776258);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_100058000(&qword_100776260);
  v1[11] = swift_task_alloc();
  v3 = sub_100058000(&qword_100776268);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  sub_100058000(&qword_100769378);
  v1[15] = swift_task_alloc();
  v4 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_100058000(&qword_100790030);
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[24] = v7;
  v1[25] = v6;

  return _swift_task_switch(sub_1005B2C14, v7, v6);
}

uint64_t sub_1005B2C14()
{
  if (qword_1007674A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = type metadata accessor for Logger();
  *(v0 + 208) = sub_100003E30(v4, qword_10078F590);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  swift_getObjectType();
  dispatch thunk of TTRShowRecentlyDeletedDataModelSourceType.latestResult.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 152);

    v6 = &unk_100790030;
    v7 = v5;
LABEL_7:
    sub_1000079B4(v7, v6);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "TTRIShowRecentlyDeletedPresenter: failed to fetch reminder count for dataModelSource", v14, 2u);
    }

    v15 = *(v0 + 8);

    return v15(0);
  }

  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 120);
  (*(*(v0 + 168) + 32))(*(v0 + 176), *(v0 + 152), *(v0 + 160));
  REMRemindersListDataView.FlatModel.remindersCount.getter();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 120);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    v6 = &qword_100769378;
    v7 = v11;
    goto LABEL_7;
  }

  (*(*(v0 + 136) + 32))(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v17 = REMRemindersListDataView.CountByCompleted.completed.getter();
  v18 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
  if (__OFADD__(v17, v18))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v25 = *(v0 + 64);
    v26 = *(v0 + 72);
    v34 = *(v0 + 56);
    v35 = *(v0 + 48);
    static TTRLocalizableStrings.RecentlyDeletedList.deleteAllConfirmationAlertTitle.getter();
    static TTRLocalizableStrings.RecentlyDeletedList.deleteAllConfirmationAlertMessage(withCount:)();
    v27 = sub_100058000(&qword_100776270);
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
    sub_100058000(&qword_100776278);
    sub_100058000(&qword_100776280);
    *(swift_allocObject() + 16) = xmmword_10062D3F0;
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v28 = *(v26 + 104);
    v28(v24, enum case for TTRAlertSpecification.ActionStyle.cancel<A>(_:), v25);
    v29 = *(v26 + 56);
    v29(v34, 1, 1, v25);
    *(v0 + 232) = 0;
    TTRAlertSpecification.Action.init(title:style:macOSStyle:value:)();
    static TTRLocalizableStrings.Common.alertDeleteButton.getter();
    v28(v24, enum case for TTRAlertSpecification.ActionStyle.destructive<A>(_:), v25);
    v29(v34, 1, 1, v25);
    *(v0 + 233) = 1;
    TTRAlertSpecification.Action.init(title:style:macOSStyle:value:)();
    TTRAlertSpecification.init(title:message:macOSAlertStyle:actions:)();
    v30 = *(v35 + 96);
    ObjectType = swift_getObjectType();
    v32 = *(v30 + 8);
    v33 = swift_task_alloc();
    *(v0 + 216) = v33;
    *v33 = v0;
    v33[1] = sub_1005B31FC;
    v19 = *(v0 + 112);
    v18 = v0 + 234;
    v20 = &type metadata for Bool;
    v21 = ObjectType;
    v22 = v32;
  }

  return dispatch thunk of TTRAlertSpecificationPresenting.presentAlert<A>(with:)(v18, v19, v20, v21, v22);
}

uint64_t sub_1005B31FC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_1005B3470;
  }

  else
  {
    v5 = sub_1005B3338;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1005B3338()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 96);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v10 = *(v0 + 234);

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1005B3470()
{
  v29 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v24 = v0[20];
    v26 = v0[22];
    v4 = v0[17];
    v22 = v0[16];
    v23 = v0[18];
    v5 = v0[13];
    v21 = v0[14];
    v20 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.rem_errorDescription.getter();
    v10 = sub_100004060(v8, v9, &v28);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "TTRIShowRecentlyDeletedPresenter: failed to present delete all alert {error: %s}", v6, 0xCu);
    sub_100004758(v7);

    (*(v5 + 8))(v21, v20);
    (*(v4 + 8))(v23, v22);
    (*(v3 + 8))(v26, v24);
  }

  else
  {
    v11 = v0[21];
    v25 = v0[20];
    v27 = v0[22];
    v12 = v0[17];
    v13 = v0[18];
    v14 = v0[16];
    v15 = v0[13];
    v16 = v0[14];
    v17 = v0[12];

    (*(v15 + 8))(v16, v17);
    (*(v12 + 8))(v13, v14);
    (*(v11 + 8))(v27, v25);
  }

  v18 = v0[1];

  return v18(0);
}

uint64_t sub_1005B372C()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowRecentlyDeletedPresenter()
{
  result = qword_10078F5D8;
  if (!qword_10078F5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005B3838(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1005B271C(a1, v4, v5);
}

uint64_t sub_1005B38B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1005B1E84(a1, v4, v5, v6);
}

unint64_t sub_1005B3968()
{
  result = qword_100790028;
  if (!qword_100790028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100790028);
  }

  return result;
}

unint64_t sub_1005B39D0()
{
  result = qword_100790038;
  if (!qword_100790038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100790038);
  }

  return result;
}

id sub_1005B3A2C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v42 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100768848);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  *&v4[OBJC_IVAR____TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView_recentlyDeletedList;
  v19 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 configurationWithScale:2];
  sub_100003540(0, &qword_10076FCB0);
  v24 = static UIImage.ttr_systemSymbolImage(named:)();
  v41 = v23;
  if (v24)
  {
    v25 = v24;
    sub_100003540(0, &qword_100772610);
    v26 = static UIColor.ttrSecondaryLabelColor.getter();
    v27 = [v25 imageWithTintColor:v26 renderingMode:1];

    v28 = [v27 imageWithSymbolConfiguration:v23];
  }

  else
  {
    v28 = 0;
  }

  v29 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge(0);
  v30 = *(v29 + 20);
  v31 = objc_opt_self();
  v40 = v28;
  v32 = v22;
  *&v17[v30] = [v31 tertiarySystemFillColor];
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.CustomBadge.Color(0);
  swift_storeEnumTagMultiPayload();
  v33 = *(v29 + 24);
  v34 = enum case for TTRListBadgeView.Shape.round(_:);
  v35 = type metadata accessor for TTRListBadgeView.Shape();
  (*(*(v35 - 8) + 104))(&v17[v33], v34, v35);
  (*(v10 + 104))(v43, enum case for TTRListBadgeView.ImageContentMode.center(_:), v42);
  v36 = [v31 whiteColor];
  TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
  *v17 = v28;
  type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration.Content(0);
  swift_storeEnumTagMultiPayload();
  v37 = type metadata accessor for TTRIAccountsListsBaseCell_collectionView.BadgeConfiguration(0);
  (*(*(v37 - 8) + 56))(v17, 0, 1, v37);
  v38 = OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_badgeConfiguration;
  swift_beginAccess();
  sub_10000794C(v32 + v38, v14, &qword_100768848);
  swift_beginAccess();
  sub_100019180(v17, v32 + v38, &qword_100768848);
  swift_endAccess();
  sub_100036640(v14);

  sub_1000079B4(v14, &qword_100768848);
  sub_1000079B4(v17, &qword_100768848);
  return v32;
}

uint64_t sub_1005B4008()
{
  sub_100036110();
  static TTRLocalizableStrings.RecentlyDeletedList.genericRecentlyDeletedTitle.getter();
  return UIListContentConfiguration.text.setter();
}

uint64_t sub_1005B4038()
{
  v1 = sub_100058000(&unk_10078D440);
  __chkstk_darwin(v1 - 8);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = &v26 - v4;
  v5 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v27 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030908();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v15[*(v13 + 28)], v7, &unk_10077A660);
  v18 = sub_100058000(&qword_10077A670);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_1000299A4(v15);
    return sub_1000079B4(v7, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v15);
    (*(v19 + 8))(v7, v18);
    if ((*(v9 + 88))(v11, v8) == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      (*(v9 + 96))(v11, v8);
      v22 = v26;
      v21 = v27;
      (*(v27 + 32))(v26, v11, v16);
      v23 = v28;
      (*(v21 + 16))(v28, v22, v16);
      (*(v21 + 56))(v23, 0, 1, v16);
      v24 = OBJC_IVAR____TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView_recentlyDeletedList;
      swift_beginAccess();
      v25 = v29;
      sub_10000794C(v0 + v24, v29, &unk_10078D440);
      swift_beginAccess();
      sub_100019180(v23, v0 + v24, &unk_10078D440);
      swift_endAccess();
      sub_1005B490C(v25);
      sub_1000079B4(v25, &unk_10078D440);
      sub_1000079B4(v23, &unk_10078D440);
      return (*(v21 + 8))(v22, v16);
    }

    else
    {
      return (*(v9 + 8))(v11, v8);
    }
  }
}

unint64_t sub_1005B4598()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v11, "accessibilityCustomActions");
  if (v1)
  {
    v2 = v1;
    sub_100003540(0, &qword_10076BCE0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v12 = v3;
  static TTRLocalizableStrings.RecentlyDeletedList.deleteAllActionText.getter();
  sub_100003540(0, &qword_10076FCB0);
  v4 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(UIAccessibilityCustomAction);

  v7 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1005B4E70;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10044E9F0;
  aBlock[3] = &unk_10072FBD8;
  v8 = _Block_copy(aBlock);
  [v6 initWithName:v7 image:v4 actionHandler:v8];

  _Block_release(v8);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v12;
}

uint64_t sub_1005B4878()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v1 = Strong;
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_1005664F0();

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_1005B490C(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v34 - v6;
  v7 = sub_100058000(&unk_10078D440);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_100058000(&qword_100790088);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC9Reminders51TTRIAccountsListsRecentlyDeletedCell_collectionView_recentlyDeletedList;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v36 = v2;
  sub_10000794C(&v2[v17], v16, &unk_10078D440);
  v19 = v38;
  sub_10000794C(v37, &v16[v18], &unk_10078D440);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v3) == 1)
  {
    if (v20(&v16[v18], 1, v3) == 1)
    {
      v21 = v16;
      return sub_1000079B4(v21, &unk_10078D440);
    }
  }

  else
  {
    sub_10000794C(v16, v12, &unk_10078D440);
    if (v20(&v16[v18], 1, v3) != 1)
    {
      v32 = v34;
      (*(v19 + 32))(v34, &v16[v18], v3);
      sub_1005B4E18();
      LODWORD(v37) = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v19 + 8);
      v33(v32, v3);
      v33(v12, v3);
      result = sub_1000079B4(v16, &unk_10078D440);
      if (v37)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v19 + 8))(v12, v3);
  }

  sub_1000079B4(v16, &qword_100790088);
LABEL_7:
  v22 = v36;
  sub_10000794C(&v36[v17], v9, &unk_10078D440);
  if (v20(v9, 1, v3) == 1)
  {
    v21 = v9;
    return sub_1000079B4(v21, &unk_10078D440);
  }

  v24 = v38;
  v25 = v35;
  (*(v38 + 32))(v35, v9, v3);
  v26 = TTRAccountsListsViewModel.RecentlyDeletedList.countText.getter();
  v28 = &v22[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration];
  v29 = *&v22[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration];
  v30 = *&v22[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration + 8];
  v31 = v22[OBJC_IVAR____TtC9Reminders40TTRIAccountsListsBaseCell_collectionView_tertiaryLabelConfiguration + 16];
  *v28 = v26;
  *(v28 + 1) = v27;
  v28[16] = 0;
  if (!v30 || (v26 != v29 || v30 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v31 & 1) != 0)
  {
    [v22 setNeedsUpdateConfiguration];
  }

  return (*(v24 + 8))(v25, v3);
}

unint64_t sub_1005B4E18()
{
  result = qword_100790090;
  if (!qword_100790090)
  {
    type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100790090);
  }

  return result;
}

uint64_t sub_1005B4E80()
{
  v1[2] = v0;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1005B4F40, v0, 0);
}

uint64_t sub_1005B4F40()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[17];
  v6 = v3[18];
  sub_10000C36C(v3 + 14, v5);
  v7 = v3[19];
  v8 = [v7 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  v25 = *(v2 + 8);
  v25(v1, v4);
  v12 = (*(v6 + 8))(v9, v11, v5, v6);
  v0[6] = v12;

  if (v12)
  {
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v13[1] = sub_1005B51E4;

    return sub_1005B5448(v12);
  }

  else
  {
    v15 = v0[5];
    v16 = v0[3];
    v17 = objc_opt_self();
    _StringGuts.grow(_:)(39);

    v18 = [v7 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = UUID.uuidString.getter();
    v21 = v20;
    v25(v15, v16);
    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23 = String._bridgeToObjectiveC()();

    [v17 internalErrorWithDebugDescription:v23];

    swift_willThrow();

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1005B51E4(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[2];
  if (v1)
  {
    v6 = sub_1005B53DC;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_1005B5320;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005B5320()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = sub_1005B5A98(v0[9]);
  v5 = v4;

  v6 = v5 & 0x101;
  *(v2 + 160) = v3;
  *(v2 + 168) = v6;

  v7 = v0[1];

  return v7(v3, v6);
}

uint64_t sub_1005B53DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B5448(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1005B5468, v1, 0);
}

uint64_t sub_1005B5468()
{
  v1 = [objc_allocWithZone(ICDeviceListRequest) initWithAccount:v0[18]];
  v0[20] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[3] = sub_1005B55DC;
    v2 = swift_continuation_init();
    v0[17] = sub_100058000(&qword_100790190);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1005B5940;
    v0[13] = &unk_10072FCB8;
    v0[14] = v2;
    [v1 fetchWithCompletionBlock:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1005B55DC()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_1005B56D0, v1, 0);
}

char *sub_1005B56D0()
{
  v1 = [*(v0 + 160) devices];
  if (!v1)
  {

LABEL_21:
    v20 = *(v0 + 8);

    return v20(_swiftEmptyArrayStorage);
  }

  v2 = v1;
  sub_1005B5A4C();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_20:
    v19 = *(v0 + 160);

    goto LABEL_21;
  }

  while (1)
  {
    result = sub_1004A2530(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      break;
    }

    v6 = 0;
    v23 = v3 & 0xC000000000000001;
    v21 = v0;
    v22 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v0 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v23)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v22 + 16))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v3;
      result = [v7 name];
      if (!result)
      {
        goto LABEL_25;
      }

      v10 = result;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [v8 upgradedToSydneyRomeKincaid];
      v14 = [v8 upgradableToSydneyRomeKincaid];

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1004A2530((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[3 * v16];
      v17[4] = v24;
      v17[5] = v12;
      *(v17 + 48) = v13;
      *(v17 + 49) = v14;
      ++v6;
      v3 = v9;
      if (v0 == v4)
      {
        v0 = v21;
        v18 = *(v21 + 160);

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1005B5940(uint64_t a1)
{
  v1 = *sub_10000C36C((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_1005B5974()
{
  sub_100004758(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_1005B59C8()
{
  v1 = *v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:v2];

  return v3;
}

unint64_t sub_1005B5A4C()
{
  result = qword_10076DB58;
  if (!qword_10076DB58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076DB58);
  }

  return result;
}

uint64_t sub_1005B5A98(uint64_t result)
{
  v1 = *(result + 16);
  v2 = v1 + 1;
  v3 = 48;
  do
  {
    if (!--v2)
    {
      break;
    }

    v4 = *(result + v3);
    v3 += 24;
  }

  while ((v4 & 1) != 0);
  v5 = v1 + 1;
  v6 = 49;
  do
  {
    if (!--v5)
    {
      break;
    }

    v7 = *(result + v6);
    v6 += 24;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t sub_1005B5AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for TTRListDetailDeviceInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t assignWithTake for TTRListDetailDeviceInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t TTRListDetailCreationEditor.__allocating_init(changeItem:smartListVersionWarningInteractor:undoManager:userDefaults:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = sub_10000AE84(a4, v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1005B869C(a1, a2, a3, v14, v8, v9, v10);
  sub_100004758(a4);
  return v16;
}

uint64_t sub_1005B5D04()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100790198);
  v1 = sub_100003E30(v0, qword_100790198);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *TTRListDetailCreationEditor.undoManager.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t TTRListDetailCreationEditor.filterEditingContext.getter@<X0>(void *a1@<X8>)
{
  a1[3] = *v1;
  a1[4] = &protocol witness table for TTRListDetailCreationEditor;
  *a1 = v1;
}

void TTRListDetailCreationEditor.listTypeEditingContext.getter(uint64_t **a1@<X8>)
{
  v3 = *v1;
  v4 = [*(v1[2] + 24) capabilities];
  v5 = [v4 supportsGroceriesList];

  if (v5)
  {

    v6 = &protocol witness table for TTRListDetailCreationEditor;
  }

  else
  {
    v3 = 0;
    v6 = 0;
    v1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v3;
  a1[4] = v6;
  *a1 = v1;
}

double TTRListDetailCreationEditor.sectionsEditingContext.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1007674A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100790198);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRListDetailCreationEditor#sectionsEditingContext : Not implemented because not expected to be called", v5, 2u);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t TTRListDetailCreationEditor.init(changeItem:smartListVersionWarningInteractor:undoManager:userDefaults:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = sub_10000AE84(a4, v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1005B869C(a1, a2, a3, v14, v4, v9, v10);
  sub_100004758(a4);
  return v16;
}

Swift::Void __swiftcall TTRListDetailCreationEditor.edit(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = *(v1 + 16);
  swift_beginAccess();
  v6 = v4[5];
  v5 = v4[6];
  v7 = v6 == countAndFlagsBits && v5 == object;
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v8 = qword_1007674A8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_100790198);

    v10 = v1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_beginAccess();
      v15 = v4[4];
      *(v13 + 4) = v15;
      *v14 = v15;
      v16 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Updating list name {listID: %@}", v13, 0xCu);
      sub_100094164(v14);
    }

    v4[5] = countAndFlagsBits;
    v4[6] = object;

    if (*(v10 + 24))
    {
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v6;
      v18[4] = v5;

      NSUndoManager.registerUndo(handler:)();
    }

    else
    {
    }
  }
}

uint64_t sub_1005B6340(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6._countAndFlagsBits = a2;
    v6._object = a3;
    TTRListDetailCreationEditor.edit(name:)(v6);
  }

  return result;
}

void TTRListDetailCreationEditor.edit(color:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  swift_beginAccess();
  v5 = *(v4 + 56);
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    v9 = v5;
    goto LABEL_7;
  }

  if (!v5 || (sub_100003540(0, &qword_100783618), v6 = v5, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) == 0))
  {
LABEL_7:
    if (qword_1007674A8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100790198);
    v11 = a1;
    v6 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v30 = v11;
      v31 = v2;
      v14 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v14 = 136315394;
      if (v5)
      {
        v15 = [v6 hexString];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v29 = v13;
      v19 = sub_100004060(v16, v18, &v32);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      if (a1)
      {
        v11 = v30;
        v20 = [v30 hexString];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v11 = v30;
        v21 = 7104878;
      }

      v24 = sub_100004060(v21, v23, &v32);

      *(v14 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v12, v29, "Changing list color {from: %s, to: %s}", v14, 0x16u);
      swift_arrayDestroy();

      v2 = v31;
    }

    else
    {
    }

    v25 = *(v4 + 56);
    *(v4 + 56) = a1;
    v26 = v11;

    if (*(v2 + 24))
    {
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v5;
      v6 = v6;

      NSUndoManager.registerUndo(handler:)();
    }
  }
}

Swift::Void __swiftcall TTRListDetailCreationEditor.edit(badgeEmblem:)(__C::REMListBadgeEmblem badgeEmblem)
{
  v1 = [objc_allocWithZone(REMListBadge) initWithEmblem:badgeEmblem._rawValue];
  TTRListDetailCreationEditor.edit(badge:)(v1);
}

void TTRListDetailCreationEditor.edit(badge:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  swift_beginAccess();
  v5 = *(v4 + 64);
  if (v5)
  {
    if (a1)
    {
      sub_100003540(0, &qword_100783610);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
LABEL_14:

        return;
      }
    }

    else
    {
      v9 = v5;
    }

LABEL_8:
    if (qword_1007674A8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100790198);
    v11 = a1;
    v6 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    v26 = v5;
    if (os_log_type_enabled(v12, v13))
    {
      v25 = v2;
      v14 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v14 = 136315394;
      sub_100058000(&qword_1007901B0);
      v15 = Optional.descriptionOrNil.getter();
      v17 = sub_100004060(v15, v16, &v27);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = Optional.descriptionOrNil.getter();
      v20 = sub_100004060(v18, v19, &v27);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Changing list badge {from: %s, to: %s}", v14, 0x16u);
      swift_arrayDestroy();

      v2 = v25;
    }

    v21 = *(v4 + 64);
    *(v4 + 64) = a1;
    v22 = v11;

    if (*(v2 + 24))
    {
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v26;
      v6 = v6;

      NSUndoManager.registerUndo(handler:)();
    }

    goto LABEL_14;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

Swift::Void __swiftcall TTRListDetailCreationEditor.edit(badgeEmoji:)(Swift::String badgeEmoji)
{
  v1 = objc_allocWithZone(REMListBadge);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithEmoji:v2];

  TTRListDetailCreationEditor.edit(badge:)(v3);
}

void TTRListDetailCreationEditor.edit(filter:)(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  swift_beginAccess();
  v5 = *(v4 + 72);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for REMCustomSmartListFilterDescriptor();
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
LABEL_14:

        return;
      }
    }

    else
    {
      v9 = v5;
    }

LABEL_8:
    if (qword_1007674A8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_100790198);
    v11 = a1;
    v6 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    v26 = v5;
    if (os_log_type_enabled(v12, v13))
    {
      v25 = v2;
      v14 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v14 = 136315394;
      sub_100058000(&qword_10076CAE0);
      v15 = Optional.descriptionOrNil.getter();
      v17 = sub_100004060(v15, v16, &v27);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      v18 = Optional.descriptionOrNil.getter();
      v20 = sub_100004060(v18, v19, &v27);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v12, v13, "Changing smart list filter {from: %s, to: %s}", v14, 0x16u);
      swift_arrayDestroy();

      v2 = v25;
    }

    v21 = *(v4 + 72);
    *(v4 + 72) = a1;
    v22 = v11;

    if (*(v2 + 24))
    {
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v26;
      v6 = v6;

      NSUndoManager.registerUndo(handler:)();
    }

    goto LABEL_14;
  }

  if (a1)
  {
    goto LABEL_8;
  }
}

uint64_t sub_1005B6DE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a2);
  }

  return result;
}

uint64_t TTRListDetailCreationEditor.edit(listType:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListListType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v19 = v1;
  v9 = *(v1 + 16);
  v10 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v8, v9 + v10, v3);
  sub_1005B8898(&qword_10077A0B0, &type metadata accessor for TTRRemindersListListType);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    return (*(v4 + 8))(v8, v3);
  }

  swift_beginAccess();
  (*(v4 + 24))(v9 + v10, a1, v3);
  swift_endAccess();
  if (!*(v19 + 24))
  {
    return (*(v4 + 8))(v8, v3);
  }

  v17 = swift_allocObject();
  swift_weakInit();
  v12 = v18;
  v11(v18, v8, v3);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v4 + 32))(v14 + v13, v12, v3);

  NSUndoManager.registerUndo(handler:)();

  (*(v4 + 8))(v8, v3);
}

uint64_t sub_1005B710C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    TTRListDetailCreationEditor.edit(listType:)(a2);
  }

  return result;
}

id TTRListDetailCreationEditor.listDetailSave(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v109 = a1;
  v111 = *v2;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListListType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for REMAnalyticsEvent();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v2[2];
  v14 = *(v13 + 16);
  swift_beginAccess();
  v15 = *(v13 + 72);
  v108 = v14;
  if (v15)
  {
    swift_beginAccess();
    v16 = *(v13 + 24);
    v17 = *(v13 + 32);
    v18 = v14;
    v19 = v17;
    v20 = v15;
    v21 = [v18 updateAccount:v16];
    swift_beginAccess();

    v22 = String._bridgeToObjectiveC()();

    v104 = v21;
    v23 = [v18 addCustomSmartListWithName:v22 toAccountChangeItem:v21 smartListObjectID:0];

    v24 = [v23 customContext];
    if (v24)
    {
      v25 = v24;
      swift_beginAccess();
      [v25 setColor:*(v13 + 56)];
      swift_beginAccess();
      [v25 setBadge:*(v13 + 64)];
      v26 = v20;
      REMSmartListCustomContextChangeItem.filter.setter();
    }

    v103 = [v23 objectID];
    sub_10000B0D8((v3 + 4), aBlock);
    v102 = v20;
    v27 = v113;
    v28 = v114;
    sub_10000C36C(aBlock, v113);
    v29 = [v23 objectID];
    (*(v28 + 3))(v19, v29, v27, v28);

    sub_100004758(aBlock);
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v30 = sub_100058000(&qword_1007901B8);
    v31 = v19;
    v32 = v105;
    v33 = &v105[*(v30 + 48)];
    v34 = &v105[*(v30 + 80)];
    v35 = enum case for REMRemindersCreateListUserOperation.customSmartList(_:);
    ListUserOperation = type metadata accessor for REMRemindersCreateListUserOperation();
    (*(*(ListUserOperation - 8) + 104))(v32, v35, ListUserOperation);
    swift_beginAccess();
    sub_10000C36C(v3 + 9, v3[12]);
    *v33 = dispatch thunk of TTRAnalyticsUserDefaults.activitySessionId.getter();
    v33[1] = v37;
    sub_10000C36C(v3 + 9, v3[12]);
    dispatch thunk of TTRAnalyticsUserDefaults.activitySessionBeginTime.getter();
    swift_endAccess();
    *v34 = _typeName(_:qualified:)();
    v34[1] = v38;
    v39 = v106;
    v40 = v107;
    (*(v106 + 104))(v32, enum case for REMAnalyticsEvent.createListUserOperation(_:), v107);
    REMAnalyticsManager.post(event:)();

    v41 = v103;

    (*(v39 + 8))(v32, v40);
    goto LABEL_21;
  }

  v102 = v7;
  v100 = v5;
  v101 = v4;
  v42 = *(v13 + 24);
  v43 = v14;
  v44 = [v43 updateAccount:v42];
  swift_beginAccess();

  v45 = String._bridgeToObjectiveC()();

  v104 = v44;
  v46 = [v43 addListWithName:v45 toAccountChangeItem:v44];

  v47 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  (*(v9 + 16))(v11, v13 + v47, v8);
  LOBYTE(v47) = TTRRemindersListListType.shouldCategorizeGroceryItems.getter();
  (*(v9 + 8))(v11, v8);
  v103 = v46;
  if (v47)
  {
    v48 = [v46 groceryContextChangeItem];
    if (v48)
    {
      v49 = v48;
      [v48 setShouldCategorizeGroceryItems:1];
      v50 = [objc_opt_self() daemonUserDefaults];
      v51 = [v50 preferredLocalizations];

      v52 = v102;
      if (v51)
      {
        v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v53 + 16))
        {

LABEL_13:
          v64 = String._bridgeToObjectiveC()();

          [v49 setGroceryLocaleID:v64];

          if (qword_1007674A8 != -1)
          {
            swift_once();
          }

          v102 = v49;
          v65 = type metadata accessor for Logger();
          sub_100003E30(v65, qword_100790198);
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&_mh_execute_header, v66, v67, "TTRUserDefault hasCreatedGroceryList set to true after creating a new grocery list", v68, 2u);
          }

          swift_beginAccess();
          v69 = v3[12];
          v70 = v3[13];
          sub_10000AE84((v3 + 9), v69);
          (*(v70 + 24))(1, v69, v70);
          swift_endAccess();
          type metadata accessor for REMAnalyticsManager();
          static REMAnalyticsManager.shared.getter();
          v71 = sub_100058000(&qword_1007757E8);
          v72 = v105;
          v73 = &v105[*(v71 + 48)];
          v74 = &v105[*(v71 + 80)];
          v75 = enum case for REMUserOperation.createGroceryList(_:);
          v76 = type metadata accessor for REMUserOperation();
          (*(*(v76 - 8) + 104))(v72, v75, v76);
          swift_beginAccess();
          sub_10000C36C(v3 + 9, v3[12]);
          *v73 = dispatch thunk of TTRAnalyticsUserDefaults.activitySessionId.getter();
          v73[1] = v77;
          sub_10000C36C(v3 + 9, v3[12]);
          dispatch thunk of TTRAnalyticsUserDefaults.activitySessionBeginTime.getter();
          swift_endAccess();
          *v74 = _typeName(_:qualified:)();
          v74[1] = v78;
          v79 = v106;
          v101 = *(v106 + 104);
          v80 = v107;
          v101(v72, enum case for REMAnalyticsEvent.userOperation(_:), v107);
          REMAnalyticsManager.post(event:)();

          v106 = *(v79 + 8);
          (v106)(v72, v80);
          v100 = static REMAnalyticsManager.shared.getter();
          v81 = sub_100058000(&qword_1007901B8);
          v82 = &v72[v81[12]];
          v99[1] = v81[16];
          v83 = &v72[v81[20]];
          v84 = enum case for REMRemindersCreateListUserOperation.groceryList(_:);
          v85 = type metadata accessor for REMRemindersCreateListUserOperation();
          (*(*(v85 - 8) + 104))(v72, v84, v85);
          swift_beginAccess();
          sub_10000C36C(v3 + 9, v3[12]);
          *v82 = dispatch thunk of TTRAnalyticsUserDefaults.activitySessionId.getter();
          v82[1] = v86;
          sub_10000C36C(v3 + 9, v3[12]);
          dispatch thunk of TTRAnalyticsUserDefaults.activitySessionBeginTime.getter();
          swift_endAccess();
          *v83 = _typeName(_:qualified:)();
          v83[1] = v87;
          v101(v72, enum case for REMAnalyticsEvent.createListUserOperation(_:), v80);
          REMAnalyticsManager.post(event:)();

          (v106)(v72, v80);
          goto LABEL_18;
        }
      }

      static Locale.current.getter();
      Locale.identifier.getter();
      (*(v100 + 8))(v52, v101);
      goto LABEL_13;
    }
  }

  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v54 = sub_100058000(&qword_1007901B8);
  v55 = v105;
  v56 = &v105[*(v54 + 48)];
  v57 = &v105[*(v54 + 80)];
  v58 = enum case for REMRemindersCreateListUserOperation.list(_:);
  v59 = type metadata accessor for REMRemindersCreateListUserOperation();
  (*(*(v59 - 8) + 104))(v55, v58, v59);
  swift_beginAccess();
  sub_10000C36C(v3 + 9, v3[12]);
  *v56 = dispatch thunk of TTRAnalyticsUserDefaults.activitySessionId.getter();
  v56[1] = v60;
  sub_10000C36C(v3 + 9, v3[12]);
  dispatch thunk of TTRAnalyticsUserDefaults.activitySessionBeginTime.getter();
  swift_endAccess();
  *v57 = _typeName(_:qualified:)();
  v57[1] = v61;
  v62 = v106;
  v63 = v107;
  (*(v106 + 104))(v55, enum case for REMAnalyticsEvent.createListUserOperation(_:), v107);
  REMAnalyticsManager.post(event:)();

  (*(v62 + 8))(v55, v63);
LABEL_18:
  swift_beginAccess();
  v88 = v103;
  [v103 setColor:*(v13 + 56)];
  v89 = [v88 appearanceContext];
  if (v89)
  {
    v90 = v89;
    swift_beginAccess();
    v91 = *(v13 + 64);
    [v90 setBadge:v91];
  }

  v41 = [v88 objectID];

LABEL_21:
  sub_100003540(0, &qword_100777780);
  v92 = static OS_dispatch_queue.main.getter();
  v93 = swift_allocObject();
  v94 = v109;
  v95 = v110;
  *(v93 + 16) = v109;
  *(v93 + 24) = v95;
  v114 = sub_1005B8848;
  v115 = v93;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100009DE4;
  v113 = &unk_10072FE80;
  v96 = _Block_copy(aBlock);
  sub_10008E7EC(v94);

  v97 = v108;
  [v108 saveWithQueue:v92 completion:v96];

  _Block_release(v96);
  return v41;
}

void sub_1005B8054(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    if (qword_1007674A8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100790198);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = Error.localizedDescription.getter();
      v10 = sub_100004060(v8, v9, &v15);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error saving list: %s", v6, 0xCu);
      sub_100004758(v7);
    }

    if (a2)
    {
LABEL_7:
      a2();
    }
  }

  else
  {
    if (qword_1007674A8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100790198);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "List saved!", v14, 2u);
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t TTRListDetailCreationEditor.deinit()
{

  sub_100004758(v0 + 32);
  sub_100004758(v0 + 72);
  return v0;
}

uint64_t TTRListDetailCreationEditor.__deallocating_deinit()
{

  sub_100004758(v0 + 32);
  sub_100004758(v0 + 72);

  return swift_deallocClassInstance();
}

void *sub_1005B8328()
{
  v1 = *(*v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_1005B8364@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  a2[4] = &protocol witness table for TTRListDetailCreationEditor;
  *a2 = v3;
}

void sub_1005B8380(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = [*(*(v5 + 16) + 24) capabilities];
  v7 = [v6 supportsGroceriesList];

  if (v7)
  {

    v8 = &protocol witness table for TTRListDetailCreationEditor;
  }

  else
  {
    a1 = 0;
    v8 = 0;
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = a1;
  a2[4] = v8;
  *a2 = v5;
}

void sub_1005B847C(uint64_t a1)
{
  v1 = [objc_allocWithZone(REMListBadge) initWithEmblem:a1];
  TTRListDetailCreationEditor.edit(badge:)(v1);
}

void sub_1005B84E0()
{
  v0 = objc_allocWithZone(REMListBadge);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithEmoji:v1];

  TTRListDetailCreationEditor.edit(badge:)(v2);
}

void (*sub_1005B8628(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = TTRUserDefaults.hasCreatedGroceryList.modify();
  return sub_1001861BC;
}

uint64_t sub_1005B869C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a6;
  v17 = a7;
  v13 = sub_1000317B8(&v15);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  *(a5 + 16) = a1;
  sub_100005FD0(a2, a5 + 32);
  *(a5 + 24) = a3;
  sub_100005FD0(&v15, a5 + 72);
  return a5;
}

uint64_t sub_1005B87E4()
{
  v1 = *(type metadata accessor for TTRRemindersListListType() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1005B710C(v2, v3);
}

uint64_t sub_1005B8898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B8904()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_1007902E0);
  v1 = sub_100003E30(v0, qword_1007902E0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005B89CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC9Reminders29TTRIReminderPrintPageRenderer_pageRange];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v5 = [objc_opt_self() secondaryLabelColor];
  v6 = [v5 resolvedColorWithTraitCollection:v4];

  sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedSystemFont(ofSize:weight:)();
  type metadata accessor for TTRRemindersPrintingPageRenderingUtilities();
  swift_allocObject();
  v7 = v6;
  *&v1[OBJC_IVAR____TtC9Reminders29TTRIReminderPrintPageRenderer_renderingUtils] = TTRRemindersPrintingPageRenderingUtilities.init(footerText:footerFont:footerTextColor:isFlipped:isRightToLeft:)();
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

uint64_t sub_1005B8B88()
{
  ObjectType = swift_getObjectType();
  if (qword_1007674B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_1007902E0);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136315394;
    [v3 paperRect];
    type metadata accessor for CGRect(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100004060(v7, v8, &v22);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    [v3 printableRect];
    v10 = String.init<A>(describing:)();
    v12 = sub_100004060(v10, v11, &v22);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "TTRIReminderPrintPageRenderer: computing number of pages {paperRect: %s, printableRect: %s}", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = [v3 printFormatters];
  if (!v13)
  {
    goto LABEL_14;
  }

  sub_100003540(0, &qword_100790330);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:

    v13 = 0;
    goto LABEL_14;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v16 = *(v14 + 32);
  }

  v13 = v16;

LABEL_14:
  type metadata accessor for TTRRemindersPrintingPageRenderingUtilities();
  static TTRRemindersPrintingPageRenderingUtilities.preferredMinMargin.getter();
  if (v13)
  {
    [v13 setPerPageContentInsets:{v17, v17, v17, v17}];
  }

  [v3 paperRect];
  CGRectGetHeight(v24);
  [v3 printableRect];
  CGRectGetMaxY(v25);
  static TTRRemindersPrintingPageRenderingUtilities.extraMargin(neededFor:toReach:)();
  v19 = v18;
  TTRRemindersPrintingPageRenderingUtilities.footerHeight.getter();
  [v3 setFooterHeight:v19 + v20];
  v23.receiver = v3;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, "numberOfPages");

  return v21;
}

uint64_t sub_1005B8FD4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  type metadata accessor for TTRRemindersPrintingPageRenderingUtilities();
  static TTRRemindersPrintingPageRenderingUtilities.preferredMinMargin.getter();
  [v5 printableRect];
  CGRectGetMinX(v15);
  static TTRRemindersPrintingPageRenderingUtilities.extraMargin(neededFor:toReach:)();
  v12 = v11;
  [v5 paperRect];
  CGRectGetWidth(v16);
  [v5 printableRect];
  CGRectGetMaxX(v17);
  result = static TTRRemindersPrintingPageRenderingUtilities.extraMargin(neededFor:toReach:)();
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v14 = *&v5[OBJC_IVAR____TtC9Reminders29TTRIReminderPrintPageRenderer_pageRange];
    if (v5[OBJC_IVAR____TtC9Reminders29TTRIReminderPrintPageRenderer_pageRange + 16])
    {
      v14 = 0;
    }

    if (!__OFSUB__(a1 + 1, v14))
    {
      sub_100068328(a2, a3, a4, a5, 0.0, v12);
      return TTRRemindersPrintingPageRenderingUtilities.drawFooter(pageNumber:pageCount:in:)();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005B9210()
{
  sub_1001E6A30();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowCompletedPresenter()
{
  result = qword_100790360;
  if (!qword_100790360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005B96B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;

  v11 = a6;

  TTRModuleState.readyPromise.getter();

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = sub_1005C7B3C;
  v12[4] = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1005C7B94;
  *(v13 + 24) = v12;
  swift_unknownObjectRetain();

  v14 = zalgo.getter();
  sub_100058000(&qword_10076B288);
  dispatch thunk of Promise.then<A>(on:closure:)();
}

void sub_1005B9814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a6;

  v11 = a6;

  TTRModuleState.readyPromise.getter();

  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = sub_1005C7CA0;
  v12[4] = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1005C945C;
  *(v13 + 24) = v12;
  swift_unknownObjectRetain();

  v14 = zalgo.getter();
  sub_100058000(&qword_10076B288);
  dispatch thunk of Promise.then<A>(on:closure:)();
}

void sub_1005B9978(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100790D98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "SCROLLVIEW TEST START", v17, 2u);
  }

  a5(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = [objc_allocWithZone(UIScrollTestParameters) init];
  [v20 setTestName:v19];

  [v20 setDelta:18.0];
  [v20 setIterations:1];
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v24[4] = a7;
  v24[5] = v21;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_1005BA0A0;
  v24[3] = a8;
  v22 = _Block_copy(v24);
  v23 = v20;

  [a1 _performScrollTestWithParameters:v23 completionBlock:v22];

  _Block_release(v22);
}

void sub_1005B9BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100790D98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "SCROLLVIEW TEST START", v17, 2u);
  }

  a5(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = [objc_allocWithZone(UIScrollTestParameters) init];
  [v20 setTestName:v19];

  [v20 setDelta:18.0];
  [v20 setIterations:1];
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  v22 = objc_allocWithZone(RPTScrollViewTestParameters);

  v23 = String._bridgeToObjectiveC()();

  v28[4] = a7;
  v28[5] = v21;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 1107296256;
  v28[2] = sub_10001047C;
  v28[3] = a8;
  v24 = _Block_copy(v28);

  v25 = [v22 initWithTestName:v23 scrollView:a1 completionHandler:v24];
  _Block_release(v24);

  v26 = objc_opt_self();
  v27 = v25;
  [v26 runTestWithParameters:v27];
}

uint64_t sub_1005B9EB8(uint64_t (*a1)(void))
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100790D98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SCROLLVIEW TEST END", v5, 2u);
  }

  return a1();
}

uint64_t sub_1005B9FAC(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100790D98);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "SCROLLVIEW TEST END", v6, 2u);
  }

  return a2();
}

uint64_t sub_1005BA0A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_1005BA130(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  a5(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:v8];

  v9 = NSStringFromClass(ObjCClassFromMetadata);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_1005BA214(v10, v12);

  return a3(v13);
}

void sub_1005BA214(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = _convertErrorToNSError(_:)();
  v7 = [v6 userInfo];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v8 + 16))
  {

    goto LABEL_6;
  }

  v11 = sub_100009044(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  sub_1000046FC(*(v8 + 56) + 32 * v11, &v31);

  if (swift_dynamicCast())
  {
    v14 = [v6 domain];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v31 = v15;
    v32 = v17;
    v18._countAndFlagsBits = 91;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    [v6 code];
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 539828317;
    v20._object = 0xE400000000000000;
    String.append(_:)(v20);
    String.append(_:)(v30);

    v22 = v31;
    v21 = v32;
    goto LABEL_8;
  }

LABEL_7:
  swift_getErrorValue();
  v22 = Error.localizedDescription.getter();
  v21 = v23;
LABEL_8:
  if (qword_1007674B8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100790D98);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v25, v26))
  {

    if (!a2)
    {
      v28 = 0;
      goto LABEL_15;
    }

LABEL_14:
    v28 = String._bridgeToObjectiveC()();
LABEL_15:
    v29 = String._bridgeToObjectiveC()();

    [v3 failedTest:v28 withFailure:v29];

    return;
  }

  v27 = swift_slowAlloc();
  v31 = swift_slowAlloc();
  *v27 = 136446466;

  if (a2)
  {
    *(v27 + 4) = sub_100004060(a1, a2, &v31);
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_100004060(v22, v21, &v31);
    _os_log_impl(&_mh_execute_header, v25, v26, "Test failed {name: %{public}s, error: %{public}s}", v27, 0x16u);
    swift_arrayDestroy();

    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1005BA5D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v20 = a7;
  a5(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = String._bridgeToObjectiveC()();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = a6;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);

  [a2 finishedTest:v15 waitForCommit:0 extraResults:0 withTeardownBlock:v17];
  _Block_release(v17);

  return sub_10000B0D8(a1, a8);
}

uint64_t sub_1005BA744(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_1005BA214(v5, v7);
}

void sub_1005BA7CC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PPTTask_CreateReminder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [a2 startedTest:v9];

  v10 = a1[3];
  v11 = a1[4];
  sub_10000C36C(a1, v10);
  (*(v11 + 48))(v10, v11);
  v12 = UIKeyboardPrivateDidShowNotification;
  v13 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  sub_100461BC0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v18[4] = sub_1001A84C0;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10001047C;
  v18[3] = &unk_100731C50;
  v16 = _Block_copy(v18);
  v17 = v12;

  [a2 finishedTest:v13 extraResults:isa waitForNotification:v17 withTeardownBlock:v16];
  _Block_release(v16);
}

void sub_1005BA9F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  type metadata accessor for PPTTask_ModifyReminder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v28 = a2;
  [a2 startedTest:v10];

  v11 = a1[3];
  v12 = a1[4];
  sub_10000C36C(a1, v11);
  UUID.init(uuidString:)();
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v8, v13);
    v17 = [v15 objectIDWithUUID:isa];

    (*(v12 + 96))(v17, v11, v12);

    v18 = UIKeyboardPrivateDidShowNotification;
    v19 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    sub_100461BC0(_swiftEmptyArrayStorage);
    v20 = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = swift_allocObject();
    v22 = v27;
    *(v21 + 16) = v26;
    *(v21 + 24) = v22;
    aBlock[4] = sub_1001A84C0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100731DE0;
    v23 = _Block_copy(aBlock);
    v24 = v18;

    [v28 finishedTest:v19 extraResults:v20 waitForNotification:v24 withTeardownBlock:v23];
    _Block_release(v23);
  }
}

void sub_1005BAD58(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  type metadata accessor for PPTTask_MarkAsCompleted();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = a2;

  v14 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  [v13 startedTest:v14];

  v15 = a1[3];
  v16 = a1[4];
  sub_10000C36C(a1, v15);
  UUID.init(uuidString:)();
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    __break(1u);
  }

  else
  {
    v19 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v18 + 8))(v10, v17);
    v21 = [v19 objectIDWithUUID:isa];

    (*(v16 + 144))(v21, v15, v16);
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1005C9240;
    *(v22 + 24) = v11;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1005C924C;
    *(v23 + 24) = v22;

    v24 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();
  }
}

void sub_1005BB050(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for PPTTask_MarkAsCompleted();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    swift_errorRetain();
    v9 = NSStringFromClass(ObjCClassFromMetadata);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    sub_1005BA214(v10, v12);

    a4(v13);
  }

  else
  {
    if (a2)
    {
      type metadata accessor for PPTTask_MarkAsCompleted();
      v15 = swift_getObjCClassFromMetadata();
      v16 = a2;
      v17 = NSStringFromClass(v15);
      if (!v17)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = String._bridgeToObjectiveC()();
      }

      sub_100461BC0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;
      v30 = sub_1001A84C0;
      v31 = v19;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_10001047C;
      v29 = &unk_100731AC0;
      v20 = _Block_copy(&v26);
      v21 = v16;

      [a3 finishedTest:v17 extraResults:isa waitForNotification:v21 withTeardownBlock:v20];
      _Block_release(v20);
    }

    else
    {
      type metadata accessor for PPTTask_MarkAsCompleted();
      v22 = swift_getObjCClassFromMetadata();
      v23 = NSStringFromClass(v22);
      if (!v23)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = String._bridgeToObjectiveC()();
      }

      sub_100461BC0(_swiftEmptyArrayStorage);
      v21 = Dictionary._bridgeToObjectiveC()().super.isa;

      v24 = swift_allocObject();
      *(v24 + 16) = a4;
      *(v24 + 24) = a5;
      v30 = sub_100026418;
      v31 = v24;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_10001047C;
      v29 = &unk_100731A70;
      v25 = _Block_copy(&v26);

      [a3 finishedTest:v23 waitForCommit:1 extraResults:v21 withTeardownBlock:v25];
      _Block_release(v25);
    }
  }
}