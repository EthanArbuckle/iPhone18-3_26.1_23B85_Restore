uint64_t sub_100307C80()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = TTRICollectionViewCollapsedStateChangeContext.shouldUpdateView.getter();

    if (v1)
    {
      TTRICollectionViewCollapsedStateChangeContext.prefersAnimated.getter();
      dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.scheduleUpdateForCollapsedStatesChange(animated:)();
    }

    else
    {
      dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.invalidateCachedCollapsedStates()();
    }
  }

  return result;
}

uint64_t sub_100307D28()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.scheduleUpdateForCellPresentationStateChange()();
  }

  return result;
}

uint64_t sub_100307D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100307E28(a6, a7, a2, a3, a4);
  }

  return result;
}

uint64_t sub_100307E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v90 = a3;
  v10 = type metadata accessor for TTRIPopoverAnchor();
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v86 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListPostponeType();
  v89 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRReminderSwipeAction();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for TTRReminderSwipeAction.delete(_:))
  {
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    v22 = v5[9];
    v23 = v5[11];
    v24 = sub_10000C36C(v5 + 6, v22);
    v92 = v22;
    v93 = v23;
    v25 = sub_1000317B8(v91);
    (*(*(v22 - 8) + 16))(v25, v24, v22);
    v26 = *(v23 + 88);

    v26(a2, sub_10030C468, v21, v22, v23);

    return sub_100004758(v91);
  }

  v84 = a2;
  v85 = a5;
  v27 = a4;
  if (v20 == enum case for TTRReminderSwipeAction.showDetails(_:))
  {
    v28 = v5[9];
    v29 = v5[11];
    v30 = sub_10000C36C(v5 + 6, v28);
    v92 = v28;
    v93 = v29;
    v31 = sub_1000317B8(v91);
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    (*(v29 + 128))(v84, v90, v27, v85, v28, v29);
    return sub_100004758(v91);
  }

  v33 = a4;
  if (v20 == enum case for TTRReminderSwipeAction.flag(_:))
  {
    v34 = v5[9];
    v35 = v5[11];
    v36 = sub_10000C36C(v5 + 6, v34);
    v92 = v34;
    v93 = v35;
    v37 = sub_1000317B8(v91);
    (*(*(v34 - 8) + 16))(v37, v36, v34);
    v38 = (*(v35 + 96))(1, v84, v34, v35);
LABEL_10:
    v43 = v38;
LABEL_11:
    sub_100004758(v91);
    return v33(v43 & 1);
  }

  if (v20 == enum case for TTRReminderSwipeAction.unflag(_:))
  {
    v39 = v5[9];
    v40 = v5[11];
    v41 = sub_10000C36C(v5 + 6, v39);
    v92 = v39;
    v93 = v40;
    v42 = sub_1000317B8(v91);
    (*(*(v39 - 8) + 16))(v42, v41, v39);
    v38 = (*(v40 + 96))(0, v84, v39, v40);
    goto LABEL_10;
  }

  if (v20 == enum case for TTRReminderSwipeAction.indent(_:))
  {
    sub_100058000(&qword_100772150);
    v44 = type metadata accessor for TTRRemindersListViewModel.Item();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10062D400;
    (*(v45 + 16))(v47 + v46, v84, v44);
    v48 = v5[9];
    v49 = v5[11];
    v50 = sub_10000C36C(v5 + 6, v48);
    v92 = v48;
    v93 = v49;
    v51 = sub_1000317B8(v91);
    (*(*(v48 - 8) + 16))(v51, v50, v48);
    v52 = (*(v49 + 744))(v47, v48, v49);
LABEL_17:
    v43 = v52;

    goto LABEL_11;
  }

  if (v20 == enum case for TTRReminderSwipeAction.outdent(_:))
  {
    sub_100058000(&qword_100772150);
    v53 = type metadata accessor for TTRRemindersListViewModel.Item();
    v54 = *(v53 - 8);
    v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10062D400;
    (*(v54 + 16))(v56 + v55, v84, v53);
    v57 = v5[9];
    v58 = v5[11];
    v59 = sub_10000C36C(v5 + 6, v57);
    v92 = v57;
    v93 = v58;
    v60 = sub_1000317B8(v91);
    (*(*(v57 - 8) + 16))(v60, v59, v57);
    v52 = (*(v58 + 752))(v56, v57, v58);
    goto LABEL_17;
  }

  if (v20 == enum case for TTRReminderSwipeAction.postponeToTomorrow(_:))
  {
    v61 = &enum case for TTRRemindersListPostponeType.tomorrow(_:);
LABEL_26:
    v63 = v89;
    (*(v89 + 104))(v14, *v61, v12);
    v64 = v5[9];
    v65 = v5[11];
    v66 = sub_10000C36C(v5 + 6, v64);
    v92 = v64;
    v93 = v65;
    v67 = sub_1000317B8(v91);
    (*(*(v64 - 8) + 16))(v67, v66, v64);
    (*(v65 + 712))(v84, v14, v33, v85, v64, v65);
    (*(v63 + 8))(v14, v12);
    return sub_100004758(v91);
  }

  if (v20 == enum case for TTRReminderSwipeAction.postponeToThisWeekend(_:) || v20 == enum case for TTRReminderSwipeAction.postponeToNextWeekend(_:))
  {
    v61 = &enum case for TTRRemindersListPostponeType.weekend(_:);
    goto LABEL_26;
  }

  if (v20 == enum case for TTRReminderSwipeAction.setCustomDateAndTime(_:))
  {
    v68 = v86;
    static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
    v69 = v5[9];
    v70 = v5[11];
    v71 = sub_10000C36C(v5 + 6, v69);
    v92 = v69;
    v93 = v70;
    v72 = sub_1000317B8(v91);
    (*(*(v69 - 8) + 16))(v72, v71, v69);
    (*(v70 + 160))(v84, v68, a4, v85, v69, v70);
    (*(v87 + 8))(v68, v88);
    return sub_100004758(v91);
  }

  v74 = v84;
  v73 = v85;
  if (v20 == enum case for TTRReminderSwipeAction.permanentlyHide(_:))
  {
    v75 = v86;
    static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();
    v76 = v5[9];
    v77 = v5[11];
    v78 = sub_10000C36C(v5 + 6, v76);
    v92 = v76;
    v93 = v77;
    v79 = sub_1000317B8(v91);
    (*(*(v76 - 8) + 16))(v79, v78, v76);
    (*(v77 + 264))(v74, v75, v33, v73, v76, v77);
    (*(v87 + 8))(v75, v88);
    return sub_100004758(v91);
  }

  if (v20 == enum case for TTRReminderSwipeAction.moveToAnyList(_:))
  {
    v80 = v5[9];
    v81 = v5[11];
    v82 = sub_10000C36C(v5 + 6, v80);
    v92 = v80;
    v93 = v81;
    v83 = sub_1000317B8(v91);
    (*(*(v80 - 8) + 16))(v83, v82, v80);
    (*(v81 + 272))(v74, v90, v33, v73, v80, v81);
    return sub_100004758(v91);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003088C0()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_100004758(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t sub_100308944@<X0>(uint64_t *a1@<X8>)
{
  v29 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v3 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v28 = &v27 - v7;
  TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStates.getter();
  v9 = v1[9];
  v10 = v1[10];
  sub_10000C36C(v1 + 6, v9);
  (*(v10 + 16))(v9, v10);
  v12 = v11;
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 208))(ObjectType, v12);
  v16 = v15;
  swift_unknownObjectRelease();
  v17 = TTRICollectionViewCollapsedStatesPresenterCapability.collapsedItemIDs.getter();
  v18 = *(v3 + 16);
  v19 = v8;
  v20 = v29;
  v18(v5, v19, v29);
  *a1 = v14;
  a1[1] = v16;
  a1[2] = v17;
  v21 = type metadata accessor for TTRIRemindersListPresentationTree();
  v18(a1 + *(v21 + 24), v5, v20);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v22 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
  v24 = v23;
  v31 = swift_getObjectType();
  v32 = *(v24 + 8);
  v30 = v22;
  TTRRemindersListItemSeparatorStates.init(remindersListTree:)();
  swift_unknownObjectRelease();
  v25 = *(v3 + 8);
  v25(v5, v20);
  return (v25)(v28, v20);
}

uint64_t sub_100308B80()
{
  v1 = type metadata accessor for TTRIRemindersListPresentationTree();
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[9];
  v5 = v0[11];
  v6 = sub_10000C36C(v0 + 6, v4);
  ObjectType = v4;
  v15 = v5;
  v7 = sub_1000317B8(v13);
  (*(*(v4 - 8) + 16))(v7, v6, v4);
  (*(v5 + 496))(v4, v5);
  sub_100004758(v13);
  LOBYTE(v4) = TTRModuleState.modelReceived.getter();

  if (v4)
  {
    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.presentationTree.getter();
    swift_unknownObjectRetain();
    sub_10030C380(v3);
    swift_getObjectType();
    v9 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();
    v11 = v10;
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v15 = *(v11 + 8);
    v13[0] = v9;
    type metadata accessor for TTRRemindersListViewModel.Item();
    sub_10030DBC0(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    swift_unknownObjectRetain();
    TTRICollectionViewCollapsedStatesPresenterCapability.pruneNonExistentItemIDs<A>(with:)();
    swift_unknownObjectRelease();
    return sub_100004758(v13);
  }

  return result;
}

uint64_t sub_100308D6C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRIRemindersListCellPresentationStates();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIRemindersListCellPresentationStatesPresenterCapability.cellPresentationStates.getter();
  v7 = type metadata accessor for TTRIRemindersListPresentationTree();
  return (*(v4 + 40))(a2 + *(v7 + 24), v6, v3);
}

uint64_t sub_100308E4C(uint64_t a1, uint64_t a2)
{
  v3 = TTRICollectionViewCollapsedStatesPresenterCapability.collapsedItemIDs.getter();

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_100308EB4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for TTRIRemindersListContentViewController_collectionView();
    sub_10051B2C8();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100308F4C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    v8 = 1;
LABEL_27:
    (*(v3 + 8))(v5, v2);
    return v8;
  }

  if (v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:))
  {
    v9 = v0[9];
    v10 = v1[10];
    sub_10000C36C(v1 + 6, v1[9]);
    sub_10045E42C(v9, v10);
    swift_getObjectType();
    v11 = dispatch thunk of TTRRemindersListTreeContentsQueryable.numberOfSubtasks(of:)();
    swift_unknownObjectRelease();
    v8 = v11 > 0;
    goto LABEL_27;
  }

  if (v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:) || v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
  {
    v8 = 0;
    goto LABEL_27;
  }

  if (v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v6 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100309194@<X0>(uint64_t (**a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v18 != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:))
    {
      v26 = v39[9];
      v27 = v39[10];
      sub_10000C36C(v39 + 6, v26);
      (*(v27 + 16))(v26, v27);
      v29 = v28;
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 144))(ObjectType, v29);
      swift_unknownObjectRelease();
      v32 = type metadata accessor for TTRICollectionViewCellSelectionOption();
      v33 = *(*(v32 - 8) + 104);
      if (v43)
      {
        v33(v44, enum case for TTRICollectionViewCellSelectionOption.selectItem(_:), v32);
        return (*(v15 + 8))(v17, v14);
      }

      a1 = (v15 + 8);
      if (v31)
      {
        v38 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
LABEL_39:
        v33(v44, *v38, v32);
        return (*a1)(v17, v14);
      }
    }

    else
    {
      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:))
      {
        (*(v15 + 8))(v17, v14);
        goto LABEL_21;
      }

      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
      {
LABEL_2:
        (*(v15 + 8))(v17, v14);
        goto LABEL_3;
      }

      if (v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v18 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
      {
        goto LABEL_3;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    v38 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
    goto LABEL_39;
  }

  (*(v15 + 96))(v17, v14);
  (*(v11 + 32))(v13, v17, v10);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v40 + 8))(v9, v7);
  v24 = v41;
  v23 = v42;
  v25 = (*(v41 + 88))(v6, v42);
  if (v25 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    if (v25 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
    {
      (*(v24 + 8))(v6, v23);
      if ((v43 & 1) == 0)
      {
        v34 = TTRRemindersListViewModel.SectionHeader.isTitleEditable.getter();
        (*(v11 + 8))(v13, v10);
        if (v34)
        {
          v19 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
          goto LABEL_4;
        }

LABEL_3:
        v19 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
LABEL_4:
        v20 = *v19;
        v21 = type metadata accessor for TTRICollectionViewCellSelectionOption();
        return (*(*(v21 - 8) + 104))(v44, v20, v21);
      }
    }

    else
    {
      if (v25 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
      {
        goto LABEL_7;
      }

      if (v25 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    (*(v11 + 8))(v13, v10);
    goto LABEL_3;
  }

LABEL_7:
  (*(v11 + 8))(v13, v10);
  (*(v24 + 8))(v6, v23);
LABEL_21:
  v36 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  if (v43)
  {
    v37 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
  }

  else
  {
    v37 = &enum case for TTRICollectionViewCellSelectionOption.editPrimaryText(_:);
  }

  return (*(*(v36 - 8) + 104))(v44, *v37, v36);
}

id sub_100309860(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = v1[9];
  v7 = v1[10];
  sub_10000C36C(v1 + 6, v6);
  (*(v7 + 8))(v6, v7);
  v8 = sub_10025D4DC(a1);

  v17 = v1;
  v18 = a1;
  v9 = sub_100399264(sub_10030DC08, v16, v8);

  v19 = v9;
  (*(v4 + 16))(&v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  v12 = static TTRDebugMenuUtilities.objectIDContextualActions(provideObjectID:)();

  sub_100081654(v12);
  sub_10030C418();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [objc_opt_self() configurationWithActions:isa];

  return v14;
}

uint64_t sub_100309A8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  a2[3] = v4;
  a2[4] = &protocol witness table for TTRRemindersListViewModel.Item;
  v5 = sub_1000317B8(a2);
  v6 = *(*(v4 - 8) + 16);

  return v6(v5, a1, v4);
}

uint64_t sub_100309B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
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
  swift_weakInit();
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

uint64_t sub_100309D78()
{
  sub_100058000(&qword_10077C860);
  sub_10000E188(&unk_10078A2E0, &qword_10077C860);
  return dispatch thunk of TTRICollectionViewItemCollapsedStates.isCollapsed(_:)() & 1;
}

uint64_t sub_100309E08()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  if ((sub_100308F4C() & 1) != 0 && (sub_100058000(&qword_10077C860), sub_10000E188(&unk_10078A2E0, &qword_10077C860), (dispatch thunk of TTRICollectionViewItemCollapsedStates.isCollapsed(_:)() & 1) == 0))
  {
    sub_100058000(&qword_100772760);
    v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10062D400;
    (*(v1 + 16))(v6 + v5, v3, v0);
    v8[1] = v6;
    sub_100058000(&unk_1007821D0);
    sub_10000E188(&unk_100784540, &unk_1007821D0);
    dispatch thunk of TTRICollectionViewItemCollapsedStates.collapse<A>(_:)();

    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.performPendingUpdatesImmediately()();
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  (*(v1 + 8))(v3, v0);
  return v4;
}

id sub_10030A044(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 80);
  sub_10000C36C((*v1 + 48), v4);
  (*(v5 + 8))(v4, v5);
  v6 = sub_10025C730(a1);

  v10[2] = v3;
  v10[3] = a1;
  sub_100399264(sub_10030C3DC, v10, v6);

  sub_10030C418();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() configurationWithActions:isa];

  return v8;
}

id sub_10030A14C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  if (![Strong isViewLoaded])
  {
    v4 = 0;
    goto LABEL_10;
  }

  v2 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *&v1[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView];
  if (result)
  {
    result = [result hasActiveDrag];
    if (result)
    {
      v4 = 1;
LABEL_10:
      swift_unknownObjectRelease();
      return v4;
    }

    v5 = *&v1[v2];
    if (v5)
    {
      v6 = v5;
      v4 = [v6 hasActiveDrop];

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10030A200@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_100058000(&qword_10076E8D0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = v1[9];
  v10 = v1[10];
  sub_10000C36C(v1 + 6, v9);
  (*(v10 + 16))(v9, v10);
  v12 = v11;
  ObjectType = swift_getObjectType();
  (*(v12 + 152))(ObjectType, v12);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380);
    v16 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    goto LABEL_7;
  }

  TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
  (*(v15 + 8))(v5, v14);
  v17 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, 0, 1, v17);
  v19 = (*(v18 + 88))(v8, v17);
  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
  {
    goto LABEL_7;
  }

  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
  {
    v20 = type metadata accessor for TTRIEditableSectionsPresentationTreeMaker();
    v21 = &off_1007168A0;
LABEL_8:
    result = swift_allocObject();
    a1[3] = v20;
    a1[4] = v21;
    *a1 = result;
    return result;
  }

  if (v19 == enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
  {
LABEL_7:
    v20 = type metadata accessor for TTRIDefaultPresentationTreeMaker();
    v21 = &off_1007168C8;
    goto LABEL_8;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_10030A518()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  v2 = v1;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10030A568()
{
  v0 = sub_100058000(&unk_100781850);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - v1;
  v3 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v36 = sub_100058000(&qword_10076E0C8);
  __chkstk_darwin(v36);
  v35 = &v28 - v6;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v39 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100058000(&qword_10077C868);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v28 - v13;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v33 = v10;
    v34 = v11;
    v32 = v9;
    TTRRemindersListTreeViewModelUpdateContext.shouldReload.getter();
    TTRRemindersListTreeViewModelUpdateContext.updatedItemIDs.getter();
    TTRRemindersListTreeViewModelUpdateContext.animated.getter();
    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForDataModelUpdate(shouldReload:itemIDsWithLazyViewModelUpdates:animated:)();

    type metadata accessor for TTRIRemindersListContentViewController_collectionView();
    sub_10051B2C8();
    TTRRemindersListTreeViewModelUpdateContext.itemToStartEditing.getter();
    v16 = sub_100058000(&unk_1007756F0);
    if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
    {
      (*(v38 + 8))(v41, v40);
      swift_unknownObjectRelease();
      return sub_1000079B4(v5, &qword_10076E0D0);
    }

    else
    {
      v17 = *(v16 + 48);
      v19 = v35;
      v18 = v36;
      v29 = *(v36 + 48);
      v30 = v17;
      v20 = *(v34 + 32);
      v31 = v15;
      v21 = v33;
      v20(v35, v5);
      v22 = v37;
      v23 = *(v37 + 32);
      v23(&v19[v29], &v5[v30], v7);
      v24 = *(v18 + 48);
      (v20)(v39, v19, v21);
      v25 = &v19[v24];
      v26 = v32;
      v23(v32, v25, v7);
      (*(v22 + 16))(v2, v26, v7);
      (*(v22 + 56))(v2, 0, 1, v7);
      v27 = v39;
      sub_10051901C(v39, v2);
      swift_unknownObjectRelease();
      sub_1000079B4(v2, &unk_100781850);
      (*(v22 + 8))(v26, v7);
      (*(v34 + 8))(v27, v21);
      return (*(v38 + 8))(v41, v40);
    }
  }

  return result;
}

uint64_t sub_10030AAA4(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(v3 + 16);
    v11(v8, a1, v2);
    v12 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
    swift_beginAccess();
    v11(v5, v10 + v12, v2);
    swift_beginAccess();
    (*(v3 + 24))(v10 + v12, v8, v2);
    swift_endAccess();
    sub_10038A3F8(v5);
    swift_unknownObjectRelease();
    v13 = *(v3 + 8);
    v13(v5, v2);
    return (v13)(v8, v2);
  }

  return result;
}

uint64_t sub_10030AC58(uint64_t a1)
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

uint64_t sub_10030ADA0(uint64_t a1)
{
  v2 = sub_100058000(&qword_10077C868);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  v7[1] = a1;
  sub_100058000(&qword_10076E0B0);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_10000E188(&unk_100784560, &qword_10076E0B0);
  sub_10030DBC0(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  Sequence.mapToSet<A>(_:)();
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForUpdatedLazyViewModels(for:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRIRemindersListContentViewController_collectionView();
    sub_10051B2C8();
    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10030AFA0(void *a1)
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
  TTRIRemindersListCellPresentationStatesPresenterCapability.editingItemID.setter();
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

uint64_t sub_10030B250(uint64_t a1)
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
        sub_10030DBC0(&qword_10076E0C0, &type metadata accessor for TTRSharedWithYouHighlight);
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

uint64_t sub_10030B5F0(uint64_t a1)
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
  return TTRIRemindersListCellPresentationStatesPresenterCapability.itemIDWithAnchoredPopover.setter();
}

uint64_t sub_10030B7D4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    sub_1005127AC();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    if (v7)
    {
      v8 = TTRIRemindersListReminderCell_collectionView.viewForAnchoringPopover.getter();
      if (v8)
      {
        v9 = v8;
        static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();

        swift_unknownObjectRelease();
        v10 = type metadata accessor for TTRIPopoverAnchor();
        return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
      }
    }

    swift_unknownObjectRelease();
    v14 = type metadata accessor for TTRIPopoverAnchor();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    v12 = type metadata accessor for TTRIPopoverAnchor();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_10030B9E4()
{
  v0 = type metadata accessor for TTRRemindersListItemStateTracker.CellState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    sub_10030DBC0(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PromiseError.cancelled(_:), v6);
    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

id sub_10030BBD0@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    result = [Strong isViewLoaded];
    if (result)
    {
      if (*&v3[OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView])
      {
        __chkstk_darwin(result);
        v6 = v5;
        sub_100307488();

        return swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    swift_unknownObjectRelease();
  }

  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, 1, 1, v7);
}

void sub_10030BD14(uint64_t a1)
{
  v2 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_firstVisibleItemToRestore;
    swift_beginAccess();
    sub_10030DB18(v4, v6 + v9);
    swift_endAccess();
    v10 = [v6 viewIfLoaded];
    [v10 setNeedsLayout];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10030BEC4()
{
  sub_100058000(&qword_10076E0B0);
  type metadata accessor for TTRRemindersListViewModel.ItemID();
  sub_10000E188(&unk_100784560, &qword_10076E0B0);
  sub_10030DBC0(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  Sequence.mapToSet<A>(_:)();
  return TTRIRemindersListCellPresentationStatesPresenterCapability.itemIDsWithPonderingTextEffect.setter();
}

uint64_t sub_10030BFC8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10051901C(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030C034()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100519328();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030C08C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1005194C8(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10030C0E8(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = sub_10051A0F4(a1, a2 & 1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = type metadata accessor for PromiseError();
    sub_10030DBC0(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PromiseError.cancelled(_:), v6);
    sub_100058000(&unk_10078A2F0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10030C204(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), char a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100519960(a1, a2, a3 & 1);
    v7 = v6;
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    v9 = type metadata accessor for PromiseError();
    sub_10030DBC0(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for PromiseError.cancelled(_:), v9);
    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10030C380(uint64_t a1)
{
  v2 = type metadata accessor for TTRIRemindersListPresentationTree();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10030C418()
{
  result = qword_10076BC40;
  if (!qword_10076BC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BC40);
  }

  return result;
}

uint64_t sub_10030C468(uint64_t result)
{
  if ((result & 1) == 0)
  {
    return (*(v1 + 16))(0);
  }

  return result;
}

void sub_10030C4A0(void **a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000EF30C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10030C548(v5);
  *a1 = v3;
}

void sub_10030C548(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
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
      sub_10030C938(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10030C674(0, v2, 1, a1);
  }
}

void sub_10030C674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
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
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
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
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10030C938(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16.n128_f64[0] = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1000ED7BC(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_10030D360(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
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
        sub_1000ED730(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
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
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
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
        v41(v35, v42);
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

              v133(&v49[v44], v127, v48);
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
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100546DD8(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_100546DD8((v53 > 1), v54 + 1, 1, v20);
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
        sub_10030D360(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
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
        sub_1000ED730(v57);
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
    sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
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
}

void sub_10030D360(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_10030DBC0(&qword_10076B840, &type metadata accessor for IndexPath);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_1000ED7D0(&v54, &v53, &v52);
}

uint64_t sub_10030D954()
{
  v0 = sub_100058000(&qword_10077C868);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForMoves()();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for TTRIRemindersListContentViewController_collectionView();
    sub_10051B2C8();
    swift_unknownObjectRelease();
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_10030DA7C(void (*a1)(void))
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
    if (v3)
    {
      v4 = v3;
      a1();
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10030DB18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030DBC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030DC44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100309A8C(v4, a1);
}

uint64_t sub_10030DCB4()
{
  v1 = type metadata accessor for TTRReminderSwipeAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10030DE04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v9 = *(type metadata accessor for TTRReminderSwipeAction() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v13 = *(v4 + 16);
  v14 = v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_100307D94(a1, a2, a3, a4, v13, v4 + v10, v14);
}

uint64_t sub_10030DF60()
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

uint64_t sub_10030E070()
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

uint64_t sub_10030E1F8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = a2(0);
  (*(*(v9 - 8) + 104))(a5, v8, v9);
  v10 = *a3;
  v11 = a4(0);
  v12 = *(*(v11 - 8) + 104);

  return v12(a5, v10, v11);
}

uint64_t sub_10030E2BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v7 - 8) + 104))(a3, v6, v7);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v9 = sub_100313CF4;
  v9[1] = v8;
}

uint64_t sub_10030E3A0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v3 = a1();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 objectID];

    *a2 = v5;
    v6 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
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

uint64_t sub_10030E4C8@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v58 = *(v5 - 8);
  v59 = v5;
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v56 = *(v11 - 8);
  v57 = v11;
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  v20 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v22 = 0;
  v55 = v23;
  swift_storeEnumTagMultiPayload();
  v60 = v1;

  TTRRemindersListTreeViewModel.parent(of:)();

  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v19, 1, v24) == 1)
  {
    goto LABEL_2;
  }

  v51 = a1;
  v28 = (*(v25 + 88))(v19, v24);
  if (v28 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    (*(v25 + 96))(v19, v24);
    v30 = v56;
    v29 = v57;
    v56[4](v16, v19, v57);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    if (*(v60 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
    {

      v31 = sub_100145ED8(v10);

      (*(v58 + 8))(v10, v59);
      (v30[1])(v16, v29);
      v32 = v51;
      if (v31)
      {
        sub_10014AA9C(v22);
        *v32 = v31;
        v33 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
        v34 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v34 - 8) + 104))(v32, v33, v34);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      (*(v58 + 8))(v10, v59);
      (v30[1])(v16, v29);
      v32 = v51;
    }

    v26 = v22;
    v27 = v32;
    return sub_10014AA38(v26, v27);
  }

  if (v28 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v25 + 96))(v19, v24);
    v16 = v56;
    v25 = v57;
    v56[4](v13, v19, v57);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    if (*(v60 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
    {

      v35 = sub_100145ED8(v7);

      (*(v58 + 8))(v7, v59);
      (*(v16 + 1))(v13, v25);
      v36 = v51;
      if (v35)
      {
        sub_10014AA9C(v22);
        *v36 = v35;
        v37 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
        v38 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v38 - 8) + 104))(v36, v37, v38);
        return swift_storeEnumTagMultiPayload();
      }

LABEL_27:
      v26 = v22;
      v27 = v36;
      return sub_10014AA38(v26, v27);
    }

LABEL_26:
    (*(v58 + 8))(v7, v59);
    (*(v16 + 1))(v13, v25);
    v36 = v51;
    goto LABEL_27;
  }

  if (v28 != enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    if (v28 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v28 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v28 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v28 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      (*(v25 + 8))(v19, v24);
      a1 = v51;
    }

    else
    {
      a1 = v51;
      if (v28 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v28 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        goto LABEL_26;
      }
    }

LABEL_2:
    v26 = v22;
    v27 = a1;
    return sub_10014AA38(v26, v27);
  }

  (*(v25 + 96))(v19, v24);
  v41 = v52;
  v40 = v53;
  v42 = v19;
  v43 = v54;
  (*(v53 + 32))(v52, v42, v54);
  v44 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v45 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
  v46 = v60;
  swift_beginAccess();
  v47 = *(v46 + v45);

  v48 = sub_10013F404(v44, v47);

  (*(v40 + 8))(v41, v43);
  v26 = v22;
  if (v48)
  {
    sub_10014AA9C(v22);
    v49 = v51;
    *v51 = v48;
    v49[1] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v27 = v51;
  return sub_10014AA38(v26, v27);
}

double sub_10030ECB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_100310CD8();
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

BOOL sub_10030EE74(void *a1)
{
  v2 = sub_100310CD8();
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

uint64_t sub_10030EF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100310CD8();
  sub_1004B7628(a1, a2, a3);
}

uint64_t sub_10030EFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100310CD8();
  sub_1004B7834(a1, a2);
}

uint64_t sub_10030F050(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = sub_100310CD8();
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

uint64_t sub_10030F13C@<X0>(void *a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  TTRRemindersListTreeViewModel.parent(of:)();

  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    sub_1000079B4(v11, &qword_100772140);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);

    TTRRemindersListTreeViewModel.parent(of:)();

    if (v16(v8, 1, v12) == 1)
    {
      (*(v13 + 8))(v15, v12);
      sub_1000079B4(v8, &qword_100772140);
    }

    else if ((*(v13 + 88))(v8, v12) == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
      (*(v13 + 96))(v8, v12);
      v18 = v32;
      v17 = v33;
      v19 = v30;
      (*(v32 + 32))();
      v20 = v31;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
      {

        v21 = sub_100145ED8(v20);

        (*(v34 + 8))(v20, v35);
        (*(v18 + 8))(v19, v17);
        (*(v13 + 8))(v15, v12);
        if (v21)
        {
          v22 = v36;
          *v36 = v21;
          v23 = enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
          v24 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
          v25 = *(v24 - 8);
          (*(v25 + 104))(v22, v23, v24);
          return (*(v25 + 56))(v22, 0, 1, v24);
        }
      }

      else
      {
        (*(v34 + 8))(v20, v35);
        (*(v18 + 8))(v19, v17);
        (*(v13 + 8))(v15, v12);
      }
    }

    else
    {
      v27 = *(v13 + 8);
      v27(v15, v12);
      v27(v8, v12);
    }
  }

  v28 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  return (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
}

uint64_t sub_10030F6C0(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v3 = type metadata accessor for TTRSectionID();
  v80 = *(v3 - 8);
  __chkstk_darwin(v3);
  v79 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v85 = *(v5 - 1);
  v86 = v5;
  __chkstk_darwin(v5);
  v81 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v69 - v8);
  v87 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v82 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v88 = &v69 - v12;
  v13 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v13 - 8);
  v83 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v69 - v23;
  v84 = v2;

  TTRRemindersListTreeViewModel.parent(of:)();

  v25 = *(v19 + 48);
  if (v25(v17, 1, v18) == 1)
  {
    v26 = v17;
    return sub_1000079B4(v26, &qword_100772140);
  }

  (*(v19 + 32))(v24, v17, v18);
  (*(v19 + 16))(v21, v24, v18);
  v77 = *(v19 + 88);
  if (v77(v21, v18) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v43 = *(v19 + 8);
    v43(v24, v18);
    return (v43)(v21, v18);
  }

  v75 = v24;
  v69 = v3;
  v28 = *(v19 + 96);
  v73 = v19 + 96;
  v72 = v28;
  v28(v21, v18);
  v74 = v19;
  v29 = v89;
  v30 = *(v89 + 32);
  v76 = v18;
  v31 = v88;
  v32 = v21;
  v33 = v9;
  v34 = v87;
  v71 = v89 + 32;
  v70 = v30;
  v30(v88, v32, v87);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v35 = v85;
  v36 = v86;
  if ((*(v85 + 88))(v33, v86) != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    (*(v29 + 8))(v31, v34);
    (*(v74 + 8))(v75, v76);
    return (*(v35 + 8))(v33, v36);
  }

  v37 = v34;
  v38 = v74;
  (*(v35 + 96))(v33, v36);
  v39 = *v33;

  v40 = v83;
  v41 = v75;
  TTRRemindersListTreeViewModel.parent(of:)();

  v42 = v76;
  if (v25(v40, 1, v76) == 1)
  {

    (*(v89 + 8))(v88, v37);
    (*(v38 + 8))(v41, v42);
    v26 = v40;
    return sub_1000079B4(v26, &qword_100772140);
  }

  v44 = v77(v40, v42);
  v45 = v38;
  v47 = v88;
  v46 = v89;
  if (v44 != enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {

    (*(v46 + 8))(v47, v37);
    v64 = *(v45 + 8);
    v64(v41, v42);
    return (v64)(v40, v42);
  }

  v72(v40, v42);
  v48 = v82;
  v70(v82, v40, v37);
  v49 = v81;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (!*(v84 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
  {

    (*(v85 + 8))(v49, v86);
LABEL_18:
    v65 = *(v46 + 8);
    v66 = v87;
    v65(v48, v87);
    v65(v47, v66);
    return (*(v45 + 8))(v41, v76);
  }

  v50 = sub_100145ED8(v49);

  (*(v85 + 8))(v49, v86);
  if (!v50)
  {

    v41 = v75;
    goto LABEL_18;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  v51 = dispatch thunk of TTRShowAllRemindersDataModelSourceBaseType.list(with:)();
  swift_unknownObjectRelease();
  if (v51)
  {
    sub_100058000(&qword_10076B780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D420;
    v53 = v78;
    v54 = TTRReminderEditor.changeItem.getter();
    v55 = [v54 objectID];

    *(inited + 32) = v55;
    sub_10001D5F8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for TTRListEditor();
    v91 = v51;
    v86 = v51;
    v56 = TTRReminderEditor.changeItem.getter();
    v57 = [v56 saveRequest];

    v90 = v53;
    type metadata accessor for TTRReminderEditor();
    sub_100313CAC(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
    TTRUndoableEditing.undoManager.getter();
    TTROneshotEditing.init(item:saveRequest:undoManager:)();
    v58 = v79;
    v59 = v80;
    *v79 = v39;
    v60 = v69;
    (*(v59 + 104))(v58, enum case for TTRSectionID.sectioned(_:), v69);
    v61 = v39;
    TTRListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

    (*(v59 + 8))(v58, v60);
    v62 = *(v89 + 8);
    v63 = v87;
    v62(v82, v87);
    v62(v47, v63);
  }

  else
  {

    v67 = *(v46 + 8);
    v68 = v87;
    v67(v48, v87);
    v67(v47, v68);
  }

  return (*(v45 + 8))(v75, v76);
}

uint64_t sub_10031011C()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.all(_:);
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

uint64_t sub_100310270()
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
  sub_100070538();
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
  v22 = enum case for TTRListType.PredefinedSmartListType.all(_:);
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

uint64_t sub_100310698@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a1, v12, &qword_100772140);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000079B4(v12, &qword_100772140);
    v17 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
    return (*(*(v17 - 8) + 56))(v39, 1, 1, v17);
  }

  v19 = v39;
  (*(v14 + 32))(v16, v12, v13);
  TTRRemindersListViewModel.Item.sectionsContainerAndSectionCasesOnly.getter();
  v20 = (*(v7 + 88))(v9, v6);
  if (v20 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.sectionsContainer(_:))
  {
    (*(v7 + 96))(v9, v6);
    v21 = v36;
    v22 = v37;
    (*(v36 + 32))(v37, v9, v38);
    v23 = v32;
    TTRRemindersListViewModel.SectionHeader.id.getter();
    if (*(v35 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
    {

      v24 = sub_100145ED8(v23);

      (*(v33 + 8))(v23, v34);
      v25 = v19;
      if (v24)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = dispatch thunk of TTRShowAllRemindersDataModelSourceBaseType.list(with:)();

        swift_unknownObjectRelease();
        (*(v21 + 8))(v37, v38);
        (*(v14 + 8))(v16, v13);
        if (v26)
        {
          *v19 = v26;
          v27 = v19;
          v28 = enum case for TTRRemindersListInteractorSectionsCapabilityTarget.list(_:);
          v29 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
          v30 = *(v29 - 8);
          (*(v30 + 104))(v27, v28, v29);
          return (*(v30 + 56))(v27, 0, 1, v29);
        }

        goto LABEL_14;
      }
    }

    else
    {
      (*(v33 + 8))(v23, v34);
      v25 = v19;
    }

    (*(v21 + 8))(v22, v38);
    (*(v14 + 8))(v16, v13);
  }

  else if (v20 == enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.section(_:))
  {
    (*(v14 + 8))(v16, v13);
    (*(v7 + 8))(v9, v6);
    v25 = v19;
  }

  else
  {
    if (v20 != enum case for TTRRemindersListViewModel.Item.SectionsContainersAndSectionCasesItem.unknown(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v14 + 8))(v16, v13);
    v25 = v19;
  }

LABEL_14:
  v31 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  return (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
}

uint64_t sub_100310CD8()
{
  v1 = OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource____lazy_storage___dragAndDropUtils;
  if (*(v0 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource____lazy_storage___dragAndDropUtils))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource____lazy_storage___dragAndDropUtils);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_100720150;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100310D74@<X0>(uint64_t a1@<X8>)
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
  v21 = enum case for TTRListType.PredefinedSmartListType.all(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  v26 = REMSmartListType.title.getter();
  v36 = v27;
  v37 = v26;
  v41 = static TTRListColors.SmartList.all.getter();
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

  (*(v10 + 104))(v49, enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:), v40);
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

uint64_t sub_10031145C()
{

  swift_unknownObjectRelease();
}

uint64_t sub_1003114AC()
{
  sub_10056FD38();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowAllRemindersViewModelSource()
{
  result = qword_10077C8C0;
  if (!qword_10077C8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031160C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v62 = &v58 - v7;
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v61 = &v58 - v9;
  v10 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v64 = *(v60 - 8);
  __chkstk_darwin(v60);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v20 = REMRemindersListDataView.ListsSectionsModel.completedRemindersCount.getter();
  v21 = v3 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_completedRemindersCount;
  *v21 = v20;
  *(v21 + 8) = v22 & 1;
  sub_100310D74(v19);
  v63 = v19;
  TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
  v23 = (*(v15 + 88))(v17, v14);
  v65 = a2;
  if (v23 == enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:) || v23 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
  {
    *(v3 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance) = 0;
LABEL_26:
    v44 = v61;
    v43 = v62;
    v45 = v60;

    v46 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
    v48 = v47;
    v69 = v47;
    v49 = REMRemindersListDataView.ListsSectionsModel.lists.getter();
    __chkstk_darwin(v49);
    *(&v58 - 4) = v46;
    *(&v58 - 3) = v48;
    v50 = v63;
    *(&v58 - 2) = v3;
    *(&v58 - 1) = v50;
    v51 = sub_1003993A8(sub_100313A08, (&v58 - 6), v49);

    v52 = v64;
    (*(v64 + 16))(v44, v50, v45);
    (*(v52 + 56))(v44, 0, 1, v45);
    v53 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v54 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v55 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v55 - 8) + 56))(v43, 1, 1, v55);
    v71[3] = v53;
    v71[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    v71[0] = v54;
    sub_10000B0D8(v71, v70);
    v56 = swift_allocObject();
    *(v56 + 16) = v51;
    sub_100005FD0(v70, v56 + 24);
    *(v56 + 64) = v3;

    sub_100586238(1, v44, sub_10014A704, v56, v65, 0, v43);

    sub_1000079B4(v43, &qword_100772140);
    sub_1000079B4(v44, &unk_10078A380);

    sub_100004758(v71);
    return (*(v52 + 8))(v50, v45);
  }

  if (v23 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
  {
    goto LABEL_31;
  }

  v24 = REMRemindersListDataView.ListsSectionsModel.lists.getter();
  v25 = *(v24 + 16);
  if (!v25)
  {

    v31 = _swiftEmptyArrayStorage;
LABEL_25:
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
    v42 = swift_allocObject();
    *(v42 + 64) = 0;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0;
    *(v42 + 16) = 0;
    swift_unknownObjectWeakInit();
    *(v42 + 128) = 0u;
    *(v42 + 144) = 0u;
    *(v42 + 96) = 0u;
    *(v42 + 112) = 0u;
    *(v42 + 64) = &off_10072ED30;
    swift_unknownObjectWeakAssign();
    *(v42 + 80) = v31;
    *(v42 + 88) = 0;
    *(v42 + 72) = v31;
    *(v42 + 40) = &_swiftEmptySetSingleton;
    *(v42 + 48) = 1;
    *(v3 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance) = v42;

    goto LABEL_26;
  }

  v59 = v3;
  v27 = *(v11 + 16);
  v26 = v11 + 16;
  v68 = v27;
  v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
  v58 = v24;
  v29 = v24 + v28;
  v67 = *(v26 + 56);
  v69 = v26;
  v30 = (v26 - 8);
  v31 = _swiftEmptyArrayStorage;
  v27(v13, v24 + v28, v10);
  while (1)
  {
    v32 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    (*v30)(v13, v10);
    v33 = *(v32 + 16);
    v34 = v31[2];
    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v35 <= v31[3] >> 1)
    {
      if (*(v32 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v34 <= v35)
      {
        v37 = v34 + v33;
      }

      else
      {
        v37 = v34;
      }

      v31 = sub_100547DFC(isUniquelyReferenced_nonNull_native, v37, 1, v31);
      if (*(v32 + 16))
      {
LABEL_18:
        v38 = (v31[3] >> 1) - v31[2];
        type metadata accessor for REMRemindersListDataView.SectionLite();
        if (v38 < v33)
        {
          goto LABEL_29;
        }

        swift_arrayInitWithCopy();

        if (v33)
        {
          v39 = v31[2];
          v40 = __OFADD__(v39, v33);
          v41 = v39 + v33;
          if (v40)
          {
            goto LABEL_30;
          }

          v31[2] = v41;
        }

        goto LABEL_7;
      }
    }

    if (v33)
    {
      goto LABEL_28;
    }

LABEL_7:
    v29 += v67;
    if (!--v25)
    {

      v3 = v59;
      goto LABEL_25;
    }

    v68(v13, v29, v10);
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100311D7C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v181 = a5;
  v180 = a4;
  v162 = a3;
  v161 = a2;
  v226 = a1;
  v141 = a6;
  v160 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v204 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v168 = *(v202 - 8);
  __chkstk_darwin(v202);
  v201 = &v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_100058000(&qword_10076E8D8);
  __chkstk_darwin(v200);
  v231 = (&v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v199 = &v137 - v10;
  v198 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v205 = *(v198 - 8);
  __chkstk_darwin(v198);
  v203 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List.ListType();
  v230 = *(v228 - 8);
  __chkstk_darwin(v228);
  v229 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v13 - 8);
  v218 = &v137 - v14;
  v217 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v224 = *(v217 - 8);
  __chkstk_darwin(v217);
  v216 = (&v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v208 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v142 = *(v208 - 8);
  __chkstk_darwin(v208);
  v197 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v207 = &v137 - v18;
  __chkstk_darwin(v19);
  v144 = &v137 - v20;
  v215 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v223 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v222 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v23 - 8);
  v211 = &v137 - v24;
  v210 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v221 = *(v210 - 8);
  __chkstk_darwin(v210);
  v209 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v147 = *(v220 - 8);
  __chkstk_darwin(v220);
  v196 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v143 = &v137 - v28;
  v219 = type metadata accessor for TTRListColors.Color();
  v146 = *(v219 - 8);
  __chkstk_darwin(v219);
  v232 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v137 - v31;
  v227 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v145 = *(v227 - 8);
  __chkstk_darwin(v227);
  v158 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v137 - v35;
  __chkstk_darwin(v37);
  v39 = &v137 - v38;
  v40 = sub_100058000(&qword_10076E8E0);
  v41 = v40 - 8;
  __chkstk_darwin(v40);
  v43 = (&v137 - v42);
  v44 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(v226, v43, &qword_10076E8E0);
  v48 = *v43;
  v49 = *(v41 + 56);
  v138 = v45;
  v50 = *(v45 + 32);
  v139 = v44;
  v50(v47, v43 + v49, v44);
  v161(v48);
  v51 = REMRemindersListDataView.ListsSectionsModel.List.listColor.getter();
  v195 = type metadata accessor for TTRListColors();
  static TTRListColors.color(for:)();

  REMRemindersListDataView.ListsSectionsModel.List.listName.getter();
  v52 = v146;
  v53 = *(v146 + 16);
  v54 = v209;
  v206 = v32;
  v55 = v32;
  v56 = v219;
  v194 = v146 + 16;
  v193 = v53;
  v53(v209, v55, v219);
  v57 = *(v221 + 104);
  v192 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.listName(_:);
  v221 += 104;
  v191 = v57;
  v57(v54);
  v58 = *(v145 + 16);
  v140 = v39;
  v157 = v145 + 16;
  v156 = v58;
  v58(v36, v39, v227);
  v59 = *(v52 + 56);
  v190 = v52 + 56;
  v189 = v59;
  v59(v211, 1, 1, v56);
  v60 = *(v222 + 104);
  v222 += 104;
  v188 = v60;
  v60(v212, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v213);
  v61 = *(v223 + 104);
  v223 += 104;
  v187 = v61;
  v61(v214, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v215);
  v62 = v143;
  v63 = v228;
  v225 = v36;
  TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
  v64 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
  v65 = v216;
  *v216 = v64;
  v66 = *(v224 + 104);
  v155 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
  v224 += 104;
  v186 = v66;
  v66(v65);
  v67 = v147;
  v68 = *(v147 + 16);
  v69 = v218;
  v70 = v220;
  v185 = v147 + 16;
  v184 = v68;
  v68(v218, v62, v220);
  v71 = *(v67 + 56);
  v183 = v67 + 56;
  v182 = v71;
  v71(v69, 0, 1, v70);
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  v72 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
  v73 = v229;
  v226 = v47;
  REMRemindersListDataView.ListsSectionsModel.List.listType.getter();
  v74 = (v230[11])(v73, v63);
  if (v74 == enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.regular(_:))
  {
    if ((TTRRemindersListViewModel.ListInfo.shouldAutoCategorizeItems.getter() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v74 == enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.customSmartList(_:))
    {
      goto LABEL_9;
    }

    if (v74 != enum case for REMRemindersListDataView.ListsSectionsModel.List.ListType.grocery(_:))
    {
LABEL_25:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  type metadata accessor for TTRUserDefaults();
  v75 = static TTRUserDefaults.appUserDefaults.getter();
  v76 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
  v77 = TTRUserDefaults.shouldHideEmptySectionsInGroceryOrAutoCategorizingList(with:)();

  if ((v77 & 1) != 0 && *(v180 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
  {

    v78 = REMRemindersListDataView.ListsSectionsModel.List.sections.getter();
    sub_100148FF8(v78);
    v72 = v79;
  }

LABEL_9:
  v80 = *(v72 + 16);
  if (v80)
  {
    v233 = _swiftEmptyArrayStorage;
    sub_1004A22E0(0, v80, 0);
    v81 = v233;
    v181 = *(v72 + 16);
    v82 = 0;
    v178 = type metadata accessor for REMRemindersListDataView.SectionLite();
    v83 = *(v178 - 8);
    v176 = v72 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v175 = v83 + 16;
    v177 = v83;
    v174 = v83 + 32;
    v173 = (v168 + 11);
    v172 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v154 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v171 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.secondary(_:);
    v170 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.headline(_:);
    v153 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
    v152 = (v145 + 104);
    v151 = (v204 + 1);
    v169 = (v147 + 8);
    v150 = (v168 + 12);
    v149 = (v145 + 8);
    v148 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
    v204 = (v142 + 16);
    v168 = (v146 + 8);
    v167 = (v142 + 8);
    v166 = v205 + 32;
    v180 = v72;
    v179 = v80;
    while (v181 != v82)
    {
      if (v82 >= *(v72 + 16))
      {
        goto LABEL_24;
      }

      v230 = v81;
      v84 = v200;
      v85 = *(v200 + 48);
      v86 = v177;
      v87 = v176 + *(v177 + 72) * v82;
      v88 = v199;
      v89 = v82;
      v90 = v178;
      (*(v177 + 16))(&v199[v85], v87, v178);
      v91 = v231;
      *v231 = v89;
      v92 = *(v84 + 48);
      (*(v86 + 32))(&v92[v91], &v88[v85], v90);
      v93 = REMRemindersListDataView.ListsSectionsModel.List.listColor.getter();
      v94 = v232;
      static TTRListColors.color(for:)();

      v229 = v92;
      v95 = v201;
      REMRemindersListDataView.SectionLite.type.getter();
      v96 = v202;
      v97 = (*v173)(v95, v202);
      v228 = v89;
      if (v97 == v172)
      {
        (*v150)(v95, v96);
        v98 = v95[1];
        v165 = *v95;
        v164 = v98;
        v163 = v95[2];

        v99 = v225;
        v161(v89);
        v100 = v209;
        v101 = v219;
        v102 = v193;
        v193(v209, v206, v219);
        v191(v100, v192, v210);
        v188(v212, v171, v213);
        v187(v214, v170, v215);
        v156(v158, v99, v227);
        v103 = v211;
        v102(v211, v94, v101);
        v104 = v101;
        v189(v103, 0, 1, v101);
        v105 = v196;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v107 = v216;
        v106 = v217;
        *v216 = v165;
        v186(v107, v155, v106);
        v108 = v218;
        v109 = v220;
        v184(v218, v105, v220);
        v182(v108, 0, 1, v109);
        v110 = v197;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        (*v169)(v105, v109);
        (*v149)(v225, v227);
      }

      else
      {
        v111 = v219;
        if (v97 != v154)
        {
          goto LABEL_25;
        }

        v112 = *(REMRemindersListDataView.ListsSectionsModel.List.sections.getter() + 16);

        LODWORD(v165) = v112 > 1;
        v113 = v209;
        v114 = v193;
        v193(v209, v206, v111);
        v191(v113, v192, v210);
        v188(v212, v171, v213);
        v187(v214, v170, v215);
        (*v152)(v225, v153, v227);
        v115 = v211;
        v114(v211, v232, v111);
        v104 = v111;
        v189(v115, 0, 1, v111);
        v116 = v196;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v117 = REMRemindersListDataView.ListsSectionsModel.List.listID.getter();
        v119 = v216;
        v118 = v217;
        *v216 = v117;
        v186(v119, v148, v118);
        v120 = v218;
        v121 = v220;
        v184(v218, v116, v220);
        v182(v120, 0, 1, v121);
        v122 = v159;
        TTRRemindersListSectionMenuCapabilities.init()();
        TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
        (*v151)(v122, v160);
        v110 = v197;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        (*v169)(v116, v121);
      }

      v72 = v180;
      v123 = *v204;
      v124 = v110;
      v125 = v110;
      v126 = v208;
      (*v204)(v207, v124, v208);
      v127 = v231;
      REMRemindersListDataView.SectionLite.reminders.getter();
      v128 = v203;
      TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
      (*v168)(v232, v104);
      (*v167)(v125, v126);
      sub_1000079B4(v127, &qword_10076E8D8);
      v81 = v230;
      v233 = v230;
      v130 = v230[2];
      v129 = v230[3];
      if (v130 >= v129 >> 1)
      {
        sub_1004A22E0(v129 > 1, v130 + 1, 1);
        v128 = v203;
        v81 = v233;
      }

      v131 = v228 + 1;
      v81[2] = v130 + 1;
      v132 = v81 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v130;
      v82 = v131;
      (*(v205 + 32))(v132, v128, v198);
      if (v179 == v82)
      {

        v133 = v142;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v133 = v142;
  v123 = *(v142 + 16);
LABEL_22:
  v134 = v144;
  v135 = v208;
  v123(v207, v144, v208);
  TTRRemindersListTreeViewModel.SectionsContainer.init(header:sections:)();
  (*(v133 + 8))(v134, v135);
  (*(v147 + 8))(v143, v220);
  (*(v145 + 8))(v140, v227);
  (*(v146 + 8))(v206, v219);
  return (*(v138 + 8))(v226, v139);
}

double sub_100313698@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (*(v1 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
  {

    v7 = sub_100145ED8(v6);

    (*(v4 + 8))(v6, v3);
    if (v7)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v8 = dispatch thunk of TTRShowAllRemindersDataModelSourceBaseType.list(with:)();
      swift_unknownObjectRelease();
      if (v8)
      {
        *(a1 + 24) = &type metadata for TTRShowRemindersInListDragAndDropREMListTarget;
        *(a1 + 32) = &off_100714578;

        *a1 = v8;
        return result;
      }
    }
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_100313838@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance);
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

uint64_t sub_100313968(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

uint64_t sub_100313A2C()
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

uint64_t sub_100313CAC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100313CFC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_100313D4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (!a1)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (!v5)
  {
LABEL_5:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
      type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability();

      dispatch thunk of TTRRemindersBoardCellCellPresentationContext.requestHandleColumnReorderingActiveStateChange(_:)();
      swift_unknownObjectRelease();
    }
  }
}

id sub_100313E4C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100058000(&unk_10077CFE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DragItemUserInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_100314074(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000079B4(v6, &unk_10077CFE0);
    v12 = sub_100058000(&qword_10077CFD0);
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  else
  {
    sub_100316F84(v6, v10);
    v14 = sub_100058000(&qword_10077CFD0);
    v15 = *(v14 + 48);
    *a2 = v11;
    sub_100316F84(v10, a2 + v15);
    (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
    return v11;
  }
}

uint64_t sub_100314074@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&unk_10077CFE0);
  __chkstk_darwin(v2 - 8);
  v4 = v11 - v3;
  v5 = type metadata accessor for DragItemUserInfo(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = 0xD00000000000003DLL;
  v11[2] = 0x8000000100681A40;
  AnyHashable.init<A>(_:)();
  UIDragItem.localObject<A>(ofType:forKey:)();
  sub_100077654(v12);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_10077CFE0);
LABEL_6:
    v9 = 1;
    return (*(v6 + 56))(a1, v9, 1, v5);
  }

  sub_100316F84(v4, v8);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_100317008(v8);
    goto LABEL_6;
  }

  sub_100316F84(v8, a1);
  v9 = 0;
  return (*(v6 + 56))(a1, v9, 1, v5);
}

BOOL sub_10031426C(unsigned __int8 a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v6 - 8);
  v38 = &v33 - v7;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10077CF90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - v13;
  v15 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (!v16)
  {
    return 0;
  }

  v34 = v9;
  v35 = v3;
  v36 = v8;
  v17 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_currentState;
  v41 = *(v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_currentState);
  v40 = a1;
  sub_100315B44();

  v18 = FromTo.init(_:_:)();
  __chkstk_darwin(v18);
  *(&v33 - 2) = v14;
  v19 = sub_1002ECDA8(sub_100315B98, (&v33 - 4), &off_100712A50);
  (*(v12 + 8))(v14, v11);
  if (v19 == 9)
  {
    v20 = *(v16 + v17);

    return v20 == a1;
  }

  *(v16 + v17) = a1;
  if (v19 > 3)
  {
    if ((v19 - 6) >= 3)
    {
      if (v19 == 4)
      {
        [*(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView) endInteractiveMovement];
        *(v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) = 0;
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
LABEL_13:
      v22 = 0;
LABEL_15:
      sub_1003147C4(v22, v16, v1);
      goto LABEL_16;
    }

LABEL_14:
    v22 = 1;
    goto LABEL_15;
  }

  if (v19)
  {
    sub_10031495C(0, v16);
    v25 = v39;
    v26 = v35;
    (*(v39 + 16))(v5, v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnID, v35);
    v27 = v38;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
    (*(v25 + 8))(v5, v26);
    v28 = v34;
    v29 = v36;
    if ((*(v34 + 48))(v27, 1, v36) == 1)
    {
      sub_1000079B4(v27, &unk_100771B10);
    }

    else
    {
      v30 = v37;
      (*(v28 + 32))(v37, v27, v29);
      v31 = *(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v31 beginInteractiveMovementForItemAtIndexPath:isa];

      (*(v28 + 8))(v30, v29);
      *(v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) = 1;
    }
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1001CBB0C();
    swift_unknownObjectRelease();
    *(v16 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnLiftingAnimationStarted) = 1;
  }

LABEL_16:
  v23 = *(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_debugOverlayView);
  if (v23)
  {
    v24 = v23;
    [v24 removeFromSuperview];
  }

  return 1;
}

void sub_1003147C4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnLiftingAnimationStarted;
  if (*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnLiftingAnimationStarted) == 1)
  {
    v7 = *(*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_column) + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_columnReorderingAnimator);
    if (!v7)
    {
      __break(1u);
      return;
    }

    memcpy(__dst, (v7 + 32), sizeof(__dst));
    memmove(__src, (v7 + 32), 0x118uLL);
    if (sub_10010896C(__src) != 1)
    {
      memcpy(v12, __src, sizeof(v12));
      swift_unknownObjectRetain();

      sub_10000794C(__dst, &v9, &qword_10076C040);
      sub_1001054A8(v12);

      swift_unknownObjectRelease();
      sub_1000079B4(__dst, &qword_10076C040);
    }

    *(a2 + v6) = 0;
  }

  v8 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted;
  if (*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) == 1)
  {
    [*(a3 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView) cancelInteractiveMovement];
    *(a2 + v8) = 0;
  }

  if (*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollGestureDisabled) == 1)
  {
    sub_10031495C(1, a2);
  }

  if (a1)
  {
    sub_100313D4C(0);
  }
}

void sub_10031495C(char a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollGestureDisabled) == (a1 & 1))
  {
    v3 = a2;
    LOBYTE(v4) = a1;
    *(a2 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollGestureDisabled) = (a1 & 1) == 0;
    v5 = *(v2 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
    v6 = [v5 gestureRecognizers];
    if (v6)
    {
      sub_100003540(0, &unk_10077CFA0);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        goto LABEL_22;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v38 = v4;
        v39 = v5;
        v40 = v3;
        v4 = 0;
        v3 = v7 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v4 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v9 = *(v7 + 8 * v4 + 32);
          }

          v6 = v9;
          v10 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          swift_getObjectType();
          v11 = [swift_getObjCClassFromMetadata() description];
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          if (v12 == 0xD000000000000022 && 0x8000000100681A10 == v14)
          {

            goto LABEL_19;
          }

          v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v5)
          {
            goto LABEL_19;
          }

          ++v4;
          if (v10 == i)
          {
            v6 = 0;
LABEL_19:
            v5 = v39;
            v3 = v40;
            LOBYTE(v4) = v38;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

      v6 = 0;
LABEL_24:
    }

    [v6 setEnabled:v4 & 1];
    if (v4)
    {
      v16 = (v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollTouchInsetsToRestore);
      if (*(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollTouchInsetsToRestore + 32))
      {
LABEL_36:
        [v5 _autoScrollTouchInsets];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v37 = v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_debugInfo;
        *(v37 + 24) = v30;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        *(v37 + 48) = v36;
        *(v37 + 56) = 0;
        return;
      }

      v17 = v16[2];
      v18 = v16[3];
      v19 = *v16;
      v20 = v16[1];
    }

    else
    {
      [v5 _autoScrollTouchInsets];
      v23 = v22;
      v24 = v21;
      v25 = *(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_initiationTouchLocationInCell) - *(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_cellBoundsCenter);
      if (v25 < 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = *(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_initiationTouchLocationInCell) - *(v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_cellBoundsCenter);
      }

      if (v25 > 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = -v25;
      }

      v20 = v23 - v27;
      v18 = v21 - v26;
      v28 = v3 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollTouchInsetsToRestore;
      *v28 = v19;
      *(v28 + 8) = v23;
      *(v28 + 16) = v17;
      *(v28 + 24) = v24;
      *(v28 + 32) = 0;
    }

    [v5 _setAutoScrollTouchInsets:{v19, v20, v17, v18}];
    goto LABEL_36;
  }
}

void sub_100314C80(void *a1)
{
  v3 = sub_100058000(&qword_10077CFB0);
  __chkstk_darwin(v3 - 8);
  v5 = (aBlock - v4);
  v6 = sub_100058000(&unk_10077CFB8);
  __chkstk_darwin(v6);
  v8 = (aBlock - v7);
  v9 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 && (*(v10 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_systemPreviewSetOnDragItem) & 1) == 0)
  {
    *(v10 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_systemPreviewSetOnDragItem) = 1;

    v11 = [a1 items];
    sub_100003540(0, &qword_10076BAC0);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock[0] = v12;
    __chkstk_darwin(v13);
    aBlock[-2] = v1;
    sub_100058000(&qword_10077CFC8);
    v14 = sub_100058000(&qword_10077CFD0);
    sub_100316F20();
    Sequence.firstMap<A>(_:)();

    if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
    {

      sub_1000079B4(v5, &qword_10077CFB0);
    }

    else
    {
      v15 = *(v14 + 48);
      v16 = *(v6 + 48);
      *v8 = *v5;
      sub_100316F84(v5 + v15, v8 + v16);
      v17 = *v8;
      sub_100317008(v8 + *(v6 + 48));
      if (*(*(v10 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_column) + OBJC_IVAR____TtC9Reminders33TTRIBoardColumnCollectionViewCell_columnReorderingAnimator))
      {
        swift_unknownObjectRetain();

        v18 = sub_10010570C();
        swift_unknownObjectRelease();

        if (v18)
        {
          v19 = swift_allocObject();
          *(v19 + 16) = v18;
          aBlock[4] = sub_100317064;
          aBlock[5] = v19;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100313CFC;
          aBlock[3] = &unk_100720208;
          v20 = _Block_copy(aBlock);
          v21 = v18;

          [v17 setPreviewProvider:v20];
          _Block_release(v20);
        }

        else
        {
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100315158()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100315210(uint64_t a1)
{
  v2 = sub_100058000(&unk_10077CFE0);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  sub_10000794C(a1, v8 - v3, &unk_10077CFE0);
  v5 = type metadata accessor for DragItemUserInfo(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_10077CFE0);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v5;
    v6 = sub_1000317B8(&v10);
    sub_100316F84(v4, v6);
  }

  v8[1] = 0xD00000000000003DLL;
  v8[2] = 0x8000000100681A40;
  AnyHashable.init<A>(_:)();
  UIDragItem.setLocalObject(_:forKey:)();
  sub_100077654(v9);
  return sub_1000079B4(&v10, &qword_10076AE40);
}

uint64_t sub_1003154D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1003155C8, v7, v6);
}

uint64_t sub_1003155C8()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100315694;

  return sub_100482668(500000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100315694()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  v3 = v2[14];
  v4 = v2[13];
  if (v0)
  {
    v5 = sub_1003158F8;
  }

  else
  {
    v5 = sub_10031581C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10031581C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4 && *(v4 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_currentState) == 2)
    {
      sub_10031426C(6u);
    }
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003158F8()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_100315AE0(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
  [a1 locationInView:v2];
  v4 = v3;
  v6 = v5;
  [v2 bounds];
  v8.x = v4;
  v8.y = v6;
  return CGRectContainsPoint(v9, v8);
}

unint64_t sub_100315B44()
{
  result = qword_10077CF98;
  if (!qword_10077CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077CF98);
  }

  return result;
}

uint64_t sub_100315BB8(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  result = swift_beginAccess();
  v6 = *(a2 + v4);
  if (v6)
  {
    if (*(v6 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) == 1)
    {
      v7 = *(a2 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);

      [a1 locationInView:v7];
      v10 = sub_100108848(v8, v9, *(v6 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_initiationTouchLocationInCell));
      v12 = sub_100316EF8(v10, v11, *(v6 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_cellBoundsCenter));
      v14 = v13;
      [v7 updateInteractiveMovementTargetPosition:?];
      v15 = v6 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_debugInfo;
      *v15 = v12;
      *(v15 + 8) = v14;
      *(v15 + 16) = 0;
    }
  }

  return result;
}

void *sub_100315CC0(char *a1)
{
  v74 = a1;
  v2 = sub_100058000(&unk_10077CFE0);
  __chkstk_darwin(v2 - 8);
  v69 = &v63 - v3;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v70 = &v63 - v5;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v73 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_activeReorderingContext;
  swift_beginAccess();
  if (!*(v1 + v22))
  {
    v65 = v8;
    v64 = v14;
    v66 = v17;
    v67 = v18;
    v68 = v19;
    v24 = *(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
    [v74 locationInView:v24];
    v25 = [v24 indexPathForItemAtPoint:?];
    if (v25)
    {
      v26 = v21;
      v27 = v25;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v1;
      v29 = v11;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
      v30 = v73;
      v31 = v12;
      if ((*(v73 + 48))(v11, 1, v12) == 1)
      {
        (*(v68 + 8))(v21, v67);
        sub_1000079B4(v11, &unk_10076BB50);
      }

      else
      {
        v32 = v66;
        (*(v30 + 32))(v66, v29, v12);
        result = swift_unknownObjectWeakLoadStrong();
        v33 = v68;
        if (result)
        {
          v34 = result;
          v35 = *(result + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_mainDataSource);
          if (!v35)
          {
            __break(1u);
            return result;
          }

          v36 = v35;
          v37 = v70;
          TTRRemindersBoardMainDiffableDataSource.item(withID:)();

          v39 = v71;
          v38 = v72;
          v40 = (*(v71 + 48))(v37, 1, v72);
          v41 = v65;
          if (v40 == 1)
          {
            swift_unknownObjectRelease();
            sub_1000079B4(v37, &qword_100772140);
            v30 = v73;
          }

          else
          {
            (*(v39 + 32))(v65, v37, v38);
            v42 = v41;
            v43 = *(v34 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
            v44 = *(v34 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
            sub_10000C36C((v34 + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v43);
            v45 = (*(*(v44 + 8) + 552))(v42, v43);
            if (v45 >> 62)
            {
              v46 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v47 = v28;
            swift_unknownObjectRelease();

            (*(v71 + 8))(v65, v72);
            v30 = v73;
            if (v46)
            {
              v74 = v26;
              v48 = *(v73 + 16);
              v49 = v64;
              v48(v64, v32, v31);
              v50 = v30;
              v51 = type metadata accessor for TTRIRemindersBoardColumnDragItem();
              v52 = objc_allocWithZone(v51);
              v48(&v52[OBJC_IVAR____TtC9Reminders32TTRIRemindersBoardColumnDragItem_columnID], v49, v31);
              v76.receiver = v52;
              v76.super_class = v51;
              v53 = objc_msgSendSuper2(&v76, "init");
              v73 = *(v50 + 8);
              (v73)(v49, v31);
              v54 = [objc_allocWithZone(NSItemProvider) initWithObject:v53];
              v55 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v54];
              v56 = OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_id;
              v57 = type metadata accessor for UUID();
              v58 = v47 + v56;
              v59 = v69;
              (*(*(v57 - 8) + 16))(v69, v58, v57);
              v60 = type metadata accessor for DragItemUserInfo(0);
              v48((v59 + *(v60 + 20)), v32, v31);
              (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
              sub_100315210(v59);
              sub_1000079B4(v59, &unk_10077CFE0);
              aBlock[4] = variable initialization expression of TTRSmartListFilterEditorInteractor.listFetchOperationManager;
              aBlock[5] = 0;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_100313CFC;
              aBlock[3] = &unk_100720280;
              v61 = _Block_copy(aBlock);

              [v55 setPreviewProvider:v61];
              _Block_release(v61);
              sub_100058000(&qword_10076B780);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_10062D420;
              *(v62 + 32) = v55;

              (v73)(v32, v31);
              (*(v68 + 8))(v74, v67);
              return v62;
            }
          }
        }

        (*(v30 + 8))(v32, v31);
        (*(v33 + 8))(v26, v67);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003164F0(void *a1)
{
  v71 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v64 - v5;
  v74 = type metadata accessor for IndexPath();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_10077CFB0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v64 - v9);
  v11 = sub_100058000(&unk_10077CFB8);
  __chkstk_darwin(v11);
  v13 = (&v64 - v12);
  v14 = type metadata accessor for DragItemUserInfo(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v18 = [a1 items];
  sub_100003540(0, &qword_10076BAC0);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v79 = v19;
  v75 = v1;
  v76 = v1;
  sub_100058000(&qword_10077CFC8);
  v20 = sub_100058000(&qword_10077CFD0);
  sub_100316F20();
  Sequence.firstMap<A>(_:)();

  if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
  {
    v21 = &qword_10077CFB0;
    v22 = v10;
    return sub_1000079B4(v22, v21);
  }

  v23 = *(v20 + 48);
  v24 = *(v11 + 48);
  *v13 = *v10;
  sub_100316F84(v10 + v23, v13 + v24);

  sub_100316F84(v13 + *(v11 + 48), v17);
  v25 = v75;
  v26 = *(v14 + 20);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v27 = v73;
  v28 = v74;
  if ((*(v73 + 48))(v6, 1, v74) == 1)
  {
    sub_100317008(v17);
    v21 = &unk_100771B10;
    v22 = v6;
    return sub_1000079B4(v22, v21);
  }

  v30 = v17;
  v31 = v72;
  (*(v27 + 32))(v72, v6, v28);
  v32 = *(v25 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_collectionView);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v34 = [v32 cellForItemAtIndexPath:isa];

  if (!v34)
  {
    goto LABEL_13;
  }

  v35 = IndexPath._bridgeToObjectiveC()().super.isa;
  v36 = [v32 cellForItemAtIndexPath:v35];

  if (!v36)
  {
    v36 = v34;
LABEL_12:

LABEL_13:
    (*(v27 + 8))(v31, v28);
    v63 = v30;
    return sub_100317008(v63);
  }

  swift_getObjectType();
  v37 = swift_conformsToProtocol2();
  if (!v37)
  {

    goto LABEL_12;
  }

  v38 = v69;
  v39 = *(v69 + 16);
  v67 = v30;
  v66 = v37;
  v39(v70, &v30[v26], v71);
  v65 = v36;
  [v34 bounds];
  CGRect.center.getter();
  v41 = v40;
  v43 = v42;
  [v68 locationInView:v34];
  v45 = v44;
  v47 = v46;
  type metadata accessor for TTRIRemindersBoardColumnReorderingContext(0);
  v48 = v27;
  v49 = swift_allocObject();
  *(v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_currentState) = 0;
  *(v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_systemPreviewSetOnDragItem) = 0;
  *(v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnLiftingAnimationStarted) = 0;
  *(v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_collectionViewInteractiveMovementStarted) = 0;
  *(v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_dropInterceptingView) = 0;
  *(v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollGestureDisabled) = 0;
  v50 = v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_autoScrollTouchInsetsToRestore;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 1;
  v51 = OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_lastTargetIndexPathForMoveOfItem;
  v52 = sub_100058000(&qword_10077CFF0);
  (*(*(v52 - 8) + 56))(v49 + v51, 1, 1, v52);
  v53 = v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_debugInfo;
  v78 = 1;
  v77 = 1;
  v79 = 0uLL;
  v80[0] = 1;
  memset(&v80[8], 0, 32);
  v80[40] = 1;
  v81 = 0;
  v54 = *&v80[32];
  *(v53 + 32) = *&v80[16];
  *(v53 + 48) = v54;
  *(v53 + 64) = 0;
  v55 = *v80;
  *v53 = v79;
  *(v53 + 16) = v55;
  (*(v38 + 32))(v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_columnID, v70, v71);
  v56 = (v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_column);
  v57 = v65;
  v58 = v66;
  *v56 = v65;
  v56[1] = v58;
  v59 = (v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_cellBoundsCenter);
  *v59 = v41;
  v59[1] = v43;
  v60 = (v49 + OBJC_IVAR____TtC9Reminders41TTRIRemindersBoardColumnReorderingContext_initiationTouchLocationInCell);
  *v60 = v45;
  v60[1] = v47;
  *(v53 + 64) = v32;
  v61 = v32;
  sub_100317140(&v79);

  sub_100313D4C(v62);
  sub_10031426C(1u);

  (*(v48 + 8))(v31, v28);
  v63 = v67;
  return sub_100317008(v63);
}

uint64_t sub_100316CEC()
{
  v0 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  sub_10031426C(2u);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_100084EC0(0, 0, v2, &unk_10063AD80, v6);
}

id sub_100316E44(void *a1)
{
  result = sub_10031426C(3u);
  if (result)
  {
    swift_getObjectType();
    if (sub_100315AE0(a1, v1))
    {
      sub_100315BB8(a1, v1);
    }

    else if (sub_10031426C(4u))
    {
      sub_100314C80(a1);
    }

    result = *(v1 + OBJC_IVAR____TtC9Reminders44TTRIRemindersBoardColumnReorderingController_debugOverlayView);
    if (result)
    {

      return [result removeFromSuperview];
    }
  }

  return result;
}

unint64_t sub_100316F20()
{
  result = qword_10077CFD8;
  if (!qword_10077CFD8)
  {
    sub_10005D20C(&qword_10077CFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077CFD8);
  }

  return result;
}

uint64_t sub_100316F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragItemUserInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100317008(uint64_t a1)
{
  v2 = type metadata accessor for DragItemUserInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100317064()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_10031708C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1003154D4(a1, v4, v5, v6);
}

char *sub_100317194(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_100317290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_100317334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1003173E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100317494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_100317544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_10031761C()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.ItemID();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003176FC(uint64_t a1, int a2)
{
  v3 = v2;
  v42 = a2;
  v5 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100058000(&qword_10077D178);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v35[-v10];
  v12 = sub_100058000(&qword_100771DD0);
  v13 = __chkstk_darwin(v12 - 8);
  v43 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v13);
  v17 = &v35[-v16];
  __chkstk_darwin(v15);
  v19 = &v35[-v18];
  v20 = *(v6 + 16);
  v44 = a1;
  v41 = v6 + 16;
  v39 = v20;
  v20(&v35[-v18], a1, v5);
  v21 = *(v6 + 56);
  v40 = v6 + 56;
  v38 = v21;
  v21(v19, 0, 1, v5);
  v22 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  swift_beginAccess();
  v23 = *(v9 + 56);
  sub_10000794C(v19, v11, &qword_100771DD0);
  v45 = v3;
  sub_10000794C(v3 + v22, &v11[v23], &qword_100771DD0);
  v24 = *(v6 + 48);
  if (v24(v11, 1, v5) == 1)
  {
    sub_1000079B4(v19, &qword_100771DD0);
    if (v24(&v11[v23], 1, v5) == 1)
    {
      return sub_1000079B4(v11, &qword_100771DD0);
    }
  }

  else
  {
    sub_10000794C(v11, v17, &qword_100771DD0);
    if (v24(&v11[v23], 1, v5) != 1)
    {
      v33 = v37;
      (*(v6 + 32))(v37, &v11[v23], v5);
      sub_10031B444(&qword_10076D1C0, &type metadata accessor for TTRAccountsListsViewModel.PinnedList);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v6 + 8);
      v34(v33, v5);
      sub_1000079B4(v19, &qword_100771DD0);
      v34(v17, v5);
      result = sub_1000079B4(v11, &qword_100771DD0);
      v26 = v44;
      v27 = v45;
      if (v36)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1000079B4(v19, &qword_100771DD0);
    (*(v6 + 8))(v17, v5);
  }

  sub_1000079B4(v11, &qword_10077D178);
  v26 = v44;
  v27 = v45;
LABEL_7:
  v28 = sub_100027EE8();
  __chkstk_darwin(v28);
  *&v35[-16] = v26;
  v29 = sub_1002ECA94(sub_1001C5E40, &v35[-32], v28);

  if (v29)
  {
    sub_10002F124(v42 & 1);
    v30 = type metadata accessor for TTRIPinnedListControl();
    v48.receiver = v29;
    v48.super_class = v30;
    v31 = objc_msgSendSuper2(&v48, "isSelected");
    v47.receiver = v29;
    v47.super_class = v30;
    objc_msgSendSuper2(&v47, "setSelected:", 1);
    v46.receiver = v29;
    v46.super_class = v30;
    if (v31 != objc_msgSendSuper2(&v46, "isSelected"))
    {
      sub_1001A86C4();
    }

    v32 = v43;
    v39(v43, v26, v5);
    v38(v32, 0, 1, v5);
    swift_beginAccess();
    sub_10000D184(v32, v27 + v22, &qword_100771DD0);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100317CA4(uint64_t a1)
{
  v79 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v73 = *(v79 - 8);
  __chkstk_darwin(v79);
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v7 - 8);
  v77 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v65 - v10;
  __chkstk_darwin(v11);
  v80 = &v65 - v12;
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v16 = sub_100058000(&qword_10077D158);
  __chkstk_darwin(v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  v22 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dropTargetPinnedListID;
  swift_beginAccess();
  v76 = v16;
  v23 = *(v16 + 48);
  v81 = v1;
  sub_10000794C(v1 + v22, v21, &unk_10077D160);
  v85 = a1;
  sub_10000794C(a1, &v21[v23], &unk_10077D160);
  v82 = v5;
  v24 = *(v5 + 48);
  v25 = v24(v21, 1, v4);
  v83 = v24;
  v84 = v5 + 48;
  if (v25 == 1)
  {
    if (v24(&v21[v23], 1, v4) == 1)
    {
      return sub_1000079B4(v21, &unk_10077D160);
    }
  }

  else
  {
    sub_10000794C(v21, v15, &unk_10077D160);
    if (v24(&v21[v23], 1, v4) != 1)
    {
      v60 = v82;
      v61 = v69;
      (*(v82 + 32))(v69, &v21[v23], v4);
      sub_10031B444(&qword_10076BB48, &type metadata accessor for UUID);
      v62 = dispatch thunk of static Equatable.== infix(_:_:)();
      v63 = *(v60 + 8);
      v63(v61, v4);
      v63(v15, v4);
      result = sub_1000079B4(v21, &unk_10077D160);
      if (v62)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v82 + 8))(v15, v4);
  }

  sub_1000079B4(v21, &qword_10077D158);
LABEL_7:
  v27 = v85;
  v28 = v80;
  sub_10000794C(v85, v80, &unk_10077D160);
  v29 = v81;
  swift_beginAccess();
  sub_10000D184(v28, v29 + v22, &unk_10077D160);
  swift_endAccess();
  v30 = sub_100027EE8();
  v31 = v30;
  if (v30 >> 62)
  {
    v64 = v30;
    result = _CocoaArrayWrapper.endIndex.getter();
    v31 = v64;
  }

  else
  {
    result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v78;
  v33 = v83;
  if (!result)
  {
  }

  if (result >= 1)
  {
    v34 = 0;
    v81 = v31 & 0xC000000000000001;
    v75 = (v73 + 6);
    v74 = (v82 + 56);
    v68 = (v73 + 2);
    v67 = (v73 + 1);
    v66 = (v82 + 32);
    v71 = (v82 + 8);
    v73 = v87;
    v82 = v31;
    v72 = v4;
    v80 = result;
    while (1)
    {
      if (v81)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v44 = *(v31 + 8 * v34 + 32);
      }

      v42 = v44;
      if (v33(v27, 1, v4) == 1)
      {
        goto LABEL_29;
      }

      v45 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
      swift_beginAccess();
      v46 = 1;
      if (!(*v75)(&v42[v45], 1, v79))
      {
        v47 = &v42[v45];
        v48 = v70;
        v49 = v79;
        (*v68)(v70, v47, v79);
        TTRAccountsListsViewModel.PinnedList.id.getter();
        (*v67)(v48, v49);
        v46 = 0;
      }

      (*v74)(v32, v46, 1, v4);
      v50 = *(v76 + 48);
      sub_10000794C(v32, v18, &unk_10077D160);
      sub_10000794C(v85, &v18[v50], &unk_10077D160);
      v33 = v83;
      if (v83(v18, 1, v4) == 1)
      {
        break;
      }

      sub_10000794C(v18, v77, &unk_10077D160);
      if (v33(&v18[v50], 1, v4) == 1)
      {
        sub_1000079B4(v32, &unk_10077D160);
        (*v71)(v77, v4);
LABEL_28:
        sub_1000079B4(v18, &qword_10077D158);
        v4 = v72;
        v27 = v85;
LABEL_29:
        v52 = v42[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget];
        v42[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget] = 0;
        if (v52)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }

      v53 = &v18[v50];
      v54 = v69;
      (*v66)(v69, v53, v4);
      sub_10031B444(&qword_10076BB48, &type metadata accessor for UUID);
      v55 = dispatch thunk of static Equatable.== infix(_:_:)();
      v56 = *v71;
      v57 = v54;
      v58 = v78;
      (*v71)(v57, v4);
      sub_1000079B4(v58, &unk_10077D160);
      v56(v77, v4);
      v32 = v58;
      v33 = v83;
      sub_1000079B4(v18, &unk_10077D160);
      v59 = v42[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget];
      v42[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget] = v55 & 1;
      v27 = v85;
      if ((v55 & 1) != v59)
      {
LABEL_12:
        type metadata accessor for TTRUserDefaults();
        v35 = static TTRUserDefaults.appUserDefaults.getter();
        TTRUserDefaults.animationSlowModeEnabled.getter();

        type metadata accessor for TTRIAnimationSlowMode();
        swift_allocObject();
        TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
        v36 = 0.15;
        if (v42[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor])
        {
          v36 = 0.25;
        }

        v37 = TTRIAnimationSlowMode.adjust(_:)(v36);
        v38 = swift_allocObject();
        *(v38 + 16) = v42;
        v39 = objc_allocWithZone(UIViewPropertyAnimator);
        v87[2] = sub_10031B43C;
        v87[3] = v38;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v87[0] = sub_10001047C;
        v87[1] = &unk_100720370;
        v40 = _Block_copy(aBlock);
        v41 = v42;
        v33 = v83;

        v42 = [v39 initWithDuration:v40 controlPoint1:v37 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v43 = v40;
        v27 = v85;
        _Block_release(v43);
        [v42 startAnimation];

        v32 = v78;
      }

LABEL_15:
      ++v34;

      v31 = v82;
      if (v80 == v34)
      {
      }
    }

    sub_1000079B4(v32, &unk_10077D160);
    if (v33(&v18[v50], 1, v4) == 1)
    {
      sub_1000079B4(v18, &unk_10077D160);
      v51 = v42[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget];
      v42[OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_isDropTarget] = 1;
      v4 = v72;
      v27 = v85;
      if ((v51 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100318834(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v6 - 8);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(a1 + v15, v10, &qword_100771DD0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1000079B4(v10, &qword_100771DD0);
  }

  v17 = *(v12 + 32);
  v17(v14, v10, v11);
  sub_10002F124(a2 & 1);
  if (a2)
  {
    v18 = type metadata accessor for TTRIPinnedListControl();
    v34.receiver = a1;
    v34.super_class = v18;
    v19 = objc_msgSendSuper2(&v34, "isSelected");
    v33.receiver = a1;
    v33.super_class = v18;
    objc_msgSendSuper2(&v33, "setSelected:", 1);
    v32.receiver = a1;
    v32.super_class = v18;
    v20 = 0;
    if (v19 != objc_msgSendSuper2(&v32, "isSelected"))
    {
      sub_1001A86C4();
      v20 = 0;
    }
  }

  else
  {
    v28 = v17;
    v29 = v3;
    v30 = objc_opt_self();
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    v22 = swift_allocObject();
    v20 = sub_10031B434;
    *(v22 + 16) = sub_10031B434;
    *(v22 + 24) = v21;
    aBlock[4] = sub_100026410;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100720320;
    v23 = _Block_copy(aBlock);
    v24 = a1;

    [v30 performWithoutAnimation:v23];
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v17 = v28;
    v3 = v29;
  }

  v26 = v31;
  v17(v31, v14, v11);
  (*(v12 + 56))(v26, 0, 1, v11);
  v27 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  swift_beginAccess();
  sub_10000D184(v26, v3 + v27, &qword_100771DD0);
  swift_endAccess();
  return sub_1000301AC(v20);
}

void sub_100318C48(void *a1)
{
  v3 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = type metadata accessor for TTRIPinnedListControl();
    v17.receiver = a1;
    v17.super_class = v10;
    v11 = a1;
    if (objc_msgSendSuper2(&v17, "isSelected"))
    {
    }

    else
    {
      v12 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
      swift_beginAccess();
      sub_10000794C(v11 + v12, v5, &qword_100771DD0);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_1000079B4(v5, &qword_100771DD0);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        sub_100318834(v11, 1);
        v13 = v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v14 = *(v13 + 8);
          ObjectType = swift_getObjectType();
          (*(v14 + 8))(v1, v9, ObjectType, v14);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

uint64_t sub_100318EAC(void *a1, char a2)
{
  v5 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIPinnedListControl();
  v19.receiver = a1;
  v19.super_class = v12;
  result = objc_msgSendSuper2(&v19, "isSelected");
  if ((result & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
    swift_beginAccess();
    sub_10000794C(a1 + v14, v7, &qword_100771DD0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_1000079B4(v7, &qword_100771DD0);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_100318834(a1, a2 & 1);
      v15 = v2 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 8);
        ObjectType = swift_getObjectType();
        (*(v16 + 8))(v2, v11, ObjectType, v16);
        swift_unknownObjectRelease();
      }

      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

void sub_100319198()
{
  v1 = [v0 subviews];
  sub_100003540(0, &qword_10076B020);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 setUserInteractionEnabled:{objc_msgSend(v0, "isUserInteractionEnabled")}];
  }

LABEL_10:
}

unint64_t sub_1003192F8()
{
  result = sub_100027EE8();
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (result)
    {
LABEL_3:
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        v3 = 0;
        v4 = v1 & 0xC000000000000001;
        v5 = &selRef_layoutIfNeeded;
        v21 = v1;
        do
        {
          if (v4)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v6 = *(v1 + 8 * v3 + 32);
          }

          v7 = v6;
          v8 = type metadata accessor for TTRIPinnedListControl();
          v26.receiver = v7;
          v26.super_class = v8;
          if (objc_msgSendSuper2(&v26, v5[504]))
          {
            v25.receiver = v7;
            v25.super_class = v8;
            v9 = objc_msgSendSuper2(&v25, v5[504]);
            v24.receiver = v7;
            v24.super_class = v8;
            objc_msgSendSuper2(&v24, "setSelected:", 0);
            v23.receiver = v7;
            v23.super_class = v8;
            if (v9 != objc_msgSendSuper2(&v23, v5[504]))
            {
              type metadata accessor for TTRUserDefaults();
              v10 = static TTRUserDefaults.appUserDefaults.getter();
              TTRUserDefaults.animationSlowModeEnabled.getter();

              type metadata accessor for TTRIAnimationSlowMode();
              swift_allocObject();
              TTRIAnimationSlowMode.init(isSlowModeEnabled:)();
              v11 = 0.15;
              if (*(v7 + OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_selectedStateShowsPinnedListColor))
              {
                v11 = 0.25;
              }

              v12 = TTRIAnimationSlowMode.adjust(_:)(v11);
              v13 = swift_allocObject();
              *(v13 + 16) = v7;
              v14 = v2;
              v15 = v5;
              v16 = v4;
              v17 = objc_allocWithZone(UIViewPropertyAnimator);
              aBlock[4] = sub_10031B4B8;
              aBlock[5] = v13;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10001047C;
              aBlock[3] = &unk_1007204D8;
              v18 = _Block_copy(aBlock);
              v19 = v7;

              v20 = v17;
              v4 = v16;
              v5 = v15;
              v2 = v14;
              v1 = v21;
              v7 = [v20 initWithDuration:v18 controlPoint1:v12 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
              _Block_release(v18);
              [v7 startAnimation];
            }
          }

          ++v3;
        }

        while (v2 != v3);
      }

      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_10031963C(uint64_t *a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100058000(&qword_10077D158);
  __chkstk_darwin(v39);
  v40 = &v36 - v6;
  v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10077D160);
  v12 = __chkstk_darwin(v11 - 8);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - v15;
  __chkstk_darwin(v14);
  v42 = &v36 - v17;
  v18 = *a1;
  v19 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  v20 = 1;
  if (!(*(v8 + 48))(v18 + v19, 1, v7))
  {
    (*(v8 + 16))(v10, v18 + v19, v7);
    TTRAccountsListsViewModel.PinnedList.id.getter();
    (*(v8 + 8))(v10, v7);
    v20 = 0;
  }

  v21 = *(v4 + 56);
  v22 = v42;
  v21(v42, v20, 1, v3);
  TTRAccountsListsViewModel.PinnedList.id.getter();
  v21(v16, 0, 1, v3);
  v23 = v40;
  v24 = *(v39 + 48);
  sub_10000794C(v22, v40, &unk_10077D160);
  sub_10000794C(v16, v23 + v24, &unk_10077D160);
  v25 = *(v4 + 48);
  v26 = v25(v23, 1, v3);
  v27 = v3;
  v28 = v23;
  if (v26 != 1)
  {
    v30 = v38;
    sub_10000794C(v23, v38, &unk_10077D160);
    if (v25(v23 + v24, 1, v27) != 1)
    {
      v31 = v23 + v24;
      v32 = v37;
      (*(v4 + 32))(v37, v31, v27);
      sub_10031B444(&qword_10076BB48, &type metadata accessor for UUID);
      v33 = v30;
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v34 = *(v4 + 8);
      v34(v32, v27);
      sub_1000079B4(v16, &unk_10077D160);
      sub_1000079B4(v42, &unk_10077D160);
      v34(v33, v27);
      sub_1000079B4(v28, &unk_10077D160);
      return v29 & 1;
    }

    sub_1000079B4(v16, &unk_10077D160);
    sub_1000079B4(v42, &unk_10077D160);
    (*(v4 + 8))(v30, v27);
    goto LABEL_8;
  }

  sub_1000079B4(v16, &unk_10077D160);
  sub_1000079B4(v42, &unk_10077D160);
  if (v25(v23 + v24, 1, v27) != 1)
  {
LABEL_8:
    sub_1000079B4(v23, &qword_10077D158);
    v29 = 0;
    return v29 & 1;
  }

  sub_1000079B4(v23, &unk_10077D160);
  v29 = 1;
  return v29 & 1;
}

void sub_100319BCC(void *a1)
{
  ObjectType = swift_getObjectType();
  v6.receiver = a1;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, "isSelected");
  v5.receiver = a1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "setSelected:", 1);
  v4.receiver = a1;
  v4.super_class = ObjectType;
  if (v3 != objc_msgSendSuper2(&v4, "isSelected"))
  {
    sub_1001A86C4();
  }
}

id sub_100319DC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIPinnedListsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100319E94(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(a1 + v12, v7, &qword_100771DD0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100771DD0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = v2 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      v13 = (*(v15 + 16))(v2, v11, a2, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    (*(v9 + 8))(v11, v8);
  }

  return v13;
}

uint64_t sub_10031A0D0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(a1 + v16, v11, &qword_100771DD0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000079B4(v11, &qword_100771DD0);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v18 = v4 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      v17 = (*(v19 + 48))(v4, v15, a2, ObjectType, v19, a3, a4);
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    (*(v13 + 8))(v15, v12);
  }

  return v17;
}

void sub_10031A31C(void *a1)
{
  v3 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus) == 1)
  {
    v10 = type metadata accessor for TTRIPinnedListControl();
    v16.receiver = a1;
    v16.super_class = v10;
    if ((objc_msgSendSuper2(&v16, "isSelected") & 1) == 0)
    {
      v11 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
      swift_beginAccess();
      sub_10000794C(a1 + v11, v5, &qword_100771DD0);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1000079B4(v5, &qword_100771DD0);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        sub_100318834(a1, 0);
        v12 = v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v12 + 8);
          ObjectType = swift_getObjectType();
          (*(v13 + 8))(v1, v9, ObjectType, v13);
          swift_unknownObjectRelease();
        }

        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

uint64_t sub_10031A56C(uint64_t a1)
{
  v3 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(a1 + v10, v5, &qword_100771DD0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000079B4(v5, &qword_100771DD0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      v11 = (*(v13 + 56))(v1, v9, ObjectType, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0;
    }

    (*(v7 + 8))(v9, v6);
  }

  return v11;
}

uint64_t sub_10031A860(void *a1)
{
  v2 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = a1;
  sub_100317CA4(v4);

  return sub_1000079B4(v4, &unk_10077D160);
}

void *sub_10031AA3C(void *a1)
{
  v2 = sub_100027EE8();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [a1 locationInView:v6];
      if ([v7 pointInside:0 withEvent:?])
      {

        return v7;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void sub_10031AB5C()
{
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedPinnedList;
  v2 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dynamicDateGlyphCache) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedLists) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectedStateShowsPinnedListColor) = 0;
  v3 = v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_marginsForControls;
  *v3 = xmmword_10063ADB0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_selectionFollowsFocus) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_usesLargeTextLayout) = 0;
  v4 = OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_dropTargetPinnedListID;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10031ACD4(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v4 - 8);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v33 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = sub_10031AA3C(a1);
  v19 = [objc_allocWithZone(UIDropProposal) initWithDropOperation:0];
  if (!v18)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_6;
  }

  v20 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
  swift_beginAccess();
  sub_10000794C(&v18[v20], v11, &qword_100771DD0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_6:
    sub_1000079B4(v11, &qword_100771DD0);
    goto LABEL_7;
  }

  (*(v13 + 32))(v17, v11, v12);
  v21 = v2 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    v24 = (*(v22 + 32))(v2, v17, a1, ObjectType, v22);

    swift_unknownObjectRelease();
    (*(v13 + 8))(v17, v12);
    v19 = v24;
  }

  else
  {
    (*(v13 + 8))(v17, v12);
  }

LABEL_7:
  if ([v19 operation] - 2 < 2)
  {
    if (v18)
    {
      v26 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
      swift_beginAccess();
      v27 = 1;
      if (!(*(v13 + 48))(&v18[v26], 1, v12))
      {
        v28 = &v18[v26];
        v29 = v33;
        (*(v13 + 16))(v33, v28, v12);
        TTRAccountsListsViewModel.PinnedList.id.getter();
        (*(v13 + 8))(v29, v12);
        v27 = 0;
      }
    }

    else
    {
      v27 = 1;
    }

    v30 = type metadata accessor for UUID();
    v31 = v34;
    (*(*(v30 - 8) + 56))(v34, v27, 1, v30);
    sub_10031B3C4(v31, v8);
  }

  else
  {
    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  }

  sub_100317CA4(v8);

  sub_1000079B4(v8, &unk_10077D160);
  return v19;
}

void *sub_10031B18C(void *a1)
{
  v3 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10031AA3C(a1);
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC9Reminders21TTRIPinnedListControl_pinnedList;
    swift_beginAccess();
    sub_10000794C(v11 + v12, v5, &qword_100771DD0);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_1000079B4(v5, &qword_100771DD0);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v13 = v1 + OBJC_IVAR____TtC9Reminders19TTRIPinnedListsView_pinnedListsViewDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 8);
        ObjectType = swift_getObjectType();
        (*(v14 + 40))(v1, v9, a1, ObjectType, v14);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_10031B3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077D160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031B444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031B4D0()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_10031B534()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_10031B598()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.flagged(_:), v0);
  v5 = TTRUserDefaults.showingLargeAttachments(forType:)();

  (*(v1 + 8))(v3, v0);
  return v5 & 1;
}

uint64_t sub_10031B6A8()
{
  v0 = type metadata accessor for TTRUserDefaults.ShowingLargeAttachmentsType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRUserDefaults();
  v4 = static TTRUserDefaults.appUserDefaults.getter();
  (*(v1 + 104))(v3, enum case for TTRUserDefaults.ShowingLargeAttachmentsType.flagged(_:), v0);
  TTRUserDefaults.setShowingLargeAttachments(value:forType:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10031B7BC()
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

uint64_t sub_10031B918()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_hasIncompleteOrCompletedReminders) == 2)
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)();
  }

  else
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)();
  }
}

double sub_10031B950@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10031C60C();
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

uint64_t sub_10031BAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_10031C60C();
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

BOOL sub_10031BC24(void *a1)
{
  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter() || (swift_getObjectType(), v2 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)(), swift_unknownObjectRelease(), (v2 & 1) != 0))
  {
    sub_10000C36C(a1, a1[3]);
    dispatch thunk of TTRReminderProtocol.ttrFlaggedContext.getter();
    if (v6)
    {
      sub_10000C36C(v5, v6);
      v3 = dispatch thunk of TTRReminderFlaggedContextProtocol.flagged.getter();
      sub_100004758(v5);
      return v3 > 0;
    }

    sub_1000079B4(v5, &qword_1007699A0);
  }

  return 0;
}

uint64_t sub_10031BD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10031C60C();
  sub_1001D6AC0(a1, a2, a3);
}

uint64_t sub_10031BD80()
{
  v0 = type metadata accessor for TTRUserActivityListPayload.State();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
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

uint64_t sub_10031BED4()
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
  sub_100070538();
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
  v22 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
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

void sub_10031C2FC(void *a1)
{
  v2 = [a1 flaggedContext];
  if (v2)
  {
    v4 = v2;
    if (REMReminderFlaggedContextChangeItem.isFlagged.getter())
    {
    }

    else
    {
      type metadata accessor for TTRReminderEditor();
      sub_10031E630(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
      v3 = a1;
      TTRUndoableEditing.init(changeItem:undoManager:)();
      TTRReminderEditor.edit(isFlagged:)(1);
    }
  }
}

id sub_10031C3F4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList);
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

uint64_t sub_10031C52C()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  sub_100003E68(v0, qword_10077D230);
  v1 = sub_100003E30(v0, qword_10077D230);
  v2 = enum case for TTRRemindersListViewModel.SectionID.NamedID.flaggedSection(_:);
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
  v5 = *(*(v0 - 8) + 104);

  return v5(v1, v4, v0);
}

uint64_t sub_10031C60C()
{
  v1 = OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    v3 = REMSmartListTypeFlagged;
    type metadata accessor for TTRAttributeMatchingDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 1;
    *(v2 + 24) = &off_100720500;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

uint64_t sub_10031C6C8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v4 - 8);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v6 - 8);
  v40 = &v32 - v7;
  v8 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v8 - 8);
  v38 = &v32 - v9;
  v35 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v44 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v12 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v15 - 8);
  v17 = &v32 - v16;
  v18 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v18 - 8);
  v20 = &v32 - v19;
  v21 = enum case for TTRListType.PredefinedSmartListType.flagged(_:);
  v22 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = enum case for TTRListType.predefinedSmartList(_:);
  v24 = type metadata accessor for TTRListType();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v20, v23, v24);
  (*(v25 + 56))(v20, 0, 1, v24);
  v32 = REMSmartListType.title.getter();
  v36 = static TTRListColors.SmartList.flagged.getter();
  v26 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
  v27 = *(*(v26 - 8) + 56);
  v37 = v17;
  v27(v17, 1, 1, v26);
  v39 = v1;
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_unknownObjectRelease();
  }

  TTRRemindersListSectionMenuCapabilities.init()();
  v33 = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
  (*(v12 + 8))(v14, v34);
  v28 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
  if (v28)
  {
    swift_unknownObjectRelease();
  }

  (*(v10 + 104))(v44, enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:), v35);
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
  sub_1000079B4(v45, &qword_1007693C0);
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    LODWORD(v35) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
  }

  else
  {
    LODWORD(v35) = 0;
  }

  LODWORD(v34) = v28 != 0;
  v29 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);
  v30 = type metadata accessor for TTRTemplatePublicLinkData();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
  TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
  return TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();
}

uint64_t sub_10031CD94()
{
}

uint64_t sub_10031CDD4()
{
  v0 = *(sub_10056FD38() + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowFlaggedViewModelSource()
{
  result = qword_10077D290;
  if (!qword_10077D290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10031CF14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v116 = &v96 - v7;
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v115 = &v96 - v9;
  v126 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v114 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v11 - 8);
  v111 = &v96 - v12;
  v108 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v109 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v113 = *(v124 - 8);
  __chkstk_darwin(v124);
  v110 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v122 = &v96 - v16;
  v123 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v112 = *(v123 - 8);
  __chkstk_darwin(v123);
  v127 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100058000(&qword_10076F6E8);
  __chkstk_darwin(v19 - 8);
  v21 = &v96 - v20;
  v106 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v121 = *(v23 - 8);
  __chkstk_darwin(v23);
  v120 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v119 = &v96 - v26;
  v27 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v27 - 8);
  v29 = &v96 - v28;
  v30 = type metadata accessor for TTRListType.SortingCapability();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v101 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v33);
  v36 = &v96 - v35;
  v128 = OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList;
  v129 = a1;
  v37 = *(v3 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_smartList);
  v104 = v21;
  if (v37)
  {
    v117 = v23;
    v38 = [v37 sortingStyle];
    v39 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
    if (!v39)
    {
      if (!v38)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v39 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
    if (!v39)
    {
      v118 = 1;
      goto LABEL_20;
    }

    v117 = v23;
    v38 = 0;
  }

  v40 = v39;
  v41 = [v39 sortingStyle];

  if (!v38)
  {
    if (!v41)
    {
LABEL_14:
      v118 = 1;
      v23 = v117;
      goto LABEL_20;
    }

    v118 = 0;
    goto LABEL_19;
  }

  if (v41)
  {
    v102 = a2;
    v97 = v3;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
    if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
    {
      v118 = 1;
    }

    else
    {
      v118 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v3 = v97;

    a2 = v102;
    goto LABEL_19;
  }

LABEL_15:
  v118 = 0;
  v41 = v38;
LABEL_19:
  v23 = v117;

LABEL_20:
  v46 = *(v3 + v128);
  v47 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
  v48 = v47;
  if (v47)
  {
  }

  v49 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v31 + 16))(v36, v3 + v49, v30);
  v50 = (*(v31 + 88))(v36, v30);
  if (v50 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    v51 = v121;
    if ((v46 == 0) == (v48 != 0))
    {
      v52 = v50;
      v53 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
      v54 = v53;
      if (v53)
      {
      }

      v55 = v54 != 0;
      v56 = v101;
      *v101 = v55;
      (*(v31 + 104))(v56, v52, v30);
      swift_beginAccess();
      (*(v31 + 40))(v3 + v49, v56, v30);
      swift_endAccess();
    }
  }

  else
  {
    (*(v31 + 8))(v36, v30);
    v51 = v121;
  }

  v57 = REMRemindersListDataView.FlaggedModel.flaggedSmartList.getter();
  v58 = *(v3 + v128);
  *(v3 + v128) = v57;

  v59 = v119;
  REMRemindersListDataView.FlaggedModel.flatModel.getter();
  REMRemindersListDataView.FlatModel.remindersCount.getter();
  v60 = *(v51 + 8);
  v60(v59, v23);
  v61 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v62 = *(v61 - 8);
  v63 = (*(v62 + 48))(v29, 1, v61);
  if (v63 == 1)
  {
    sub_1000079B4(v29, &qword_100769378);
    v64 = 0;
  }

  else
  {
    v64 = REMRemindersListDataView.CountByCompleted.completed.getter();
    (*(v62 + 8))(v29, v61);
  }

  v65 = v3 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_completedRemindersCount;
  *v65 = v64;
  *(v65 + 8) = v63 == 1;
  v66 = v120;
  REMRemindersListDataView.FlaggedModel.flatModel.getter();
  v67 = REMRemindersListDataView.FlatModel.hasIncompleteOrCompletedReminders.getter();
  v60(v66, v23);
  *(v3 + OBJC_IVAR____TtC9Reminders29TTRShowFlaggedViewModelSource_hasIncompleteOrCompletedReminders) = v67;
  if (v118)
  {
    v102 = a2;
    sub_10031C6C8(v127);
    if (qword_1007671B0 != -1)
    {
      swift_once();
    }

    v68 = v108;
    v69 = sub_100003E30(v108, qword_10077D230);
    (*(v107 + 16))(v109, v69, v68);
    v70 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
    (*(*(v70 - 8) + 56))(v111, 1, 1, v70);
    v71 = v122;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    v72 = v113;
    (*(v113 + 16))(v110, v71, v124);
    REMRemindersListDataView.FlaggedModel.flatModel.getter();
    REMRemindersListDataView.FlatModel.reminders.getter();
    v60(v66, v23);
    v73 = v125;
    TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
    v74 = v112;
    v75 = v115;
    v76 = v123;
    (*(v112 + 16))(v115, v127, v123);
    (*(v74 + 56))(v75, 0, 1, v76);
    sub_100058000(&qword_100770900);
    v77 = v114;
    v78 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_10062D400;
    (*(v77 + 16))(v79 + v78, v73, v126);
    v80 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
    v81 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
    v82 = type metadata accessor for TTRRemindersListViewModel.Item();
    v83 = v116;
    (*(*(v82 - 8) + 56))(v116, 1, 1, v82);
    v131[3] = v80;
    v131[4] = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
    v131[0] = v81;
    sub_10000B0D8(v131, &v130);
    v84 = swift_allocObject();
    *(v84 + 16) = v79;
    sub_100005FD0(&v130, v84 + 24);
    *(v84 + 64) = v3;

    sub_100586238(1, v75, sub_100070528, v84, v102, 0, v83);

    sub_1000079B4(v83, &qword_100772140);
    sub_1000079B4(v75, &unk_10078A380);
    (*(v77 + 8))(v125, v126);
    (*(v72 + 8))(v122, v124);
    (*(v74 + 8))(v127, v123);

    return sub_100004758(v131);
  }

  else
  {
    v86 = *(v3 + v128);
    if (v86)
    {
      v87 = [v86 sortingStyle];
      v88 = v104;
      REMSortingStyle.dataViewSortingStyle.getter();

      v89 = v105;
      v90 = v106;
      (*(v105 + 56))(v88, 0, 1, v106);
      v91 = v103;
      (*(v89 + 32))(v103, v88, v90);
    }

    else
    {
      v89 = v105;
      v92 = v104;
      v90 = v106;
      (*(v105 + 56))(v104, 1, 1, v106);
      v93 = v99;
      v94 = v98;
      v95 = v100;
      (*(v99 + 104))(v98, enum case for TTRListType.PredefinedSmartListType.flagged(_:), v100);
      v91 = v103;
      TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
      (*(v93 + 8))(v94, v95);
      if ((*(v89 + 48))(v92, 1, v90) != 1)
      {
        sub_1000079B4(v92, &qword_10076F6E8);
      }
    }

    sub_10057A85C();
    return (*(v89 + 8))(v91, v90);
  }
}

uint64_t sub_10031DEFC()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
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
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v4, v1);
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

uint64_t sub_10031E1A4@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  if (qword_1007671B0 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_10077D230);
  v6 = static TTRRemindersListViewModel.SectionID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    *a1 = 1;
    v7 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_10031E3B0()
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

uint64_t sub_10031E630(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10031E67C()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListBadgeView.Shape();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListBadgeView.ImageContentMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRListBadgeView.ImageParams();
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [objc_opt_self() configurationWithScale:2];
  sub_100003540(0, &qword_10076FCB0);
  v13 = static UIImage.ttr_systemSymbolImage(named:)();
  if (v13)
  {
    sub_100003540(0, &qword_100772610);
    v14 = static UIColor.ttrSecondaryLabelColor.getter();
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];
    v29 = v12;
    v16 = v7;
    v17 = v9;
    v18 = v5;
    v19 = v6;
    v20 = v3;
    v21 = v1;
    v22 = v2;
    v23 = v15;

    v13 = [v23 imageWithSymbolConfiguration:v30];
    v2 = v22;
    v1 = v21;
    v3 = v20;
    v6 = v19;
    v5 = v18;
    v9 = v17;
    v7 = v16;
  }

  v24 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell_badge);
  v25 = v13;
  dispatch thunk of TTRListBadgeView.image.setter();
  (*(v7 + 104))(v9, enum case for TTRListBadgeView.ImageContentMode.center(_:), v6);
  v26 = objc_opt_self();
  v27 = [v26 whiteColor];
  TTRListBadgeView.ImageParams.init(color:blendMode:contentMode:)();
  dispatch thunk of TTRListBadgeView.imageParams.setter();
  (*(v3 + 104))(v5, enum case for TTRListBadgeView.Shape.round(_:), v2);
  dispatch thunk of TTRListBadgeView.shape.setter();
  dispatch thunk of TTRListBadgeView.imageColor.setter();
  v28 = [v26 tertiarySystemFillColor];
  [v24 setTintColor:v28];
}

char *sub_10031EA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for TTRListBadgeView();
  *&v3[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell_badge] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v7);

  v9 = OBJC_IVAR____TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell_badge;
  v10 = *&v8[OBJC_IVAR____TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell_badge];
  v11 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView;
  v12 = *&v8[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
  v13 = v8;
  v14 = v10;
  [v12 bounds];
  [v14 setFrame:?];

  [*&v8[v9] setAutoresizingMask:18];
  [*&v8[v11] addSubview:*&v8[v9]];
  [*&v13[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView] setEnabled:0];

  return v13;
}

unint64_t sub_10031EC84()
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

  aBlock[4] = sub_10031F0A8;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10044E9F0;
  aBlock[3] = &unk_100720588;
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

uint64_t sub_10031EF64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v1 = Strong;
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_7:
    v2 = 0;
    return v2 & 1;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v2 = sub_1000C3114(v1);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t type metadata accessor for TTRIAccountsListsRecentlyDeletedCell()
{
  result = qword_10077D8A0;
  if (!qword_10077D8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_10031F0B8(uint64_t a1)
{
  v3 = sub_100058000(&qword_10077DC28);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + 16);
  sub_100058000(&unk_100771E10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D400;
  type metadata accessor for TTRReminderCopyPasteItem();
  *(v7 + 32) = static TTRReminderCopyPasteItem.pasteboardTypeString.getter();
  *(v7 + 40) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  LODWORD(v6) = [v6 containsPasteboardTypes:isa];

  if (!v6)
  {
    return 0;
  }

  sub_10031F9AC(a1, v5);
  v10 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget();
  v11 = (*(*(v10 - 8) + 48))(v5, 1, v10) != 1;
  sub_1000079B4(v5, &qword_10077DC28);
  return v11;
}

void sub_10031F238(uint64_t a1)
{
  v3 = sub_100058000(&qword_10077DC28);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_1003204A4();
  if (v13)
  {
    v14 = v13;
    sub_10031F9AC(a1, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000079B4(v5, &qword_10077DC28);
      if (qword_1007671B8 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100003E30(v15, qword_10077DB60);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136315138;
        type metadata accessor for TTRRemindersListViewModel.Item();
        v20 = Array.description.getter();
        v22 = sub_100004060(v20, v21, aBlock);

        *(v18 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v16, v17, "TTRIRemindersListPasteRequest: failed to determine paste target {items: %s}", v18, 0xCu);
        sub_100004758(v19);
      }
    }

    else
    {
      sub_100320E54(v5, v12);
      type metadata accessor for TTRReminderCopyPasteItem();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_100320EB8(v12, v9);
      v31 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v1;
      sub_100320E54(v9, v32 + v31);
      aBlock[4] = sub_100320F1C;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100320D1C;
      aBlock[3] = &unk_1007205D8;
      v33 = _Block_copy(aBlock);

      v34 = [v14 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v33];
      _Block_release(v33);

      sub_100321074(v12, type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget);
    }
  }

  else
  {
    if (qword_1007671B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003E30(v23, qword_10077DB60);

    v37 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136315138;
      type metadata accessor for TTRRemindersListViewModel.Item();
      v27 = Array.description.getter();
      v29 = sub_100004060(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v37, v24, "TTRIRemindersListPasteRequest: eligible NSItemProvider not found {items: %s}", v25, 0xCu);
      sub_100004758(v26);
    }

    else
    {
      v35 = v37;
    }
  }
}

uint64_t sub_10031F774@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100058000(&qword_10076B780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D420;
  *(inited + 32) = a1;
  v5 = a1;
  v6 = sub_10001D5F8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_1002E28FC(v6);

  if (*(v7 + 16) && (v8 = sub_1002613B0(v5), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for TTRSectionID();
    (*(*(v12 - 8) + 16))(a2, v11 + *(*(v12 - 8) + 72) * v10, v12);
  }

  else
  {

    v14 = enum case for TTRSectionID.sectionless(_:);
    v15 = type metadata accessor for TTRSectionID();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }
}

uint64_t sub_10031F8E4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077DB60);
  v1 = sub_100003E30(v0, qword_10077DB60);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10031F9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a1;
  v4 = type metadata accessor for TTRSectionID();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v89 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v91 = &v82 - v7;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v98 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = (&v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_100058000(&qword_10077DC30);
  __chkstk_darwin(v87);
  v11 = (&v82 - v10);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  __chkstk_darwin(v17);
  v99 = &v82 - v18;
  v19 = sub_100058000(&qword_10077DC28);
  __chkstk_darwin(v19 - 8);
  v90 = (&v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  v24 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v2 + 32);
  v96 = v2;
  ObjectType = swift_getObjectType();
  v30 = *(v28 + 16);
  v97 = ObjectType;
  v30(ObjectType, v28);
  v31 = v27[*(v25 + 36)];
  sub_100321074(v27, type metadata accessor for TTRRemindersListEditingInteractionOptions);
  v32 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget();
  v33 = *(v32 - 8);
  v36 = *(v33 + 56);
  v35 = v33 + 56;
  v34 = v36;
  if (v31)
  {
    return v34(a2, 1, 1, v32);
  }

  v38 = 1;
  v85 = v34;
  v86 = v32;
  v84 = v35;
  (v34)(v23, 1, 1);
  v39 = *(v100 + 16);
  v40 = v23;
  v88 = a2;
  v42 = v98;
  v41 = v99;
  if (v39)
  {
    (*(v98 + 16))(v99, v100 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * (v39 - 1), v8);
    v38 = 0;
  }

  (*(v42 + 56))(v41, v38, 1, v8);
  sub_1003210D4(v41, v16);
  v43 = *(v42 + 48);
  if (v43(v16, 1, v8) == 1)
  {
    sub_1000079B4(v16, &qword_100772140);
    v44 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
    (*(*(v44 - 8) + 56))(v11, 1, 1, v44);
    v45 = v88;
    v46 = v97;
    goto LABEL_7;
  }

  v51 = v43;
  v83 = v40;
  TTRRemindersListViewModel.Item.editableCasesOnly.getter();
  v52 = *(v42 + 8);
  v53 = v8;
  v82 = v52;
  v52(v16, v8);
  v54 = type metadata accessor for TTRRemindersListViewModel.Item.EditableCasesInItem();
  v55 = *(v54 - 8);
  (*(v55 + 56))(v11, 0, 1, v54);
  v56 = (*(v55 + 88))(v11, v54);
  if (v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.reminder(_:) || v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedReminder(_:) || v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.placeholderReminder(_:))
  {
    (*(v55 + 8))(v11, v54);
    v63 = v99;
    v64 = v93;
    sub_1003210D4(v99, v93);
    v65 = v51(v64, 1, v8);
    v66 = v97;
    if (v65 == 1)
    {
      sub_1000079B4(v63, &qword_100772140);
      v67 = v64;
LABEL_26:
      sub_1000079B4(v67, &qword_100772140);
      v45 = v88;
      goto LABEL_28;
    }

    v11 = v92;
    (*(v98 + 32))(v92, v64, v53);
    v68 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
    if (v68)
    {
      v69 = v68;
      v70 = [v68 list];
      if ((*(v28 + 104))(v66, v28))
      {
        v71 = [v69 objectID];
        v72 = v89;
        sub_10031F774(v71, v89);

        swift_unknownObjectRelease();
        v82(v11, v53);
        sub_1000079B4(v99, &qword_100772140);
        v73 = v83;
        sub_1000079B4(v83, &qword_10077DC28);
        v74 = v95;
        v75 = *(v94 + 32);
        v76 = v91;
        v75(v91, v72, v95);
      }

      else
      {
        v82(v11, v53);
        sub_1000079B4(v99, &qword_100772140);
        v73 = v83;
        sub_1000079B4(v83, &qword_10077DC28);
        v79 = v94;
        v74 = v95;
        v76 = v91;
        (*(v94 + 104))(v91, enum case for TTRSectionID.sectionless(_:), v95);
        v75 = *(v79 + 32);
      }

      v80 = v90;
      *v90 = v70;
      v81 = v86;
      v75((v80 + *(v86 + 20)), v76, v74);
      *(v80 + *(v81 + 24)) = v69;
      v85(v80, 0, 1, v81);
      sub_100321148(v80, v73);
      v45 = v88;
      v40 = v73;
      return sub_100321148(v40, v45);
    }

LABEL_25:
    v82(v11, v53);
    v67 = v99;
    goto LABEL_26;
  }

  v46 = v97;
  if (v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.editableSection(_:))
  {
    v57 = v97;
    (*(v55 + 96))(v11, v54);
    v58 = *v11;
    v59 = (*(v28 + 288))(v100, sub_10032169C, v96, v57, v28);
    sub_1000079B4(v99, &qword_100772140);
    v45 = v88;
    if (v59)
    {
      v60 = v83;
      sub_1000079B4(v83, &qword_10077DC28);
      v61 = v86;
      v62 = *(v86 + 20);
      *(v60 + v62) = v58;
      v40 = v60;
      (*(v94 + 104))(v60 + v62, enum case for TTRSectionID.sectioned(_:), v95);
      *v60 = v59;
      *(v60 + *(v61 + 24)) = 0;
      v49 = v60;
      v50 = v61;
      goto LABEL_9;
    }

LABEL_28:
    v40 = v83;
    return sub_100321148(v40, v45);
  }

  v45 = v88;
  if (v56 == enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.uncommittedEditingSection(_:))
  {
    v77 = v54;
    v78 = v97;
    (*(v55 + 8))(v11, v77);
    v46 = v78;
    v40 = v83;
    v41 = v99;
    goto LABEL_7;
  }

  v40 = v83;
  v41 = v99;
  if (v56 != enum case for TTRRemindersListViewModel.Item.EditableCasesInItem.nonEditable(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_25;
  }

LABEL_7:
  v47 = (*(v28 + 288))(v100, sub_100321144, v96, v46, v28);
  sub_1000079B4(v41, &qword_100772140);
  if (v47)
  {
    sub_1000079B4(v40, &qword_10077DC28);
    v48 = v86;
    (*(v94 + 104))(v40 + *(v86 + 20), enum case for TTRSectionID.sectionless(_:), v95);
    *v40 = v47;
    *(v40 + *(v48 + 24)) = 0;
    v49 = v40;
    v50 = v48;
LABEL_9:
    v85(v49, 0, 1, v50);
  }

  return sub_100321148(v40, v45);
}

uint64_t sub_1003204A4()
{
  v1 = [*(v0 + 16) itemProviders];
  sub_100003540(0, &unk_10076C570);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for TTRReminderCopyPasteItem();
      if ([v6 canLoadObjectOfClass:swift_getObjCClassFromMetadata()])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
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

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_20;
    }

LABEL_25:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_23;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v9 = _swiftEmptyArrayStorage[4];
LABEL_23:
    v10 = v9;

    return v10;
  }

  __break(1u);
  return result;
}

void sub_1003206A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  if (a1 && (type metadata accessor for TTRReminderCopyPasteItem(), (v16 = swift_dynamicCastClass()) != 0))
  {
    v17 = v16;
    sub_100003540(0, &qword_100777780);
    v18 = v7;
    swift_unknownObjectRetain();
    v32 = static OS_dispatch_queue.main.getter();
    sub_100320EB8(v33, &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v34;
    *(v20 + 24) = v17;
    sub_100320E54(&v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    aBlock[4] = sub_100320FA0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100720628;
    v21 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10001A4CC();
    sub_100058000(&qword_100780A50);
    sub_10001A524();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v32;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);
    swift_unknownObjectRelease();

    (*(v18 + 8))(v9, v6);
    (*(v35 + 8))(v12, v36);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1007671B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003E30(v23, qword_10077DB60);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = Error.localizedDescription.getter();
      v30 = sub_100004060(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "error decoding pasteboard %s", v26, 0xCu);
      sub_100004758(v27);
    }

    else
    {
    }
  }
}

uint64_t sub_100320B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a2;
  v5 = sub_100058000(&qword_1007758D0);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - v6;
  v12[0] = *(a1 + 48);
  swift_getObjectType();
  v8 = *(type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget() + 20);
  v9 = type metadata accessor for TTRSectionID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7, a3 + v8, v9);
  (*(v10 + 56))(v7, 0, 1, v9);
  dispatch thunk of TTRRemindersListInteractorType.paste(_:in:after:with:updateProperties:)();
  return sub_1000079B4(v7, &qword_1007758D0);
}

uint64_t sub_100320D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100320D9C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget()
{
  result = qword_10077DC90;
  if (!qword_10077DC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100320E54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100320EB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100320F1C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1003206A4(a1, a2, v6, v7);
}

uint64_t sub_100320FA0()
{
  v1 = *(type metadata accessor for TTRIRemindersListPasteRequest.PasteTarget() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100320B98(v2, v3, v4);
}

uint64_t sub_100321004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  return (*(v7 + 296))(a1, a2, a3, ObjectType, v7);
}

uint64_t sub_100321074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003210D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100321148(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077DC28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void **sub_1003211F4(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = type metadata accessor for TTRSectionID();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v6 + v7, a2 + v7, v9);
    v12 = *(a3 + 24);
    v13 = *(a2 + v12);
    *(v6 + v12) = v13;
    v14 = v13;
  }

  return v6;
}

void sub_1003212E0(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for TTRSectionID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 24));
}

void **sub_100321368(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSectionID();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(a1 + v7, a2 + v7, v8);
  v11 = *(a3 + 24);
  v12 = *(a2 + v11);
  *(a1 + v11) = v12;
  v13 = v12;
  return a1;
}

void **sub_10032140C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = type metadata accessor for TTRSectionID();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  v14 = v13;

  return a1;
}

char *sub_1003214AC(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = type metadata accessor for TTRSectionID();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **sub_100321534(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRSectionID();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_1003215F4()
{
  result = type metadata accessor for TTRSectionID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1003216A4(uint64_t a1, uint64_t a2)
{
  v52 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v4 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for REMRemindersListDataView.SectionLite();
  __chkstk_darwin(v7);
  v53 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = __chkstk_darwin(v9);
  v13 = v36 - v12;
  v51 = *(a1 + 16);
  if (!v51)
  {
    return;
  }

  v14 = 0;
  v16 = *(v10 + 16);
  v15 = v10 + 16;
  v45 = (*(v15 + 64) + 32) & ~*(v15 + 64);
  v48 = a1 + v45;
  v49 = v16;
  v54 = *(v15 + 56);
  v47 = (v4 + 88);
  v46 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
  v43 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
  v17 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v17 = a2;
  }

  v36[1] = v17;
  v37 = a2 & 0xC000000000000001;
  v44 = a2;
  v41 = a2 + 56;
  v42 = (v4 + 96);
  v18 = (v15 + 16);
  v38 = (v15 - 8);
  v19 = _swiftEmptyArrayStorage;
  v20 = v52;
  v50 = v15;
  while (1)
  {
    v49(v13, v48 + v54 * v14, v7, v11);
    REMRemindersListDataView.SectionLite.type.getter();
    v21 = (*v47)(v6, v20);
    if (v21 != v46)
    {
      break;
    }

    (*v42)(v6, v20);
    v22 = *v6;

    if ((REMRemindersListDataView.SectionLite.isEmpty.getter() & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v44)
    {
      if (v37)
      {
        v23 = v22;
        v24 = __CocoaSet.contains(_:)();

        if (v24)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v44[2])
        {
          v40 = sub_10001DF64();
          v25 = v44;
          v26 = NSObject._rawHashValue(seed:)(v44[5]);
          v27 = -1 << *(v25 + 32);
          v28 = v26 & ~v27;
          if ((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
          {
            v39 = ~v27;
            while (1)
            {
              v29 = *(v44[6] + 8 * v28);
              v30 = static NSObject.== infix(_:_:)();

              if (v30)
              {
                break;
              }

              v28 = (v28 + 1) & v39;
              if (((*(v41 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

LABEL_23:

LABEL_24:
            v31 = *v18;
            (*v18)(v53, v13, v7);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v55 = v19;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1004A1B84(0, v19[2] + 1, 1);
              v19 = v55;
            }

            v34 = v19[2];
            v33 = v19[3];
            if (v34 >= v33 >> 1)
            {
              sub_1004A1B84(v33 > 1, v34 + 1, 1);
              v19 = v55;
            }

            v19[2] = v34 + 1;
            v31(v19 + v45 + v34 * v54, v53, v7);
            goto LABEL_7;
          }
        }

LABEL_5:
      }

      (*v38)(v13, v7);
    }

    else
    {
      (*v38)(v13, v7);
    }

LABEL_7:
    ++v14;
    v20 = v52;
    if (v14 == v51)
    {
      return;
    }
  }

  if (v21 == v43)
  {
    goto LABEL_24;
  }

  if (qword_1007671C0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_100003E30(v35, qword_10077DCD0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown section type", 20, 2);
  __break(1u);
}

uint64_t sub_100321BAC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077DCD0);
  v1 = sub_100003E30(v0, qword_10077DCD0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *assignWithCopy for TTRRemoveEmptySectionFilter(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for TTRRemoveEmptySectionFilter(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_100321CF4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077DCE8);
  v1 = sub_100003E30(v0, qword_10077DCE8);
  if (qword_100767280 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100321DBC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_100323268;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_1007206E0;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50);
  sub_10001A524();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

void sub_100322010(uint64_t a1)
{
  if (*(a1 + 24))
  {
    if (qword_1007671C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_10077DCE8);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Update in progress, skipping", v3, 2u);
    }
  }

  else
  {
    *(a1 + 24) = 1;
    sub_100322124();
    *(a1 + 24) = 0;
  }
}

void sub_100322124()
{
  v113 = type metadata accessor for REMAccountsListDataView.Model.GroupChild();
  v143 = *(v113 - 8);
  __chkstk_darwin(v113);
  v148 = (&v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for REMAccountsListDataView.Model.Group();
  v2 = *(v125 - 8);
  __chkstk_darwin(v125);
  v134 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for CharacterSet();
  v4 = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for REMAccountsListDataView.Model.AccountChild();
  v6 = *(v126 - 8);
  __chkstk_darwin(v126);
  v8 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v122 = type metadata accessor for REMAccountsListDataView.Model.Account();
  v123 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + 16);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 1) == 0)
  {
LABEL_62:
    __break(1u);
    swift_once();
    v19 = type metadata accessor for Logger();
    sub_100003E30(v19, qword_10077DCE8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v20, v21))
    {

      return;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v149 = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    v26 = sub_100004060(v24, v25, &v149);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unexpected error when submitting vocabulary: %s", v22, 0xCu);
    sub_100004758(v23);

    goto LABEL_58;
  }

  v16 = [objc_opt_self() sharedVocabulary];
  v17 = [objc_allocWithZone(REMStore) init];
  type metadata accessor for REMAccountsListDataView();
  v18 = static REMAccountsListDataView.fetchAccounts(store:diffingAgainst:)();
  v103 = v17;
  v104 = v16;
  v120 = *(v18 + 16);
  if (!v120)
  {

    v86 = &_swiftEmptyArrayStorage;
    v28 = &_swiftEmptyArrayStorage;
    v85 = v104;
LABEL_47:
    if (qword_1007671C8 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for Logger();
    sub_100003E30(v87, qword_10077DCE8);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Clearing vocab from Siri", v90, 2u);
    }

    [v85 removeAllVocabularyStrings];

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 134217984;
      *(v93 + 4) = *(v86 + 2);

      _os_log_impl(&_mh_execute_header, v91, v92, "Submitting vocab to Siri {groupNames.count: %ld}", v93, 0xCu);
    }

    else
    {
    }

    sub_1003E0D84(v86);

    v94 = objc_allocWithZone(NSOrderedSet);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v96 = [v94 initWithArray:isa];

    [v85 setVocabularyStrings:v96 ofType:501];

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 134217984;
      *(v99 + 4) = *(v28 + 2);

      _os_log_impl(&_mh_execute_header, v97, v98, "Submitting vocab to Siri {listNames.count: %ld}", v99, 0xCu);
    }

    else
    {
    }

    sub_1003E0D84(v28);

    v100 = objc_allocWithZone(NSOrderedSet);
    v101 = Array._bridgeToObjectiveC()().super.isa;

    v20 = [v100 initWithArray:v101];

    [v85 setVocabularyStrings:v20 ofType:500];
LABEL_58:

    return;
  }

  v27 = 0;
  v119 = v18 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
  v118 = v123 + 16;
  v117 = v123 + 8;
  v132 = v6 + 88;
  v147 = enum case for REMAccountsListDataView.Model.AccountChild.list(_:);
  v146 = enum case for REMAccountsListDataView.Model.AccountChild.customSmartList(_:);
  v145 = (v6 + 8);
  v124 = (v6 + 96);
  v127 = (v4 + 8);
  v108 = enum case for REMAccountsListDataView.Model.AccountChild.group(_:);
  v107 = (v2 + 32);
  v141 = v143 + 88;
  v142 = v143 + 16;
  v140 = enum case for REMAccountsListDataView.Model.GroupChild.list(_:);
  v138 = enum case for REMAccountsListDataView.Model.GroupChild.customSmartList(_:);
  v137 = (v143 + 8);
  v105 = (v143 + 96);
  v28 = &_swiftEmptyArrayStorage;
  v106 = (v2 + 8);
  v131 = &_swiftEmptyArrayStorage;
  v29 = v126;
  v116 = v18;
  v133 = v6 + 16;
  while (1)
  {
    if (v27 >= *(v18 + 16))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v30 = v123;
    v31 = *(v123 + 72);
    v135 = v27;
    v32 = v119 + v31 * v27;
    v33 = v121;
    v34 = v122;
    (*(v123 + 16))(v121, v32, v122);
    v35 = REMAccountsListDataView.Model.Account.children.getter();
    (*(v30 + 8))(v33, v34);
    v36 = *(v35 + 16);
    if (v36)
    {
      break;
    }

LABEL_7:
    v27 = v135 + 1;

    v18 = v116;
    if (v27 == v120)
    {

      v85 = v104;
      v86 = v131;
      goto LABEL_47;
    }
  }

  v37 = 0;
  v130 = v36 - 1;
LABEL_11:
  v38 = v37;
  while (1)
  {
    if (v38 >= *(v35 + 16))
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v37 = v38 + 1;
    (*(v6 + 16))(v8, v35 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v38, v29);
    v39 = (*(v6 + 88))(v8, v29);
    if (v39 == v147)
    {
      (*v124)(v8, v29);
      v144 = *v8;
      v40 = [v144 displayName];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      v149 = v41;
      v150 = v43;
      v44 = v128;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10007D420();
      v139 = StringProtocol.trimmingCharacters(in:)();
      v46 = v45;
      (*v127)(v44, v129);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_100546970(0, *(v28 + 2) + 1, 1, v28);
      }

      v48 = *(v28 + 2);
      v47 = *(v28 + 3);
      if (v48 >= v47 >> 1)
      {
        v28 = sub_100546970((v47 > 1), v48 + 1, 1, v28);
      }

      *(v28 + 2) = v48 + 1;
      v49 = &v28[16 * v48];
      *(v49 + 4) = v139;
      *(v49 + 5) = v46;
      v50 = v130 == v38;
LABEL_41:
      v29 = v126;
      if (v50)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    if (v39 != v146)
    {
      break;
    }

    (*v145)(v8, v29);
    ++v38;
    if (v36 == v37)
    {
      goto LABEL_7;
    }
  }

  v144 = v36;
  if (v39 == v108)
  {
    (*v124)(v8, v29);
    (*v107)(v134, v8, v125);
    v51 = REMAccountsListDataView.Model.Group.list.getter();
    v52 = [v51 name];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v149 = v53;
    v150 = v55;
    v56 = v128;
    static CharacterSet.whitespacesAndNewlines.getter();
    v115 = sub_10007D420();
    v57 = StringProtocol.trimmingCharacters(in:)();
    v59 = v58;
    v114 = *v127;
    v114(v56, v129);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v131 = sub_100546970(0, *(v131 + 2) + 1, 1, v131);
    }

    v62 = *(v131 + 2);
    v61 = *(v131 + 3);
    v36 = v144;
    if (v62 >= v61 >> 1)
    {
      v131 = sub_100546970((v61 > 1), v62 + 1, 1, v131);
    }

    v63 = v131;
    *(v131 + 2) = v62 + 1;
    v64 = &v63[16 * v62];
    *(v64 + 4) = v57;
    *(v64 + 5) = v59;
    v65 = REMAccountsListDataView.Model.Group.lists.getter();
    v66 = *(v65 + 16);
    if (v66)
    {
      v67 = 0;
      v139 = *(v65 + 16);
      v112 = v66 - 1;
      v68 = v113;
LABEL_29:
      v69 = v67;
      while (v69 < *(v65 + 16))
      {
        v67 = v69 + 1;
        v70 = v143;
        v71 = v148;
        (*(v143 + 16))(v148, v65 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v69, v68);
        v72 = (*(v70 + 88))(v71, v68);
        if (v72 == v140)
        {
          v73 = v148;
          (*v105)(v148, v68);
          v109 = *v73;
          v74 = [v109 displayName];
          v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v77 = v76;

          v149 = v75;
          v150 = v77;
          v78 = v128;
          static CharacterSet.whitespacesAndNewlines.getter();
          v111 = StringProtocol.trimmingCharacters(in:)();
          v110 = v79;
          v114(v78, v129);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_100546970(0, *(v136 + 2) + 1, 1, v136);
          }

          v36 = v144;
          v81 = *(v136 + 2);
          v80 = *(v136 + 3);
          if (v81 >= v80 >> 1)
          {
            v136 = sub_100546970((v80 > 1), v81 + 1, 1, v136);
          }

          v82 = v136;
          *(v136 + 2) = v81 + 1;
          v83 = &v82[16 * v81];
          v84 = v110;
          *(v83 + 4) = v111;
          *(v83 + 5) = v84;
          v68 = v113;
          if (v112 != v69)
          {
            goto LABEL_29;
          }

          goto LABEL_40;
        }

        v36 = v144;
        if (v72 != v138)
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          goto LABEL_64;
        }

        (*v137)(v148, v68);
        ++v69;
        if (v139 == v67)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_60;
    }

LABEL_40:
    v37 = v38 + 1;
    (*v106)(v134, v125);

    v50 = v130 == v38;
    v28 = v136;
    goto LABEL_41;
  }

LABEL_64:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_10032320C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100323270()
{
  v0 = sub_100058000(&qword_10077E850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  v7 = qword_1007A8A40;
  v28 = qword_1007A8A40;
  v24[0] = 0;
  sub_100323ED4();

  AnyHashable.init<A>(_:)();
  v27 = 1;
  *v6 = 1;
  v6[40] = 0;
  v23 = *(v1 + 104);
  v23(v6, enum case for TTRRelativeInsertionPosition.after<A>(_:), v0);
  v21 = sub_100058000(&qword_100774070);
  inited = swift_initStackObject();
  v20 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  sub_100233FB0(v25, inited + 32);
  v22 = sub_100323F28();
  v9 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v10)
  {
    v11 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v24, &qword_10077E868);
    if (v11)
    {
      v9 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  sub_1000FE4D8(v9, v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = *(v1 + 8);
  v12(v6, v0);
  sub_10023400C(v25);
  swift_getObjectType();
  dispatch thunk of TTRShowTodayGroupsDataModelSourceType.todaySectionsContext.getter();
  v13 = v26;
  sub_1000079B4(v25, &qword_10077E870);
  if (v13)
  {
    v24[0] = 1;
    AnyHashable.init<A>(_:)();
    v27 = 1;
    v24[0] = 0;
    AnyHashable.init<A>(_:)();
    v3[40] = 1;
    v23(v3, enum case for TTRRelativeInsertionPosition.before<A>(_:), v0);
    v14 = swift_initStackObject();
    *(v14 + 16) = v20;
    sub_100233FB0(v25, v14 + 32);
    v15 = v28;
    v16 = Array<A>.index<A>(forInsertingAt:where:)();
    if (v17)
    {
      v18 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
      sub_1000079B4(v24, &qword_10077E868);
      if (v18)
      {
        v16 = *(v15 + 16);
      }

      else
      {
        v16 = 0;
      }
    }

    sub_1000FE4D8(v16, v16, v14);
    swift_setDeallocating();
    swift_arrayDestroy();
    v12(v3, v0);
    sub_10023400C(v25);
  }

  return v28;
}

uint64_t sub_1003236A4()
{
  v0 = type metadata accessor for TTRRemindersListLayout();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AnyHashable.base.getter();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  if (v9[15] == 1)
  {
    sub_100323E20();
    (*(v1 + 104))(v3, enum case for TTRRemindersListLayout.list(_:), v0);
    static TTRLocalizableStrings.RemindersList.editSectionsActionText(listLayout:)();
    (*(v1 + 8))(v3, v0);
    static TTRCommonAsset.Image.renameIcon.getter();
    swift_allocObject();
    swift_weakInit();
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() _systemImageNamed:v5];

    sub_100323E20();
    static TTRLocalizableStrings.TodayList.groupByTime.getter();
    swift_allocObject();
    swift_weakInit();
    v7 = v6;
    v8 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    swift_getObjectType();
    [v8 setState:dispatch thunk of TTRShowTodayGroupsDataModelSourceType.grouped.getter() & 1];

    return v8;
  }
}

uint64_t sub_100323988()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v1 = dispatch thunk of TTRRemindersListInteractorType.store.getter();
    swift_unknownObjectRelease();
    sub_100323E7C();

    sub_100134CE4(v1);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100323A5C(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    [a1 state];
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRShowTodayGroupsDataModelSourceType.grouped.setter();
    swift_unknownObjectRelease();
    type metadata accessor for TTRUserDefaults();
    v2 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.todayListIsGrouped.setter();
  }
}

uint64_t sub_100323B78()
{
  type metadata accessor for TTRUserDefaults();
  v0 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.todayListIsGrouped.setter();

  swift_getObjectType();
  return dispatch thunk of TTRShowTodayGroupsDataModelSourceType.grouped.setter();
}

uint64_t sub_100323BFC()
{
  sub_1001E6A30();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowTodayPresenter()
{
  result = qword_10077DE00;
  if (!qword_10077DE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100323D08()
{
  v1 = *(v0 + 144);
  ObjectType = swift_getObjectType();
  return (*(v1 + 576))(ObjectType, v1);
}

uint64_t sub_100323D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v5 = __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a3, v5);
  return sub_1001F7B6C(v7);
}

unint64_t sub_100323E20()
{
  result = qword_10076BA60;
  if (!qword_10076BA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076BA60);
  }

  return result;
}

unint64_t sub_100323E7C()
{
  result = qword_10077E848;
  if (!qword_10077E848)
  {
    type metadata accessor for TTRIShowTodayPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E848);
  }

  return result;
}

unint64_t sub_100323ED4()
{
  result = qword_10077E858;
  if (!qword_10077E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E858);
  }

  return result;
}

unint64_t sub_100323F28()
{
  result = qword_10077E860;
  if (!qword_10077E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E860);
  }

  return result;
}

unint64_t sub_100323F90()
{
  result = qword_10077E878;
  if (!qword_10077E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077E878);
  }

  return result;
}

id sub_100323FE4(uint64_t *a1, id *a2, void *a3)
{
  v115 = a3;
  v122 = a1;
  v123 = type metadata accessor for TTRRemindersListLayout();
  v120 = *(v123 - 8);
  v4 = __chkstk_darwin(v123);
  v102 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v121 = &v100 - v7;
  v8 = __chkstk_darwin(v6);
  v101 = &v100 - v9;
  __chkstk_darwin(v8);
  v117 = &v100 - v10;
  v11 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v12 = __chkstk_darwin(v11 - 8);
  v113 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v114 = &v100 - v14;
  v112 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v112);
  v128 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRListType.SortingCapability();
  v126 = *(v16 - 8);
  v127 = v16;
  v17 = __chkstk_darwin(v16);
  v108 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v125 = &v100 - v19;
  v110 = type metadata accessor for TTRRemindersListDefaultListType();
  v107 = *(v110 - 1);
  __chkstk_darwin(v110);
  v106 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v21 - 8);
  v105 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v23 - 8);
  v109 = (&v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v129 = *(v124 - 8);
  v25 = __chkstk_darwin(v124);
  v27 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v130 = &v100 - v28;
  v29 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v30 + 104);
  LODWORD(v119) = enum case for TTRListType.PredefinedSmartListType.today(_:);
  v33(v32);
  v111 = a2;
  v103 = *a2;
  v34 = TTRListType.PredefinedSmartListType.smartList(in:)();
  v35 = *(v30 + 8);
  v35(v32, v29);
  if (v34)
  {
    v36 = sub_100174F2C();
    v37 = &protocol witness table for REMSmartList;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v136[2] = 0;
    v136[1] = 0;
  }

  v136[4] = v37;
  v104 = v34 != 0;
  v136[3] = v36;
  v136[0] = v34;
  (v33)(v32, v119, v29);
  v39 = v38;
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  v35(v32, v29);
  v40 = v130;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v41 = v129;
  v42 = v124;
  v118 = *(v129 + 8);
  v119 = v129 + 8;
  v118(v27, v124);
  sub_1000079B4(v136, &unk_100775680);
  type metadata accessor for TTRUserDefaults();
  v116 = v39;
  v43 = v103;
  v44 = static TTRUserDefaults.appUserDefaults.getter();
  TTRUserDefaults.todayListIsGrouped.getter();

  v45 = *(v41 + 16);
  v45(v27, v40, v42);
  type metadata accessor for TTRShowTodayGroupsDataModelSource();
  swift_allocObject();
  v129 = TTRShowTodayGroupsDataModelSource.init(store:smartList:grouped:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v46 = v111;
  v47 = v109;
  sub_10010BD5C(v111, v109, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v48 = v105;
  static REMSuggestedAttributesElector.ExcludedAttributes.dueDates.getter();
  v49 = v106;
  (*(v107 + 104))(v106, enum case for TTRRemindersListDefaultListType.any(_:), v110);
  sub_10007786C(v47, v48, v49, v136);
  v45(v27, v130, v42);
  v50 = v125;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v51 = v136[0];
  v52 = v108;
  (*(v126 + 16))(v108, v50, v127);
  type metadata accessor for TTRShowTodayViewModelSource();
  v53 = swift_allocObject();
  v54 = v129;

  v110 = v51;
  v55 = sub_100324F40(v54, v110, v52, v53);
  sub_10010BD5C(v46, v47, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v136, v133);
  v56 = sub_1003253E8(&qword_10077E8A8, type metadata accessor for TTRShowTodayViewModelSource);
  v57 = v128;
  sub_10010BD5C(v47, v128, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v58 = v112;
  sub_10010BCAC(v133, v57 + *(v112 + 20));
  v59 = (v57 + *(v58 + 24));
  *v59 = v55;
  v59[1] = v56;
  v60 = v133[0];
  sub_100058000(&qword_10076C230);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v135, v132, &qword_100769608);
  v62 = *(v132[5] + 8);
  *(v61 + 32) = v132[4];
  *(v61 + 40) = v62;
  sub_10000794C(&v134, v131, &qword_100769600);
  swift_retain_n();
  v63 = v60;
  swift_unknownObjectRelease();
  *(v61 + 48) = v131[3];
  sub_100004758(v131);
  sub_100004758(v132);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v64 = swift_allocObject();
  v65 = sub_1003A8324(v63, v55, v61, v64);
  v111 = v55;

  sub_10010BD08(v133);
  sub_10010BE0C(v47, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v66 = *(v58 + 28);
  v109 = v65;
  *(v57 + v66) = v65;
  v67 = v114;
  sub_100078BBC(v114);
  v112 = type metadata accessor for TTRIShowTodayPresenter();
  v68 = swift_allocObject();
  v69 = (v68 + OBJC_IVAR____TtC9Reminders22TTRIShowTodayPresenter_dataModelSource);
  *v69 = v129;
  v69[1] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
  v70 = v113;
  sub_10010BD5C(v67, v113, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v71 = v115;
  swift_unknownObjectRetain();
  v72 = sub_1003A56E4(v70, v71, v68);
  sub_10010BE0C(v67, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v73 = *(v72 + 144);
  ObjectType = swift_getObjectType();
  v75 = *(v73 + 112);

  if (v75(ObjectType, v73))
  {
    swift_getObjectType();
    v76 = v101;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v77 = v120;
    v78 = v117;
    v79 = v123;
    (*(v120 + 32))(v117, v76, v123);
  }

  else
  {
    v77 = v120;
    v78 = v117;
    v79 = v123;
    (*(v120 + 104))(v117, enum case for TTRRemindersListLayout.list(_:), v123);
  }

  v115 = sub_1003A4A1C(v78, v72);
  v117 = v80;
  v82 = v81;
  v84 = v83;
  (*(v77 + 8))(v78, v79);
  v120 = swift_getObjectType();
  *(v72 + 24) = *(v84 + 8);
  v123 = v82;
  swift_unknownObjectWeakAssign();
  v85 = *(v72 + 144);
  v86 = swift_getObjectType();
  v87 = *(v85 + 112);

  if (v87(v86, v85))
  {
    swift_getObjectType();
    v88 = v102;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v89 = v121;
    (*(v77 + 32))(v121, v88, v79);
  }

  else
  {

    v89 = v121;
    (*(v77 + 104))(v121, enum case for TTRRemindersListLayout.list(_:), v79);
  }

  v90 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v91 = v115;
  v92 = sub_1003A8358(v72, v91, v117, v89, 0, 1, 0, v90);

  v93 = *(v84 + 32);
  v94 = v92;
  v93(v92, &off_100723D78, v120, v84);
  sub_1003253E8(&qword_10077E8B0, type metadata accessor for TTRIShowTodayPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1003253E8(&qword_10077E8B8, type metadata accessor for TTRShowTodayViewModelSource);

  v95 = v94;
  dispatch thunk of TTRShowTodayGroupsDataModelSource.delegate.setter();

  sub_10056FEB0(v96, &off_10071A9B0);

  v109[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v137, v133, &qword_100769600);
  v97 = v133[4];
  swift_unknownObjectRelease();
  *(v97 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v133);
  sub_10000794C(&v138, v133, &qword_100769608);
  swift_getObjectType();
  sub_1003253E8(&qword_10077E8C0, type metadata accessor for TTRIShowTodayPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v133);
  v98 = v122;
  v122[3] = v112;
  v98[4] = &off_1007207C0;

  swift_unknownObjectRelease();
  *v98 = v72;
  (*(v126 + 8))(v125, v127);
  v118(v130, v124);
  sub_10010BE0C(v128, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v136);
  return v95;
}

id TTRIShowTodayAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTodayAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowTodayAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTodayAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100324F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = a3;
  v35 = a2;
  v38 = *a4;
  v39 = type metadata accessor for REMAnalyticsEvent();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for TTRListType.SortingCapability();
  v36 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_smartList;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_smartList) = 0;
  v16 = (a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_groupDataModelSource);
  *v16 = 0;
  v16[1] = 0;
  v17 = a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_completedRemindersCount;
  *v17 = 0;
  v17[8] = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_currentLocation) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_sectionHeadersNeedingPlaceholderReminderItems) = &_swiftEmptySetSingleton;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_tappedSectionHeaders) = &_swiftEmptySetSingleton;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource_lastSectionsSnapshot) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders27TTRShowTodayViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  type metadata accessor for TTRShowTodayGroupsDataModelSource();
  v18 = dispatch thunk of TTRShowTodayGroupsDataModelSourceType.smartList.getter();
  v19 = *(a4 + v15);
  *(a4 + v15) = v18;

  *v16 = a1;
  v16[1] = &protocol witness table for TTRShowTodayGroupsDataModelSource;

  swift_unknownObjectRelease();
  (*(v12 + 16))(v14, v40, v11);
  v20 = sub_1003A649C(a1, v35, v14, a4);

  sub_10027B544(v10);
  v21 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  sub_10056F540(v10);
  sub_1000079B4(v10, &unk_10078A380);
  type metadata accessor for TTRUserDefaults();
  v22 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v23 = sub_100058000(&qword_100770980);
  v24 = &v7[*(v23 + 48)];
  v25 = &v7[*(v23 + 80)];
  v26 = enum case for REMRemindersOpenUserOperation.SmartListType.today(_:);
  v27 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v27 - 8) + 104))(v7, v26, v27);
  v28 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v29 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v29 - 8) + 104))(v7, v28, v29);
  *v24 = TTRUserDefaults.activitySessionId.getter();
  v24[1] = v30;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v25 = _typeName(_:qualified:)();
  v25[1] = v31;
  v32 = v37;
  v33 = v39;
  (*(v37 + 104))(v7, enum case for REMAnalyticsEvent.openListUserOperation(_:), v39);
  REMAnalyticsManager.post(event:)();

  (*(v12 + 8))(v40, v36);
  (*(v32 + 8))(v7, v33);
  return v20;
}