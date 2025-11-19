char *sub_10041F98C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  if (![Strong isViewLoaded])
  {
    v2 = 0;
    goto LABEL_7;
  }

  result = sub_1003C1420();
  v2 = *&result[qword_10078A540];
  if (v2)
  {
    v3 = result;
    v4 = v2;

LABEL_7:
    swift_unknownObjectRelease();
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10041FA10()
{
  v0 = sub_100058000(&unk_100781850);
  __chkstk_darwin(v0 - 8);
  v32 = &v26 - v1;
  v2 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v34 = sub_100058000(&qword_10076E0C8);
  __chkstk_darwin(v34);
  v33 = &v26 - v5;
  v6 = type metadata accessor for TTREditingStateOption.InputType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v36 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100058000(&qword_100781878);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v14 = &v26 - v13;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    TTRRemindersListTreeViewModelUpdateContext.treeViewUpdatesComputeIfNeeded()();
    sub_1003C6F1C(v14);
    TTRRemindersListTreeViewModelUpdateContext.itemToStartEditing.getter();
    v16 = sub_100058000(&unk_1007756F0);
    if ((*(*(v16 - 8) + 48))(v4, 1, v16) == 1)
    {
      (*(v35 + 8))(v14, v37);
      swift_unknownObjectRelease();
      return sub_1000079B4(v4, &qword_10076E0D0);
    }

    else
    {
      v17 = *(v16 + 48);
      v18 = v34;
      v27 = *(v34 + 48);
      v28 = v17;
      v30 = v9;
      v31 = v11;
      v29 = *(v11 + 32);
      v19 = v33;
      v29(v33, v4, v10);
      v20 = *(v7 + 32);
      v20(&v19[v27], &v4[v28], v6);
      v21 = *(v18 + 48);
      v29(v36, v19, v10);
      v22 = &v19[v21];
      v23 = v30;
      v20(v30, v22, v6);
      v24 = v32;
      (*(v7 + 16))(v32, v23, v6);
      (*(v7 + 56))(v24, 0, 1, v6);
      v25 = v36;
      sub_1003C78EC(v36, v24);
      swift_unknownObjectRelease();
      sub_1000079B4(v24, &unk_100781850);
      (*(v7 + 8))(v23, v6);
      (*(v31 + 8))(v25, v10);
      return (*(v35 + 8))(v14, v37);
    }
  }

  return result;
}

void sub_10041FEF8()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = sub_1003C1420();
    __chkstk_darwin(v0);
    v2 = *(v1 + qword_10078A548);
    if (v2)
    {
      v3 = v2;
      sub_1001A0494(0, 0, 0, 0, v3, sub_10042189C);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10041FFCC(uint64_t a1)
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

uint64_t sub_100420180(uint64_t a1)
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

char *sub_1004202C8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [result isViewLoaded];
  if (result)
  {
    v4 = *&v3[OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_scrollingController];
    if (v4)
    {
      v5 = *(*&v4[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_scrollSessionController] + 24);
      if (v5 && (*(v5 + 24) & 1) != 0)
      {
        v6 = v4;
LABEL_9:
        swift_beginAccess();

        sub_10059A6B0(v9);
        swift_endAccess();

        swift_unknownObjectRelease();
      }

      v7 = *(*&v4[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_treeView] + qword_10078A540);
      if (v7)
      {
        v8 = v4;
        if ([v7 hasActiveDrop])
        {
          goto LABEL_9;
        }

        (*&v8[OBJC_IVAR____TtC9Reminders36TTRIRemindersListScrollingController_reloadItemsImmediately])(a1);

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_12:

  return swift_unknownObjectRelease();
}

uint64_t sub_100420428(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10000C36C(a1, a1[3]);
    v4 = dispatch thunk of TTRRemindersListEditingState.isEditingTable.getter();
    sub_10037C41C();
    if ((v4 ^ [v3 isEditing]))
    {
      UIViewController.endFirstResponderEditing()();
      v5.receiver = v3;
      v5.super_class = type metadata accessor for TTRIShowRemindersViewController();
      objc_msgSendSuper2(&v5, "setEditing:animated:", v4 & 1, 1);
      [*&v3[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController] setEditing:v4 & 1 animated:1];
      sub_10037DD70(1, 1);
      sub_10037FFC0();
      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100420544(uint64_t a1)
{
  v2 = type metadata accessor for TTRSharedWithYouHighlight();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100775700);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_10076E0B8);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
    swift_beginAccess();
    v15 = *(v9 + 48);
    sub_1004217E4(v13 + v14, v11);
    v21 = a1;
    sub_1004217E4(a1, &v11[v15]);
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
      sub_1004217E4(v11, v8);
      if (v16(&v11[v15], 1, v2) != 1)
      {
        (*(v3 + 32))(v5, &v11[v15], v2);
        sub_100421854(&qword_10076E0C0, &type metadata accessor for TTRSharedWithYouHighlight);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v19 = *(v3 + 8);
        v19(v5, v2);
        v19(v8, v2);
        sub_1000079B4(v11, &qword_100775700);
        v17 = v21;
        if (v18)
        {
          return swift_unknownObjectRelease();
        }

        goto LABEL_8;
      }

      (*(v3 + 8))(v8, v2);
    }

    sub_1000079B4(v11, &qword_10076E0B8);
    v17 = v21;
LABEL_8:
    swift_beginAccess();
    sub_10013EC94(v17, v13 + v14);
    swift_endAccess();
    sub_10037C41C();
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_1004208B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  result = sub_1003C1420();
  v5 = *&result[qword_10078A548];
  if (!v5)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = v5;
  v8 = sub_1000DE654(a1);

  if (!v8)
  {
    goto LABEL_9;
  }

  type metadata accessor for TTRIRemindersListReminderCell();
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  v9 = TTRIRemindersListReminderCell.viewForAnchoringPopover.getter();
  if (!v9)
  {

LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v10 = v9;
  static TTRIPopoverAnchor.sourceView(_:permittedArrowDirections:)();

  swift_unknownObjectRelease();
  v11 = 0;
LABEL_11:
  v12 = type metadata accessor for TTRIPopoverAnchor();
  v13 = *(*(v12 - 8) + 56);

  return v13(a2, v11, 1, v12);
}

uint64_t sub_1004209F4()
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
    sub_100421854(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PromiseError.cancelled(_:), v6);
    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100420BE0@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ([Strong isViewLoaded])
    {
      v3 = sub_1003C1420();
      sub_1001D5404();

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

void sub_100420CD4(uint64_t a1)
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
    v9 = OBJC_IVAR____TtC9Reminders38TTRIRemindersListContentViewController_firstVisibleItemToRestore;
    swift_beginAccess();
    sub_10030DB18(v4, v6 + v9);
    swift_endAccess();
    v10 = [v6 viewIfLoaded];
    [v10 setNeedsLayout];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100420E58()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = sub_1003C6E64();
    swift_unknownObjectRelease();
    return v1 & 1;
  }

  return result;
}

uint64_t sub_100420EBC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1003C78EC(a1, a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100420F28(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1003C7C3C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100420F80(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1003C7DB8(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100420FDC(uint64_t a1, char a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = sub_1003C8DF4(a1, a2 & 1);
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    v6 = type metadata accessor for PromiseError();
    sub_100421854(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PromiseError.cancelled(_:), v6);
    sub_100058000(&unk_10078A2F0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_1004210F8(uint64_t a1, uint64_t a2, char a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1003C8908(a1, a2, a3 & 1);
    v7 = v6;
    swift_unknownObjectRelease();
    return v7;
  }

  else
  {
    v9 = type metadata accessor for PromiseError();
    sub_100421854(&qword_1007817D0, &type metadata accessor for PromiseError);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for PromiseError.cancelled(_:), v9);
    sub_100058000(&qword_1007845B0);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10042122C(uint64_t a1, int a2)
{
  v23 = a2;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:))
  {
LABEL_2:
    (*(v13 + 8))(v15, v12);
LABEL_3:
    v17 = 0;
    return v17 & 1;
  }

  if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:))
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    (*(v24 + 8))(v7, v5);
    v19 = v25;
    v18 = v26;
    v20 = (*(v25 + 88))(v4, v26);
    if (v20 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(v9 + 8))(v11, v8);
      (*(v19 + 8))(v4, v18);
      v17 = v23 ^ 1;
      return v17 & 1;
    }

    if (v20 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) || v20 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
    {
      (*(v9 + 8))(v11, v8);
      (*(v19 + 8))(v4, v18);
      goto LABEL_3;
    }
  }

  else
  {
    if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:))
    {
      (*(v13 + 8))(v15, v12);
      v17 = 1;
      return v17 & 1;
    }

    if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
    {
      goto LABEL_2;
    }

    v17 = 0;
    if (v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) || v16 == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
    {
      return v17 & 1;
    }

    v20 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  if (v20 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
  {
    (*(v9 + 8))(v11, v8);
    goto LABEL_3;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100421734(void (*a1)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = sub_1003C1420();
    v3 = *&v2[qword_10078A540];
    if (v3)
    {
      v4 = v2;
      v5 = v3;

      a1(v5);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1004217E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100775700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100421854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004218BC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return Set.contains(_:)();
}

uint64_t sub_100421968()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return Set.init()();
}

uint64_t sub_1004219EC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  return Set.removeAll(where:)();
}

uint64_t sub_100421AB4(char a1, uint64_t a2)
{
  v16 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = __chkstk_darwin(v6);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v16 - v13;
  if (a1)
  {
    (*(v9 + 16))(v12, v16, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.insert(_:)();
    return (*(v9 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Set();
    Set.remove(_:)();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100421D40()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782D00);
  v1 = sub_100003E30(v0, qword_100782D00);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100421E08(void *a1, uint64_t a2)
{
  [a1 setContactStore:a2];
  [a1 setAllowsEditing:0];
  [a1 setAllowsActions:0];
  [a1 setDisplayMode:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong pushViewController:a1 animated:1];
  }
}

void sub_100421EE8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_allocWithZone(REMICloudIsOffDataView) initWithStore:a1];
  v8 = 0;
  v4 = [v3 fetchICloudIsOffCloudConfigurationPropertiesWithError:&v8];
  if (v4)
  {
    v5 = v4;
    v6 = v8;

    *a2 = v5;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100421FD4()
{
  if (!*(v0 + 72))
  {
    *(v0 + 72) = (*(v0 + 80))();

    swift_unknownObjectRelease();
  }
}

BOOL sub_1004221D8()
{
  v1 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  sub_100421FD4();
  v11 = v0[9];
  if (v11)
  {
    swift_unknownObjectRetain();
    Date.init()();
    swift_beginAccess();
    sub_10000C36C(v0 + 4, v0[7]);
    dispatch thunk of TTRICloudIsOffUserDefaults.lastICloudIsOffPromptDate.getter();
    swift_endAccess();
    v12 = *(v5 + 48);
    if (v12(v3, 1, v4) == 1)
    {
      static Date.distantPast.getter();
      if (v12(v3, 1, v4) != 1)
      {
        sub_1004226FC(v3);
      }
    }

    else
    {
      (*(v5 + 32))(v8, v3, v4);
    }

    Date.timeIntervalSince(_:)();
    v19 = v18;
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);
    [v11 iCloudIsOffTimeIntervalSinceLastPrompt];
    v22 = v21;
    swift_unknownObjectRelease();
    return v19 < v22;
  }

  else
  {
    if (qword_1007672D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100782DB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "TTRICloudIsOffProvider: Failed to fetch REMICloudIsOffCloudConfiguration properties", v16, 2u);
    }

    return 0;
  }
}

uint64_t sub_1004224FC()
{
  sub_100004758(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_10042254C()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_appleAccounts];

    if (!v2)
    {
      return 0;
    }

    sub_1004226B0();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
LABEL_19:
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = ACAccountDataclassReminders;
    do
    {
      v7 = v4 != v5;
      if (v4 == v5)
      {
        break;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v10 = [v8 isEnabledForDataclass:v6];

      ++v5;
    }

    while (!v10);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004226B0()
{
  result = qword_10076DB48;
  if (!qword_10076DB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076DB48);
  }

  return result;
}

uint64_t sub_1004226FC(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007757F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100422764(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_100458BB0, v8);
}

uint64_t sub_100422838(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListListType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v26 - v11;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  v13 = *(a1 + 16);
  *(v3 + 32) = a1;
  swift_beginAccess();
  v14 = *(v13 + 48);
  *(v3 + 56) = *(v13 + 40);
  *(v3 + 64) = v14;
  v15 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  (*(v7 + 16))(v12, v13 + v15, v6);
  (*(v7 + 104))(v10, enum case for TTRRemindersListListType.groceries(_:), v6);
  sub_10001F128(&qword_10077A0D0, &type metadata accessor for TTRRemindersListListType);

  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v12, v6);
  *(v3 + 72) = v26[1] == v27;
  [TTRListDetailCreationChangeItem.storage.getter() copyWithZone:0];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for TTRListDetailCreationChangeItem.Storage(0);
  if (swift_dynamicCast())
  {
    v17 = v27;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100770AC8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_beginAccess();
      v23 = *(v13 + 32);

      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v21, 0xCu);
      sub_1000079B4(v22, &unk_10076DF80);
    }

    else
    {
    }

    v17 = 0;
  }

  *(v3 + 48) = v17;
  v24 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v3 + 40) = v24;

  return v3;
}

uint64_t sub_100422C90(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  v6 = TTRListEditor.changeItem.getter();
  *(v3 + 32) = a1;
  v7 = [v6 name];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v3 + 56) = v8;
  *(v3 + 64) = v10;
  REMListChangeItem.ttrGroceryContext.getter();
  if (v25)
  {
    sub_10000C36C(v24, v25);
    ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
    sub_100004758(v24);
  }

  else
  {
    sub_1000079B4(v24, &qword_1007757E0);
    ShouldCategorizeGrocery = 0;
  }

  *(v3 + 72) = ShouldCategorizeGrocery & 1;
  v12 = [v6 storage];
  [v12 copyWithZone:0];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003540(0, &qword_100770BF0);
  if (swift_dynamicCast())
  {
    v13 = v23;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100770AC8);
    v15 = v6;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = [v15 objectID];

      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v18, 0xCu);
      sub_1000079B4(v19, &unk_10076DF80);
    }

    else
    {
    }

    v13 = 0;
  }

  *(v3 + 48) = v13;
  v21 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v3 + 40) = v21;

  return v3;
}

uint64_t sub_100422FC0(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  v6 = TTRSmartListEditor.changeItem.getter();
  *(v3 + 32) = a1;
  v7 = [v6 customContext];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 name];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  *(v3 + 56) = v10;
  *(v3 + 64) = v12;
  *(v3 + 72) = 0;
  v13 = [v6 storage];
  [v13 copyWithZone:0];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003540(0, &qword_100770CD0);
  if (swift_dynamicCast())
  {
    v14 = v24;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100770AC8);
    v16 = v6;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v16 objectID];

      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v19, 0xCu);
      sub_1000079B4(v20, &unk_10076DF80);
    }

    else
    {
    }

    v14 = 0;
  }

  *(v3 + 48) = v14;
  v22 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v3 + 40) = v22;

  return v3;
}

uint64_t sub_1004232BC(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  v6 = TTRTemplateEditor.changeItem.getter();
  *(v3 + 32) = a1;
  v7 = [v6 name];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v3 + 56) = v8;
  *(v3 + 64) = v10;
  *(v3 + 72) = 0;
  v11 = [v6 storage];
  [v11 copyWithZone:0];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100003540(0, &qword_100770DB0);
  if (swift_dynamicCast())
  {
    v12 = v22;
  }

  else
  {
    if (qword_100766FB0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100770AC8);
    v14 = v6;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = [v14 objectID];

      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to set initialListStorage by copying REMListStorage {listID: %@}", v17, 0xCu);
      sub_1000079B4(v18, &unk_10076DF80);
    }

    else
    {
    }

    v12 = 0;
  }

  *(v3 + 48) = v12;
  v20 = NSUndoManager.observeChanges<A>(target:handler:)();

  *(v3 + 40) = v20;

  return v3;
}

id sub_100423588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100313CFC;
  v16 = &unk_1007283D8;
  v9 = _Block_copy(&v13);

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = a4;
  v18 = a5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10044EA48;
  v16 = &unk_1007283B0;
  v10 = _Block_copy(&v13);

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() configurationWithIdentifier:a1 previewProvider:v9 actionProvider:v10];
  sub_1000301AC(a4);
  sub_1000301AC(a2);
  swift_unknownObjectRelease();
  _Block_release(v10);
  _Block_release(v9);
  return v11;
}

uint64_t sub_100423728(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1004237C4, v5, v4);
}

uint64_t sub_1004237C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1004238C8;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for TTRIAccountsListsPresenter.Action);
  }

  else
  {

    v5 = v0[1];

    return v5(3);
  }
}

uint64_t sub_1004238C8()
{
  v1 = *v0;
  v2 = *(*v0 + 64);

  *(v1 + 81) = *(v1 + 80);
  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return _swift_task_switch(sub_10045A20C, v4, v3);
}

uint64_t sub_100423A0C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100423AA8, v5, v4);
}

uint64_t sub_100423AA8()
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

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for TTRIAccountsListsPresenter.RemoveSectionsFromListConfirmationAlertResponse);
  }

  else
  {

    v5 = v0[1];

    return v5(3);
  }
}

void sub_100423BDC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection.PinnedListSelection();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsViewModel.FallbackSelection();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for TTRAccountsListsViewModel.FallbackSelection.treeViewItem(_:))
  {
    (*(v14 + 96))(v16, v13);
    (*(v10 + 32))(v12, v16, v9);
    sub_100058000(&unk_10076BAA0);
    v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10062D400;
    (*(v10 + 16))(v19 + v18, v12, v9);
    (*(v14 + 8))(a1, v13);
    (*(v10 + 8))(v12, v9);
    *v33 = v19;
    type metadata accessor for TTRIAccountsListsSelection(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return;
  }

  v20 = v33;
  if (v17 == enum case for TTRAccountsListsViewModel.FallbackSelection.pinnedList(_:))
  {
    (*(v14 + 96))(v16, v13);
    (*(v4 + 32))(v8, v16, v3);
    v21 = v32;
    (*(v4 + 16))(v32, v8, v3);
    v22 = (*(v4 + 88))(v21, v3);
    if (v22 == enum case for TTRAccountsListsViewModel.FallbackSelection.PinnedListSelection.predefinedSmartList(_:))
    {
      (*(v14 + 8))(a1, v13);
      (*(v4 + 8))(v8, v3);
      (*(v4 + 96))(v21, v3);
      v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
      v24 = &enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:);
LABEL_10:
      (*(*(v23 - 8) + 32))(v20, v21);
      v26 = *v24;
      v27 = type metadata accessor for TTRAccountsListsPinnedListSelection();
      (*(*(v27 - 8) + 104))(v20, v26, v27);
      type metadata accessor for TTRIAccountsListsSelection(0);
      goto LABEL_11;
    }

    if (v22 == enum case for TTRAccountsListsViewModel.FallbackSelection.PinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v14 + 8))(a1, v13);
      (*(v4 + 8))(v8, v3);
      (*(v4 + 96))(v21, v3);
      v23 = type metadata accessor for TTRAccountsListsViewModel.List();
      v24 = &enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:);
      goto LABEL_10;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100003E30(v31, qword_100782E90);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    v29 = "Unknown pinned list type";
    v30 = 24;
  }

  else
  {
    if (v17 == enum case for TTRAccountsListsViewModel.FallbackSelection.hashtags(_:))
    {
      (*(v14 + 8))(a1, v13);
      (*(v14 + 96))(v16, v13);
      v25 = type metadata accessor for REMHashtagLabelSpecifier();
      (*(*(v25 - 8) + 32))(v20, v16, v25);
      type metadata accessor for TTRIAccountsListsSelection(0);
      goto LABEL_11;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100003E30(v28, qword_100782E90);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    v29 = "Unknown fallback selection";
    v30 = 26;
  }

  sub_1003F9818(v29, v30, 2);
  __break(1u);
}

void sub_100424288(uint64_t a1)
{
  v2 = v1;
  v48 = type metadata accessor for TTRAccountsListsViewModel.List();
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v48);
  v7 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v46 = v44 - v9;
  __chkstk_darwin(v8);
  v47 = v44 - v10;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v13 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v13;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v14 = TTRAccountsListsViewModel.remList(for:)();

  if (!v14)
  {
    goto LABEL_9;
  }

  if ([v14 sharingStatus] != 3)
  {

LABEL_9:
    v22 = v48;
    (*(v4 + 16))(v7, a1, v48);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v4 + 8))(v7, v22);
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get placeholder list for share invitation for {list.objectID: %@}", v25, 0xCu);
      sub_1000079B4(v26, &unk_10076DF80);
    }

    else
    {

      (*(v4 + 8))(v7, v22);
    }

    return;
  }

  v15 = [v14 account];
  if ([v15 type] == 3)
  {
    sub_10000B0D8(v2 + 112, &v49);
    v44[1] = sub_10000C36C(&v49, v51);
    v16 = TTRAccountsListsViewModel.List.name.getter();
    v45 = v17;
    v46 = v16;
    v18 = [v14 sharedOwnerName];
    if (v18)
    {
      v19 = v18;
      v44[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v44[0] = 0;
      v21 = 0;
    }

    v38 = swift_allocObject();
    swift_weakInit();
    v40 = v47;
    v39 = v48;
    (*(v4 + 16))(v47, a1, v48);
    v41 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = v38;
    *(v42 + 24) = v14;
    (*(v4 + 32))(v42 + v41, v40, v39);

    v43 = v14;
    sub_1002A5474(v46, v45, v44[0], v21, sub_100452320, v42);

    sub_100004758(&v49);
  }

  else
  {
    v28 = v46;
    v29 = v48;
    (*(v4 + 16))(v46, a1, v48);
    v30 = v15;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v53 = v47;
      *v33 = 138412802;
      v35 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v4 + 8))(v28, v29);
      *(v33 + 4) = v35;
      *v34 = v35;
      *(v33 + 12) = 2112;
      v36 = [v30 objectID];
      *(v33 + 14) = v36;
      v34[1] = v36;
      *(v33 + 22) = 2080;
      v49 = 0;
      v50 = 0xE000000000000000;
      v52 = [v30 type];
      type metadata accessor for REMAccountType(0);
      _print_unlocked<A, B>(_:_:)();
      v37 = sub_100004060(v49, v50, &v53);

      *(v33 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Responding to share invitation is not supported for the account {list.objectID: %@, account.objectID: %@, account.type: %s}", v33, 0x20u);
      sub_100058000(&unk_10076DF80);
      swift_arrayDestroy();

      sub_100004758(v47);
    }

    else
    {

      (*(v4 + 8))(v28, v29);
    }
  }
}

void sub_1004249C8(uint64_t a1, int a2)
{
  v24 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.List();
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRListType();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v11 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v11;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v12 = TTRAccountsListsViewModel.remList(for:)();

  if (v12)
  {
    swift_getObjectType();
    *v8 = TTRAccountsListsViewModel.List.objectID.getter();
    v8[8] = 0;
    v13 = v25;
    (*(v6 + 104))(v8, enum case for TTRListType.list(_:), v25);
    dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
    (*(v6 + 8))(v8, v13);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100451390(v12, v24 & 1, Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v16 = v22;
    v15 = v23;
    (*(v22 + 16))(v5, a1, v23);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v16 + 8))(v5, v15);
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to find remList in viewModel -- failed to show reminders {list.objectID: %@}", v19, 0xCu);
      sub_1000079B4(v20, &unk_10076DF80);
    }

    else
    {

      (*(v16 + 8))(v5, v15);
    }
  }
}

void sub_100424E14(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRListType();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v10 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v11 = TTRAccountsListsViewModel.remSmartList(for:)();

  if (v11)
  {
    swift_getObjectType();
    *v7 = TTRAccountsListsViewModel.List.objectID.getter();
    v12 = v24;
    (*(v5 + 104))(v7, enum case for TTRListType.customSmartList(_:), v24);
    dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
    (*(v5 + 8))(v7, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      sub_10000C36C((Strong + 48), *(Strong + 72));
      sub_100393C18(v11, v14, &off_100721100, v25);

      sub_100004758(v25);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v16 = v22;
    v15 = v23;
    (*(v22 + 16))(v4, a1, v23);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v16 + 8))(v4, v15);
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to find remSmartList in viewModel -- failed to show reminders {smartList.objectID: %@}", v19, 0xCu);
      sub_1000079B4(v20, &unk_10076DF80);
    }

    else
    {

      (*(v16 + 8))(v4, v15);
    }
  }
}

uint64_t sub_100425274(uint64_t a1, int a2)
{
  v16 = a2;
  v3 = type metadata accessor for TTRListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v9 = TTRListType.PredefinedSmartListType.rawValue.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v9;
  *(inited + 56) = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  swift_getObjectType();
  v11 = type metadata accessor for TTRListType.PredefinedSmartListType();
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  (*(v4 + 104))(v6, enum case for TTRListType.predefinedSmartList(_:), v3);
  dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
  (*(v4 + 8))(v6, v3);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    sub_1004516B4(a1, v14, v16 & 1, v13);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100425510(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TTRListType();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v10 = TTRAccountsListsViewModel.Group.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v11 = TTRAccountsListsViewModel.remList(for:)();

  if (v11)
  {
    swift_getObjectType();
    *v7 = TTRAccountsListsViewModel.Group.objectID.getter();
    v7[8] = 1;
    v12 = v24;
    (*(v5 + 104))(v7, enum case for TTRListType.list(_:), v24);
    dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
    (*(v5 + 8))(v7, v12);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100451390(v11, 0, Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v15 = v22;
    v14 = v23;
    (*(v22 + 16))(v4, a1, v23);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = TTRAccountsListsViewModel.Group.objectID.getter();
      (*(v15 + 8))(v4, v14);
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to find remList for group in viewModel -- failed to show reminders {group.objectID: %@}", v18, 0xCu);
      sub_1000079B4(v19, &unk_10076DF80);
    }

    else
    {

      (*(v15 + 8))(v4, v14);
    }
  }
}

uint64_t sub_100425958(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    v8 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    v9 = sub_10000C36C(v7 + 6, v7[9]);
    sub_10044F500(a1, a2, a3 & 1, v8, v7, *v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100425A10()
{
  v1 = v0;
  v2 = type metadata accessor for TTRTemplatesListStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = TTRAccountsListsViewModel.remAccountForTemplates.getter();

  if (v12)
  {
    sub_10000C36C((v0 + 112), *(v0 + 136));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      (*(v3 + 104))(v5, enum case for TTRTemplatesListStyle.browser(_:), v2);
      v8 = sub_1004D06B4(v5, v12, v1, &off_100727CA8);
      v9 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v8];
      [v9 setModalPresentationStyle:2];

      swift_unknownObjectRelease();
      (*(v3 + 8))(v5, v2);
      [v7 presentViewController:v9 animated:1 completion:0];
    }

    else
    {
      v10 = v12;
    }
  }
}

void sub_100425C0C()
{
  v1 = *v0;
  v2 = type metadata accessor for REMAnalyticsEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  v6 = TTRAccountsListsViewModel.remAccount(for:)();

  if (v6)
  {
    v25 = v6;
    type metadata accessor for TTRUserDefaults();
    v7 = static TTRUserDefaults.appUserDefaults.getter();
    v24[1] = v1;
    v8 = v7;
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v9 = sub_100058000(&qword_1007757E8);
    v10 = &v5[*(v9 + 48)];
    v11 = &v5[*(v9 + 80)];
    v12 = enum case for REMUserOperation.openRecentlyDeletedList(_:);
    v13 = type metadata accessor for REMUserOperation();
    (*(*(v13 - 8) + 104))(v5, v12, v13);
    *v10 = TTRUserDefaults.activitySessionId.getter();
    v10[1] = v14;
    v26 = v8;
    TTRUserDefaults.activitySessionBeginTime.getter();
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v15 = _typeName(_:qualified:)();
    v17 = v16;

    v27 = v15;
    v28 = v17;
    v18._countAndFlagsBits = 0x756F636341202D20;
    v18._object = 0xEE007473694C746ELL;
    String.append(_:)(v18);
    v19 = v28;
    *v11 = v27;
    *(v11 + 1) = v19;
    (*(v3 + 104))(v5, enum case for REMAnalyticsEvent.userOperation(_:), v2);
    REMAnalyticsManager.post(event:)();

    (*(v3 + 8))(v5, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_getObjectType();
      v22 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
      v23 = v25;
      sub_100451434(v25, v22, v21);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100425F04()
{
  v0 = sub_100058000(&qword_100783140);
  __chkstk_darwin(v0 - 8);
  v2 = &v10[-v1];
  v3 = type metadata accessor for REMAccountsListDataView.Model();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_dataViewModel;
    swift_beginAccess();
    sub_10000794C(v8 + v9, v2, &qword_100783140);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {

      return sub_1000079B4(v2, &qword_100783140);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      sub_10001AFE0(v6, 0, 2, 1);

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

id sub_100426100(void *a1, char a2)
{
  v4 = type metadata accessor for TTRITipKitSignal();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    return sub_1004548C8();
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_10000C36C((Strong + 48), *(Strong + 72));
      sub_100450A40(1, a1, v10);
      swift_unknownObjectRelease();
    }

    (*(v5 + 104))(v7, enum case for TTRITipKitSignal.tappedUpgradeButton(_:), v4);
    TTRITipKitSignal.donate(signalContext:)(0);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100426264(uint64_t a1)
{
  v2 = type metadata accessor for TTRListType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  (*(v3 + 104))(v5, enum case for TTRListType.tagged(_:), v2);
  dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
  (*(v3 + 8))(v5, v2);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
    v10 = sub_10000C36C(v8 + 6, v8[9]);
    sub_10044F0EC(a1, v9, v8, *v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100426408(uint64_t a1)
{
  v2 = sub_100058000(&qword_10077FDA8);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = type metadata accessor for TTRRemindersListListType();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_100426520(a1, 0, 0, v4);

    return sub_1000079B4(v4, &qword_10077FDA8);
  }

  return result;
}

void sub_100426520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v43 = a3;
  v44 = a4;
  v41 = a2;
  v40 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10077FDA8);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for TTRRemindersListListType();
  v42 = *(v12 - 8);
  __chkstk_darwin(v12);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v16 = TTRAccountsListsViewModel.Account.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v16;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v17 = TTRAccountsListsViewModel.remAccount(for:)();

  if (v17)
  {
    v18 = [v17 store];
    v19 = [objc_allocWithZone(REMSaveRequest) initWithStore:v18];

    type metadata accessor for TTRListDetailCreationChangeItem(0);
    swift_allocObject();
    v20 = v19;
    v21 = v17;
    v22 = TTRListDetailCreationChangeItem.init(saveRequest:account:)(v20, v21);
    v23 = v43;
    if (v43)
    {
      swift_beginAccess();
      *(v22 + 5) = v41;
      *(v22 + 6) = v23;
    }

    sub_10000794C(v44, v11, &qword_10077FDA8);
    v24 = v42;
    if ((*(v42 + 48))(v11, 1, v12) == 1)
    {
      sub_1000079B4(v11, &qword_10077FDA8);
    }

    else
    {
      v33 = v38;
      (*(v24 + 32))(v38, v11, v12);
      v34 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
      swift_beginAccess();
      (*(v24 + 40))(&v22[v34], v33, v12);
      swift_endAccess();
    }

    sub_10000C36C((v5 + 112), *(v5 + 136));
    v35 = sub_10045015C(v22, v5, v5, &off_100727CA8);
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      [Strong presentViewController:v35 animated:1 completion:0];
    }
  }

  else
  {
    v25 = v39;
    v26 = a1;
    v27 = v40;
    (*(v39 + 16))(v8, v26, v40);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = TTRAccountsListsViewModel.Account.objectID.getter();
      (*(v25 + 8))(v8, v27);
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to find model for account -- Failed to add new list {account.objectID: %@}", v30, 0xCu);
      sub_1000079B4(v31, &unk_10076DF80);
    }

    else
    {

      (*(v25 + 8))(v8, v27);
    }
  }
}

uint64_t sub_100426B20(void *a1, void **a2)
{
  v3 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100426B94(a1, v3);
  }

  return result;
}

void sub_100426B94(void *a1, void *a2)
{
  v3 = v2;
  v96 = a2;
  v93 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v98 = *(v6 - 8);
  v99 = v6;
  v7 = __chkstk_darwin(v6);
  v101 = (v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v100 = v77 - v9;
  v10 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v97 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100058000(&qword_100783180);
  v13 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = v77 - v14;
  if (qword_1007672D8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    v16 = sub_100003E30(v15, qword_100782E90);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v18 = TTRAccountsListsViewModel.Account.objectID.getter();
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v18;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70);
    sub_10000FD44();

    v19 = a1;
    a1 = TTRAccountsListsViewModel.remAccount(for:)();

    if (!a1)
    {
      v47 = v92;
      v48 = v91;
      v49 = v93;
      (*(v92 + 16))(v91, v19, v93);
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = TTRAccountsListsViewModel.Account.objectID.getter();
        (*(v47 + 8))(v48, v49);
        *(v52 + 4) = v54;
        *v53 = v54;
        _os_log_impl(&_mh_execute_header, v50, v51, "Failed to find model account - Failed to add new group {account.objectID: %@}", v52, 0xCu);
        sub_1000079B4(v53, &unk_10076DF80);
      }

      else
      {

        (*(v47 + 8))(v48, v49);
      }

      return;
    }

    v20 = v3;
    v93 = v19;
    v77[1] = v16;
    swift_getObjectType();
    v21 = *(v13 + 104);
    v22 = v94;
    v82 = v20;
    v23 = v95;
    v21(v94, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v95);
    v24 = dispatch thunk of TTRAccountsListsInteractorType.createNewGroup(account:groupContext:lists:position:)();
    v25 = *(v13 + 8);
    v13 += 8;
    v25(v22, v23);
    v26 = [v24 sublistContext];
    if (!v26)
    {
      __break(1u);
LABEL_23:
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list type", 17, 2);
      __break(1u);
      return;
    }

    v79 = v26;
    v80 = v24;
    v96 = [v24 saveRequest];
    v81 = a1;
    v78 = [v96 updateAccount:a1];
    v27 = v82;

    v28 = TTRAccountsListsViewModel.remListsOrCustomSmartLists(in:)();

    v29 = *(v28 + 16);
    if (!v29)
    {
      break;
    }

    v103[0] = &_swiftEmptyArrayStorage;
    sub_1004A1F60(0, v29, 0);
    v3 = 0;
    v30 = v103[0];
    v94 = (v28 + ((*(v98 + 80) + 32) & ~*(v98 + 80)));
    v93 = v98 + 16;
    v91 = (v98 + 88);
    v90 = enum case for TTRListOrCustomSmartList.list(_:);
    v84 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
    v89 = (v98 + 96);
    v88 = (v98 + 8);
    v83 = enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
    v87 = (v97 + 104);
    v86 = enum case for TTRListOrCustomSmartListChangeItem.list(_:);
    v85 = v97 + 32;
    v95 = v28;
    v92 = v29;
    while (v3 < *(v28 + 16))
    {
      v31 = v12;
      v13 = v10;
      v32 = v98;
      v33 = v99;
      v34 = *(v98 + 16);
      v35 = v100;
      a1 = v93;
      v34(v100, &v94[*(v98 + 72) * v3], v99);
      v36 = v101;
      v34(v101, v35, v33);
      v37 = (*(v32 + 88))(v36, v33);
      v38 = &selRef_updateList_;
      v39 = v86;
      if (v37 != v90)
      {
        v38 = &selRef_updateSmartList_;
        v39 = v83;
        if (v37 != v84)
        {
          goto LABEL_23;
        }
      }

      v40 = v101;
      v41 = v99;
      (*v89)(v101, v99);
      v42 = *v40;
      v43 = [v96 *v38];

      (*v88)(v100, v41);
      v12 = v31;
      *v31 = v43;
      v10 = v13;
      (*v87)(v31, v39, v13);
      v103[0] = v30;
      v45 = v30[2];
      v44 = v30[3];
      if (v45 >= v44 >> 1)
      {
        sub_1004A1F60(v44 > 1, v45 + 1, 1);
        v30 = v103[0];
      }

      ++v3;
      v30[2] = v45 + 1;
      (*(v97 + 32))(v30 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v45, v31, v13);
      v28 = v95;
      if (v92 == v3)
      {

        v46 = v82;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v46 = v27;

  v30 = &_swiftEmptyArrayStorage;
LABEL_16:
  v101 = *sub_10000C36C((v46 + 112), *(v46 + 136));
  v55 = objc_allocWithZone(TTRUndoManager);
  v56 = String._bridgeToObjectiveC()();
  v57 = [v55 initWithDebugIdentifier:v56];

  type metadata accessor for TTRIGroupDetailInteractor();
  v58 = swift_allocObject();
  v58[3] = 0;
  swift_unknownObjectWeakInit();
  v58[7] = 0;
  v59 = v78;
  v58[4] = v78;
  type metadata accessor for TTRListEditor();
  sub_10001F128(&qword_10077C780, &type metadata accessor for TTRListEditor);
  v60 = v57;
  v100 = v59;
  v61 = v80;
  TTRUndoableEditing.init(changeItem:undoManager:)();
  v58[8] = v103[0];
  v62 = v79;
  v58[5] = v79;
  v58[6] = v30;
  v63 = v62;
  v58[7] = NSUndoManager.observeChanges<A>(target:handler:)();

  v64 = type metadata accessor for TTRIGroupDetailRouter();
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = v64;
  v106 = &off_100729B00;
  v103[0] = v65;
  type metadata accessor for TTRIGroupDetailPresenter();
  v66 = swift_allocObject();
  v67 = sub_10000AE84(v103, v64);
  __chkstk_darwin(v67);
  v69 = (v77 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v70 + 16))(v69);
  v71 = *v69;
  *(v66 + 88) = v64;
  *(v66 + 96) = &off_100729B00;
  *(v66 + 64) = v71;
  *(v66 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v66 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v66 + 48) = v58;
  *(v66 + 56) = &off_10071E7D8;
  *(v66 + 112) = v60;
  *(v66 + 104) = 0;
  v72 = v60;

  sub_100004758(v103);
  type metadata accessor for TTRIGroupDetailViewController();
  v103[0] = v66;
  v103[1] = &off_100718120;
  v104 = 0;
  v105 = v72;
  sub_10001F128(&qword_10078C0F0, type metadata accessor for TTRIGroupDetailViewController);
  static TTRTypedController<>.instantiateFromStoryboard(with:)();

  v73 = v102;
  v74 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v102];

  v58[3] = &off_100718110;
  swift_unknownObjectWeakAssign();

  *(v66 + 24) = &off_10072E100;
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  *(v66 + 40) = &off_100727C98;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v76 = Strong;
    [Strong presentViewController:v74 animated:1 completion:0];
  }
}

uint64_t sub_10042797C(uint64_t (*a1)(void *), uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v4 - 8);
  v29 = v26 - v5;
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v26 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1(&_swiftEmptyArrayStorage);
  }

  v14 = a1;
  v15 = Strong;

  v28 = TTRTimeZoneOverrideMenuPresenterCapability.recentTimeZoneOverrides(prefix:)();

  static TimeZone.ttr_default.getter();
  v16 = v12;
  v27 = v12;
  v17 = *(v15 + 192);
  v18 = swift_allocObject();
  *(v18 + 2) = v15;
  *(v18 + 3) = v14;
  v26[1] = v15;
  *(v18 + 4) = a2;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v29, 1, 1, v19);
  (*(v7 + 16))(v10, v16, v6);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v20;
  *(v23 + 3) = &protocol witness table for MainActor;
  *(v23 + 4) = v28;
  (*(v7 + 32))(&v23[v21], v10, v6);
  *&v23[v22] = v17;
  v24 = &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v24 = sub_100452438;
  v24[1] = v18;
  sub_10009E31C(0, 0, v29, &unk_10062E3E0, v23);

  (*(v7 + 8))(v27, v6);
}

uint64_t sub_100427CCC(uint64_t a1, uint64_t a2, void (*a3)(void *))
{

  sub_1000815D0(v4);
  sub_100003540(0, &qword_10076BA60);
  static TTRLocalizableStrings.TimeZone.other.getter();

  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  a3(&_swiftEmptyArrayStorage);
}

uint64_t sub_100427E1C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C36C((a2 + 112), *(a2 + 136));
  sub_10001F128(&qword_100783138, type metadata accessor for TTRIAccountsListsPresenter);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    static TimeZone.ttr_default.getter();
    Date.init()();
    v13 = static TTRITimeZonePickerAssembly.createViewControllerForModalPresentation(delegate:currentTimeZone:date:)();
    (*(v4 + 8))(v6, v3);
    [v12 presentViewController:v13 animated:1 completion:0];

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

Class sub_100428028(void *a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v5 = type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v49 - v10;
  v56 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsTemplates.getter();
  v55 = sub_10001F128(&unk_10078D420, &type metadata accessor for TTRAccountsListsViewModel.AccountsCapabilities);
  v12 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if ((v12 & 1) == 0)
  {
    v14 = [objc_opt_self() daemonUserDefaults];
    v15 = [v14 timeZoneOverrideEnabled];

    if (!v15)
    {
      return 0;
    }
  }

  v52 = v13;
  v53 = v3;
  v58 = &_swiftEmptyArrayStorage;
  v16 = String._bridgeToObjectiveC()();
  v51 = objc_opt_self();
  v17 = [v51 _systemImageNamed:v16];

  v18 = sub_100003540(0, &qword_10076BA60);
  v19._countAndFlagsBits = 0x73694C2074696445;
  v50 = "v16@?0@?<v@?@NSArray>8";
  v20._object = 0x8000000100671220;
  v19._object = 0xEA00000000007374;
  v20._countAndFlagsBits = 0xD00000000000001ELL;
  TTRLocalizedString(_:comment:)(v19, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = v54;
  *(v21 + 24) = a2;
  v54 = v17;

  v49[1] = v18;
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = v58;

  TTRAccountsListsViewModel.accountsCapabilities.getter();

  static TTRAccountsListsViewModel.AccountsCapabilities.supportsTemplates.getter();
  v24 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = v52;
  v52(v9, v5);
  v25(v11, v5);
  if (v24)
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = [v51 _systemImageNamed:v26];

    v28._countAndFlagsBits = 0x6574616C706D6554;
    v28._object = 0xE900000000000073;
    v29._object = (v50 | 0x8000000000000000);
    v29._countAndFlagsBits = 0xD00000000000001ELL;
    TTRLocalizedString(_:comment:)(v28, v29);
    swift_allocObject();
    swift_weakInit();
    v30 = v27;
    v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v58;
  }

  v32 = [objc_opt_self() daemonUserDefaults];
  v33 = [v32 timeZoneOverrideEnabled];

  if (v33 && (static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000FD678;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10010C96C;
    aBlock[3] = &unk_100728108;
    v36 = _Block_copy(aBlock);

    v37 = [v34 elementWithUncachedProvider:v36];
    _Block_release(v36);
    sub_100003540(0, &unk_10076B890);
    v38._countAndFlagsBits = 0x6E6F5A20656D6954;
    v39._object = (v50 | 0x8000000000000000);
    v38._object = 0xE900000000000065;
    v39._countAndFlagsBits = 0xD00000000000001ELL;
    v40 = TTRLocalizedString(_:comment:)(v38, v39);
    v41 = String._bridgeToObjectiveC()();
    v42 = [v51 _systemImageNamed:v41];

    sub_100058000(&qword_10076B780);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10062D420;
    *(v43 + 32) = v37;
    v59.value.super.isa = v42;
    v59.is_nil = 0;
    v44 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v40, 0, v59, 0, 0xFFFFFFFFFFFFFFFFLL, v43, v48).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v23 = v58;
  }

  sub_100003540(0, &unk_10076B890);
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v60.value.super.isa = 0;
  v60.is_nil = 0;
  v46.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v60, 0, 0xFFFFFFFFFFFFFFFFLL, v23, v48).super.super.isa;

  return v46.super.super.isa;
}

uint64_t sub_100428808()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100425A10();
  }

  return result;
}

uint64_t sub_100428860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = TTRAccountsListsViewModel.remAccount(for:)();

  if (v4 && (v5 = [v4 groupContext], v4, v5))
  {
    v6 = sub_100058000(&qword_100783290);
    v7 = *(v6 + 48);
    v8 = type metadata accessor for TTRAccountsListsViewModel.Account();
    (*(*(v8 - 8) + 16))(a2, a1, v8);
    *(a2 + v7) = v5;
    return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
  }

  else
  {
    v10 = sub_100058000(&qword_100783290);
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }
}

void sub_1004289C4(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v43[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v43[-v6];
  v8 = type metadata accessor for TTRAccountsListsViewModel.List();
  v9 = *(v8 - 8);
  v60 = v8;
  v61 = v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v43[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v59 = &v43[-v13];
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v43[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v43[-v19];
  v21 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v21);
  v23 = &v43[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100459530(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v23, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    v25 = *v23;
    v67 = *(*v23 + 16);
    if (!v67)
    {
LABEL_32:

      return;
    }

    v26 = 0;
    LODWORD(v66) = enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:);
    v65 = v15 + 88;
    v62 = enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:);
    v63 = enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:);
    v57 = enum case for TTRAccountsListsViewModel.Item.account(_:);
    v58 = enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:);
    v55 = enum case for TTRAccountsListsViewModel.Item.customSmartList(_:);
    v56 = enum case for TTRAccountsListsViewModel.Item.list(_:);
    v54 = enum case for TTRAccountsListsViewModel.Item.group(_:);
    v52 = enum case for TTRAccountsListsViewModel.Item.permissionSection(_:);
    v50 = enum case for TTRAccountsListsViewModel.Item.tipSection(_:);
    v51 = enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:);
    v48 = enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:);
    v49 = enum case for TTRAccountsListsViewModel.Item.tip(_:);
    v46 = enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:);
    v47 = enum case for TTRAccountsListsViewModel.Item.hashtags(_:);
    v27 = (v15 + 8);
    v45 = enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:);
    v64 = (v15 + 96);
    v53 = (v61 + 32);
    v61 += 8;
    v44 = enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:);
    while (1)
    {
      if (v26 >= *(v25 + 16))
      {
        __break(1u);
LABEL_37:
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_100003E30(v39, qword_100782E90);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_100008E04(_swiftEmptyArrayStorage);
        v40 = "Unknown item type";
        v41 = 17;
LABEL_43:
        sub_1003F9818(v40, v41, 2);
        __break(1u);
        return;
      }

      v29 = *(v15 + 16);
      v29(v20, v25 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v26, v14);
      v29(v18, v20, v14);
      v30 = (*(v15 + 88))(v18, v14);
      if (v30 == v66)
      {
        (*v27)(v20, v14);
        (*v64)(v18, v14);
        v28 = type metadata accessor for UUID();
        (*(*(v28 - 8) + 8))(v18, v28);
      }

      else
      {
        if (v30 != v63 && v30 != v62 && v30 != v58 && v30 != v57)
        {
          if (v30 == v56 || v30 == v55)
          {
            (*v64)(v18, v14);
            v32 = v59;
            (*v53)(v59, v18, v60);
            sub_100429C6C(v32);
            (*v61)(v32, v60);
LABEL_28:
            (*v27)(v20, v14);
            goto LABEL_6;
          }

          if (v30 != v54 && v30 != v52 && v30 != v51 && v30 != v50 && v30 != v49 && v30 != v48 && v30 != v47 && v30 != v46)
          {
            if (v30 != v45 && v30 != v44)
            {
              goto LABEL_37;
            }

            goto LABEL_28;
          }
        }

        v31 = *v27;
        (*v27)(v20, v14);
        v31(v18, v14);
      }

LABEL_6:
      if (v67 == ++v26)
      {
        goto LABEL_32;
      }
    }
  }

  v34 = v66;
  v33 = v67;
  (*(v66 + 32))(v7, v23, v67);
  (*(v34 + 16))(v5, v7, v33);
  v35 = (*(v34 + 88))(v5, v33);
  if (v35 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
  {
    v36 = *(v34 + 8);
    v36(v7, v33);
    v36(v5, v33);
  }

  else
  {
    if (v35 != enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100003E30(v42, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      v40 = "Unknown pinnedListSelection type";
      v41 = 32;
      goto LABEL_43;
    }

    (*(v34 + 96))(v5, v33);
    v37 = v60;
    v38 = v61;
    (*(v61 + 32))(v12, v5, v60);
    sub_100429650(v12);
    (*(v38 + 8))(v12, v37);
    (*(v34 + 8))(v7, v33);
  }
}

void sub_100429250(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v5, v2);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v5, v11);
    return;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_7;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    (*(v3 + 96))(v5, v2);
    (*(v7 + 32))(v9, v5, v6);
    sub_100429C6C(v9);
    (*(v7 + 8))(v9, v6);
    return;
  }

  if (v10 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_7:
    (*(v3 + 8))(v5, v2);
  }

  else if (v10 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v10 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100782E90);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_100429650(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v37 = v5;
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for TTRListOrCustomSmartList();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  v11 = __chkstk_darwin(v9);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v41 = &v32 - v12;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v15 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v15;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  TTRAccountsListsViewModel.listOrCustomSmartList(for:)();

  v16 = v42;
  if ((*(v42 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &unk_10076DF20);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to find listOrCustomSmartList to unpin list", v19, 2u);
    }
  }

  else
  {
    v33 = *(v16 + 32);
    v20 = v41;
    v33(v41, v8, v9);
    v35 = objc_opt_self();
    static TTRLocalizableStrings.UndoAction.unpinList.getter();
    v32 = v2;
    v34 = String._bridgeToObjectiveC()();

    v21 = v16;
    v22 = v36;
    (*(v16 + 16))(v36, v20, v9);
    v24 = v38;
    v23 = v39;
    v25 = v40;
    (*(v39 + 16))(v38, a1, v40);
    v26 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v27 = (v10 + *(v23 + 80) + v26) & ~*(v23 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v32;
    v33((v28 + v26), v22, v9);
    (*(v23 + 32))(v28 + v27, v24, v25);
    v29 = swift_allocObject();
    *(v29 + 16) = sub_100456DDC;
    *(v29 + 24) = v28;
    aBlock[4] = sub_100068444;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_1007289A0;
    v30 = _Block_copy(aBlock);

    v31 = v34;
    [v35 withActionName:v34 block:v30];
    _Block_release(v30);

    (*(v42 + 8))(v41, v9);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }
  }
}

void sub_100429C6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v42 = v5;
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for TTRListOrCustomSmartList();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v46 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v12;
  __chkstk_darwin(v11);
  v47 = &v35 - v13;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v16 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v16;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v41 = a1;
  TTRAccountsListsViewModel.listOrCustomSmartList(for:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &unk_10076DF20);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to find listOrCustomSmartList to pin list", v19, 2u);
    }
  }

  else
  {
    v20 = v9;
    v21 = *(v10 + 32);
    v22 = v47;
    v21(v47, v8, v20);

    v23 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(1);

    if (v23)
    {
      sub_10043FA6C();
      (*(v10 + 8))(v22, v20);
    }

    else
    {
      v39 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.pinList.getter();
      v38 = String._bridgeToObjectiveC()();

      v24 = *(v10 + 16);
      v36 = v21;
      v24(v46, v22, v20);
      v26 = v43;
      v25 = v44;
      v27 = v45;
      (*(v44 + 16))(v43, v41, v45);
      v28 = (*(v10 + 80) + 24) & ~*(v10 + 80);
      v29 = *(v25 + 80);
      v37 = v2;
      v30 = (v40 + v29 + v28) & ~v29;
      v31 = swift_allocObject();
      *(v31 + 16) = v2;
      v36(v31 + v28, v46, v20);
      (*(v25 + 32))(v31 + v30, v26, v27);
      v32 = swift_allocObject();
      *(v32 + 16) = sub_100456F58;
      *(v32 + 24) = v31;
      aBlock[4] = sub_100068444;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_100728A18;
      v33 = _Block_copy(aBlock);

      v34 = v38;
      [v39 withActionName:v38 block:v33];
      _Block_release(v33);

      (*(v10 + 8))(v47, v20);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      if (v33)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10042A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_10042A370, v7, v6);
}

uint64_t sub_10042A370()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_10042A468;
    v3 = v0[6];

    return sub_10042A5AC(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10042A468()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_10045A2D8, v3, v2);
}

uint64_t sub_10042A5AC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v7;
  v2[15] = v6;

  return _swift_task_switch(sub_10042A758, v7, v6);
}

void sub_10042A758()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    v5 = v0[12];
    v6 = v0[10];
    v7 = v0[11];

    (*(v7 + 96))(v5, v6);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v5, v8);
LABEL_8:
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_100782E90);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Trying to delete unexpected item", v15, 2u);
    }

    v16 = v0[1];

    v16(0);
    return;
  }

  if (v4 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
LABEL_7:
    v9 = v0[12];
    v10 = v0[10];
    v11 = v0[11];

    (*(v11 + 8))(v9, v10);
    goto LABEL_8;
  }

  if (v4 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    v17 = v0[12];
    v18 = v0[9];
    v19 = v0[7];
    v20 = v0[8];
    (*(v0[11] + 96))(v17, v0[10]);
    (*(v20 + 32))(v18, v17, v19);
    v21 = swift_task_alloc();
    v0[16] = v21;
    *v21 = v0;
    v21[1] = sub_10042AD50;
    v22 = v0[9];
    v23 = 0;
LABEL_19:

    sub_100436358(v22, v23);
    return;
  }

  if (v4 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v24 = v0[12];
    v25 = v0[9];
    v26 = v0[7];
    v27 = v0[8];
    (*(v0[11] + 96))(v24, v0[10]);
    (*(v27 + 32))(v25, v24, v26);
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_10042AF28;
    v22 = v0[9];
    v23 = 1;
    goto LABEL_19;
  }

  if (v4 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    v29 = v0[12];
    v31 = v0[5];
    v30 = v0[6];
    v32 = v0[4];
    (*(v0[11] + 96))(v29, v0[10]);
    (*(v31 + 32))(v30, v29, v32);
    v33 = swift_task_alloc();
    v0[18] = v33;
    *v33 = v0;
    v33[1] = sub_10042B100;
    v34 = v0[6];

    sub_1004444EC(v34);
  }

  else
  {
    if (v4 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_7;
    }

    if (v4 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v4 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {

      goto LABEL_8;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003E30(v35, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);

    sub_1003F9818("Unknown item type", 17, 2);
  }
}

uint64_t sub_10042AD50(char a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_10042AE78, v4, v3);
}

uint64_t sub_10042AE78()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 152);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10042AF28(char a1)
{
  v2 = *v1;
  *(*v1 + 153) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_10042B050, v4, v3);
}

uint64_t sub_10042B050()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 153);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10042B100(char a1)
{
  v2 = *v1;
  *(*v1 + 154) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return _swift_task_switch(sub_10042B228, v4, v3);
}

uint64_t sub_10042B228()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 154);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10042B2D8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRListType.PredefinedSmartListVisibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v17 = &enum case for TTRListType.PredefinedSmartListVisibility.hidden(_:);
LABEL_8:
    (*(v5 + 104))(v7, *v17, v4);
    swift_getObjectType();
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPredefinedSmartListVisibility(_:for:)();
    (*(v5 + 8))(v7, v4);
    return 1;
  }

  v8 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(1);

  if (!v8)
  {
    v17 = &enum case for TTRListType.PredefinedSmartListVisibility.visible(_:);
    goto LABEL_8;
  }

  static TTRLocalizableStrings.AccountsList.cantShowSmartListAlertTitle.getter();
  static TTRLocalizableStrings.AccountsList.cantShowSmartListAlertMessage.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() actionWithTitle:v12 style:1 handler:0];

  [v11 addAction:v13];
  sub_10000C36C((v2 + 112), *(v2 + 136));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong presentViewController:v11 animated:1 completion:0];
  }

  return 0;
}

uint64_t sub_10042B560(uint64_t a1, char *a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10001AFE0(a2, 1, a3 & 1, 1);
  }

  return result;
}

void sub_10042B5DC(uint64_t a1)
{
  v2 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14, v16);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_5;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    v17 = TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter();
    TTRAccountsListsViewModel.SmartList.type.getter();
    sub_10042B2D8((v17 & 1) == 0);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    return;
  }

  if (v15 == enum case for TTRAccountsListsViewModel.Item.account(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v15 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_5:
    (*(v11 + 8))(v14, v10);
  }

  else if (v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v15 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

void sub_10042BAA0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v33 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v17);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100459530(a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v19, type metadata accessor for TTRIAccountsListsSelection);
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = v33;
    (*(v33 + 32))(v9, v19, v4);
    (*(v22 + 16))(v7, v9, v4);
    v23 = (*(v22 + 88))(v7, v4);
    if (v23 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v24 = *(v22 + 8);
      v24(v9, v4);
      v24(v7, v4);
    }

    else if (v23 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v22 + 96))(v7, v4);
      v26 = v30;
      v25 = v31;
      v27 = v32;
      (*(v31 + 32))(v30, v7, v32);
      sub_10042C520(v26);
      (*(v25 + 8))(v26, v27);
      (*(v22 + 8))(v9, v4);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100003E30(v28, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection", 27, 2);
      __break(1u);
    }
  }

  else
  {
    v21 = *v19;
    if (*(v21 + 16))
    {
      (*(v11 + 16))(v14, v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

      (*(v11 + 32))(v16, v14, v10);
      sub_10042BF78(v16);
      (*(v11 + 8))(v16, v10);
    }

    else
    {
    }
  }
}

void sub_10042BF78(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.List();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v11 + 96))(v13, v10);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v13, v15);
  }

  else
  {
    if (v14 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_7;
    }

    if (v14 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
    {
      (*(v11 + 96))(v13, v10);
      (*(v7 + 32))(v9, v13, v6);
      sub_10042C520(v9);
      (*(v7 + 8))(v9, v6);
      return;
    }

    if (v14 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      (*(v11 + 96))(v13, v10);
      (*(v3 + 32))(v5, v13, v2);
      sub_10042CCFC(v5);
      (*(v3 + 8))(v5, v2);
      return;
    }

    if (v14 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v14 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v11 + 8))(v13, v10);
    }

    else if (v14 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v14 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100003E30(v20, qword_100782E90);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_100008E04(&_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2);
      __break(1u);
      goto LABEL_29;
    }
  }

  if (qword_1007672D8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003E30(v16, qword_100782E90);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Trying to edit unexpected item", v19, 2u);
  }
}

void sub_10042C520(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRITipKitSignal();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMNavigationSpecifier.ListPathSpecifier.DetailSection();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v44 - v10;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v13 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v13;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v14 = TTRAccountsListsViewModel.remList(for:)();

  if (v14)
  {
    v15 = v48;
    (*(v7 + 104))(v48, enum case for REMNavigationSpecifier.ListPathSpecifier.DetailSection.none(_:), v6);

    TTRModuleState.initialLoadPromise.getter();

    v16 = swift_allocObject();
    swift_weakInit();
    v17 = v47;
    (*(v7 + 16))(v47, v15, v6);
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    *(v19 + 24) = v14;
    (*(v7 + 32))(v19 + v18, v17, v6);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1004569EC;
    *(v20 + 24) = v19;
    v21 = v14;
    v22 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v7 + 8))(v15, v6);
    v23 = v49;
    v24 = v50;
    v25 = v51;
    (*(v50 + 104))(v49, enum case for TTRITipKitSignal.tappedNameAndAppearanceAction(_:), v51);
    v26 = static TTRITipKitSignalContext.AccountsList.SwipeCell.list.getter();
LABEL_7:
    TTRITipKitSignal.donate(signalContext:)(*&v26);

    (*(v24 + 8))(v23, v25);
    return;
  }

  v28 = TTRAccountsListsViewModel.remSmartList(for:)();

  if (v28)
  {
    v29 = v48;
    (*(v7 + 104))(v48, enum case for REMNavigationSpecifier.ListPathSpecifier.DetailSection.none(_:), v6);

    TTRModuleState.initialLoadPromise.getter();

    v30 = swift_allocObject();
    swift_weakInit();
    v31 = v47;
    (*(v7 + 16))(v47, v29, v6);
    v32 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    *(v33 + 24) = v28;
    (*(v7 + 32))(v33 + v32, v31, v6);
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1004568BC;
    *(v34 + 24) = v33;
    v21 = v28;
    v35 = zalgo.getter();
    dispatch thunk of Promise.then<A>(on:closure:)();

    (*(v7 + 8))(v29, v6);
    v23 = v49;
    v24 = v50;
    v25 = v51;
    (*(v50 + 104))(v49, enum case for TTRITipKitSignal.tappedNameAndAppearanceAction(_:), v51);
    v26 = static TTRITipKitSignalContext.AccountsList.SwipeCell.smartList.getter();
    goto LABEL_7;
  }

  v37 = v44;
  v36 = v45;
  v38 = v46;
  (*(v45 + 16))(v44, a1, v46);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v43 = TTRAccountsListsViewModel.List.objectID.getter();
    (*(v36 + 8))(v37, v38);
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&_mh_execute_header, v39, v40, "Failed to find REMList or REMSmartList -- failed to edit list {list.objectID: %@}", v41, 0xCu);
    sub_1000079B4(v42, &unk_10076DF80);
  }

  else
  {

    (*(v36 + 8))(v37, v38);
  }
}

void sub_10042CCFC(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v112 = *(v4 - 1);
  v5 = __chkstk_darwin(v4);
  v111 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v109 = &v89 - v7;
  v8 = type metadata accessor for TTRListOrCustomSmartList();
  v115 = *(v8 - 8);
  v116 = v8;
  v9 = __chkstk_darwin(v8);
  v118 = (&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v117 = &v89 - v11;
  v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v114 = *(v12 - 8);
  __chkstk_darwin(v12);
  v113 = (&v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v14 - 8);
  v16 = &v89 - v15;
  v100 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007672D8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100003E30(v18, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v21 = TTRAccountsListsViewModel.Group.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v21;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  v101 = v19;
  sub_10000FD44();

  v22 = a1;
  v23 = TTRAccountsListsViewModel.remList(for:)();

  if (!v23)
  {
    goto LABEL_18;
  }

  v110 = v4;

  v24 = v23;
  v25 = [v23 account];
  v26 = [v25 objectID];

  TTRAccountsListsViewModel.account(with:)();

  v27 = v99;
  v28 = v100;
  if ((*(v99 + 48))(v16, 1, v100) == 1)
  {

    sub_1000079B4(v16, &unk_10076B870);
LABEL_17:
    v4 = v110;
LABEL_18:
    v51 = v112;
    v52 = v111;
    (*(v112 + 2))(v111, v22, v4);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = TTRAccountsListsViewModel.Group.objectID.getter();
      (*(v51 + 1))(v52, v4);
      *(v55 + 4) = v57;
      *v56 = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "Failed to find models group -- failed to edit group {group.objectID: %@}", v55, 0xCu);
      sub_1000079B4(v56, &unk_10076DF80);
    }

    else
    {

      (*(v51 + 1))(v52, v4);
    }

    return;
  }

  v95 = v24;
  a1 = v98;
  (*(v27 + 32))(v98, v16, v28);

  v29 = TTRAccountsListsViewModel.remAccount(for:)();

  if (!v29)
  {
    (*(v27 + 8))(a1, v28);

    goto LABEL_17;
  }

  swift_getObjectType();
  v30 = dispatch thunk of TTRAccountsListsInteractorType.changeItem(for:)();
  v31 = [v30 saveRequest];
  v32 = [v30 sublistContext];
  if (!v32)
  {
    v58 = v112 + 16;
    v59 = v109;
    v60 = v110;
    (*(v112 + 2))(v109, v22, v110);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.fault.getter();
    v63 = v58 - 8;
    if (!os_log_type_enabled(v61, v62))
    {

      (*v63)(v59, v60);
      goto LABEL_29;
    }

    v64 = swift_slowAlloc();
    v112 = v31;
    v65 = v64;
    v66 = swift_slowAlloc();
    *v65 = 138412290;
    v67 = TTRAccountsListsViewModel.Group.objectID.getter();
    (*v63)(v59, v60);
    *(v65 + 4) = v67;
    *v66 = v67;
    _os_log_impl(&_mh_execute_header, v61, v62, "Tried to edit group without a sublist context {objectID: %@}", v65, 0xCu);
    sub_1000079B4(v66, &unk_10076DF80);

LABEL_28:
LABEL_29:
    (*(v99 + 8))(v98, v100);
    return;
  }

  v91 = v32;
  v92 = v30;
  v112 = v31;
  v93 = v29;
  v4 = [v31 updateAccount:v29];

  v33 = TTRAccountsListsViewModel.remListsOrCustomSmartLists(in:)();

  v34 = *(v33 + 16);
  v94 = v2;
  if (!v34)
  {

    v16 = &_swiftEmptyArrayStorage;
LABEL_24:
    v118 = *sub_10000C36C((v2 + 112), *(v2 + 136));
    v68 = objc_allocWithZone(TTRUndoManager);
    v69 = String._bridgeToObjectiveC()();
    v70 = [v68 initWithDebugIdentifier:v69];

    type metadata accessor for TTRIGroupDetailInteractor();
    v71 = swift_allocObject();
    v71[3] = 0;
    swift_unknownObjectWeakInit();
    v71[7] = 0;
    v71[4] = v4;
    type metadata accessor for TTRListEditor();
    sub_10001F128(&qword_10077C780, &type metadata accessor for TTRListEditor);
    v72 = v70;
    v117 = v4;
    v73 = v92;
    TTRUndoableEditing.init(changeItem:undoManager:)();
    v71[8] = v120[0];
    v74 = v91;
    v71[5] = v91;
    v71[6] = v16;
    v75 = v74;
    v71[7] = NSUndoManager.observeChanges<A>(target:handler:)();

    v76 = type metadata accessor for TTRIGroupDetailRouter();
    v77 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v122 = v76;
    v123 = &off_100729B00;
    v120[0] = v77;
    type metadata accessor for TTRIGroupDetailPresenter();
    v78 = swift_allocObject();
    v79 = sub_10000AE84(v120, v76);
    __chkstk_darwin(v79);
    v81 = (&v89 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v82 + 16))(v81);
    v83 = *v81;
    *(v78 + 88) = v76;
    *(v78 + 96) = &off_100729B00;
    *(v78 + 64) = v83;
    *(v78 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v78 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v78 + 48) = v71;
    *(v78 + 56) = &off_10071E7D8;
    *(v78 + 112) = v72;
    *(v78 + 104) = 1;
    v84 = v72;

    sub_100004758(v120);
    type metadata accessor for TTRIGroupDetailViewController();
    v120[0] = v78;
    v120[1] = &off_100718120;
    v121 = 1;
    v122 = v84;
    sub_10001F128(&qword_10078C0F0, type metadata accessor for TTRIGroupDetailViewController);
    static TTRTypedController<>.instantiateFromStoryboard(with:)();

    v85 = v119;
    v86 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v119];

    v71[3] = &off_100718110;
    swift_unknownObjectWeakAssign();

    *(v78 + 24) = &off_10072E100;
    swift_unknownObjectWeakAssign();

    swift_beginAccess();
    *(v78 + 40) = &off_100727C98;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectWeakAssign();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v88 = Strong;
      [Strong presentViewController:v86 animated:1 completion:0];
    }

    else
    {
    }

    goto LABEL_28;
  }

  v90 = v4;
  v120[0] = &_swiftEmptyArrayStorage;
  sub_1004A1F60(0, v34, 0);
  v35 = 0;
  v16 = v120[0];
  v111 = (v33 + ((*(v115 + 80) + 32) & ~*(v115 + 80)));
  v110 = (v115 + 16);
  v108 = v115 + 88;
  v107 = enum case for TTRListOrCustomSmartList.list(_:);
  v97 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
  v106 = (v115 + 96);
  v105 = (v115 + 8);
  v96 = enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
  v104 = (v114 + 104);
  v103 = enum case for TTRListOrCustomSmartListChangeItem.list(_:);
  v102 = v114 + 32;
  v109 = v33;
  while (1)
  {
    if (v35 >= *(v33 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v4 = v34;
    v2 = v12;
    v36 = v115;
    v37 = v116;
    v38 = *(v115 + 16);
    v39 = v117;
    a1 = v110;
    v38(v117, &v111[*(v115 + 72) * v35], v116);
    v40 = v118;
    v38(v118, v39, v37);
    v41 = (*(v36 + 88))(v40, v37);
    v42 = &selRef_updateList_;
    v43 = v103;
    if (v41 != v107)
    {
      v42 = &selRef_updateSmartList_;
      v43 = v96;
      if (v41 != v97)
      {
        break;
      }
    }

    v44 = v118;
    v45 = v116;
    (*v106)(v118, v116);
    v46 = *v44;
    v47 = [v112 *v42];

    (*v105)(v117, v45);
    v48 = v113;
    *v113 = v47;
    v12 = v2;
    (*v104)(v48, v43, v2);
    v120[0] = v16;
    v50 = *(v16 + 2);
    v49 = *(v16 + 3);
    if (v50 >= v49 >> 1)
    {
      sub_1004A1F60(v49 > 1, v50 + 1, 1);
      v16 = v120[0];
    }

    ++v35;
    *(v16 + 2) = v50 + 1;
    (*(v114 + 32))(&v16[((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v50], v48, v2);
    v34 = v4;
    v33 = v109;
    if (v4 == v35)
    {

      v2 = v94;
      v4 = v90;
      goto LABEL_24;
    }
  }

  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_100008E04(&_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown list type", 17, 2);
  __break(1u);
}

void sub_10042DDB8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_10045164C(v15, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v7 + 32))(v12, v15, v6);
    (*(v7 + 16))(v10, v12, v6);
    v20 = (*(v7 + 88))(v10, v6);
    if (v20 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v21 = *(v7 + 8);
      v21(v12, v6);
      v21(v10, v6);
      return;
    }

    if (v20 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v7 + 96))(v10, v6);
      v22 = v3;
      (*(v3 + 32))(v5, v10, v2);

      v23 = TTRAccountsListsViewModel.remList(for:)();

      if (v23)
      {
        v24 = REMList.autoCategorizationContext.getter();
        if (v24)
        {
          v25 = v24;
          [v24 shouldAutoCategorizeItems];

          (*(v22 + 8))(v5, v2);
          (*(v7 + 8))(v12, v6);
          return;
        }
      }

      (*(v22 + 8))(v5, v2);
      (*(v7 + 8))(v12, v6);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100003E30(v26, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection type", 32, 2);
      __break(1u);
    }
  }

  else if (*(*v15 + 16) == 1 && (type metadata accessor for TTRAccountsListsViewModel.Item(), , v17 = TTRAccountsListsViewModel.remList(for:)(), , v17))
  {
    v18 = REMList.autoCategorizationContext.getter();
    if (v18)
    {
      v19 = v18;
      [v18 shouldAutoCategorizeItems];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_10042E2B0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v34 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v16, type metadata accessor for TTRIAccountsListsSelection);
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = v34;
    (*(v34 + 32))(v9, v16, v4);
    (*(v24 + 16))(v7, v9, v4);
    v25 = (*(v24 + 88))(v7, v4);
    if (v25 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v26 = *(v24 + 8);
      v26(v9, v4);
      v26(v7, v4);
    }

    else if (v25 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v24 + 96))(v7, v4);
      v28 = v31;
      v27 = v32;
      v29 = v33;
      (*(v32 + 32))(v31, v7, v33);
      sub_10042EBF8();
      (*(v27 + 8))(v28, v29);
      (*(v24 + 8))(v9, v4);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection", 27, 2);
      __break(1u);
    }
  }

  else
  {
    v18 = *(*v16 + 16);
    if (v18)
    {
      v21 = *(v11 + 16);
      v19 = v11 + 16;
      v20 = v21;
      v22 = *v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v23 = *(v19 + 56);
      do
      {
        v20(v13, v22, v10);
        sub_10042E740(v13);
        (*(v19 - 8))(v13, v10);
        v22 += v23;
        --v18;
      }

      while (v18);
    }
  }
}

void sub_10042E740(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v7 + 96))(v9, v6);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  else
  {
    if (v10 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_7;
    }

    if (v10 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v7 + 96))(v9, v6);
      (*(v3 + 32))(v5, v9, v2);
      sub_10042EBF8();
      (*(v3 + 8))(v5, v2);
      return;
    }

    if (v10 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v10 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v7 + 8))(v9, v6);
    }

    else if (v10 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v10 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100003E30(v16, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2);
      __break(1u);
      goto LABEL_28;
    }
  }

  if (qword_1007672D8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100782E90);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Trying to auto-categorize unexpected item", v15, 2u);
  }
}

void sub_10042EBF8()
{
  v1 = v0;
  v2 = type metadata accessor for REMAnalyticsEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;

  v25 = TTRAccountsListsViewModel.remList(for:)();

  if (v25)
  {
    v9 = REMList.autoCategorizationContext.getter();
    if (v9)
    {
      v10 = v9;
      if ([v9 shouldAutoCategorizeItems])
      {
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
        type metadata accessor for MainActor();

        v12 = v25;
        v13 = static MainActor.shared.getter();
        v14 = swift_allocObject();
        v14[2] = v13;
        v14[3] = &protocol witness table for MainActor;
        v14[4] = v1;
        v14[5] = v12;
        sub_10009E31C(0, 0, v8, &unk_10063F3E0, v14);
      }

      else
      {
        swift_getObjectType();
        dispatch thunk of TTRAccountsListsInteractorType.updateAutoCategorization(for:shouldAutoCategorizeItems:deleteExistingSections:)();
        type metadata accessor for TTRUserDefaults();
        v16 = static TTRUserDefaults.appUserDefaults.getter();
        type metadata accessor for REMAnalyticsManager();
        v24 = static REMAnalyticsManager.shared.getter();
        v17 = sub_100058000(&qword_1007757E8);
        v18 = &v5[*(v17 + 48)];
        v19 = &v5[*(v17 + 80)];
        v20 = enum case for REMUserOperation.autoCategorizeEnable(_:);
        v21 = type metadata accessor for REMUserOperation();
        (*(*(v21 - 8) + 104))(v5, v20, v21);
        *v18 = TTRUserDefaults.activitySessionId.getter();
        v18[1] = v22;
        TTRUserDefaults.activitySessionBeginTime.getter();
        *v19 = _typeName(_:qualified:)();
        v19[1] = v23;
        (*(v3 + 104))(v5, enum case for REMAnalyticsEvent.userOperation(_:), v2);
        REMAnalyticsManager.post(event:)();

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
      v15 = v25;
    }
  }
}

void sub_10042EFC4(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v34 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100459530(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v16, type metadata accessor for TTRIAccountsListsSelection);
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = v34;
    (*(v34 + 32))(v9, v16, v4);
    (*(v24 + 16))(v7, v9, v4);
    v25 = (*(v24 + 88))(v7, v4);
    if (v25 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
    {
      v26 = *(v24 + 8);
      v26(v9, v4);
      v26(v7, v4);
    }

    else if (v25 == enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
    {
      (*(v24 + 96))(v7, v4);
      v28 = v31;
      v27 = v32;
      v29 = v33;
      (*(v32 + 32))(v31, v7, v33);
      sub_10042F924(v28, 0);
      (*(v27 + 8))(v28, v29);
      (*(v24 + 8))(v9, v4);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown pinnedListSelection", 27, 2);
      __break(1u);
    }
  }

  else
  {
    v18 = *(*v16 + 16);
    if (v18)
    {
      v21 = *(v11 + 16);
      v19 = v11 + 16;
      v20 = v21;
      v22 = *v16 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
      v23 = *(v19 + 56);
      do
      {
        v20(v13, v22, v10);
        sub_10042F45C(v13, 0);
        (*(v19 - 8))(v13, v10);
        v22 += v23;
        --v18;
      }

      while (v18);
    }
  }
}

void sub_10042F45C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v9 + 96))(v11, v8);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v11, v13);
  }

  else
  {
    if (v12 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v9 + 96))(v11, v8);
      (*(v5 + 32))(v7, v11, v4);
      sub_10042F924(v7, a2 & 1);
      (*(v5 + 8))(v7, v4);
      return;
    }

    if (v12 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v12 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_7:
      (*(v9 + 8))(v11, v8);
    }

    else if (v12 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v12 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100003E30(v18, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2);
      __break(1u);
      goto LABEL_28;
    }
  }

  if (qword_1007672D8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003E30(v14, qword_100782E90);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Trying to share unexpected item", v17, 2u);
  }
}

void sub_10042F924(uint64_t a1, int a2)
{
  v3 = v2;
  v108 = a2;
  v113 = *v2;
  v118 = type metadata accessor for TTRAccountsListsViewModel.List();
  v5 = *(v118 - 1);
  v6 = __chkstk_darwin(v118);
  v8 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v107 - v9;
  v112 = type metadata accessor for REMAnalyticsEvent();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for REMUserOperation();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v109 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRListSharingUIType();
  v115 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_1007831D0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v107 - v21;
  __chkstk_darwin(v20);
  v119 = &v107 - v23;
  if ((TTRAccountsListsViewModel.List.canBeShared.getter() & 1) == 0)
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100003E30(v49, qword_100782E90);
    v50 = a1;
    v51 = v118;
    (*(v5 + 16))(v8, v50, v118);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v52, v53))
    {

      (*(v5 + 8))(v8, v51);
      return;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    v56 = TTRAccountsListsViewModel.List.objectID.getter();
    (*(v5 + 8))(v8, v51);
    *(v54 + 4) = v56;
    *v55 = v56;
    v57 = "Cannot share list {list.objectID: %@}";
    v58 = v53;
    goto LABEL_21;
  }

  v24 = TTRAccountsListsViewModel.remList(for:)();

  v114 = v24;
  if (!v24)
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100003E30(v59, qword_100782E90);
    v60 = a1;
    v61 = v118;
    (*(v5 + 16))(v10, v60, v118);
    v52 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v52, v62))
    {

      (*(v5 + 8))(v10, v61);
      return;
    }

    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    v63 = TTRAccountsListsViewModel.List.objectID.getter();
    (*(v5 + 8))(v10, v61);
    *(v54 + 4) = v63;
    *v55 = v63;
    v57 = "Failed to find REMList -- failed to edit list {list.objectID: %@}";
    v58 = v62;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v52, v58, v57, v54, 0xCu);
    sub_1000079B4(v55, &unk_10076DF80);

    return;
  }

  v118 = v19;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003E30(v25, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v27 = TTRAccountsListsViewModel.List.objectID.getter();
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v27;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  v28 = v117;
  v107 = *(v116 + 56);
  v107(v119, 1, 1, v117);
  v29 = v114;
  v30 = [v114 account];
  REMAccount.listSharingUIType.getter();

  v31 = (*(v115 + 88))(v15, v13);
  if (v31 == enum case for TTRListSharingUIType.cloudKit(_:))
  {
    if (![v29 isShared] || (v108 & 1) != 0)
    {
      sub_10000C36C(v3 + 14, v3[17]);
      sub_1002A5A68(v29);
      v44 = v119;
      sub_1000079B4(v119, &qword_1007831D0);
      v70 = enum case for REMSharedListUserOperationDetail.cloudKitShare(_:);
      v71 = type metadata accessor for REMSharedListUserOperationDetail();
      v72 = *(v71 - 8);
      (*(v72 + 104))(v44, v70, v71);
      (*(v72 + 56))(v44, 0, 1, v71);
      v73 = enum case for REMUserOperation.startSharedList(_:);
      v39 = v116;
LABEL_44:
      (*(v39 + 104))(v44, v73, v28);
      v107(v44, 0, 1, v28);
      goto LABEL_45;
    }

    v32 = type metadata accessor for TTRIListSharingController();
    v33 = objc_allocWithZone(v32);
    *&v33[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v33[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list] = v29;
    v126.receiver = v33;
    v126.super_class = v32;
    v34 = v29;
    v35 = objc_msgSendSuper2(&v126, "init");
    v36 = v3[19];
    v3[19] = v35;
    v37 = v35;

    *&v37[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate + 8] = &off_100727B90;
    swift_unknownObjectWeakAssign();
    v38 = sub_1005AB938();
    v39 = v116;
    if (v38)
    {
      v40 = v38;
      sub_10000C36C(v3 + 14, v3[17]);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v42 = Strong;
        v43 = [Strong presentedViewController];
        v44 = v119;
        if (v43)
        {
          v45 = v43;
          v46 = swift_allocObject();
          *(v46 + 16) = v42;
          *(v46 + 24) = v40;
          *(v46 + 32) = 1;
          v124 = sub_100233C2C;
          v125 = v46;
          aBlock = _NSConcreteStackBlock;
          v121 = 1107296256;
          v122 = sub_10001047C;
          v123 = &unk_100728810;
          v47 = _Block_copy(&aBlock);
          v48 = v42;
          v42 = v40;

          [v45 dismissViewControllerAnimated:1 completion:v47];
          _Block_release(v47);

          v37 = v48;
          v29 = v114;
        }

        else
        {
          [v42 presentViewController:v40 animated:1 completion:0];
          v45 = v40;
        }

        v37 = v45;
        v28 = v117;
      }

      else
      {
        v42 = v40;
        v44 = v119;
      }

      sub_1000079B4(v44, &qword_1007831D0);
      v89 = enum case for REMSharedListUserOperationDetail.cloudKitShare(_:);
      v90 = type metadata accessor for REMSharedListUserOperationDetail();
      v91 = *(v90 - 8);
      (*(v91 + 104))(v44, v89, v90);
      (*(v91 + 56))(v44, 0, 1, v90);
      v73 = enum case for REMUserOperation.manageSharedList(_:);
      goto LABEL_44;
    }
  }

  else
  {
    if (v31 == enum case for TTRListSharingUIType.custom(_:))
    {
      sub_10000C36C(v3 + 14, v3[17]);
      v29 = v114;
      sub_1004504F8(v114, v3);
      v64 = [v29 isShared];
      v44 = v119;
      sub_1000079B4(v119, &qword_1007831D0);
      v65 = enum case for REMSharedListUserOperationDetail.calDAVShare(_:);
      v66 = type metadata accessor for REMSharedListUserOperationDetail();
      v67 = *(v66 - 8);
      v68 = v65;
      v28 = v117;
      (*(v67 + 104))(v22, v68, v66);
      (*(v67 + 56))(v22, 0, 1, v66);
      v39 = v116;
      v69 = &enum case for REMUserOperation.manageSharedList(_:);
      if (!v64)
      {
        v69 = &enum case for REMUserOperation.startSharedList(_:);
      }

      (*(v116 + 104))(v22, *v69, v28);
      v107(v22, 0, 1, v28);
      sub_100016588(v22, v44, &qword_1007831D0);
      goto LABEL_45;
    }

    v29 = v114;
    if (v31 != enum case for TTRListSharingUIType.unsupported(_:))
    {
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list sharing ui type", 28, 2);
      __break(1u);
      return;
    }

    v74 = v114;
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *v77 = 138412802;
      v79 = [v74 objectID];
      *(v77 + 4) = v79;
      *v78 = v79;
      *(v77 + 12) = 2080;
      aBlock = 0;
      v121 = 0xE000000000000000;
      v80 = [v74 account];
      v81 = [v80 type];

      v127 = v81;
      type metadata accessor for REMAccountType(0);
      _print_unlocked<A, B>(_:_:)();
      v82 = sub_100004060(aBlock, v121, &v128);

      *(v77 + 14) = v82;
      v29 = v114;
      *(v77 + 22) = 2080;
      aBlock = 0;
      v121 = 0xE000000000000000;
      v83 = [v74 canBeShared];
      v84 = v83 == 0;
      if (v83)
      {
        v85 = 1702195828;
      }

      else
      {
        v85 = 0x65736C6166;
      }

      if (v84)
      {
        v86 = 0xE500000000000000;
      }

      else
      {
        v86 = 0xE400000000000000;
      }

      v87 = v86;
      String.append(_:)(*&v85);

      v88 = sub_100004060(aBlock, v121, &v128);

      *(v77 + 24) = v88;
      _os_log_impl(&_mh_execute_header, v75, v76, "Trying to share a list that doesn't support sharing. Probably list.canBeShared is wrong. {listID: %@, accountType: %s, canBeShared: %s}", v77, 0x20u);
      sub_1000079B4(v78, &unk_10076DF80);

      swift_arrayDestroy();
    }

    v28 = v117;
    v39 = v116;
  }

  v44 = v119;
LABEL_45:
  v92 = v118;
  sub_10000794C(v44, v118, &qword_1007831D0);
  if ((*(v39 + 48))(v92, 1, v28) == 1)
  {
    sub_1000079B4(v44, &qword_1007831D0);

    v93 = v92;
  }

  else
  {
    v94 = v109;
    (*(v39 + 32))(v109, v92, v28);
    type metadata accessor for REMAnalyticsManager();
    v118 = static REMAnalyticsManager.shared.getter();
    v95 = sub_100058000(&qword_1007757E8);
    v96 = v110;
    v97 = &v110[*(v95 + 48)];
    v98 = &v110[*(v95 + 80)];
    (*(v39 + 16))(v110, v94, v28);
    type metadata accessor for TTRUserDefaults();
    v99 = static TTRUserDefaults.appUserDefaults.getter();
    v100 = TTRUserDefaults.activitySessionId.getter();
    v102 = v101;

    *v97 = v100;
    v97[1] = v102;
    v103 = static TTRUserDefaults.appUserDefaults.getter();
    TTRUserDefaults.activitySessionBeginTime.getter();

    *v98 = _typeName(_:qualified:)();
    v98[1] = v104;
    v105 = v111;
    v106 = v112;
    (*(v111 + 104))(v96, enum case for REMAnalyticsEvent.userOperation(_:), v112);
    REMAnalyticsManager.post(event:)();

    (*(v105 + 8))(v96, v106);
    (*(v39 + 8))(v94, v117);
    v93 = v119;
  }

  sub_1000079B4(v93, &qword_1007831D0);
}

uint64_t sub_100430AB4()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v53 = *(v0 - 8);
  v1 = __chkstk_darwin(v0);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v48 = &v43 - v3;
  v4 = sub_100058000(&unk_10078D410);
  v50 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - v5;
  v7 = sub_100058000(&unk_10076B880);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = sub_100058000(&unk_10076B870);
  v15 = __chkstk_darwin(v14 - 8);
  v51 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v43 - v18;
  __chkstk_darwin(v17);
  v52 = &v43 - v20;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_100003E30(v21, qword_100782E90);
  sub_100008E04(&_swiftEmptyArrayStorage);
  v45 = v22;
  sub_10000FD44();

  v43 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;

  TTRAccountsListsViewModel.accountCollection.getter();

  v46 = v13;
  v47 = v8;
  (*(v8 + 16))(v11, v13, v7);
  swift_getOpaqueTypeConformance2();
  dispatch thunk of Sequence.makeIterator()();
  v49 = v7;
  swift_getAssociatedConformanceWitness();
  v23 = v6;
  v24 = v4;
  dispatch thunk of IteratorProtocol.next()();
  v54 = *(v53 + 48);
  v55 = v53 + 48;
  v25 = v54(v19, 1, v0);
  v26 = v48;
  if (v25 == 1)
  {
LABEL_7:
    (*(v50 + 8))(v23, v24);
    (*(v47 + 8))(v46, v49);
    v29 = 1;
    v30 = v52;
  }

  else
  {
    v27 = *(v53 + 32);
    v28 = (v53 + 8);
    while (1)
    {
      v27(v26, v19, v0);
      if (TTRAccountsListsViewModel.Account.supportsGroceriesList.getter())
      {
        break;
      }

      (*v28)(v26, v0);
      dispatch thunk of IteratorProtocol.next()();
      if (v54(v19, 1, v0) == 1)
      {
        goto LABEL_7;
      }
    }

    (*(v50 + 8))(v23, v24);
    (*(v47 + 8))(v46, v49);
    v30 = v52;
    v27(v52, v26, v0);
    v29 = 0;
  }

  v31 = v53;
  (*(v53 + 56))(v30, v29, 1, v0);
  v32 = v51;
  sub_10000794C(v30, v51, &unk_10076B870);
  if (v54(v32, 1, v0) == 1)
  {
    sub_1000079B4(v32, &unk_10076B870);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "No account supporting groceries", v35, 2u);
    }
  }

  else
  {
    v36 = v44;
    (*(v31 + 32))(v44, v32, v0);

    v37 = TTRAccountsListsViewModel.Account.objectID.getter();
    v38 = TTRAccountsListsViewModel.remAccount(for:)();

    if (v38)
    {
      swift_getObjectType();
      swift_allocObject();
      swift_weakInit();

      dispatch thunk of TTRAccountsListsInteractorType.createNewGroceriesList(account:completion:)();

      (*(v31 + 8))(v36, v0);
      sub_1000079B4(v30, &unk_10076B870);
    }

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Can't get account for adding groceries list", v42, 2u);
    }

    (*(v31 + 8))(v36, v0);
  }

  return sub_1000079B4(v30, &unk_10076B870);
}

uint64_t sub_10043128C(void *a1)
{
  v2 = type metadata accessor for TTRListType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    *v5 = [a1 objectID];
    v5[8] = 0;
    (*(v3 + 104))(v5, enum case for TTRListType.list(_:), v2);
    dispatch thunk of TTRAccountsListsInteractorType.saveLastSelectedListType(_:)();
    (*(v3 + 8))(v5, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;

      sub_100451390(a1, 0, v8);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_100431434(void *a1)
{
  v3 = *v1;
  static TTRLocalizableStrings.RecentlyDeletedList.deleteAllConfirmationAlertTitle.getter();
  static TTRLocalizableStrings.RecentlyDeletedList.deleteAllConfirmationAlertMessage(withCount:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v7 style:1 handler:0];

  [v6 addAction:v9];
  static TTRLocalizableStrings.Common.alertDeleteButton.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = v3;

  v12 = a1;
  v13 = String._bridgeToObjectiveC()();

  v18[4] = sub_1004590A4;
  v18[5] = v11;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_1001762CC;
  v18[3] = &unk_1007290D0;
  v14 = _Block_copy(v18);

  v15 = [v8 actionWithTitle:v13 style:2 handler:v14];
  _Block_release(v14);

  [v6 addAction:v15];
  sub_10000C36C(v1 + 14, v1[17]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_100431708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for REMAnalyticsEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for TTRUserDefaults();
    v29 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    v30 = static REMAnalyticsManager.shared.getter();
    v11 = sub_100058000(&qword_1007757E8);
    v12 = &v9[*(v11 + 48)];
    v13 = *(v11 + 80);
    v31 = a3;
    v14 = &v9[v13];
    v15 = enum case for REMRDLUserOperationDetail.rdl_permanentlyDeleteAll(_:);
    v16 = type metadata accessor for REMRDLUserOperationDetail();
    v17 = *(v16 - 8);
    v28[1] = a4;
    v18 = v17;
    (*(v17 + 104))(v9, v15, v16);
    (*(v18 + 56))(v9, 0, 1, v16);
    v19 = enum case for REMUserOperation.permanentlyDeleteReminder(_:);
    v20 = type metadata accessor for REMUserOperation();
    (*(*(v20 - 8) + 104))(v9, v19, v20);
    v21 = v29;
    *v12 = TTRUserDefaults.activitySessionId.getter();
    v12[1] = v22;
    TTRUserDefaults.activitySessionBeginTime.getter();
    v32 = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v23 = _typeName(_:qualified:)();
    v25 = v24;

    v32 = v23;
    v33 = v25;
    v26._countAndFlagsBits = 0x756F636341202D20;
    v26._object = 0xEE007473694C746ELL;
    String.append(_:)(v26);
    v27 = v33;
    *v14 = v32;
    *(v14 + 1) = v27;
    (*(v7 + 104))(v9, enum case for REMAnalyticsEvent.userOperation(_:), v6);
    REMAnalyticsManager.post(event:)();

    (*(v7 + 8))(v9, v6);
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.permanentlyHideAllInRecentlyDeletedList(with:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100431A28(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsPinnedListSelection();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v43 - v7;
  v9 = type metadata accessor for TTRAccountsListsViewModel.List();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = sub_100058000(&unk_100771B40);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v46 = &v43 - v19;
  v20 = type metadata accessor for TTRIAccountsListsSelection(0);
  __chkstk_darwin(v20);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100459530(a1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    sub_10045164C(v22, type metadata accessor for TTRIAccountsListsSelection);
    return;
  }

  if (!EnumCaseMultiPayload)
  {
    v24 = *v22;
    if (!*(v24 + 16))
    {

      v35 = type metadata accessor for TTRAccountsListsViewModel.Item();
      v27 = v46;
      (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
      goto LABEL_19;
    }

    v25 = type metadata accessor for TTRAccountsListsViewModel.Item();
    v26 = *(v25 - 8);
    v27 = v46;
    (*(v26 + 16))(v46, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v25);

    (*(v26 + 56))(v27, 0, 1, v25);
    sub_10000794C(v27, v18, &unk_100771B40);
    v28 = (*(v26 + 88))(v18, v25);
    if (v28 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
    {
      (*(v26 + 96))(v18, v25);
      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 8))(v18, v29);
LABEL_19:
      sub_1000079B4(v27, &unk_100771B40);
      return;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_18;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.list(_:))
    {
      (*(v26 + 96))(v18, v25);
      v37 = v44;
      v36 = v45;
      (*(v44 + 32))(v14, v18, v45);

      v38 = TTRAccountsListsViewModel.remList(for:)();

      if (v38)
      {
        sub_1004322F4(v38);
      }

      (*(v37 + 8))(v14, v36);
      goto LABEL_19;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.group(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:))
    {
LABEL_18:
      (*(v26 + 8))(v18, v25);
      goto LABEL_19;
    }

    if (v28 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      (*(v26 + 8))(v18, v25);
      v27 = v46;
      goto LABEL_19;
    }

    v27 = v46;
    if (v28 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) || v28 == enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      goto LABEL_19;
    }

    (*(v26 + 8))(v18, v25);
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100003E30(v39, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v40 = "Unknown item type";
    v41 = 17;
LABEL_43:
    sub_1003F9818(v40, v41, 2);
    __break(1u);
    return;
  }

  (*(v3 + 32))(v8, v22, v2);
  (*(v3 + 16))(v6, v8, v2);
  v30 = (*(v3 + 88))(v6, v2);
  if (v30 == enum case for TTRAccountsListsPinnedListSelection.predefinedSmartList(_:))
  {
    v31 = *(v3 + 8);
    v31(v8, v2);
    v31(v6, v2);
    return;
  }

  if (v30 != enum case for TTRAccountsListsPinnedListSelection.pinnedUserCreatedList(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100003E30(v42, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v40 = "Unknown pinnedListSelection type";
    v41 = 32;
    goto LABEL_43;
  }

  (*(v3 + 96))(v6, v2);
  v33 = v44;
  v32 = v45;
  (*(v44 + 32))(v12, v6, v45);

  v34 = TTRAccountsListsViewModel.remList(for:)();

  if (v34)
  {
    sub_1004322F4(v34);
  }

  (*(v33 + 8))(v12, v32);
  (*(v3 + 8))(v8, v2);
}

void sub_1004322F4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRListToCustomSmartListConverterValidation();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - v9;
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  swift_getObjectType();
  v50 = a1;
  v13 = dispatch thunk of TTRAccountsListsInteractorType.changeItem(for:)();
  swift_getObjectType();
  v61 = sub_100003540(0, &qword_10076CAB0);
  v62 = &protocol witness table for REMListChangeItem;
  aBlock = v13;
  v57 = v13;
  dispatch thunk of TTRListToCustomSmartListConverterType.prevalidate(list:)();
  sub_100004758(&aBlock);
  TTRListToCustomSmartListConverterValidation.alertTitleString.getter();
  TTRListToCustomSmartListConverterValidation.alertDetailString.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();
  v16 = v5;

  v17 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v18 = *(v5 + 16);
  v55 = v12;
  v18(v10, v12, v4);
  v53 = *(v5 + 88);
  v19 = v53(v10, v4);
  v52 = enum case for TTRListToCustomSmartListConverterValidation.ok(_:);
  v56 = v2;
  if (v19 == enum case for TTRListToCustomSmartListConverterValidation.ok(_:))
  {
    v51 = v18;
    (*(v5 + 96))(v10, v4);
    v46 = *(v10 + 2);

    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v20 = String._bridgeToObjectiveC()();
    v49 = v5;
    v21 = v20;

    v47 = objc_opt_self();
    v22 = [v47 actionWithTitle:v21 style:1 handler:0];
    v48 = v22;

    [v17 addAction:v22];
    static TTRLocalizableStrings.ConvertToCustomSmartListAlert.makeConfirmButtonString.getter();
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v25 = v57;
    v24[2] = v23;
    v24[3] = v25;
    v26 = v50;
    v27 = v46;
    v24[4] = v50;
    v24[5] = v27;
    v28 = v25;

    v29 = v26;
    v30 = String._bridgeToObjectiveC()();

    v62 = sub_100459594;
    v63 = v24;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1001762CC;
    v61 = &unk_100729238;
    v31 = _Block_copy(&aBlock);

    v32 = [v47 actionWithTitle:v30 style:0 handler:v31];
    _Block_release(v31);
    v16 = v49;

    [v17 addAction:v32];
    v33 = v55;
  }

  else
  {
    v33 = v55;
    if (v19 != enum case for TTRListToCustomSmartListConverterValidation.cannotConvertDefaultList(_:))
    {
      if (v19 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertSharedList(_:) || v19 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertLegacyLists(_:))
      {
        goto LABEL_9;
      }

      if (v19 != enum case for TTRListToCustomSmartListConverterValidation.defaultListInDifferentAccount(_:))
      {
        goto LABEL_20;
      }
    }

    v51 = v18;
    static TTRLocalizableStrings.Common.settingsButton.getter();
    v34 = String._bridgeToObjectiveC()();

    v62 = sub_10011CA1C;
    v63 = 0;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1001762CC;
    v61 = &unk_1007291E8;
    v35 = _Block_copy(&aBlock);

    v32 = [objc_opt_self() actionWithTitle:v34 style:0 handler:v35];
    _Block_release(v35);

    [v17 addAction:v32];
  }

  v18 = v51;
LABEL_9:
  v36 = v54;
  v18(v54, v33, v4);
  v37 = v53(v36, v4);
  if (v37 == v52)
  {
    (*(v16 + 8))(v36, v4);
    v38 = v56;
LABEL_16:
    sub_10000C36C((v38 + 112), *(v38 + 136));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      [Strong presentViewController:v17 animated:1 completion:0];

      v44 = v17;
      v17 = v43;
    }

    else
    {
      v44 = v57;
    }

    (*(v16 + 8))(v33, v4);
    return;
  }

  v39 = v4;
  v38 = v56;
  if (v37 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertDefaultList(_:) || v37 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertSharedList(_:) || v37 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertLegacyLists(_:) || v37 == enum case for TTRListToCustomSmartListConverterValidation.defaultListInDifferentAccount(_:))
  {
    static TTRLocalizableStrings.Common.alertOKButton.getter();
    v40 = String._bridgeToObjectiveC()();

    v41 = [objc_opt_self() actionWithTitle:v40 style:0 handler:0];

    [v17 addAction:v41];
    [v17 setPreferredAction:v41];

    v4 = v39;
    goto LABEL_16;
  }

LABEL_20:
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_100003E30(v45, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown validation type", 23, 2);
  __break(1u);
}

uint64_t sub_100432AB8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003E30(v7, qword_100782E90);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v9 = [a3 objectID];
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v9;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70);
    sub_10000FD44();

    v10 = [a4 objectID];
    swift_getObjectType();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;

    dispatch thunk of TTRListToCustomSmartListConverterType.convert(listID:reminders:completionHandler:)();
  }

  return result;
}

void sub_100432D0C(uint64_t a1)
{
  v43 = a1;
  v42 = type metadata accessor for TTRAccountsListsViewModel.List();
  v1 = *(v42 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v42);
  v41 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v37 = &v37 - v4;
  v5 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  v7 = __chkstk_darwin(v5);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v43, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v15 + 96))(v17, v14);
    (*(v11 + 32))(v13, v17, v10);
    TTRAccountsListsViewModel.SmartList.type.getter();
    (*(v11 + 8))(v13, v10);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v38;
    v22 = v39 + 32;
    v21 = *(v39 + 32);
    v23 = v40;
    v21(v38, v9, v40);
    v24 = (*(v22 + 48) + 24) & ~*(v22 + 48);
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    v21((v25 + v24), v20, v23);
    v26 = sub_10045708C;
LABEL_5:
    v33 = v26;
    v34 = objc_opt_self();
    aBlock[4] = v33;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10044EA48;
    aBlock[3] = &unk_100728A68;
    v35 = _Block_copy(aBlock);
    swift_retain_n();

    [v34 configurationWithIdentifier:0 previewProvider:0 actionProvider:v35];

    _Block_release(v35);

    return;
  }

  if (v18 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v15 + 96))(v17, v14);
    v27 = *(v1 + 32);
    v28 = v37;
    v29 = v42;
    v27(v37, v17, v42);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = v41;
    v27(v41, v28, v29);
    v32 = (*(v1 + 80) + 24) & ~*(v1 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    v27((v25 + v32), v31, v29);
    v26 = sub_100457060;
    goto LABEL_5;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_100003E30(v36, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown item type", 17, 2);
  __break(1u);
}

UIMenu sub_1004332E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003540(0, &qword_10076BA60);
  static TTRLocalizableStrings.AccountsList.hidePredefinedSmartListText.getter();
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v5 + 16))(v7, a3, v4);
  v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100003540(0, &unk_10076B890);
  v14 = TTRListType.PredefinedSmartListType.longTitle.getter();
  v16 = v15;
  sub_100058000(&qword_10076B780);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10062D420;
  *(v17 + 32) = v13;
  v20 = v17;
  v18._countAndFlagsBits = v14;
  v18._object = v16;
  v23.value.super.isa = 0;
  v23.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v18, 0, v23, 0, 0xFFFFFFFFFFFFFFFFLL, v20, v21);
}

uint64_t sub_1004335A8()
{
  v0 = type metadata accessor for TTRListType.PredefinedSmartListVisibility();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    (*(v1 + 104))(v3, enum case for TTRListType.PredefinedSmartListVisibility.hidden(_:), v0);
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPredefinedSmartListVisibility(_:for:)();
    (*(v1 + 8))(v3, v0);
  }

  return result;
}

Class sub_1004336F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v4 = TTRAccountsListsViewModel.List.isCustomSmartList.getter();
  v5 = sub_100433774(a3, v4 & 1);

  return v5;
}

Class sub_100433774(uint64_t a1, int a2)
{
  v88 = a2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v91 = v6;
  v92 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = _swiftEmptyArrayStorage;
  TTRAccountsListsViewModel.List.pinState.getter();
  v11 = (v8[11])(v10, v7);
  p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
  v89 = v2;
  v90 = a1;
  if (v11 != enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
  {
    if (v11 == enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
    {
      goto LABEL_12;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_100782E90);
    v8 = _swiftEmptyArrayStorage;
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pin state", 17, 2);
    __break(1u);
    goto LABEL_8;
  }

  (v8[12])(v10, v7);
  LODWORD(v8) = *v10;
  if (v8 != 1)
  {
LABEL_8:
    v17 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v17];

    v15 = static TTRLocalizableStrings.AccountsList.pinText.getter();
    goto LABEL_9;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() _systemImageNamed:v13];

  v15 = static TTRLocalizableStrings.AccountsList.unpinText.getter();
LABEL_9:
  v87 = v15;
  sub_100003540(0, &qword_10076BA60);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = v92;
  (*(v5 + 16))(v92, a1, v4);
  v20 = v4;
  v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = v18;
  v23 = v22 + v21;
  v4 = v20;
  (*(v5 + 32))(v23, v19, v20);
  v24 = v14;
  v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  a1 = v90;
  p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
LABEL_12:
  if (TTRAccountsListsViewModel.List.canEdit.getter())
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() _systemImageNamed:v26];

    if (v88)
    {
      static TTRLocalizableStrings.AccountsList.showSmartListInfoText.getter();
    }

    else
    {
      static TTRLocalizableStrings.AccountsList.showListInfoText.getter();
    }

    sub_100003540(0, &qword_10076BA60);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = v92;
    (*(v5 + 16))(v92, a1, v4);
    v30 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    (*(v5 + 32))(v31 + v30, v29, v4);
    v32 = v27;
    v33 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    a1 = v90;
    p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
  }

  if (TTRAccountsListsViewModel.List.canBeShared.getter())
  {
    v34 = TTRAccountsListsViewModel.List.isShared.getter();
    v87 = v5;
    if ((v34 & 1) != 0 && (, v35 = TTRAccountsListsViewModel.remList(for:)(), , v35) && (v36 = [v35 account], v35, v37 = objc_msgSend(v36, "accountTypeHost"), v36, LODWORD(v36) = objc_msgSend(v37, "isCalDav"), v37, v36))
    {
      v38 = v4;
      v39._object = 0x8000000100672600;
      v40._countAndFlagsBits = 0xD00000000000002DLL;
      v40._object = 0x8000000100686AA0;
      v39._countAndFlagsBits = 0xD000000000000012;
      v41 = TTRLocalizedString(_:comment:)(v39, v40);
      countAndFlagsBits = v41._countAndFlagsBits;
      object = v41._object;
      LODWORD(v84) = 0;
    }

    else
    {
      v38 = v4;
      v42._countAndFlagsBits = 0x694C206572616853;
      v43._countAndFlagsBits = 0xD000000000000025;
      v43._object = 0x8000000100686A70;
      v42._object = 0xEA00000000007473;
      v44 = TTRLocalizedString(_:comment:)(v42, v43);
      countAndFlagsBits = v44._countAndFlagsBits;
      object = v44._object;
      LODWORD(v84) = 1;
    }

    v45 = String._bridgeToObjectiveC()();
    v46 = [objc_opt_self() _systemImageNamed:v45];

    v47 = sub_100003540(0, &qword_10076BA60);
    v48 = swift_allocObject();
    swift_weakInit();
    v49 = v87;
    v50 = v92;
    v82 = *(v87 + 16);
    v82(v92, a1, v38);
    v51 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v79[1] = *(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = v48;
    v53 = *(v49 + 32);
    v80 = v51;
    v81 = v53;
    v85 = v38;
    v53(v52 + v51, v50, v38);
    v54 = v46;
    countAndFlagsBits = v47;
    v55 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((v84 & TTRAccountsListsViewModel.List.isShared.getter()) == 1)
    {
      object = v55;
      v84 = v54;
      v56._object = 0x8000000100672600;
      v57._countAndFlagsBits = 0xD00000000000002DLL;
      v57._object = 0x8000000100686AA0;
      v56._countAndFlagsBits = 0xD000000000000012;
      TTRLocalizedString(_:comment:)(v56, v57);
      v58 = String._bridgeToObjectiveC()();
      v59 = [objc_opt_self() _systemImageNamed:v58];

      v60 = swift_allocObject();
      swift_weakInit();
      v61 = v92;
      v62 = v85;
      v82(v92, a1, v85);
      v4 = v62;
      v63 = v80;
      v64 = swift_allocObject();
      *(v64 + 16) = v60;
      v81(v64 + v63, v61, v4);
      v65 = v59;
      v55 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v5 = v87;
      if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      p_ivar_lyt = (&TTRIAccountsListsTagsHeaderCell + 16);
      v54 = v84;
    }

    else
    {
      v4 = v85;
      p_ivar_lyt = &TTRIAccountsListsTagsHeaderCell.ivar_lyt;
      v5 = v87;
    }
  }

  v66 = String._bridgeToObjectiveC()();
  v67 = [objc_opt_self() p:v66 ivar:?lyt[472]];

  if (v88)
  {
    static TTRLocalizableStrings.RemindersList.deleteCustomSmartListActionText.getter();
  }

  else
  {
    static TTRLocalizableStrings.RemindersList.deleteListActionText.getter();
  }

  sub_100003540(0, &qword_10076BA60);
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = v92;
  (*(v5 + 16))(v92, v90, v4);
  v70 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = v68;
  (*(v5 + 32))(v71 + v70, v69, v4);
  v72 = v67;
  v73 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v74 = v93;
  sub_100003540(0, &unk_10076B890);
  v75._countAndFlagsBits = 0;
  v75._object = 0xE000000000000000;
  v94.value.super.isa = 0;
  v94.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v75, 0, v94, 0, 0xFFFFFFFFFFFFFFFFLL, v74, v78).super.super.isa;

  return isa;
}

void sub_1004344B8(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List.PinState();
  v99 = *(v2 - 8);
  v100 = v2;
  __chkstk_darwin(v2);
  v4 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for TTRAccountsListsViewModel.List();
  v108 = *(v104 - 8);
  v5 = __chkstk_darwin(v104);
  v106 = v6;
  v107 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = &v96 - v7;
  v8 = type metadata accessor for TTRListType.PredefinedSmartListType();
  countAndFlagsBits = *(v8 - 8);
  v102 = v8;
  v9 = *(countAndFlagsBits + 64);
  v10 = __chkstk_darwin(v8);
  v11 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v96 - v12;
  v14 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v103 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = _swiftEmptyArrayStorage;
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v18 + 96))(v20, v17);
    v98 = v15;
    v22 = *(v15 + 32);
    v97 = v14;
    v22(v103, v20, v14);
    TTRAccountsListsViewModel.SmartList.type.getter();
    static TTRLocalizableStrings.AccountsList.hidePredefinedSmartListText.getter();
    sub_100003540(0, &qword_10076FCB0);
    v23 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = countAndFlagsBits;
    v26 = v102;
    (*(countAndFlagsBits + 16))(v11, v13, v102);
    v27 = (*(v25 + 80) + 24) & ~*(v25 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    (*(v25 + 32))(v28 + v27, v11, v26);
    v29 = objc_allocWithZone(UIAccessibilityCustomAction);

    v30 = String._bridgeToObjectiveC()();

    v113 = sub_100456890;
    v114 = v28;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = sub_10044E9F0;
    v112 = &unk_1007286F8;
    v31 = _Block_copy(&aBlock);
    [v29 initWithName:v30 image:v23 actionHandler:v31];

    _Block_release(v31);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v32 = v97;
    v33 = v98;
    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v25 + 8))(v13, v26);
    v33[1](v103, v32);
    return;
  }

  if (v21 != enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100003E30(v95, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v42 = "Unknown item type";
    goto LABEL_40;
  }

  (*(v18 + 96))(v20, v17);
  v34 = v108;
  v35 = v104;
  v102 = *(v108 + 32);
  v103 = (v108 + 32);
  v102(v105, v20, v104);
  TTRAccountsListsViewModel.List.pinState.getter();
  v37 = v99;
  v36 = v100;
  v38 = (*(v99 + 88))(v4, v100);
  if (v38 == enum case for TTRAccountsListsViewModel.List.PinState.supported(_:))
  {
    (*(v37 + 96))(v4, v36);
    v39 = *v4;
    if (v39 == 1)
    {
      static TTRLocalizableStrings.AccountsList.unpinText.getter();
    }

    else
    {
      static TTRLocalizableStrings.AccountsList.pinText.getter();
    }

    sub_100003540(0, &qword_10076FCB0);
    v43 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();

    v44 = swift_allocObject();
    swift_weakInit();
    v46 = v34 + 16;
    v45 = *(v34 + 16);
    v47 = v107;
    v40 = v105;
    v45(v107, v105, v35);
    v48 = (*(v46 + 64) + 25) & ~*(v46 + 64);
    v49 = swift_allocObject();
    *(v49 + 16) = v44;
    *(v49 + 24) = v39;
    v50 = v49 + v48;
    v35 = v104;
    v102(v50, v47, v104);
    v51 = objc_allocWithZone(UIAccessibilityCustomAction);

    v52 = String._bridgeToObjectiveC()();

    v113 = sub_100456630;
    v114 = v49;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = sub_10044E9F0;
    v112 = &unk_100728568;
    v53 = _Block_copy(&aBlock);
    [v51 initWithName:v52 image:v43 actionHandler:v53];

    _Block_release(v53);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_17;
  }

  v40 = v105;
  if (v38 != enum case for TTRAccountsListsViewModel.List.PinState.notSupported(_:))
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    v42 = "Unknown pin state";
LABEL_40:
    sub_1003F9818(v42, 17, 2);
    __break(1u);
    return;
  }

LABEL_17:
  if (TTRAccountsListsViewModel.List.canEdit.getter())
  {
    if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
    {
      static TTRLocalizableStrings.AccountsList.showSmartListInfoText.getter();
    }

    else
    {
      static TTRLocalizableStrings.AccountsList.showListInfoText.getter();
    }

    v54 = v108;
    sub_100003540(0, &qword_10076FCB0);
    v55 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = v107;
    (*(v54 + 16))(v107, v40, v35);
    v58 = (*(v54 + 80) + 24) & ~*(v54 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v56;
    v102(v59 + v58, v57, v35);
    v60 = objc_allocWithZone(UIAccessibilityCustomAction);

    v61 = String._bridgeToObjectiveC()();

    v113 = sub_1004567D8;
    v114 = v59;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = sub_10044E9F0;
    v112 = &unk_1007286A8;
    v62 = _Block_copy(&aBlock);
    [v60 initWithName:v61 image:v55 actionHandler:v62];

    _Block_release(v62);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  if (TTRAccountsListsViewModel.List.canBeShared.getter())
  {
    v63._countAndFlagsBits = 0x694C206572616853;
    v64._countAndFlagsBits = 0xD000000000000025;
    v64._object = 0x8000000100686A70;
    v63._object = 0xEA00000000007473;
    countAndFlagsBits = TTRLocalizedString(_:comment:)(v63, v64)._countAndFlagsBits;
    v99 = sub_100003540(0, &qword_10076FCB0);
    v65 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
    v66 = swift_allocObject();
    swift_weakInit();
    v67 = v107;
    v68 = v108 + 16;
    v98 = *(v108 + 16);
    (v98)(v107, v40, v35);
    v69 = (*(v68 + 64) + 24) & ~*(v68 + 64);
    v70 = swift_allocObject();
    *(v70 + 16) = v66;
    v100 = v69;
    v102(v70 + v69, v67, v35);
    v71 = objc_allocWithZone(UIAccessibilityCustomAction);

    v72 = String._bridgeToObjectiveC()();

    v113 = sub_1004566DC;
    v114 = v70;
    aBlock = _NSConcreteStackBlock;
    v110 = 1107296256;
    v111 = sub_10044E9F0;
    v112 = &unk_100728608;
    v73 = _Block_copy(&aBlock);
    [v71 initWithName:v72 image:v65 actionHandler:v73];

    _Block_release(v73);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v74 = TTRAccountsListsViewModel.List.isShared.getter();
    v35 = v104;
    if (v74)
    {
      v75._object = 0x8000000100672600;
      v76._countAndFlagsBits = 0xD00000000000002DLL;
      v76._object = 0x8000000100686AA0;
      v75._countAndFlagsBits = 0xD000000000000012;
      TTRLocalizedString(_:comment:)(v75, v76);
      v77 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
      v78 = swift_allocObject();
      swift_weakInit();
      v79 = v107;
      (v98)(v107, v40, v35);
      v80 = v100;
      v81 = swift_allocObject();
      *(v81 + 16) = v78;
      v102(v81 + v80, v79, v35);
      v82 = objc_allocWithZone(UIAccessibilityCustomAction);

      v83 = String._bridgeToObjectiveC()();

      v113 = sub_1004567A4;
      v114 = v81;
      aBlock = _NSConcreteStackBlock;
      v110 = 1107296256;
      v111 = sub_10044E9F0;
      v112 = &unk_100728658;
      v84 = _Block_copy(&aBlock);
      [v82 initWithName:v83 image:v77 actionHandler:v84];

      _Block_release(v84);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v40 = v105;
    }
  }

  v85 = v40;
  if (TTRAccountsListsViewModel.List.isCustomSmartList.getter())
  {
    static TTRLocalizableStrings.RemindersList.deleteCustomSmartListActionText.getter();
  }

  else
  {
    static TTRLocalizableStrings.RemindersList.deleteListActionText.getter();
  }

  v86 = v108;
  sub_100003540(0, &qword_10076FCB0);
  v87 = static UIImage.ttrAccessibilityCustomActionImage(forSymbolName:)();
  v88 = swift_allocObject();
  swift_weakInit();
  v89 = v107;
  (*(v86 + 16))(v107, v85, v35);
  v90 = (*(v86 + 80) + 24) & ~*(v86 + 80);
  v91 = swift_allocObject();
  *(v91 + 16) = v88;
  v102(v91 + v90, v89, v35);
  v92 = objc_allocWithZone(UIAccessibilityCustomAction);

  v93 = String._bridgeToObjectiveC()();

  v113 = sub_1004566A8;
  v114 = v91;
  aBlock = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = sub_10044E9F0;
  v112 = &unk_1007285B8;
  v94 = _Block_copy(&aBlock);
  [v92 initWithName:v93 image:v87 actionHandler:v94];

  _Block_release(v94);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(v86 + 8))(v85, v35);
}

BOOL sub_10043570C()
{
  v0 = type metadata accessor for TTRListType.PredefinedSmartListVisibility();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    swift_getObjectType();
    (*(v1 + 104))(v3, enum case for TTRListType.PredefinedSmartListVisibility.hidden(_:), v0);
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.setPredefinedSmartListVisibility(_:for:)();
    (*(v1 + 8))(v3, v0);
  }

  return Strong != 0;
}

BOOL sub_100435864(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      sub_100429650(a4);
    }

    else
    {
      sub_100429C6C(a4);
    }
  }

  return Strong != 0;
}

BOOL sub_1004358E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10042C520(a3);
  }

  return Strong != 0;
}

uint64_t sub_10043594C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1004359E4, v7, v6);
}

uint64_t sub_1004359E4()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100435AA8;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100435AA8()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10045A294, v3, v2);
}

uint64_t sub_100435BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_100435C60, v7, v6);
}

uint64_t sub_100435C60()
{
  v0[2] = *(v0[3] + OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_privacyChecker);
  v1 = swift_task_alloc();
  v0[8] = v1;
  v2 = type metadata accessor for TTRIPrivacyChecker();
  *v1 = v0;
  v1[1] = sub_100435D24;

  return TTRPrivacyChecker.checkAndPromptNotificationAccess(needsPresentationOfWarmingSheet:)(2, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_100435D24()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10045A298, v3, v2);
}

BOOL sub_100435E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, char *, uint64_t, char *))
{
  v9 = type metadata accessor for TTRAccountsListsViewModel.List();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
    type metadata accessor for MainActor();

    v17 = static MainActor.shared.getter();
    v18 = *(v10 + 80);
    v22 = a6;
    v19 = (v18 + 40) & ~v18;
    v20 = swift_allocObject();
    *(v20 + 2) = v17;
    *(v20 + 3) = &protocol witness table for MainActor;
    *(v20 + 4) = Strong;
    (*(v10 + 32))(&v20[v19], &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v22(0, 0, v14, a5, v20);
  }

  return Strong != 0;
}

uint64_t sub_100436084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_100436120, v7, v6);
}

uint64_t sub_100436120()
{
  v1 = TTRAccountsListsViewModel.List.isCustomSmartList.getter();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1004361C4;
  v3 = *(v0 + 32);

  return sub_100436358(v3, v1 & 1);
}

uint64_t sub_1004361C4(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1004362EC, v4, v3);
}

uint64_t sub_1004362EC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100436358(uint64_t a1, char a2)
{
  *(v3 + 315) = a2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v2;
  v4 = type metadata accessor for TTRAccountsListsViewModel.List();
  *(v3 + 360) = v4;
  *(v3 + 368) = *(v4 - 8);
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  v5 = type metadata accessor for TTRListOrCustomSmartList();
  *(v3 + 400) = v5;
  *(v3 + 408) = *(v5 - 8);
  *(v3 + 416) = swift_task_alloc();
  sub_100058000(&unk_10076DF20);
  *(v3 + 424) = swift_task_alloc();
  sub_100058000(&qword_1007831D8);
  *(v3 + 432) = swift_task_alloc();
  v6 = type metadata accessor for TTRAccountsListsInteractorDeleteArguments();
  *(v3 + 440) = v6;
  v7 = *(v6 - 8);
  *(v3 + 448) = v7;
  *(v3 + 456) = *(v7 + 64);
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 480) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 488) = v9;
  *(v3 + 496) = v8;

  return _swift_task_switch(sub_1004365A4, v9, v8);
}

uint64_t sub_1004365A4()
{
  v94 = v0;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 368);
  aBlock = *(v0 + 360);
  v2 = *(v0 + 315);
  v3 = *(v0 + 344);
  v4 = type metadata accessor for Logger();
  *(v0 + 504) = sub_100003E30(v4, qword_100782E90);
  *(v0 + 512) = sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v6 = TTRAccountsListsViewModel.List.objectID.getter();
  v7 = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000011;
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  v9 = 0xE500000000000000;
  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  *(inited + 120) = &type metadata for String;
  *(inited + 88) = 0x8000000100686B50;
  *(inited + 96) = v8;
  v86 = v8;
  v88 = v9;
  *(inited + 104) = v9;
  if (v2)
  {
    v10 = &enum case for TTRAccountsListsViewModel.Item.customSmartList(_:);
  }

  else
  {
    v10 = &enum case for TTRAccountsListsViewModel.Item.list(_:);
  }

  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  sub_100058000(&unk_10076BAA0);
  v11 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  v15 = *(v1 + 16);
  v15(v14 + v13, v3, aBlock);
  v16 = v15;
  (*(v12 + 104))(v14 + v13, *v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *sub_10000C36C((Strong + 48), *(Strong + 72));

    v19 = sub_10001D354();
    v20 = *(v0 + 424);
    if (v19)
    {
      swift_beginAccess();
      sub_100010540(v18 + 96, v0 + 272);
      sub_100396F88(v20);
      sub_100015124(v0 + 272);
    }

    else
    {
      (*(*(v0 + 408) + 56))(*(v0 + 424), 1, 1, *(v0 + 400));
    }

    swift_unknownObjectRelease();
  }

  else
  {
    (*(*(v0 + 408) + 56))(*(v0 + 424), 1, 1, *(v0 + 400));
  }

  v22 = *(v0 + 440);
  v21 = *(v0 + 448);
  v23 = *(v0 + 432);
  TTRAccountsListsInteractorDeleteArguments.init(items:viewModel:currentList:)();
  if ((*(v21 + 48))(v23, 1, v22) == 1)
  {
    v24 = *(v0 + 432);
    v25 = *(v0 + 376);
    v26 = *(v0 + 360);
    v27 = *(v0 + 344);

    sub_1000079B4(v24, &qword_1007831D8);
    v16(v25, v27, v26);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v32 = *(v0 + 368);
    v31 = *(v0 + 376);
    v33 = *(v0 + 360);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v93 = v36;
      *v34 = 138412546;
      v37 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v32 + 8))(v31, v33);
      *(v34 + 4) = v37;
      *v35 = v37;
      *(v34 + 12) = 2080;
      v38 = sub_100004060(v86, v88, &v93);

      *(v34 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to construct delete arguments for deleting list {list.objectID: %@, isCustomSmartList: %s}", v34, 0x16u);
      sub_1000079B4(v35, &unk_10076DF80);

      sub_100004758(v36);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    goto LABEL_36;
  }

  v39 = *(v0 + 472);
  v40 = *(v0 + 440);
  v41 = *(v0 + 448);
  v42 = *(v0 + 432);
  v43 = *(v41 + 32);
  *(v0 + 520) = v43;
  *(v0 + 528) = (v41 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v43(v39, v42, v40);
  if ((TTRAccountsListsInteractorDeleteArguments.shouldShowConfirmation.getter() & 1) == 0 && (static UIAccessibility.ttriIsAccessibilityRunning.getter() & 1) == 0)
  {

    v89 = *(v0 + 520);
    v71 = *(v0 + 464);
    v70 = *(v0 + 472);
    v72 = *(v0 + 448);
    v73 = *(v0 + 440);
    v87 = *(v0 + 352);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_10062D400;
    *(v74 + 32) = 0x746E656D75677261;
    *(v74 + 40) = 0xE900000000000073;
    v75 = TTRAccountsListsInteractorDeleteArguments.description.getter();
    *(v74 + 72) = &type metadata for String;
    *(v74 + 48) = v75;
    *(v74 + 56) = v76;
    sub_100008E04(v74);
    swift_setDeallocating();
    sub_1000079B4(v74 + 32, &unk_10076BA70);
    sub_10000FD44();

    static TTRLocalizableStrings.AccountsList.deleteListUndoAction.getter();
    v85 = objc_opt_self();
    v77 = String._bridgeToObjectiveC()();

    (*(v72 + 16))(v71, v70, v73);
    v78 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = v87;
    v89(v79 + v78, v71, v73);
    v80 = swift_allocObject();
    *(v80 + 16) = sub_100456D78;
    *(v80 + 24) = v79;
    *(v0 + 256) = sub_100068444;
    *(v0 + 264) = v80;
    *(v0 + 224) = _NSConcreteStackBlock;
    *(v0 + 232) = 1107296256;
    *(v0 + 240) = sub_100026440;
    *(v0 + 248) = &unk_100728928;
    v44 = _Block_copy((v0 + 224));

    [v85 withActionName:v77 block:v44];

    _Block_release(v44);
    (*(v72 + 8))(v70, v73);
    v81 = 1;
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    if ((v73 & 1) == 0)
    {
LABEL_37:

      v84 = *(v0 + 8);

      return v84(v81);
    }

    __break(1u);
    goto LABEL_32;
  }

  v44 = v16;
  sub_10001F128(&qword_1007831E0, &type metadata accessor for TTRAccountsListsInteractorDeleteArguments);
  v45 = TTRAccountsListsDeleteArgumentsType.allListsToDelete()();
  if (!*(v45 + 16))
  {
    v54 = *(v0 + 315);

    v55 = *(v0 + 360);
    v56 = *(v0 + 344);
    if (v54 == 1)
    {
      (v44)(*(v0 + 392), v56, v55);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      v59 = os_log_type_enabled(v57, v58);
      v60 = *(v0 + 472);
      v62 = *(v0 + 440);
      v61 = *(v0 + 448);
      v63 = *(v0 + 392);
      v65 = *(v0 + 360);
      v64 = *(v0 + 368);
      if (v59)
      {
        aBlocka = *(v0 + 472);
        v66 = swift_slowAlloc();
        v90 = v62;
        v67 = swift_slowAlloc();
        *v66 = 138412290;
        v68 = TTRAccountsListsViewModel.List.objectID.getter();
        (*(v64 + 8))(v63, v65);
        *(v66 + 4) = v68;
        *v67 = v68;
        v69 = "Failed to find REMSmartList -- failed to delete list {list.objectID: %@}";
LABEL_34:
        _os_log_impl(&_mh_execute_header, v57, v58, v69, v66, 0xCu);
        sub_1000079B4(v67, &unk_10076DF80);

        (*(v61 + 8))(aBlocka, v90);
LABEL_36:
        v81 = 0;
        goto LABEL_37;
      }

      goto LABEL_35;
    }

LABEL_32:
    (v44)(*(v0 + 384), v56, v55);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    v82 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 472);
    v62 = *(v0 + 440);
    v61 = *(v0 + 448);
    v63 = *(v0 + 384);
    v65 = *(v0 + 360);
    v64 = *(v0 + 368);
    if (v82)
    {
      aBlocka = *(v0 + 472);
      v66 = swift_slowAlloc();
      v90 = v62;
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      v83 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v64 + 8))(v63, v65);
      *(v66 + 4) = v83;
      *v67 = v83;
      v69 = "Failed to find REMList -- failed to delete list {list.objectID: %@}";
      goto LABEL_34;
    }

LABEL_35:

    (*(v64 + 8))(v63, v65);
    (*(v61 + 8))(v60, v62);
    goto LABEL_36;
  }

  v46 = *(v0 + 416);
  v47 = *(v0 + 352);
  (*(*(v0 + 408) + 16))(v46, v45 + ((*(*(v0 + 408) + 80) + 32) & ~*(*(v0 + 408) + 80)), *(v0 + 400));

  sub_1002E91A0(v46);
  sub_1002E950C(v46);
  v48 = String._bridgeToObjectiveC()();

  v49 = String._bridgeToObjectiveC()();

  v50 = [objc_opt_self() alertControllerWithTitle:v48 message:v49 preferredStyle:1];
  *(v0 + 536) = v50;

  sub_10000C36C((v47 + 112), *(v47 + 136));
  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v51 = swift_allocObject();
  *(v0 + 544) = v51;
  *(v51 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  *(v0 + 313) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.deleteButton.getter();
  *(v0 + 314) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v52 = swift_task_alloc();
  *(v0 + 552) = v52;
  *v52 = v0;
  v52[1] = sub_10043733C;

  return sub_1001DFFD4(v50, v51);
}

uint64_t sub_10043733C(char a1)
{
  v2 = *v1;
  *(*v1 + 316) = a1;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);

  return _swift_task_switch(sub_100437488, v4, v3);
}

uint64_t sub_100437488()
{
  v1 = *(v0 + 316);
  v3 = *(v0 + 408);
  v2 = *(v0 + 416);
  v4 = *(v0 + 400);

  (*(v3 + 8))(v2, v4);
  if (v1 != 2 && (*(v0 + 316) & 1) != 0)
  {
    v6 = *(v0 + 464);
    v5 = *(v0 + 472);
    v7 = *(v0 + 448);
    v8 = *(v0 + 440);
    v21 = *(v0 + 352);
    v22 = *(v0 + 520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x746E656D75677261;
    *(inited + 40) = 0xE900000000000073;
    v10 = TTRAccountsListsInteractorDeleteArguments.description.getter();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70);
    sub_10000FD44();

    static TTRLocalizableStrings.AccountsList.deleteListUndoAction.getter();
    v20 = objc_opt_self();
    v12 = String._bridgeToObjectiveC()();

    (*(v7 + 16))(v6, v5, v8);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v21;
    v22(v14 + v13, v6, v8);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_100456D78;
    *(v15 + 24) = v14;
    *(v0 + 256) = sub_100068444;
    *(v0 + 264) = v15;
    *(v0 + 224) = _NSConcreteStackBlock;
    *(v0 + 232) = 1107296256;
    *(v0 + 240) = sub_100026440;
    *(v0 + 248) = &unk_100728928;
    v16 = _Block_copy((v0 + 224));

    [v20 withActionName:v12 block:v16];

    _Block_release(v16);
    (*(v7 + 8))(v5, v8);
    v17 = 1;
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  (*(*(v0 + 448) + 8))(*(v0 + 472), *(v0 + 440));
  v17 = 0;
LABEL_6:

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t sub_100437844@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v7 + 96))(v10, v6);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v10, v12);
LABEL_5:
    if (a2 & 1) == 0 && (TTRAccountsListsViewModel.Item.isCollapsible.getter())
    {
      v13 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
LABEL_11:
      v14 = *v13;
      v15 = type metadata accessor for TTRICollectionViewCellSelectionOption();
      v16 = *(*(v15 - 8) + 104);
      v17 = a3;
      v18 = v14;
      return v16(v17, v18, v15);
    }

LABEL_10:
    v13 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
    goto LABEL_11;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:))
  {
LABEL_4:
    (*(v7 + 8))(v10, v6);
    goto LABEL_5;
  }

  if (v11 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
LABEL_9:
    (*(v7 + 8))(v10, v6);
    goto LABEL_10;
  }

  if (v11 != enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    if (v11 == enum case for TTRAccountsListsViewModel.Item.account(_:))
    {
      goto LABEL_4;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.list(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.group(_:))
    {
      goto LABEL_27;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v11 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:))
    {
      goto LABEL_4;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
    {
      goto LABEL_9;
    }

    if (v11 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
LABEL_27:
      (*(v7 + 8))(v10, v6);
    }

    else
    {
      if (v11 == enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:))
      {
        goto LABEL_5;
      }

      if (v11 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
      {
        if (qword_1007672D8 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100003E30(v25, qword_100782E90);
        a3 = _swiftEmptyArrayStorage;
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_100008E04(_swiftEmptyArrayStorage);
        sub_1003F9818("Unknown item type", 17, 2);
        __break(1u);
        goto LABEL_42;
      }
    }

    v15 = type metadata accessor for TTRICollectionViewCellSelectionOption();
    v16 = *(*(v15 - 8) + 104);
    if (a2)
    {
      v24 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
LABEL_43:
      v18 = *v24;
      v17 = a3;
      return v16(v17, v18, v15);
    }

LABEL_42:
    v24 = &enum case for TTRICollectionViewCellSelectionOption.selectItem(_:);
    goto LABEL_43;
  }

  v20 = type metadata accessor for TTRICollectionViewCellSelectionOption();
  v21 = &enum case for TTRICollectionViewCellSelectionOption.performPrimaryAction(_:);
  if ((a2 & 1) == 0)
  {
    v21 = &enum case for TTRICollectionViewCellSelectionOption.disallowed(_:);
  }

  (*(*(v20 - 8) + 104))(a3, *v21, v20);
  return (*(v7 + 8))(v10, v6);
}

void sub_100437CBC(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(v5, v7);
    return;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    goto LABEL_9;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:))
  {
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.account(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    goto LABEL_9;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {

    v11 = TTRAccountsListsViewModel.remCustomSmartList(for:)();

    if (v11)
    {
    }

LABEL_21:
    (*(v3 + 8))(v5, v2);
    return;
  }

  if (v6 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
LABEL_9:
    (*(v3 + 8))(v5, v2);

    v9 = TTRAccountsListsViewModel.remList(for:)();

    if (v9)
    {
    }
  }

  else
  {
    if (v6 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:) || v6 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
    {
      goto LABEL_21;
    }

    if (v6 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v6 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003E30(v12, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown item type", 17, 2);
      __break(1u);
    }
  }
}

uint64_t sub_1004380BC()
{
  v0 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  if ((TTRAccountsListsViewModel.Item.isCollapsible.getter() & 1) != 0 && (sub_100058000(&unk_10078D430), sub_10000E188(&qword_100783258, &unk_10078D430), (dispatch thunk of TTRICollectionViewItemCollapsedStates.isCollapsed(_:)() & 1) == 0))
  {
    sub_100058000(&unk_10078D460);
    v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10062D400;
    (*(v1 + 16))(v6 + v5, v3, v0);
    v8[1] = v6;
    sub_100058000(&qword_100783260);
    sub_10000E188(&unk_10078D470, &qword_100783260);
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

void sub_1004382F0(uint64_t a1, void *a2)
{
  ObjectType = a1;
  v125 = a2;
  v3 = type metadata accessor for TTRListOrCustomSmartList();
  v128 = *(v3 - 8);
  v129 = v3;
  v4 = __chkstk_darwin(v3);
  v131 = (&v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v130 = &v100 - v6;
  v7 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v127 = *(v7 - 8);
  __chkstk_darwin(v7);
  v126 = (&v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_100783180);
  v119 = *(v9 - 8);
  v120 = v9;
  __chkstk_darwin(v9);
  v118 = &v100 - v10;
  v11 = sub_100058000(&unk_10076B870);
  __chkstk_darwin(v11 - 8);
  v123 = &v100 - v12;
  v113 = type metadata accessor for TTRAccountsListsViewModel.Account();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v108 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsPresenterCapability.GroupCreationValidationError();
  v121 = *(v14 - 8);
  v122 = v14;
  __chkstk_darwin(v14);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100783248);
  __chkstk_darwin(v17);
  v19 = &v100 - v18;
  v111 = type metadata accessor for TTRAccountsListsPresenterCapability.GroupCreationParams();
  v110 = *(v111 - 8);
  v20 = __chkstk_darwin(v111);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v109 = &v100 - v23;
  v24 = sub_100058000(&qword_10076BD88);
  __chkstk_darwin(v24 - 8);
  v26 = &v100 - v25;
  v27 = type metadata accessor for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v2;
  TTRAccountsListsPresenterCapability.paramsForCreatingGroup(byDropping:into:)();
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    v31 = &qword_10076BD88;
    v32 = v26;
LABEL_3:
    sub_1000079B4(v32, v31);
    return;
  }

  (*(v28 + 32))(v30, v26, v27);
  TTRAccountsListsPresenterCapability.groupCreationParams(for:)();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v121;
    v33 = v122;
    (*(v121 + 32))(v16, v19, v122);
    sub_10001F128(&qword_100783250, &type metadata accessor for TTRAccountsListsPresenterCapability.GroupCreationValidationError);
    swift_willThrowTypedImpl();
    (*(v34 + 8))(v16, v33);
    (*(v28 + 8))(v30, v27);
    return;
  }

  v103 = v30;
  v104 = v28;
  v105 = v27;
  v35 = v110;
  v36 = *(v110 + 32);
  v37 = v111;
  v36(v22, v19, v111);
  v38 = v109;
  v36(v109, v22, v37);
  v39 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;
  v40 = v114;

  v41 = TTRAccountsListsPresenterCapability.GroupCreationParams.account.getter();
  v42 = [v41 objectID];

  v43 = v123;
  TTRAccountsListsViewModel.account(with:)();

  v44 = v112;
  v45 = v113;
  if ((*(v112 + 48))(v43, 1, v113) == 1)
  {
    (*(v35 + 8))(v38, v37);
    (*(v104 + 8))(v103, v105);
    v31 = &unk_10076B870;
    v32 = v43;
    goto LABEL_3;
  }

  v122 = v39;
  (*(v44 + 32))(v108, v43, v45);
  v125 = *(v40 + 72);
  ObjectType = swift_getObjectType();
  v46 = TTRAccountsListsPresenterCapability.GroupCreationParams.account.getter();
  v47 = TTRAccountsListsPresenterCapability.GroupCreationParams.groupContext.getter();
  TTRAccountsListsPresenterCapability.GroupCreationParams.members.getter();
  v48 = v118;
  TTRAccountsListsPresenterCapability.GroupCreationParams.anchor.getter();
  v50 = v119;
  v49 = v120;
  (*(v119 + 104))(v48, enum case for TTRRelativeInsertionPosition.before<A>(_:), v120);
  v51 = dispatch thunk of TTRAccountsListsInteractorType.createNewGroup(account:groupContext:lists:position:)();

  (*(v50 + 8))(v48, v49);
  v52 = [v51 sublistContext];
  if (!v52)
  {
    goto LABEL_24;
  }

  v101 = v52;
  v102 = v51;
  v53 = [v51 saveRequest];
  v54 = TTRAccountsListsPresenterCapability.GroupCreationParams.account.getter();
  v125 = v53;
  v55 = [v53 updateAccount:v54];

  v56 = v114;

  v57 = TTRAccountsListsViewModel.remListsOrCustomSmartLists(in:)();

  v58 = *(v57 + 16);
  if (v58)
  {
    v100 = v55;
    v133[0] = _swiftEmptyArrayStorage;
    sub_1004A1F60(0, v58, 0);
    v59 = 0;
    v60 = v133[0];
    ObjectType = v57 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
    v123 = (v128 + 16);
    v121 = v128 + 88;
    LODWORD(v120) = enum case for TTRListOrCustomSmartList.list(_:);
    v107 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
    v118 = (v128 + 8);
    v119 = v128 + 96;
    v106 = enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
    v117 = (v127 + 104);
    v116 = enum case for TTRListOrCustomSmartListChangeItem.list(_:);
    v115 = v127 + 32;
    v122 = v57;
    while (v59 < *(v57 + 16))
    {
      v61 = v58;
      v62 = v7;
      v64 = v128;
      v63 = v129;
      v65 = *(v128 + 16);
      v66 = v130;
      v65(v130, ObjectType + *(v128 + 72) * v59, v129);
      v67 = v131;
      v65(v131, v66, v63);
      v68 = (*(v64 + 88))(v67, v63);
      v69 = &selRef_updateList_;
      v70 = v116;
      if (v68 != v120)
      {
        v69 = &selRef_updateSmartList_;
        v70 = v106;
        if (v68 != v107)
        {
          goto LABEL_25;
        }
      }

      v71 = v131;
      v72 = v129;
      (*v119)(v131, v129);
      v73 = *v71;
      v74 = [v125 *v69];

      (*v118)(v130, v72);
      v75 = v126;
      *v126 = v74;
      v7 = v62;
      (*v117)(v75, v70, v62);
      v133[0] = v60;
      v77 = v60[2];
      v76 = v60[3];
      if (v77 >= v76 >> 1)
      {
        sub_1004A1F60(v76 > 1, v77 + 1, 1);
        v60 = v133[0];
      }

      ++v59;
      v60[2] = v77 + 1;
      (*(v127 + 32))(v60 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v77, v75, v62);
      v58 = v61;
      v57 = v122;
      if (v61 == v59)
      {

        v56 = v114;
        v55 = v100;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v99 = type metadata accessor for Logger();
    sub_100003E30(v99, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown list type", 17, 2);
    __break(1u);
    return;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_19:
  v131 = *sub_10000C36C((v56 + 112), *(v56 + 136));
  v78 = objc_allocWithZone(TTRUndoManager);
  v79 = String._bridgeToObjectiveC()();
  v80 = [v78 initWithDebugIdentifier:v79];

  type metadata accessor for TTRIGroupDetailInteractor();
  v81 = swift_allocObject();
  v81[3] = 0;
  swift_unknownObjectWeakInit();
  v81[7] = 0;
  v81[4] = v55;
  type metadata accessor for TTRListEditor();
  sub_10001F128(&qword_10077C780, &type metadata accessor for TTRListEditor);
  v82 = v80;
  v130 = v55;
  v83 = v102;
  TTRUndoableEditing.init(changeItem:undoManager:)();
  v81[8] = v133[0];
  v84 = v101;
  v81[5] = v101;
  v81[6] = v60;
  v85 = v84;
  v81[7] = NSUndoManager.observeChanges<A>(target:handler:)();

  v86 = type metadata accessor for TTRIGroupDetailRouter();
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v135 = v86;
  v136 = &off_100729B00;
  v133[0] = v87;
  type metadata accessor for TTRIGroupDetailPresenter();
  v88 = swift_allocObject();
  v89 = sub_10000AE84(v133, v86);
  __chkstk_darwin(v89);
  v91 = (&v100 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91);
  v93 = *v91;
  *(v88 + 88) = v86;
  *(v88 + 96) = &off_100729B00;
  *(v88 + 64) = v93;
  *(v88 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v88 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v88 + 48) = v81;
  *(v88 + 56) = &off_10071E7D8;
  *(v88 + 112) = v82;
  *(v88 + 104) = 0;
  v94 = v82;

  sub_100004758(v133);
  type metadata accessor for TTRIGroupDetailViewController();
  v133[0] = v88;
  v133[1] = &off_100718120;
  v134 = 0;
  v135 = v94;
  sub_10001F128(&qword_10078C0F0, type metadata accessor for TTRIGroupDetailViewController);
  static TTRTypedController<>.instantiateFromStoryboard(with:)();

  v95 = v132;
  v96 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v132];

  v81[3] = &off_100718110;
  swift_unknownObjectWeakAssign();

  *(v88 + 24) = &off_10072E100;
  swift_unknownObjectWeakAssign();

  swift_beginAccess();
  *(v88 + 40) = &off_100727C98;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v98 = Strong;
    [Strong presentViewController:v96 animated:1 completion:0];
  }

  else
  {
  }

  (*(v112 + 8))(v108, v113);
  (*(v110 + 8))(v109, v111);
  (*(v104 + 8))(v103, v105);
}

void sub_100439410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v73 = a5;
  v6 = sub_100058000(&qword_10078D480);
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v69 = &v65 - v7;
  v8 = sub_100058000(&qword_100783180);
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin(v8);
  v70 = &v65 - v9;
  v10 = sub_100058000(&qword_100783220);
  __chkstk_darwin(v10 - 8);
  v12 = &v65 - v11;
  v13 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam();
  v76 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v75 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v65 - v16;
  v74 = v5;
  if (!TTRAccountsListsPresenterCapability.paramsForMoving(_:into:atUnadjustedIndex:containerIsInEditMode:)())
  {
    return;
  }

  if ((TTRAccountsListsPresenterCapability.RemindersInsertionPlan.shouldDisallow.getter() & 1) != 0 || (v18 = TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateOptimisticMoves()()) == 0)
  {
LABEL_22:

    return;
  }

  v19 = v18;
  TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateParamsForSaving()();
  v20 = v76;
  v21 = v13;
  if ((*(v76 + 48))(v12, 1, v13) == 1)
  {

    sub_1000079B4(v12, &qword_100783220);
    return;
  }

  (*(v20 + 32))(v17, v12, v13);
  v22 = v75;
  (*(v20 + 16))(v75, v17, v13);
  v23 = (*(v20 + 88))(v22, v13);
  if (v23 == enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam.moveToPinnedLists(_:))
  {
    (*(v20 + 96))(v22, v13);
    v24 = *v22;
    v25 = *(sub_100058000(&qword_100783238) + 48);
    v26 = swift_allocObject();
    v27 = v74;
    *(v26 + 2) = v24;
    *(v26 + 3) = v27;

    v28 = sub_100058000(&qword_100783240);
    (*(*(v28 - 8) + 8))(&v22[v25], v28);
    v29 = sub_100458B90;
LABEL_12:
    if (!v19[2])
    {
      (*(v20 + 8))(v17, v21);

      return;
    }

    v74 = v29;
    v75 = v26;
    v54._rawValue = v19;
    v55 = OBJC_IVAR____TtC9Reminders26TTRIAccountsListsPresenter_viewModel;
    type metadata accessor for TTRAccountsListsViewModel();
    swift_allocObject();

    v56 = TTRAccountsListsViewModel.init(viewModel:)();
    TTRAccountsListsViewModel.performMoves(_:)(v54);
    *(v27 + v55) = v56;

    if (v73)
    {
LABEL_17:

LABEL_18:
      v74(Strong);

      (*(v20 + 8))(v17, v21);
      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v57 = swift_conformsToProtocol2();
      v58 = v69;
      if (v57)
      {
        sub_1000BEFE0(v56);
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      v58 = v69;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_18;
    }

    v60 = Strong;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      Strong = swift_unknownObjectRelease();
      goto LABEL_18;
    }

    dispatch thunk of TTRICollectionViewPresentationTreeManagementPresenterCapability.makeUpdatesForMoves()();
    if (![v60 isViewLoaded])
    {
      swift_unknownObjectRelease();
      Strong = (*(v67 + 8))(v58, v68);
      goto LABEL_18;
    }

    if (*&v60[OBJC_IVAR____TtC9Reminders46TTRIAccountsListsViewController_collectionView_presentationTreesCapability])
    {
      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      *(v62 + 16) = 512;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0;
      *(v62 + 40) = v61;

      v63 = v69;
      TTRICollectionViewPresentationTreeManagementViewCapability.applyPresentationTree(with:completion:)();
      swift_unknownObjectRelease();

      (*(v67 + 8))(v63, v68);

      v20 = v76;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v23 == enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam.moveToGroup(_:))
  {
    (*(v20 + 96))(v22, v13);
    v30 = *(v22 + 1);
    v65 = *v22;
    v66 = v30;
    v31 = sub_100058000(&qword_100783230);
    v32 = v70;
    v33 = v71 + 32;
    v34 = *(v71 + 32);
    v35 = &v22[*(v31 + 64)];
    v75 = v17;
    v36 = v72;
    v34(v70, v35, v72);
    v37 = v19;
    v38 = (*(v33 + 48) + 40) & ~*(v33 + 48);
    v26 = swift_allocObject();
    v39 = v66;
    v27 = v74;
    *(v26 + 2) = v65;
    *(v26 + 3) = v27;
    *(v26 + 4) = v39;
    v40 = &v26[v38];
    v19 = v37;
    v41 = v36;
    v17 = v75;
    v34(v40, v32, v41);
    v20 = v76;

    v29 = sub_100458A98;
    goto LABEL_12;
  }

  if (v23 == enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam.moveToAccount(_:))
  {
    (*(v20 + 96))(v22, v13);
    v42 = *(v22 + 1);
    v65 = *v22;
    v66 = v42;
    v43 = sub_100058000(&qword_100783228);
    v44 = v70;
    v45 = v71 + 32;
    v46 = *(v71 + 32);
    v47 = &v22[*(v43 + 64)];
    v75 = v17;
    v48 = v72;
    v46(v70, v47, v72);
    v49 = v19;
    v50 = (*(v45 + 48) + 40) & ~*(v45 + 48);
    v26 = swift_allocObject();
    v51 = v66;
    v27 = v74;
    *(v26 + 2) = v65;
    *(v26 + 3) = v27;
    *(v26 + 4) = v51;
    v52 = &v26[v50];
    v19 = v49;
    v53 = v48;
    v17 = v75;
    v46(v52, v44, v53);
    v20 = v76;

    v29 = sub_100458958;
    goto LABEL_12;
  }

  if (v23 == enum case for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam.disallowed(_:))
  {
    (*(v20 + 8))(v17, v13);

    goto LABEL_22;
  }

LABEL_34:
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for Logger();
  sub_100003E30(v64, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown saving params", 21, 2);
  __break(1u);
}

uint64_t sub_100439D90@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = __chkstk_darwin(v6);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v38 - v9;
  v10 = sub_100058000(&unk_10078D450);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = type metadata accessor for TTRAccountsListsViewModel.List();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v38 - v21;
  v23 = sub_100058000(&qword_100783200);
  v43 = *(v23 - 8);
  v44 = v23;
  __chkstk_darwin(v23);
  v25 = (&v38 - v24);
  v45 = a1;
  v26 = sub_1004B1A10(a1);
  v27 = (v17 + 48);
  if (v26)
  {
    TTRAccountsListsViewModel.Item.list.getter();
    if ((*v27)(v15, 1, v16) == 1)
    {
      v28 = &unk_10078D450;
      v29 = v15;
LABEL_10:
      sub_1000079B4(v29, v28);
      goto LABEL_11;
    }

    (*(v17 + 32))(v22, v15, v16);

    v30 = TTRAccountsListsViewModel.remList(for:)();

    (*(v17 + 8))(v22, v16);
    if (!v30)
    {
LABEL_11:
      v35 = sub_100058000(&qword_10076BB38);
      return (*(*(v35 - 8) + 56))(v46, 1, 1, v35);
    }

    *v25 = v30;
    v32 = v43;
    v31 = v44;
    (*(v43 + 104))(v25, enum case for TTRMoveRemindersToListPresenterCapability.TargetList.list<A>(_:), v44);
  }

  else
  {
    TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
    if ((*v27)(v13, 1, v16) == 1)
    {
      v28 = &unk_10078D450;
      v29 = v13;
      goto LABEL_10;
    }

    (*(v17 + 32))(v20, v13, v16);

    TTRAccountsListsViewModel.listOrCustomSmartList(for:)();

    v34 = v41;
    v33 = v42;
    if ((*(v41 + 48))(v5, 1, v42) == 1)
    {
      (*(v17 + 8))(v20, v16);
      v28 = &unk_10076DF20;
      v29 = v5;
      goto LABEL_10;
    }

    v37 = v39;
    (*(v34 + 32))(v39, v5, v33);
    (*(v34 + 16))(v40, v37, v33);
    sub_100003540(0, &qword_10076BAC0);
    TTRMoveRemindersToListPresenterCapability.TargetList.init(listOrCustomSmartList:)();
    (*(v34 + 8))(v37, v33);
    (*(v17 + 8))(v20, v16);
    v32 = v43;
    v31 = v44;
  }

  TTRMoveRemindersToListPresenterCapability.paramsForDropping(_:into:reminderForDragItem:)();
  return (*(v32 + 8))(v25, v31);
}

void sub_10043A388(void *a1)
{
  v50 = a1;
  v2 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100058000(&qword_100783208);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v39 = &v39 - v4;
  v5 = sub_100058000(&qword_100783210);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  v7 = __chkstk_darwin(v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v39 - v8;
  v49 = type metadata accessor for TTRListOrCustomSmartList();
  v9 = *(v49 - 8);
  __chkstk_darwin(v49);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100058000(&qword_1007831F8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = sub_100058000(&qword_10076BB38);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  (*(v17 + 16))(&v39 - v18, v50, v16);
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.list<A>(_:))
  {
    (*(v17 + 96))(v19, v16);
    (*(v13 + 32))(v15, v19, v12);
    v50 = *(v1 + 72);
    swift_getObjectType();
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.reminderIDs.getter();
    *v11 = TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.target.getter();
    v21 = v49;
    (*(v9 + 104))(v11, enum case for TTRListOrCustomSmartList.list(_:), v49);
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)();

    (*(v9 + 8))(v11, v21);
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.acceptedDragItems.getter();
    (*(v13 + 8))(v15, v12);
    return;
  }

  if (v20 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.customSmartList<A>(_:))
  {
    (*(v17 + 96))(v19, v16);
    v22 = v46;
    v23 = v47;
    v24 = *(v46 + 32);
    v25 = v48;
    v24(v48, v19, v47);
    v49 = v1;
    TTRMoveRemindersToListPresenterCapability.showSmartListAddInfoAlertIfNeeded(_:)();
    static TTRLocalizableStrings.UndoAction.dropOnCustomSmartList.getter();
    v50 = objc_opt_self();
    v26 = String._bridgeToObjectiveC()();

    v27 = v40;
    (*(v22 + 16))(v40, v25, v23);
    v28 = (*(v22 + 80) + 24) & ~*(v22 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v49;
    v24((v29 + v28), v27, v23);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_10045771C;
    *(v30 + 24) = v29;
    aBlock[4] = sub_100068444;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100728C70;
    v31 = _Block_copy(aBlock);

    [v50 withActionName:v26 block:v31];

    _Block_release(v31);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if ((v26 & 1) == 0)
    {
      v32 = v48;
      TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoCustomSmartList.acceptedDragItems.getter();
      (*(v22 + 8))(v32, v23);

      return;
    }

    __break(1u);
  }

  else if (v20 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.predefinedSmartList<A>(_:))
  {
    (*(v17 + 96))(v19, v16);
    v33 = v41;
    v34 = v39;
    v35 = v19;
    v36 = v43;
    (*(v41 + 32))(v39, v35, v43);
    swift_getObjectType();
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoPredefinedSmartList.reminderIDs.getter();
    v37 = v42;
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoPredefinedSmartList.target.getter();
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.move(remindersWithIDs:to:)();

    (*(v44 + 8))(v37, v45);
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoPredefinedSmartList.acceptedDragItems.getter();
    (*(v33 + 8))(v34, v36);
    return;
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100003E30(v38, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown params for dropping into target list", 44, 2);
  __break(1u);
}

void *sub_10043AC20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v19 = a5;
  v20 = a3;
  v21 = a4;
  v22 = a1;
  v5 = sub_100058000(&qword_10076BB30);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = sub_100058000(&qword_10076BB38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  type metadata accessor for TTRAccountsListsViewModel.Item();
  sub_10001F128(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
  v14 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  sub_100439D90(v22, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_10076BB30);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v17 = v19(v11);
    (*(v9 + 8))(v11, v8);
    return v17;
  }
}

void sub_10043AF24(uint64_t a1)
{
  v2 = v1;
  v38 = *v2;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_1007831F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = sub_100058000(&qword_10076BB38);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  (*(v12 + 16))(&v34 - v13, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.list<A>(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 32))(v10, v14, v7);
    type metadata accessor for TTRUserDefaults();
    v35 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    v37 = static REMAnalyticsManager.shared.getter();
    v16 = sub_100058000(&qword_1007757E8);
    v17 = v16[12];
    v36 = v4;
    v18 = &v6[v17];
    v34 = v16[16];
    v19 = &v6[v16[20]];
    v20 = enum case for REMRDLUserOperationDetail.rdl_dragToRecover(_:);
    v21 = type metadata accessor for REMRDLUserOperationDetail();
    v22 = v8;
    v23 = *(v21 - 8);
    (*(v23 + 104))(v6, v20, v21);
    (*(v23 + 56))(v6, 0, 1, v21);
    v24 = enum case for REMUserOperation.recoverReminder(_:);
    v25 = type metadata accessor for REMUserOperation();
    (*(*(v25 - 8) + 104))(v6, v24, v25);
    v26 = v35;
    *v18 = TTRUserDefaults.activitySessionId.getter();
    v18[1] = v27;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v19 = _typeName(_:qualified:)();
    v19[1] = v28;
    v29 = v39;
    v30 = v36;
    (*(v39 + 104))(v6, enum case for REMAnalyticsEvent.userOperation(_:), v36);
    REMAnalyticsManager.post(event:)();

    (*(v29 + 8))(v6, v30);
    swift_getObjectType();
    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.reminderIDs.getter();
    v31 = TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.target.getter();
    dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.recover(remindersWithIDs:to:)();

    TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoList.acceptedDragItems.getter();
    (*(v22 + 8))(v10, v7);
  }

  else if (v15 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.customSmartList<A>(_:) || v15 == enum case for TTRMoveRemindersToListPresenterCapability.ParamsForDroppingIntoTargetList.predefinedSmartList<A>(_:))
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown paramsForDropping", 25, 2);
    __break(1u);
  }
}

uint64_t sub_10043B48C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  result = sub_1004B1A10(a1);
  if ((result & 1) == 0)
  {
    aBlock[0] = a1;
    sub_100058000(&qword_10077CFC8);
    sub_100003540(0, &qword_10076BB00);
    sub_10000E188(&qword_10077CFD8, &qword_10077CFC8);
    result = Sequence.completeCompactMap<A>(_:)();
    if (result)
    {
      v10 = result;
      static TTRLocalizableStrings.UndoAction.hashtagsChange.getter();
      v11 = objc_opt_self();
      v12 = String._bridgeToObjectiveC()();

      v13 = swift_allocObject();
      v13[2] = v4;
      v13[3] = v10;
      v13[4] = a2;
      v13[5] = a3;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_100456570;
      *(v14 + 24) = v13;
      aBlock[4] = sub_100026410;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_1007284F0;
      v15 = _Block_copy(aBlock);

      [v11 withActionName:v12 block:v15];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10043B76C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100783188);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v8 - v5);
  swift_getObjectType();
  *v6 = a2;
  (*(v4 + 104))(v6, enum case for Either.left<A, B>(_:), v3);

  dispatch thunk of TTRAccountsListsInteractorType.tagReminders(_:withHashtagName:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_10043B8B4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v61 = a3;
  v4 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v4 - 8);
  v52 = &v49 - v5;
  v6 = type metadata accessor for TTRListOrCustomSmartList();
  v53 = *(v6 - 8);
  v54 = v6;
  v7 = __chkstk_darwin(v6);
  v50 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v49 - v9;
  v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAccountsListsViewModel.List();
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  v26 = sub_100058000(&qword_100783200);
  v57 = *(v26 - 8);
  v58 = v26;
  __chkstk_darwin(v26);
  v28 = (&v49 - v27);
  v59 = a1;
  v29 = sub_1004B1A10(a1);
  v30 = (v20 + 88);
  v31 = *(v20 + 16);
  if (v29)
  {
    v31(v25, v60, v19);
    v32 = (*v30)(v25, v19);
    if (v32 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
    {
      v33 = sub_100058000(&qword_10076BB38);
      (*(*(v33 - 8) + 56))(v61, 1, 1, v33);
      (*(v20 + 8))(v25, v19);
      return;
    }

    if (v32 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
      (*(v20 + 96))(v25, v19);
      v39 = v55;
      v38 = v56;
      (*(v55 + 32))(v18, v25, v56);

      v40 = TTRAccountsListsViewModel.remList(for:)();

      (*(v39 + 8))(v18, v38);
      if (v40)
      {
        *v28 = v40;
        v37 = v57;
        v36 = v58;
        (*(v57 + 104))(v28, enum case for TTRMoveRemindersToListPresenterCapability.TargetList.list<A>(_:), v58);
        goto LABEL_14;
      }

LABEL_12:
      v46 = sub_100058000(&qword_10076BB38);
      (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
      return;
    }
  }

  else
  {
    v31(v23, v60, v19);
    v34 = (*v30)(v23, v19);
    if (v34 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
    {
      (*(v20 + 96))(v23, v19);
      v35 = v51;
      (*(v51 + 32))(v12, v23, v10);
      TTRAccountsListsViewModel.SmartList.type.getter();
      (*(v35 + 8))(v12, v10);
      v37 = v57;
      v36 = v58;
      (*(v57 + 104))(v28, enum case for TTRMoveRemindersToListPresenterCapability.TargetList.predefinedSmartList<A>(_:), v58);
LABEL_14:
      TTRMoveRemindersToListPresenterCapability.paramsForDropping(_:into:reminderForDragItem:)();
      (*(v37 + 8))(v28, v36);
      return;
    }

    if (v34 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
      (*(v20 + 96))(v23, v19);
      v42 = v55;
      v41 = v56;
      (*(v55 + 32))(v16, v23, v56);

      v43 = v52;
      TTRAccountsListsViewModel.listOrCustomSmartList(for:)();

      v45 = v53;
      v44 = v54;
      if ((*(v53 + 48))(v43, 1, v54) != 1)
      {
        v47 = v49;
        (*(v45 + 32))(v49, v43, v44);
        (*(v45 + 16))(v50, v47, v44);
        sub_100003540(0, &qword_10076BAC0);
        TTRMoveRemindersToListPresenterCapability.TargetList.init(listOrCustomSmartList:)();
        (*(v45 + 8))(v47, v44);
        (*(v42 + 8))(v16, v41);
        v37 = v57;
        v36 = v58;
        goto LABEL_14;
      }

      (*(v42 + 8))(v16, v41);
      sub_1000079B4(v43, &unk_10076DF20);
      goto LABEL_12;
    }
  }

  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_100003E30(v48, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_1003F9818("Unknown list type", 17, 2);
  __break(1u);
}

void *sub_10043C154(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v18 = a5;
  v19 = a3;
  v20 = a4;
  v21 = a1;
  v6 = sub_100058000(&qword_10076BB30);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_100058000(&qword_10076BB38);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 72) = type metadata accessor for UUID();
  sub_1000317B8((inited + 48));
  TTRAccountsListsViewModel.PinnedList.id.getter();
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  sub_10043B8B4(v21, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000079B4(v8, &qword_10076BB30);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = v18(v12);
    (*(v10 + 8))(v12, v9);
    return v16;
  }
}

void sub_10043C410(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TTRAccountsListsViewModel.List();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (!a1)
    {
      swift_getObjectType();
      v20 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
      v15 = [v20 nonUserInteractiveStore];

      sub_100003540(0, &qword_100777780);
      v16 = static OS_dispatch_queue.main.getter();
      (*(v8 + 16))(v13, a4, v7);
      v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v22 = swift_allocObject();
      (*(v8 + 32))(v22 + v21, v13, v7);
      v35 = sub_1004523A8;
      v36 = v22;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100009DE4;
      v34 = &unk_100728068;
      v23 = _Block_copy(&aBlock);

      [v15 acceptCalDAVSharedList:a3 queue:v16 completion:v23];

      _Block_release(v23);
      goto LABEL_6;
    }

    if (a1 == 1)
    {
      swift_getObjectType();
      v14 = dispatch thunk of TTRAccountsListsInteractorSmartListObservingType.store.getter();
      v15 = [v14 nonUserInteractiveStore];

      sub_100003540(0, &qword_100777780);
      v16 = static OS_dispatch_queue.main.getter();
      (*(v8 + 16))(v13, a4, v7);
      v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v18 = swift_allocObject();
      (*(v8 + 32))(v18 + v17, v13, v7);
      v35 = sub_100452394;
      v36 = v18;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100009DE4;
      v34 = &unk_100728018;
      v19 = _Block_copy(&aBlock);

      [v15 rejectCalDAVSharedList:a3 queue:v16 completion:v19];
      _Block_release(v19);

LABEL_6:

      return;
    }

    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100003E30(v24, qword_100782E90);
    (*(v8 + 16))(v11, a4, v7);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v8 + 8))(v11, v7);
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Canceled CalDAV share invitation response {list.objectID: %@}", v27, 0xCu);
      sub_1000079B4(v28, &unk_10076DF80);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }
  }
}

void sub_10043C958(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.List();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100782E90);
    (*(v9 + 16))(v14, a2, v8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = a3;
      v21 = v20;
      v33 = v20;
      *v18 = 138412546;
      v22 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v9 + 8))(v14, v8);
      *(v18 + 4) = v22;
      *v19 = v22;
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v25 = sub_100004060(v23, v24, &v33);

      *(v18 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, v32, v18, 0x16u);
      sub_1000079B4(v19, &unk_10076DF80);

      sub_100004758(v21);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100003E30(v26, qword_100782E90);
    (*(v9 + 16))(v12, a2, v8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = TTRAccountsListsViewModel.List.objectID.getter();
      (*(v9 + 8))(v12, v8);
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, a4, v29, 0xCu);
      sub_1000079B4(v30, &unk_10076DF80);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }
  }
}

void sub_10043CD94(uint64_t a1)
{
  v39 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v38 = *(v39 - 8);
  v3 = __chkstk_darwin(v39);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v37 = v35 - v5;
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v35[0] = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v35 - v10;
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100782E90);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x6F436D6574496D73;
  *(inited + 40) = 0xEB00000000746E75;
  v35[1] = v1;

  v14 = TTRAccountsListsViewModel.pinnedListsSectionItems.getter();

  v15 = *(v14 + 16);

  *(inited + 48) = v15;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 1835365449;
  *(inited + 88) = 0xE400000000000000;
  sub_10001F128(&qword_10076BDB0, &type metadata accessor for TTRAccountsListsViewModel.Item);
  v16 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v16;
  *(inited + 104) = v17;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  v18 = *(v7 + 16);
  v18(v11, a1, v6);
  v19 = (*(v7 + 88))(v11, v6);
  if (v19 == enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:))
  {
    (*(v7 + 96))(v11, v6);
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 8))(v11, v20);
    return;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.account(_:))
  {
    goto LABEL_9;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.list(_:))
  {
    goto LABEL_12;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.customSmartList(_:))
  {
    v21 = 1;
    goto LABEL_15;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.group(_:))
  {
    goto LABEL_12;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.permissionSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.tipSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.tip(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:) || v19 == enum case for TTRAccountsListsViewModel.Item.hashtags(_:))
  {
LABEL_9:
    (*(v7 + 8))(v11, v6);
    return;
  }

  if (v19 == enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:))
  {
LABEL_12:
    v21 = 0;
LABEL_15:
    (*(v7 + 8))(v11, v6);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = v35[0];
    v18(v35[0], a1, v6);
    v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v25 = swift_allocObject();
    (*(v7 + 32))(v25 + v24, v23, v6);
    v26 = v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v26 = v22;
    *(v26 + 8) = v21;
    v27 = v37;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v28 = v38;
    v29 = v39;
    (*(v38 + 16))(v36, v27, v39);
    sub_10001F128(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
    AnyHashable.init<A>(_:)();
    (*(v28 + 8))(v27, v29);
    v30 = type metadata accessor for TTRITreeViewContextMenuItemIdentifier();
    memset(v42, 0, sizeof(v42));
    v31 = objc_allocWithZone(v30);
    sub_1001D3A20(aBlock, v31 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_itemID);
    sub_10000794C(v42, v31 + OBJC_IVAR____TtC9Reminders37TTRITreeViewContextMenuItemIdentifier_userInfo, &qword_10076AE40);
    v41.receiver = v31;
    v41.super_class = v30;
    v32 = objc_msgSendSuper2(&v41, "init");
    sub_1000079B4(v42, &qword_10076AE40);
    sub_100077654(aBlock);
    v33 = objc_opt_self();
    aBlock[4] = sub_1004590B0;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10044EA48;
    aBlock[3] = &unk_100729120;
    v34 = _Block_copy(aBlock);

    [v33 configurationWithIdentifier:v32 previewProvider:0 actionProvider:v34];

    _Block_release(v34);
    return;
  }

  if (v19 != enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:) && v19 != enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:))
  {
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
  }
}

Class sub_10043D624(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v52) = a4;
  v53 = a3;
  v4 = sub_100058000(&unk_10078D440);
  __chkstk_darwin(v4 - 8);
  v49 = v46 - v5;
  v6 = type metadata accessor for TTRAccountsListsViewModel.RecentlyDeletedList();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  v8 = __chkstk_darwin(v6);
  v47 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = v46 - v9;
  v10 = sub_100058000(&unk_10076B7F0);
  __chkstk_darwin(v10 - 8);
  v12 = v46 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&unk_10078D450);
  __chkstk_darwin(v17 - 8);
  v19 = v46 - v18;
  v20 = type metadata accessor for TTRAccountsListsViewModel.List();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRAccountsListsViewModel.Item.listOrCustomSmartList.getter();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1000079B4(v19, &unk_10078D450);
    TTRAccountsListsViewModel.Item.group.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1000079B4(v12, &unk_10076B7F0);
      v24 = v49;
      TTRAccountsListsViewModel.Item.recentlyDeletedList.getter();
      v26 = v50;
      v25 = v51;
      if ((*(v50 + 48))(v24, 1, v51) == 1)
      {
        sub_1000079B4(v24, &unk_10078D440);
        return 0;
      }

      else
      {
        v28 = *(v26 + 32);
        v29 = v48;
        v28(v48, v24, v25);
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          v54 = _swiftEmptyArrayStorage;
          v32 = String._bridgeToObjectiveC()();
          v49 = [objc_opt_self() _systemImageNamed:v32];

          v52 = sub_100003540(0, &qword_10076BA60);
          v33 = static TTRLocalizableStrings.RecentlyDeletedList.deleteAllActionText.getter();
          v46[1] = v34;
          v46[2] = v33;
          v35 = swift_allocObject();
          swift_weakInit();
          v53 = v31;
          v36 = v47;
          (*(v26 + 16))(v47, v29, v25);
          v37 = (*(v26 + 80) + 24) & ~*(v26 + 80);
          v38 = v25;
          v39 = swift_allocObject();
          *(v39 + 16) = v35;
          v28((v39 + v37), v36, v25);
          v40 = v49;
          v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v42 = v54;
          sub_100003540(0, &unk_10076B890);
          v43._countAndFlagsBits = 0;
          v43._object = 0xE000000000000000;
          v55.value.super.isa = 0;
          v55.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v43, 0, v55, 0, 0xFFFFFFFFFFFFFFFFLL, v42, v45).super.super.isa;

          (*(v26 + 8))(v48, v38);
        }

        else
        {
          (*(v26 + 8))(v29, v25);
          return 0;
        }
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        isa = sub_10043DD68(v16);
      }

      else
      {
        isa = 0;
      }

      (*(v14 + 8))(v16, v13);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      isa = sub_100433774(v23, v52 & 1);
    }

    else
    {
      isa = 0;
    }

    (*(v21 + 8))(v23, v20);
  }

  return isa;
}

Class sub_10043DD68(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRAccountsListsViewModel.Group();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _swiftEmptyArrayStorage;
  v8 = String._bridgeToObjectiveC()();
  v36 = objc_opt_self();
  v35 = [v36 _systemImageNamed:v8];

  v9 = sub_100003540(0, &qword_10076BA60);
  v32[1] = static TTRLocalizableStrings.GroupDetail.showGroupInfoActionText.getter();
  v10 = swift_allocObject();
  v40 = v2;
  swift_weakInit();
  v11 = *(v5 + 16);
  v41 = a1;
  v33 = v11;
  v11(v7, a1, v4);
  v12 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v38 = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = *(v5 + 32);
  v34 = v12;
  v15 = v13 + v12;
  v16 = v14;
  v39 = v7;
  v14(v15, v7, v4);
  v37 = v35;
  v35 = v9;
  v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v36 _systemImageNamed:v18];

  v36 = static TTRLocalizableStrings.GroupDetail.deleteGroupActionText.getter();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v39;
  v33(v39, v41, v4);
  v22 = v34;
  v23 = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  v16(v24 + v22, v21, v4);
  v25 = v19;
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = v42;
  sub_100003540(0, &unk_10076B890);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v43.value.super.isa = 0;
  v43.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, 0, v43, 0, 0xFFFFFFFFFFFFFFFFLL, v27, v31).super.super.isa;

  return isa;
}

id sub_10043E1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  if (qword_1007672D8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100782E90);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v10 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v11 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v10;
  *(v12 + 3) = a1;
  *(v12 + 4) = a2;
  (*(v7 + 32))(&v12[v11], aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = objc_opt_self();
  aBlock[4] = sub_100456268;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10044EA48;
  aBlock[3] = &unk_100728388;
  v14 = _Block_copy(aBlock);

  v15 = [v13 configurationWithIdentifier:0 previewProvider:0 actionProvider:v14];

  _Block_release(v14);
  return v15;
}

Class sub_10043E47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TTRIPopoverAnchor();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v34 = Strong;
  v45 = a3;
  TTRWithUnsafeMainActor<A>(operation:)();
  v43 = v47;
  v46 = sub_100003540(0, &qword_10076BA60);
  v44 = static TTRLocalizableStrings.Hashtags.renameTagMenuItem.getter();
  v39 = v12;
  v13 = String._bridgeToObjectiveC()();
  v41 = objc_opt_self();
  v35 = [v41 _systemImageNamed:v13];

  v14 = swift_allocObject();
  swift_weakInit();
  v42 = *(v9 + 16);
  v42(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v8;
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  v38 = a5;
  v17 = a4;
  v18 = v45;
  *(v16 + 2) = v14;
  *(v16 + 3) = v18;
  *(v16 + 4) = a4;
  v40 = *(v9 + 32);
  v40(&v16[v15], &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  LODWORD(v14) = v43;
  v44 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v39 = static TTRLocalizableStrings.Hashtags.deleteTagMenuItem(tagCount:)();
  v35 = v19;
  v20 = String._bridgeToObjectiveC()();
  v41 = [v41 _systemImageNamed:v20];

  v21 = 2;
  if (v14)
  {
    v21 = 3;
  }

  v43 = v21;
  v22 = swift_allocObject();
  swift_weakInit();

  v24 = v36;
  v23 = v37;
  v42(v36, v38, v37);
  v25 = swift_allocObject();
  v26 = v45;
  *(v25 + 2) = v22;
  *(v25 + 3) = v26;
  *(v25 + 4) = v17;
  v40(&v25[v15], v24, v23);

  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100003540(0, &unk_10076B890);
  sub_100058000(&qword_10076B780);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D410;
  *(v28 + 32) = v44;
  *(v28 + 40) = v27;
  v32 = v28;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v48.value.super.isa = 0;
  v48.is_nil = 0;
  v30.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v48, 0, 0xFFFFFFFFFFFFFFFFLL, v32, v33).super.super.isa;

  return v30.super.super.isa;
}

uint64_t sub_10043E900(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v45 = a3;
  v6 = type metadata accessor for TTRIPopoverAnchor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for TTRHashtagAssociationOperation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v41 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v38 - v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v46 = result;
  if (result)
  {
    v44 = v11;
    v19 = v12;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    v21 = sub_10000C36C((v46 + 112), *(v46 + 136));
    *v17 = v45;
    v17[1] = a4;
    (*(v13 + 104))(v17, enum case for TTRHashtagAssociationOperation.renameHashtagLabel(_:), v12);
    v22 = *v21;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      v24 = type metadata accessor for TaskPriority();
      (*(*(v24 - 8) + 56))(v44, 1, 1, v24);
      v25 = v41;
      (*(v13 + 16))(v41, v17, v19);
      v26 = *(v7 + 16);
      v40 = v19;
      v27 = v43;
      v26(v43, v42, v6);
      v28 = *(v13 + 80);
      v42 = a4;
      v29 = (v28 + 40) & ~v28;
      v30 = *(v7 + 80);
      v39 = v6;
      v31 = (v14 + v30 + v29) & ~v30;
      v32 = swift_allocObject();
      *(v32 + 2) = 0;
      *(v32 + 3) = 0;
      *(v32 + 4) = v22;
      v33 = &v32[v29];
      v34 = v40;
      (*(v13 + 32))(v33, v25, v40);
      (*(v7 + 32))(&v32[v31], v27, v39);
      v35 = v45;
      *&v32[(v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8] = v45;

      v36 = v35;
      sub_10009E31C(0, 0, v44, &unk_10063F1E8, v32);

      (*(v13 + 8))(v17, v34);
    }

    else
    {
      v37 = *(v13 + 8);

      v37(v17, v19);
    }
  }

  return result;
}

uint64_t sub_10043ED6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v43 = a3;
  v7 = type metadata accessor for TTRIPopoverAnchor();
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  __chkstk_darwin(v7);
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for TTRHashtagAssociationOperation();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v45 = (&v38 - v16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v46 = result;
  if (result)
  {
    v40 = a5;
    v44 = v12;
    if (qword_1007672D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100003E30(v18, qword_100782E90);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_10000FD44();

    v19 = sub_10000C36C((v46 + 112), *(v46 + 136));
    sub_100058000(&unk_100771E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = v43;
    *(inited + 40) = a4;

    v21 = sub_10000FBDC(inited);
    swift_setDeallocating();
    sub_100007E80(inited + 32);
    v23 = v44;
    v22 = v45;
    *v45 = v21;
    (*(v13 + 104))(v22, enum case for TTRHashtagAssociationOperation.deleteHashtagLabels(_:), v23);
    v24 = *v19;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v43 = Strong;
      v26 = type metadata accessor for TaskPriority();
      v27 = *(*(v26 - 8) + 56);
      v39 = v11;
      v27(v11, 1, 1, v26);
      v28 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v28, v22, v23);
      v29 = v41;
      v30 = v42;
      (*(v41 + 16))(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v42);
      v31 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v32 = (v14 + *(v29 + 80) + v31) & ~*(v29 + 80);
      v33 = swift_allocObject();
      *(v33 + 2) = 0;
      *(v33 + 3) = 0;
      *(v33 + 4) = v24;
      v34 = &v33[v31];
      v23 = v44;
      (*(v13 + 32))(v34, v28, v44);
      (*(v29 + 32))(&v33[v32], &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
      v35 = v43;
      *&v33[(v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8] = v43;

      v36 = v35;
      v37 = v33;
      v22 = v45;
      sub_10009E31C(0, 0, v39, &unk_10063F1E0, v37);
    }

    (*(v13 + 8))(v22, v23);
  }

  return result;
}

void sub_10043F208(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = sub_100058000(&qword_100771DD0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;

  v17 = TTRAccountsListsViewModel.visiblePinnedLists.getter();

  v28 = a1;
  sub_1002ECBA8(sub_100453E58, v17, v16);

  sub_10000794C(v16, v14, &qword_100771DD0);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_1000079B4(v16, &qword_100771DD0);
    sub_1000079B4(v14, &qword_100771DD0);
  }

  else
  {
    (*(v5 + 32))(v10, v14, v4);
    (*(v5 + 16))(v8, v10, v4);
    v18 = (*(v5 + 88))(v8, v4);
    if (v18 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
    {
      (*(v5 + 96))(v8, v4);
      v20 = v25;
      v19 = v26;
      v21 = v27;
      (*(v26 + 32))(v25, v8, v27);
      TTRAccountsListsViewModel.SmartList.shouldBeVisible.getter();
      (*(v19 + 8))(v20, v21);
      (*(v5 + 8))(v10, v4);
      sub_1000079B4(v16, &qword_100771DD0);
    }

    else if (v18 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
    {
      v22 = *(v5 + 8);
      v22(v10, v4);
      sub_1000079B4(v16, &qword_100771DD0);
      v22(v8, v4);
    }

    else
    {
      if (qword_1007672D8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100003E30(v23, qword_100782E90);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown list type", 17, 2);
      __break(1u);
    }
  }
}