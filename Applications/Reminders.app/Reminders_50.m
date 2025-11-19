uint64_t sub_100570810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle();
  v147 = *(v3 - 8);
  v148 = v3;
  __chkstk_darwin(v3);
  v144 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListSubtaskDisplayStyle.ResolvedStyle();
  v145 = *(v5 - 8);
  v146 = v5;
  __chkstk_darwin(v5);
  v142 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100778EE8);
  __chkstk_darwin(v7 - 8);
  v143 = &v121 - v8;
  v9 = type metadata accessor for TTRReminderCellStyle();
  __chkstk_darwin(v9 - 8);
  v123 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for TTRRemindersListViewModel.Item();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v133 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v122 = &v121 - v13;
  v14 = sub_100058000(&qword_10078E130);
  __chkstk_darwin(v14 - 8);
  v132 = &v121 - v15;
  v131 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v17 - 8);
  v138 = &v121 - v18;
  v19 = sub_100058000(&qword_10078E138);
  __chkstk_darwin(v19 - 8);
  v127 = &v121 - v20;
  v128 = type metadata accessor for TTRReminderAndComputedProperties();
  v136 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&unk_100786490);
  __chkstk_darwin(v22 - 8);
  v139 = &v121 - v23;
  v141 = type metadata accessor for TTRReminderProtocolWithPendingMove();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v124 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v125 = &v121 - v26;
  __chkstk_darwin(v27);
  v121 = &v121 - v28;
  __chkstk_darwin(v29);
  v31 = &v121 - v30;
  __chkstk_darwin(v32);
  v137 = &v121 - v33;
  v34 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v121 - v43;
  v45 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v150 = *(v45 - 8);
  v151 = v45;
  __chkstk_darwin(v45);
  v149 = &v121 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v48 = (*(v35 + 88))(v37, v34);
  if (v48 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    v60 = v153;
    if (v48 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) && v48 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      if (v48 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
LABEL_12:
        v81 = 1;
        v83 = v151;
        v82 = v152;
        v84 = v150;
        return (*(v84 + 56))(v82, v81, 1, v83);
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    (*(v35 + 96))(v37, v34);
    (*(v39 + 32))(v44, v37, v38);
    v61 = v60;

    v62 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

    if (v62)
    {
      (*(v39 + 8))(v44, v38);
      v63 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
      v156 = sub_100003540(0, &qword_1007756E0);
      v157 = &protocol witness table for REMReminderChangeItem;
      v155 = v63;
      TTRRemindersListEditingSessionState.pendingMoveTargetList.getter();
      v64 = v124;
      TTRReminderProtocolWithPendingMove.init(reminder:pendingMoveTargetList:)();

      v65 = v140;
      v66 = v125;
      v67 = v64;
      v68 = v141;
      (*(v140 + 32))(v125, v67, v141);
      v69 = type metadata accessor for TTRReminderViewModelComputedProperties();
      v70 = v139;
      (*(*(v69 - 8) + 56))(v139, 1, 1, v69);
      v59 = v149;
      sub_10057FAF0(v66, v70, v61, v47, v149);
      sub_1000079B4(v70, &unk_100786490);
      (*(v65 + 8))(v66, v68);
      v71 = v134;
      v72 = *(v134 + 16);
      v73 = v47;
      v50 = v61;
      v74 = v135;
    }

    else
    {
      v85 = v134;
      v72 = *(v134 + 16);
      v86 = v122;
      v74 = v135;
      v72(v122, v47, v135);
      (*(v85 + 56))(v86, 0, 1, v74);
      TTRRemindersListViewModel.ReminderID.objectID.getter();
      (*(v39 + 8))(v44, v38);
      v71 = v85;
      v59 = v149;
      TTRRemindersListViewModel.Reminder.init(item:objectID:)();
      v73 = v47;
      v50 = v153;
    }

    v87 = v133;
    v72(v133, v73, v74);
    v88 = (*(v71 + 88))(v87, v74);
    v89 = enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
    (*(v71 + 8))(v87, v74);
    if (v88 == v89)
    {
      static TTRReminderCellStyle.placeholder.getter();
      v90 = TTRRemindersListViewModel.Reminder.style.setter();
      (*(*v50 + 576))(v90);
      TTRRemindersListViewModel.Reminder.ttrAccessibilitySectionHeaderType.setter();
    }

    goto LABEL_30;
  }

  (*(v35 + 96))(v37, v34);
  v134 = v39;
  v49 = *(v39 + 32);
  v135 = v38;
  v49(v41, v37, v38);
  v50 = v153;

  v51 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

  v52 = v47;
  if (v51)
  {
    v53 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
    v156 = sub_100003540(0, &qword_1007756E0);
    v157 = &protocol witness table for REMReminderChangeItem;
    v155 = v53;
    TTRRemindersListEditingSessionState.pendingMoveTargetList.getter();
    TTRReminderProtocolWithPendingMove.init(reminder:pendingMoveTargetList:)();

    v54 = v140;
    v55 = v137;
    v56 = v141;
    (*(v140 + 32))(v137, v31, v141);
    v57 = type metadata accessor for TTRReminderViewModelComputedProperties();
    v58 = v139;
    (*(*(v57 - 8) + 56))(v139, 1, 1, v57);
    v59 = v149;
    sub_10057FAF0(v55, v58, v50, v47, v149);
    sub_1000079B4(v58, &unk_100786490);
    (*(v54 + 8))(v55, v56);
    goto LABEL_25;
  }

  swift_getObjectType();
  v75 = v41;
  v76 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v77 = v127;
  dispatch thunk of TTRRemindersListDataModelSourceBaseType.reminderAndComputedProperties(with:)();
  v78 = v77;

  v79 = v136;
  v80 = v128;
  if ((*(v136 + 48))(v78, 1, v128) == 1)
  {
    (*(v134 + 8))(v75, v135);
    sub_1000079B4(v78, &qword_10078E138);
    goto LABEL_12;
  }

  (*(v79 + 32))(v126, v78, v80);
  v91 = TTRRemindersListViewModel.ReminderID.objectID.getter();
  v92 = TTRReminderAndComputedProperties.reminder.getter();
  v93 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
  swift_beginAccess();
  v94 = *(v50 + v93);
  v41 = v75;
  if ((v94 & 0xC000000000000001) == 0)
  {
    v59 = v149;
    goto LABEL_24;
  }

  if (v94 < 0)
  {
    v95 = *(v50 + v93);
  }

  else
  {
    v95 = v94 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaDictionary.count.getter();
  v59 = v149;
  if (!__OFADD__(result, 1))
  {
    *(v50 + v93) = sub_100548B40(v95, result + 1);
LABEL_24:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154 = *(v50 + v93);
    sub_100126D9C(v92, v91, isUniquelyReferenced_nonNull_native);
    *(v50 + v93) = v154;

    swift_endAccess();
    v98 = v126;
    v99 = TTRReminderAndComputedProperties.reminder.getter();
    v156 = sub_100003540(0, &qword_10076BB00);
    v157 = &protocol witness table for REMReminder;
    v155 = v99;
    v100 = v121;
    TTRReminderProtocolWithPendingMove.init(reminder:pendingMoveTargetList:)();
    v101 = v139;
    TTRReminderAndComputedProperties.computedProperties.getter();
    v102 = type metadata accessor for TTRReminderViewModelComputedProperties();
    (*(*(v102 - 8) + 56))(v101, 0, 1, v102);
    sub_10057FAF0(v100, v101, v50, v52, v59);
    sub_1000079B4(v101, &unk_100786490);
    (*(v140 + 8))(v100, v141);
    (*(v136 + 8))(v98, v80);
LABEL_25:

    TTRRemindersListTreeViewModel.subtaskDisplayCount(of:)();

    v103 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    v104 = v50 + v103;
    v105 = v138;
    sub_10000794C(v104, v138, &unk_10078A380);
    v106 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v107 = *(v106 - 8);
    if ((*(v107 + 48))(v105, 1, v106) == 1)
    {
      (*(v134 + 8))(v41, v135);
      sub_1000079B4(v105, &unk_10078A380);
    }

    else
    {
      v108 = v41;
      v109 = v129;
      TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
      (*(v107 + 8))(v105, v106);
      v110 = TTRRemindersListViewModel.SupportsEditableSections.isSupported.getter();
      v111 = (*(v130 + 8))(v109, v131);
      if (v110)
      {
        (*(*v50 + 576))(v111);
        TTRRemindersListViewModel.Reminder.ttrAccessibilitySectionHeaderType.setter();
      }

      (*(v134 + 8))(v108, v135);
    }

LABEL_30:
    v112 = TTRRemindersListViewModel.Reminder.subtaskCount.getter();
    if (v113)
    {
      v112 = TTRRemindersListViewModel.Reminder.subtaskCount.setter();
    }

    v114 = v144;
    (*(*v50 + 488))(v112);
    v115 = v142;
    TTRRemindersListSubtaskDisplayStyle.resolvedStyle(for:)();
    (*(v147 + 8))(v114, v148);
    v116 = v143;
    TTRRemindersListSubtaskDisplayStyle.ResolvedStyle.subtaskCountDisplayStyle.getter();
    (*(v145 + 8))(v115, v146);
    v117 = type metadata accessor for TTRRemindersListViewModel.SubtaskCountDisplayStyle();
    (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
    v118 = TTRRemindersListViewModel.Reminder.subtaskCountDisplayStyle.setter();
    (*(*v50 + 464))(v118);
    v119 = TTRRemindersListViewModel.Reminder.showingLargeAttachments.setter();
    if ((*(*v50 + 424))(v119))
    {
      swift_unknownObjectRelease();
    }

    v120 = TTRRemindersListViewModel.Reminder.iOS.modify();
    TTRRemindersListViewModel.Reminder.IOS.baseIndentationLevel.setter();
    v120(&v155, 0);
    v84 = v150;
    v83 = v151;
    v82 = v152;
    (*(v150 + 32))(v152, v59, v151);
    v81 = 0;
    return (*(v84 + 56))(v82, v81, 1, v83);
  }

  __break(1u);
  return result;
}

uint64_t sub_100571BE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;

  v12 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

  if (*(v12 + 16))
  {
    (*(v6 + 16))(v8, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    v13 = *(v6 + 32);
    v13(v11, v8, v5);
    v13(v4, v11, v5);
    (*(v17 + 104))(v4, enum case for TTRRemindersListViewModel.Item.reminder(_:), v2);
    (*(v17 + 32))(a1, v4, v2);
    return (*(v17 + 56))(a1, 0, 1, v2);
  }

  else
  {

    v15 = *(v17 + 56);

    return v15(a1, 1, 1, v2);
  }
}

uint64_t sub_100571E9C()
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

uint64_t sub_10057211C(uint64_t a1, int a2)
{
  v35 = a2;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = v30 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v30 - v12;
  v45 = _swiftEmptyArrayStorage;
  v30[1] = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v31 = v2;

  v41 = TTRRemindersListTreeViewModel.presentationTree.getter();
  v30[0] = v14;

  v34 = *(a1 + 16);
  if (!v34)
  {
LABEL_19:
    swift_getObjectType();
    v29 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.reminders(with:)();

    swift_beginAccess();
    sub_100058000(&qword_10078E128);
    Dictionary.merge(takingValuesIn:)(v29);
    swift_endAccess();
    swift_unknownObjectRelease();
    return v29;
  }

  v15 = 0;
  v17 = *(v8 + 16);
  v16 = v8 + 16;
  v33 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v40 = (v16 + 40);
  v42 = (v16 - 8);
  v43 = v17;
  v32 = *(v16 + 56);
  while (1)
  {
    v36 = v15;
    v43(v13, v33 + v32 * v15, v7);
    v18 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
    if (v18)
    {
      v19 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if ((v35 & 1) == 0)
    {
      goto LABEL_3;
    }

    v20 = TTRRemindersListTreeViewModel.hasSubtasks.getter();

    if ((v20 & 1) == 0)
    {
      goto LABEL_3;
    }

    v21 = v41;
    ObjectType = swift_getObjectType();
    v44 = v21;
    v43(v6, v13, v7);
    v38 = *v40;
    v38(v6, 0, 1, v7);
    v23 = *(v30[0] + 8);
    v39 = ObjectType;
    v37 = v23;
    v24 = dispatch thunk of TTRTreeContentsQueryable.numberOfChildren(of:)();
    result = sub_1000079B4(v6, &qword_100772140);
    if (v24 < 0)
    {
      break;
    }

    if (v24)
    {
      for (i = 0; i != v24; ++i)
      {
        v44 = v41;
        v43(v6, v13, v7);
        v38(v6, 0, 1, v7);
        dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
        sub_1000079B4(v6, &qword_100772140);
        v27 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        if (v27)
        {
          v28 = v27;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v42)(v10, v7);
        }

        else
        {
          (*v42)(v10, v7);
        }
      }
    }

LABEL_3:
    v15 = v36 + 1;
    (*v42)(v13, v7);
    if (v15 == v34)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100572610(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return a2(v8);
  }

  v24[2] = a3;
  v25 = a2;
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a1 + v12 + *(v7 + 72) * (v11 - 1);
  sub_100058000(&qword_100772150);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D400;
  v15 = *(v7 + 16);
  v15(v14 + v12, v13, v6);
  v26 = _swiftEmptyArrayStorage;

  v24[1] = TTRRemindersListTreeViewModel.presentationTree.getter();

  v15(v10, v14 + v12, v6);

  v16 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  (*(v7 + 8))(v10, v6);
  if (v16)
  {
    v17 = v16;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  swift_getObjectType();
  v18._rawValue = dispatch thunk of TTRRemindersListDataModelSourceBaseType.reminders(with:)();

  swift_beginAccess();
  sub_100058000(&qword_10078E128);
  Dictionary.merge(takingValuesIn:)(v18);
  swift_endAccess();
  swift_unknownObjectRelease();
  v19 = sub_1000A9888(v18._rawValue);
  v21 = v20;

  a2 = v25;
  if (!v19)
  {
    return a2(v8);
  }

  v22 = [v21 list];
  return v22;
}

uint64_t sub_100572904@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

  if (v11)
  {
    v12 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();

    *a1 = v12;
    v13 = enum case for Either.right<A, B>(_:);
    v14 = sub_100058000(&qword_100782828);
    v31 = *(v14 - 8);
    (*(v31 + 104))(a1, v13, v14);
    v15 = *(v31 + 56);

    return v15(a1, 0, 1, v14);
  }

  else
  {
    v17 = a1;
    v18 = v31;
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v19 = (*(v8 + 88))(v10, v7);
    if (v19 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
    {
      (*(v8 + 96))(v10, v7);
      v20 = v18;
      (*(v18 + 32))(v6, v10, v4);
      v21 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v22 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
      swift_beginAccess();
      v23 = *(v2 + v22);

      v24 = sub_10013F404(v21, v23);

      (*(v20 + 8))(v6, v4);
      v25 = v17;
      if (v24)
      {
        *v17 = v24;
        v26 = enum case for Either.left<A, B>(_:);
        v27 = sub_100058000(&qword_100782828);
        v28 = *(v27 - 8);
        (*(v28 + 104))(v17, v26, v27);
        return (*(v28 + 56))(v17, 0, 1, v27);
      }
    }

    else if (v19 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(v8 + 8))(v10, v7);
      v25 = v17;
    }

    else
    {
      v25 = v17;
      if (v19 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    v30 = sub_100058000(&qword_100782828);
    return (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  }
}

uint64_t sub_100572D80@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  v3 = &a1[*(result + 20)];
  *v3 = sub_10057F4D0;
  v3[1] = 0;
  return result;
}

uint64_t sub_100572DE0@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100572E28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_10076FA28);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_100058000(&qword_10078E120);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;

  TTRRemindersListTreeViewModel.locationAfterLastTopLevelItemInLastSection(passing:)();

  sub_10000794C(v11, v8, &qword_10078E120);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000079B4(v11, &qword_10078E120);
    v12 = sub_100058000(&qword_1007827E0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = sub_100058000(&qword_1007827E0);
    v15 = *(v14 + 48);
    TTRDerivedTreeLocation.parent.getter();
    v16 = TTRDerivedTreeLocation.index.getter();
    (*(v3 + 8))(v5, v2);
    sub_1000079B4(v11, &qword_10078E120);
    *(a1 + v15) = v16;
    return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
  }
}

uint64_t sub_1005730FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v79 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v72 = (&v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v80 = (&v69 - v5);
  v73 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v75 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v69 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v77 = *(v10 - 8);
  v78 = v10;
  __chkstk_darwin(v10);
  v74 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v69 - v13;
  v14 = sub_100058000(&qword_100788B60);
  __chkstk_darwin(v14 - 8);
  v70 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v69 - v17;
  v19 = sub_100058000(&qword_10078E0B8);
  __chkstk_darwin(v19 - 8);
  v21 = &v69 - v20;
  v22 = sub_100058000(&qword_10078E0C0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v69 - v24;

  TTRRemindersListTreeViewModel.resolve(_:)();

  if ((v23[6])(v21, 1, v22) != 1)
  {
    v23[4](v25, v21, v22);
    v40 = type metadata accessor for TTRRemindersListUncommittedReminder();
    (*(*(v40 - 8) + 56))(v18, 1, 1, v40);

    TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(at:)();

    v41 = v77;
    v42 = v78;
    if ((*(v77 + 6))(v9, 1, v78) == 1)
    {
      (v23[1])(v25, v22);
      sub_1000079B4(v9, &qword_100772140);
      return sub_100016588(v18, v82, &qword_100788B60);
    }

    v80 = v23;
    v81 = v22;
    v45 = v41;
    v46 = v76;
    (*(v41 + 4))(v76, v9, v42);
    v47 = v75;
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v48 = v71;
    v49 = v73;
    v50 = (*(v71 + 88))(v47, v73);
    if (v50 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
    {
      (*(v48 + 8))(v47, v49);
      v51 = v74;
    }

    else
    {
      v51 = v74;
      if (v50 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v50 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
      {
        (*(v48 + 8))(v75, v49);

        v66 = TTRRemindersListTreeViewModel.uncommittedReminders.getter();

        __chkstk_darwin(v67);
        *(&v69 - 2) = v46;
        v68 = v70;
        sub_1002EC898(sub_10059C384, v66, v70);

        sub_1000079B4(v18, &qword_100788B60);
        v80[1](v25, v81);
        sub_100016588(v68, v18, &qword_100788B60);
        (*(v45 + 1))(v46, v42);
        return sub_100016588(v18, v82, &qword_100788B60);
      }

      if (v50 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    v79 = v25;
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100003E30(v52, qword_10078D7D8);
    (*(v45 + 2))(v51, v46, v42);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v51;
      v56 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v83 = v75;
      *v56 = 136315138;
      sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v57 = TTRTreeStorageItem.treeItemDescription.getter();
      v58 = v42;
      v60 = v59;
      v61 = *(v45 + 1);
      v77 = v18;
      v61(v55, v58);
      v62 = sub_100004060(v57, v60, &v83);
      v63 = v58;
      v64 = v76;

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v53, v54, "Unexpected item type {item: %s}", v56, 0xCu);
      sub_100004758(v75);

      v80[1](v79, v81);
      v18 = v77;
      v61(v64, v63);
    }

    else
    {

      v65 = *(v45 + 1);
      v65(v51, v42);
      v80[1](v79, v81);
      v65(v46, v42);
    }

    return sub_100016588(v18, v82, &qword_100788B60);
  }

  sub_1000079B4(v21, &qword_10078E0B8);
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003E30(v26, qword_10078D7D8);
  v28 = v80;
  v27 = v81;
  v29 = *(v81 + 16);
  v30 = a1;
  v31 = v79;
  v29(v80, v30, v79);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v83 = v35;
    *v34 = 136315138;
    v29(v72, v28, v31);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    (*(v27 + 8))(v28, v31);
    v39 = sub_100004060(v36, v38, &v83);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "Cannot resolve ReminderCreationLocation {location: %s}", v34, 0xCu);
    sub_100004758(v35);
  }

  else
  {

    (*(v27 + 8))(v28, v31);
  }

  v43 = type metadata accessor for TTRRemindersListUncommittedReminder();
  return (*(*(v43 - 8) + 56))(v82, 1, 1, v43);
}

uint64_t sub_100573BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, void (*a6)(char *, char *, uint64_t)@<X5>, void (*a7)(void, void, void)@<X6>, uint64_t a8@<X8>)
{
  v184 = a7;
  v183 = a6;
  v191 = a5;
  v192 = a4;
  v185 = a3;
  v180 = a2;
  v202 = a8;
  v171 = type metadata accessor for TTREditingStateOption.InputType();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for TTREditingStateOption();
  v179 = *(v181 - 8);
  __chkstk_darwin(v181);
  v178 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v12 - 8);
  v182 = &v162 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v203 = *(v14 - 8);
  __chkstk_darwin(v14);
  v174 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v197 = &v162 - v17;
  __chkstk_darwin(v18);
  v164 = &v162 - v19;
  v198 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v190 = *(v198 - 1);
  __chkstk_darwin(v198);
  v194 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v166 = &v162 - v22;
  v23 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v195 = *(v23 - 8);
  v196 = v23;
  __chkstk_darwin(v23);
  v193 = &v162 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v188 = &v162 - v26;
  v27 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v27 - 8);
  v29 = &v162 - v28;
  v173 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v175 = &v162 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v200 = *(v31 - 8);
  v201 = v31;
  __chkstk_darwin(v31);
  v177 = &v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v199 = &v162 - v34;
  v35 = sub_100058000(&qword_10078E0B8);
  __chkstk_darwin(v35 - 8);
  v168 = &v162 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v162 - v38;
  v40 = sub_100058000(&qword_10078E0C0);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v176 = &v162 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v165 = &v162 - v44;
  __chkstk_darwin(v45);
  v47 = &v162 - v46;
  v48 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;

  TTRRemindersListTreeViewModel.resolve(_:)();

  v167 = *(v41 + 48);
  if (v167(v39, 1, v40) == 1)
  {
    sub_1000079B4(v39, &qword_10078E0B8);
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100003E30(v49, qword_10078D7D8);
    v51 = v195;
    v50 = v196;
    v52 = *(v195 + 16);
    v53 = v193;
    v52(v193, a1, v196);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v203 = swift_slowAlloc();
      v204 = v203;
      *v56 = 136315138;
      v52(v188, v53, v50);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      (*(v51 + 8))(v53, v50);
      v60 = sub_100004060(v57, v59, &v204);

      *(v56 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v54, v55, "Cannot resolve ReminderCreationLocation {location: %s}", v56, 0xCu);
      sub_100004758(v203);
    }

    else
    {

      (*(v51 + 8))(v53, v50);
    }

LABEL_30:
    v117 = sub_100058000(&qword_1007860B0);
    return (*(*(v117 - 8) + 56))(v202, 1, 1, v117);
  }

  v189 = v41;
  v162 = *(v41 + 32);
  v162(v47, v39, v40);
  v186 = v8;

  v187 = v47;
  TTRRemindersListTreeViewModel.sectionForlocationIfLastChild(_:)();

  v61 = v203;
  v62 = (*(v203 + 48))(v29, 1, v14);
  v193 = v40;
  v163 = v14;
  if (v62 == 1)
  {
    sub_1000079B4(v29, &qword_100772140);
  }

  else if ((*(v61 + 88))(v29, v14) == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v61 + 96))(v29, v14);
    v63 = v172;
    v64 = v175;
    v65 = v173;
    (*(v172 + 32))(v175, v29, v173);
    v66 = *&v186[v48];
    v67 = *(*v186 + 904);

    LOBYTE(v64) = v67(v64, v66, &protocol witness table for TTRRemindersListTreeViewModel, 1);

    if (v64)
    {

      v68 = v188;
      v69 = v175;
      TTRRemindersListViewModel.SectionHeader.id.getter();
      v71 = v195;
      v70 = v196;
      (*(v195 + 104))(v68, enum case for TTRRemindersListReminderCreationLocation.endOfSection(_:), v196);
      v72 = v168;
      TTRRemindersListTreeViewModel.resolve(_:)();

      (*(v71 + 8))(v68, v70);
      v73 = v167(v72, 1, v193);
      v74 = v198;
      v75 = v199;
      if (v73 == 1)
      {
        sub_1000079B4(v72, &qword_10078E0B8);
        v76 = v187;
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_100003E30(v77, qword_10078D7D8);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.fault.getter();
        v80 = os_log_type_enabled(v78, v79);
        v81 = v172;
        v82 = v173;
        if (v80)
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v78, v79, "Cannot obtain tree location for placeholderReminder", v83, 2u);
        }

        (*(v81 + 8))(v69, v82);
        (*(v189 + 8))(v76, v193);
        goto LABEL_30;
      }

      v140 = v165;
      v162(v165, v72, v193);
      v141 = v166;
      sub_10057C9B8(v166);
      v142 = v190;
      v143 = v164;
      (*(v190 + 16))(v164, v141, v74);
      v144 = v203;
      v145 = v163;
      (*(v203 + 104))(v143, enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:), v163);
      v146 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v147 = v74;
      v148 = v192();

      v149 = v187;
      if (!v148)
      {
        v153 = v147;
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v154 = type metadata accessor for Logger();
        sub_100003E30(v154, qword_10078D7D8);
        v155 = Logger.logObject.getter();
        v156 = static os_log_type_t.error.getter();
        v157 = os_log_type_enabled(v155, v156);
        v158 = v165;
        if (v157)
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&_mh_execute_header, v155, v156, "cannot create placeholderReminder, createReminderChangeItem returns nil.", v159, 2u);
          v141 = v166;
        }

        (*(v203 + 8))(v143, v145);
        (*(v142 + 8))(v141, v153);
        v160 = *(v189 + 8);
        v161 = v193;
        v160(v158, v193);
        (*(v172 + 8))(v175, v173);
        v160(v149, v161);
        goto LABEL_30;
      }

      v150 = *(v144 + 16);
      v151 = v197;
      v150(v197, v143, v145);
      type metadata accessor for TTRRemindersListEditingSessionState();
      swift_allocObject();
      v152 = v148;
      TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
      (*(v189 + 16))(v176, v140, v193);
      v150(v151, v143, v163);

      v96 = v75;
      TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)();
      v196 = [v152 remObjectID];

      v192 = *(v144 + 8);
      (v192)(v143, v163);
      (*(v190 + 8))(v166, v198);
      v97 = v163;
      (*(v189 + 8))(v140, v193);
      (*(v172 + 8))(v175, v173);
      v98 = v200;
      goto LABEL_21;
    }

    (*(v63 + 8))(v175, v65);
  }

  else
  {
    (*(v61 + 8))(v29, v14);
  }

  v84 = (v192)(0);
  v85 = v187;
  if (!v84)
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    sub_100003E30(v113, qword_10078D7D8);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "cannot create uncommittedReminder, createReminderChangeItem returns nil.", v116, 2u);
    }

    (*(v189 + 8))(v85, v193);
    goto LABEL_30;
  }

  v86 = v84;
  v87 = [v84 objectID];
  v88 = v194;
  sub_10057C4B4(v87, v194);

  v89 = v190;
  v90 = v197;
  (*(v190 + 16))(v197, v88, v198);
  v91 = v203;
  v92 = v163;
  (*(v203 + 104))(v90, enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:), v163);
  v93 = *(v91 + 16);
  v94 = v174;
  v93(v174, v90, v92);
  type metadata accessor for TTRRemindersListEditingSessionState();
  swift_allocObject();
  v95 = v86;
  TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
  (*(v189 + 16))(v176, v85, v193);
  v93(v94, v90, v92);

  v96 = v199;
  v97 = v92;
  TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)();
  v196 = [v95 remObjectID];

  v98 = v200;
  v192 = *(v203 + 8);
  (v192)(v90, v97);
  (*(v89 + 8))(v194, v198);
LABEL_21:
  v99 = v201;
  v100 = v177;
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v101 = type metadata accessor for Logger();
  sub_100003E30(v101, qword_10078D7D8);
  v102 = v96;
  v195 = *(v98 + 16);
  (v195)(v100, v96, v99);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v204 = v106;
    *v105 = 136315138;
    v107 = v197;
    TTRRemindersListUncommittedReminder.item.getter();
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v108 = TTRTreeStorageItem.treeItemDescription.getter();
    v110 = v109;
    v111 = v107;
    v102 = v199;
    (v192)(v111, v97);
    v198 = *(v200 + 8);
    (v198)(v100, v201);
    v112 = sub_100004060(v108, v110, &v204);
    v98 = v200;

    *(v105 + 4) = v112;
    _os_log_impl(&_mh_execute_header, v103, v104, "Inserting UncommittedReminder {item: %s}", v105, 0xCu);
    sub_100004758(v106);
    v99 = v201;
  }

  else
  {

    v198 = *(v98 + 8);
    (v198)(v100, v99);
  }

  v119 = v181;
  sub_100058000(&qword_1007860A0);
  v120 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_10062D400;
  (v195)(v121 + v120, v102, v99);
  v122 = v179;
  v123 = v178;
  (*(v179 + 16))(v178, v180, v119);
  v124 = (*(v122 + 88))(v123, v119);
  if (v124 == enum case for TTREditingStateOption.startsEditing(_:))
  {
    (*(v122 + 96))(v123, v119);
    v125 = *(v170 + 32);
    v126 = v169;
    v127 = v171;
    v125(v169, v123, v171);
    v128 = v197;
    TTRRemindersListUncommittedReminder.item.getter();
    v129 = sub_100058000(&unk_1007756F0);
    v130 = *(v129 + 48);
    v131 = v182;
    (*(v203 + 32))(v182, v128, v163);
    v132 = v127;
    v99 = v201;
    v125(&v131[v130], v126, v132);
    v102 = v199;
    v133 = (*(*(v129 - 8) + 56))(v131, 0, 1, v129);
LABEL_36:
    v135 = v186;
    __chkstk_darwin(v133);
    *(&v162 - 4) = v121;
    *(&v162 - 3) = v135;
    v136 = v184;
    *(&v162 - 2) = v183;
    *(&v162 - 1) = v136;
    sub_100581B80(v131, v185 & 1, sub_10059F0C4, (&v162 - 6), static TTRSmartListFilterEditorViewModel.HelpTopic.__derived_enum_equals(_:_:), 0);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000079B4(v131, &qword_10076E0D0);
    v137 = sub_100058000(&qword_1007860B0);
    v138 = *(v137 + 48);
    v139 = v202;
    TTRRemindersListUncommittedReminder.item.getter();
    (v198)(v102, v99);
    (*(v189 + 8))(v187, v193);
    *(v139 + v138) = v196;
    return (*(*(v137 - 8) + 56))(v139, 0, 1, v137);
  }

  v131 = v182;
  if (v124 == enum case for TTREditingStateOption.doesNotStartEditing(_:))
  {
    v134 = sub_100058000(&unk_1007756F0);
    v133 = (*(*(v134 - 8) + 56))(v131, 1, 1, v134);
    goto LABEL_36;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void *sub_100575430(unint64_t a1, uint64_t a2, int a3, int a4, char *a5, uint64_t a6)
{
  v170 = a6;
  v171 = a5;
  v153 = a4;
  v152 = a3;
  v191 = a2;
  v189 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v186 = *(v189 - 8);
  __chkstk_darwin(v189);
  v169 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v172 = &v150 - v10;
  v177 = sub_100058000(&qword_10078E118);
  __chkstk_darwin(v177);
  v187 = (&v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v176 = &v150 - v13;
  v174 = sub_100058000(&qword_1007860B0);
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v175 = &v150 - v14;
  v15 = type metadata accessor for TTRRemindersListViewModel.Item();
  v190 = *(v15 - 8);
  __chkstk_darwin(v15);
  v151 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v182 = (&v150 - v18);
  __chkstk_darwin(v19);
  v155 = &v150 - v20;
  v181 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v168 = *(v181 - 8);
  __chkstk_darwin(v181);
  v183 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v184 = *(v188 - 8);
  __chkstk_darwin(v188);
  v180 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v178 = &v150 - v24;
  v25 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v25 - 8);
  v185 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v150 - v28;
  v167 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100058000(&qword_10078E0B8);
  __chkstk_darwin(v31 - 8);
  v33 = &v150 - v32;
  v34 = sub_100058000(&qword_10078E0C0);
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v179 = &v150 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v150 - v38;

  TTRRemindersListTreeViewModel.resolve(_:)();

  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_1000079B4(v33, &qword_10078E0B8);
    if (qword_100767468 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_83;
  }

  v150 = v35;
  (*(v35 + 32))(v39, v33, v34);

  TTRRemindersListTreeViewModel.sectionForlocationIfLastChild(_:)();

  v53 = v190;
  v54 = v15;
  if ((*(v190 + 48))(v29, 1, v15) != 1)
  {
    if ((*(v53 + 88))(v29, v15) != enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v53 + 8))(v29, v15);
      goto LABEL_13;
    }

    v172 = v6;
    (*(v53 + 96))(v29, v15);
    v55 = v166;
    v56 = v165;
    v57 = v29;
    v58 = v167;
    v59 = (*(v166 + 32))(v165, v57, v167);
    if (v191 < 0)
    {
      __break(1u);
    }

    else
    {
      __chkstk_darwin(v59);
      *(&v150 - 2) = v172;
      *(&v150 - 1) = v56;
      sub_100398A0C(sub_10059C364, (&v150 - 4), 0, v60);
      (v171)(&v192);

      if (v193)
      {
        sub_100005FD0(&v192, &v194);
        sub_100005FD0(&v194, &v195);
        (*(v55 + 8))(v56, v58);
        goto LABEL_15;
      }

      sub_1000079B4(&v192, &qword_10076C710);
      if (qword_100767468 == -1)
      {
LABEL_71:
        v144 = type metadata accessor for Logger();
        sub_100003E30(v144, qword_10078D7D8);
        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          *v147 = 0;
          _os_log_impl(&_mh_execute_header, v145, v146, "cannot create changeItemGroup, createRemindersListChangeItemGroup returns nil.", v147, 2u);
        }

        (*(v55 + 8))(v56, v58);
        goto LABEL_74;
      }
    }

    swift_once();
    goto LABEL_71;
  }

  sub_1000079B4(v29, &qword_100772140);
LABEL_13:
  sub_10059A228(0, v191);
  (v171)(&v192);

  if (!v193)
  {
    sub_1000079B4(&v192, &qword_10076C710);
    if (qword_100767468 == -1)
    {
LABEL_25:
      v72 = type metadata accessor for Logger();
      sub_100003E30(v72, qword_10078D7D8);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "cannot create changeItemGroup, createRemindersListChangeItemGroup returns nil.", v75, 2u);
      }

LABEL_74:
      (*(v150 + 8))(v39, v34);
      return _swiftEmptyArrayStorage;
    }

LABEL_86:
    swift_once();
    goto LABEL_25;
  }

  v172 = v6;
  sub_100005FD0(&v192, &v194);
  sub_100005FD0(&v194, &v195);
LABEL_15:
  TTRTreeStorageTemporaryNodeLocation.parent.getter();
  v61 = TTRTreeStorageTemporaryNodeLocation.index.getter();
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v61;
  }

  v169 = v63;
  sub_10000C36C(&v195, v196);
  v64 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
  v65 = v64 >> 62;
  if (v64 >> 62)
  {
    v149 = v64;
    a1 = _CocoaArrayWrapper.endIndex.getter();
    v64 = v149;
  }

  else
  {
    a1 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v170 = v34;
  v171 = v39;
  v191 = v54;
  if (a1)
  {
    v66 = v64;
    *&v194 = _swiftEmptyArrayStorage;
    sub_1004A1C8C(0, a1 & ~(a1 >> 63), 0);
    v67 = v155;
    if ((a1 & 0x8000000000000000) == 0)
    {
      v68 = v181;
      v69 = v183;
      v70 = v66;
      v189 = v194;
      v154 = v66 & 0xFFFFFFFFFFFFFF8;
      if (v65)
      {
        v71 = _CocoaArrayWrapper.endIndex.getter();
        v70 = v66;
      }

      else
      {
        v71 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v77 = 0;
      v167 = v70 & 0xC000000000000001;
      v166 = v168 + 16;
      LODWORD(v165) = enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:);
      v164 = (v190 + 104);
      v78 = (v190 + 16);
      v160 = (v150 + 104);
      v159 = enum case for TTRTreeStorageTemporaryNodeLocation.atIndexOfParent<A>(_:);
      v158 = (v190 + 8);
      v157 = (v168 + 8);
      v156 = v184 + 32;
      v168 = v71 & ~(v71 >> 63);
      v79 = v182;
      v163 = v70;
      v162 = a1;
      v161 = (v190 + 16);
      v80 = v179;
      while (v168 != v77)
      {
        v186 = v77;
        if (v167)
        {
          v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v77 >= *(v154 + 16))
          {
            goto LABEL_82;
          }

          v81 = *(v70 + 8 * v77 + 32);
        }

        v82 = v81;
        v83 = [v81 objectID];
        sub_10057C4B4(v83, v69);

        (*v166)(v67, v69, v68);
        v84 = v191;
        (*v164)(v67, v165, v191);
        a1 = *v78;
        (*v78)(v79, v67, v84);
        type metadata accessor for TTRRemindersListEditingSessionState();
        swift_allocObject();
        v85 = v82;
        TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
        v86 = *(sub_100058000(&qword_10078E110) + 48);
        sub_10000794C(v185, v80, &qword_100772140);
        if (__OFADD__(v169, v186))
        {
          goto LABEL_78;
        }

        v87 = v186;
        *(v80 + v86) = &v169[v186];
        (*v160)(v80, v159, v170);
        (a1)(v79, v67, v84);
        v88 = v178;
        TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)();
        (*v158)(v67, v84);
        v69 = v183;
        v68 = v181;
        (*v157)(v183, v181);

        v89 = v189;
        *&v194 = v189;
        a1 = *(v189 + 16);
        v90 = *(v189 + 24);
        if (a1 >= v90 >> 1)
        {
          sub_1004A1C8C(v90 > 1, a1 + 1, 1);
          v69 = v183;
          v89 = v194;
        }

        v77 = v87 + 1;
        *(v89 + 16) = a1 + 1;
        v91 = (*(v184 + 80) + 32) & ~*(v184 + 80);
        v189 = v89;
        (*(v184 + 32))(v89 + v91 + *(v184 + 72) * a1, v88, v188);
        v79 = v182;
        v70 = v163;
        v78 = v161;
        if (v162 == v77)
        {

          v76 = v189;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    __break(1u);
    goto LABEL_86;
  }

  v76 = _swiftEmptyArrayStorage;
LABEL_41:
  v92 = v76[2];
  v93 = _swiftEmptyArrayStorage;
  v189 = v76;
  if (v92)
  {
    *&v194 = _swiftEmptyArrayStorage;
    sub_1004A1C48(0, v92, 0);
    v93 = v194;
    v94 = v184 + 16;
    v186 = *(v184 + 16);
    v95 = v76 + ((*(v184 + 80) + 32) & ~*(v184 + 80));
    v184 = *(v184 + 72);
    v96 = (v94 - 8);
    v97 = v151;
    do
    {
      v98 = v180;
      v99 = v188;
      (v186)(v180, v95, v188);
      TTRRemindersListUncommittedReminder.item.getter();
      (*v96)(v98, v99);
      *&v194 = v93;
      v101 = *(v93 + 2);
      v100 = *(v93 + 3);
      if (v101 >= v100 >> 1)
      {
        sub_1004A1C48(v100 > 1, v101 + 1, 1);
        v93 = v194;
      }

      *(v93 + 2) = v101 + 1;
      (*(v190 + 32))(&v93[((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v101], v97, v191);
      v95 += v184;
      --v92;
    }

    while (v92);
  }

  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  sub_100003E30(v102, qword_10078D7D8);

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.debug.getter();

  v105 = os_log_type_enabled(v103, v104);
  v106 = v189;
  if (v105)
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v109 = v108;
    *&v194 = v108;
    *v107 = 136315138;
    v110 = *(v93 + 2);
    if (v110)
    {
      v179 = v108;
      v180 = v107;
      LODWORD(v181) = v104;
      v182 = v103;
      *&v192 = _swiftEmptyArrayStorage;
      sub_1004A1CD0(0, v110, 0);
      v111 = v192;
      v186 = *(v190 + 16);
      v112 = &v93[(*(v190 + 80) + 32) & ~*(v190 + 80)];
      v184 = *(v190 + 72);
      v188 = v190 + 16;
      v113 = (v190 + 8);
      do
      {
        v114 = v155;
        v115 = v191;
        (v186)(v155, v112, v191);
        sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
        v116 = TTRTreeStorageItem.treeItemDescription.getter();
        v118 = v117;
        (*v113)(v114, v115);
        *&v192 = v111;
        v120 = *(v111 + 16);
        v119 = *(v111 + 24);
        if (v120 >= v119 >> 1)
        {
          sub_1004A1CD0((v119 > 1), v120 + 1, 1);
          v111 = v192;
        }

        *(v111 + 16) = v120 + 1;
        v121 = v111 + 16 * v120;
        *(v121 + 32) = v116;
        *(v121 + 40) = v118;
        v112 += v184;
        --v110;
      }

      while (v110);
      v106 = v189;
      v103 = v182;
      LOBYTE(v104) = v181;
      v107 = v180;
      v109 = v179;
    }

    v122 = Array.description.getter();
    v124 = v123;

    v125 = sub_100004060(v122, v124, &v194);

    *(v107 + 4) = v125;
    _os_log_impl(&_mh_execute_header, v103, v104, "Inserting UncommittedReminders {items: %s}", v107, 0xCu);
    sub_100004758(v109);
  }

  sub_100580D50(v106, v152 & 1, v153 & 1);

  v126 = *(v93 + 2);
  if (v126)
  {
    *&v194 = _swiftEmptyArrayStorage;
    sub_1004A1C08(0, v126, 0);
    a1 = 0;
    v127 = v194;
    v188 = &v93[(*(v190 + 80) + 32) & ~*(v190 + 80)];
    v186 = v190 + 16;
    v184 = v190 + 32;
    v189 = *(v93 + 2);
    v183 = v93;
    v182 = v126;
    v128 = v190;
    v129 = v187;
    while (v189 != a1)
    {
      if (a1 >= *(v93 + 2))
      {
        goto LABEL_80;
      }

      v130 = v177;
      v131 = *(v177 + 48);
      v132 = *(v128 + 16);
      v133 = v176;
      v134 = v191;
      v132(&v176[v131], v188 + *(v128 + 72) * a1, v191);
      *v129 = a1;
      v135 = *(v130 + 48);
      (*(v128 + 32))(v129 + v135, &v133[v131], v134);
      v136 = v175;
      v132(v175, v129 + v135, v134);
      sub_10000C36C(&v195, v196);
      v137 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
      if ((v137 & 0xC000000000000001) != 0)
      {
        v138 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v138 = *(v137 + 8 * a1 + 32);
      }

      v139 = v138;

      v140 = *(v174 + 48);
      v141 = [v139 remObjectID];

      *(v136 + v140) = v141;
      sub_1000079B4(v187, &qword_10078E118);
      *&v194 = v127;
      v143 = v127[2];
      v142 = v127[3];
      if (v143 >= v142 >> 1)
      {
        sub_1004A1C08(v142 > 1, v143 + 1, 1);
        v127 = v194;
      }

      ++a1;
      v127[2] = v143 + 1;
      sub_100016588(v136, v127 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v143, &qword_1007860B0);
      v93 = v183;
      if (v182 == a1)
      {

        goto LABEL_69;
      }
    }

LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    swift_once();
LABEL_3:
    v40 = type metadata accessor for Logger();
    sub_100003E30(v40, qword_10078D7D8);
    v41 = v186;
    v42 = *(v186 + 16);
    v43 = v172;
    v44 = v189;
    v42(v172, a1, v189);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v195 = v48;
      *v47 = 136315138;
      v42(v169, v43, v44);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      (*(v41 + 8))(v43, v44);
      v52 = sub_100004060(v49, v51, &v195);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v45, v46, "Cannot resolve ReminderCreationLocation {location: %s}", v47, 0xCu);
      sub_100004758(v48);
    }

    else
    {

      (*(v41 + 8))(v43, v44);
    }

    return _swiftEmptyArrayStorage;
  }

  v127 = _swiftEmptyArrayStorage;
LABEL_69:
  sub_1000079B4(v185, &qword_100772140);
  sub_100004758(&v195);
  (*(v150 + 8))(v171, v170);
  return v127;
}

void *sub_100576CBC(uint64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = v2;
  sub_100398B5C(sub_10059C338, v29, a2);
  v12 = v11;
  sub_100580D50(v11, 0, 1);
  v13 = *(v12 + 16);
  if (v13)
  {
    v32 = _swiftEmptyArrayStorage;
    sub_1004A1C48(0, v13, 0);
    v14 = v32;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = v12 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v24 = *(v15 + 56);
    v25 = v16;
    v26 = v15;
    v18 = (v15 - 8);
    v23[1] = v12;
    v23[2] = v8 + 32;
    do
    {
      v19 = v28;
      v25(v7, v17, v28);
      TTRRemindersListUncommittedReminder.item.getter();
      (*v18)(v7, v19);
      v32 = v14;
      v21 = v14[2];
      v20 = v14[3];
      if (v21 >= v20 >> 1)
      {
        sub_1004A1C48(v20 > 1, v21 + 1, 1);
        v14 = v32;
      }

      v14[2] = v21 + 1;
      (*(v8 + 32))(v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v21, v10, v27);
      v17 += v24;
      --v13;
    }

    while (v13);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

void sub_100576F6C(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v2 - 8);
  v4 = &v112 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v117 = *(v5 - 8);
  v118 = v5;
  __chkstk_darwin(v5);
  v116 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v9 = &v112 - v8;
  v10 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v10 - 8);
  v121 = &v112 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v123 = *(v12 - 8);
  v124 = v12;
  __chkstk_darwin(v12);
  v120 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v112 - v15;
  __chkstk_darwin(v17);
  v119 = (&v112 - v18);
  __chkstk_darwin(v19);
  v21 = &v112 - v20;
  __chkstk_darwin(v22);
  v24 = &v112 - v23;
  v25 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v30 = v25;
  v31 = (*(v26 + 88))(v28, v25);
  if (v31 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v26 + 8))(v28, v25);
    v32 = v29;
    v33 = v123;
    v34 = v124;
LABEL_3:
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100003E30(v35, qword_10078D7D8);
    (*(v33 + 16))(v24, v32, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v125 = v39;
      *v38 = 136315138;
      sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v40 = TTRTreeStorageItem.treeItemDescription.getter();
      v42 = v41;
      (*(v33 + 8))(v24, v34);
      v43 = sub_100004060(v40, v42, &v125);

      *(v38 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v36, v37, "Invalid item type {item: %s}", v38, 0xCu);
      sub_100004758(v39);
    }

    else
    {

      (*(v33 + 8))(v24, v34);
    }

    return;
  }

  v114 = v28;
  v115 = v26;
  if (v31 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    v32 = v29;
    if (v31 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      v113 = v30;
      v24 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;

      TTRRemindersListTreeViewModel.sectionItem(containing:allowsSelf:)();

      v33 = v123;
      v34 = v124;
      if ((*(v123 + 48))(v9, 1, v124) == 1)
      {
        sub_1000079B4(v9, &qword_100772140);
        goto LABEL_28;
      }
    }

    else
    {
      v33 = v123;
      v34 = v124;
      if (v31 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        goto LABEL_3;
      }

      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }

    v63 = v119;
    (*(v33 + 32))(v119, v9, v34);
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v65 = v117;
    v64 = v118;
    if ((*(v117 + 48))(v4, 1, v118) == 1)
    {
      (*(v33 + 8))(v63, v34);
      sub_1000079B4(v4, &qword_10076E900);
    }

    else
    {
      v66 = v116;
      (*(v65 + 32))(v116, v4, v64);
      v67 = *&v24[v122];
      v68 = *(*v122 + 904);

      v69 = v68(v66, v67, &protocol witness table for TTRRemindersListTreeViewModel, 0);

      if (v69)
      {
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v70 = type metadata accessor for Logger();
        sub_100003E30(v70, qword_10078D7D8);
        v71 = v124;
        (*(v33 + 16))(v16, v32, v124);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v125 = v75;
          *v74 = 136315138;
          sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
          v76 = TTRTreeStorageItem.treeItemDescription.getter();
          v78 = v77;
          v79 = *(v33 + 8);
          v79(v16, v124);
          v80 = sub_100004060(v76, v78, &v125);
          v71 = v124;

          *(v74 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v72, v73, "Removing editingSessionState for placeholderReminder {item: %s}", v74, 0xCu);
          sub_100004758(v75);
        }

        else
        {

          v79 = *(v33 + 8);
          v79(v16, v71);
        }

        v102 = v116;
        v103 = v119;
        v104 = v122 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
        Strong = swift_unknownObjectWeakLoadStrong();
        v106 = v114;
        v101 = v115;
        if (Strong)
        {
          v107 = *(v104 + 8);
          ObjectType = swift_getObjectType();
          (*(v107 + 80))(v32, ObjectType, v107);
          swift_unknownObjectRelease();
        }

        v109 = sub_100058000(&unk_1007756F0);
        v110 = v121;
        v111 = (*(*(v109 - 8) + 56))(v121, 1, 1, v109);
        __chkstk_darwin(v111);
        *(&v112 - 2) = v32;
        sub_100581774(v110, 1, sub_10059C2CC, (&v112 - 4), v122);
        sub_1000079B4(v110, &qword_10076E0D0);
        (*(v117 + 8))(v102, v118);
        v79(v103, v71);
        v100 = v106;
        goto LABEL_34;
      }

      (*(v65 + 8))(v66, v64);
      v34 = v124;
      (*(v33 + 8))(v119, v124);
    }

LABEL_28:
    v81 = v120;
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_100003E30(v82, qword_10078D7D8);
    v83 = *(v33 + 16);
    (v83)(v81, v32, v34);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v119 = v83;
      v87 = v86;
      v88 = swift_slowAlloc();
      v125 = v88;
      *v87 = 136315138;
      sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v89 = TTRTreeStorageItem.treeItemDescription.getter();
      v91 = v90;
      (*(v33 + 8))(v81, v124);
      v92 = sub_100004060(v89, v91, &v125);
      v34 = v124;

      *(v87 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v84, v85, "Discarding placeholderReminder {item: %s}", v87, 0xCu);
      sub_100004758(v88);

      v83 = v119;
    }

    else
    {

      (*(v33 + 8))(v81, v34);
    }

    sub_100058000(&qword_100772150);
    v93 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_10062D400;
    (v83)(v94 + v93, v32, v34);
    v95 = sub_100058000(&unk_1007756F0);
    v96 = v121;
    v97 = (*(*(v95 - 8) + 56))(v121, 1, 1, v95);
    __chkstk_darwin(v97);
    *(&v112 - 2) = v94;
    __chkstk_darwin(v98);
    *(&v112 - 2) = v94;
    sub_100581B80(v96, 1, sub_10059F0D0, v99, sub_10059F0CC, (&v112 - 4));

    sub_1000079B4(v96, &qword_10076E0D0);
    v100 = v114;
    v101 = v115;
LABEL_34:
    (*(v101 + 8))(v100, v113);
    return;
  }

  v113 = v25;
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100003E30(v44, qword_10078D7D8);
  v46 = v123;
  v45 = v124;
  v47 = *(v123 + 16);
  v47(v21, v29, v124);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v120 = v47;
    v51 = v50;
    v119 = swift_slowAlloc();
    v125 = v119;
    *v51 = 136315138;
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v52 = TTRTreeStorageItem.treeItemDescription.getter();
    v54 = v53;
    (*(v46 + 8))(v21, v45);
    v55 = sub_100004060(v52, v54, &v125);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "Discarding uncommittedReminder {item: %s}", v51, 0xCu);
    sub_100004758(v119);

    v47 = v120;
  }

  else
  {

    (*(v46 + 8))(v21, v45);
  }

  sub_100058000(&qword_100772150);
  v56 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062D400;
  v47((v57 + v56), v29, v45);
  v58 = sub_100058000(&unk_1007756F0);
  v59 = v121;
  v60 = (*(*(v58 - 8) + 56))(v121, 1, 1, v58);
  __chkstk_darwin(v60);
  *(&v112 - 2) = v57;
  __chkstk_darwin(v61);
  *(&v112 - 2) = v57;
  sub_100581B80(v59, 1, sub_10059F0D0, v62, sub_10059F0CC, (&v112 - 4));

  sub_1000079B4(v59, &qword_10076E0D0);
  (*(v115 + 8))(v114, v113);
}

void *sub_10057802C()
{
  v66 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v1 = *(v66 - 8);
  __chkstk_darwin(v66);
  v68 = v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = v59 - v4;
  v5 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v61 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = v59 - v9;
  __chkstk_darwin(v10);
  v75 = v59 - v11;
  __chkstk_darwin(v12);
  v14 = v59 - v13;
  v59[2] = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v60 = v0;

  v15 = TTRRemindersListTreeViewModel.uncommittedReminders.getter();

  v77 = &_swiftEmptySetSingleton;
  v16 = *(v15 + 16);
  v74 = v6;
  if (v16)
  {
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v59[1] = v15;
    v20 = v15 + v19;
    v71 = *(v17 + 56);
    v72 = v18;
    v64 = enum case for TTRRemindersListEditingSessionState.SaveState.notSaved(_:);
    v62 = (v1 + 8);
    v63 = (v1 + 104);
    v73 = v17;
    v70 = (v17 - 8);
    v65 = v5;
    v21 = v67;
    (v18)(v14, v15 + v19, v5);
    while (1)
    {
      if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
      {
        TTRRemindersListEditingSessionState.saveState.getter();
        v22 = v68;
        v23 = v66;
        (*v63)(v68, v64, v66);
        sub_10059A488(&qword_10078E100, &type metadata accessor for TTRRemindersListEditingSessionState.SaveState);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *v62;
        (*v62)(v22, v23);
        v25(v21, v23);
        if (v24)
        {
          v5 = v65;
          (*v70)(v14, v65);
        }

        else
        {
          v26 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
          v27 = [v26 saveRequest];

          sub_10058BC9C(&v76, v27);

          v5 = v65;
          (*v70)(v14, v65);
        }
      }

      else
      {
        (*v70)(v14, v5);
      }

      v20 += v71;
      if (!--v16)
      {
        break;
      }

      (v72)(v14, v20, v5);
    }

    v28 = v77;
  }

  else
  {

    v28 = &_swiftEmptySetSingleton;
  }

  v72 = v28;

  v29 = TTRRemindersListTreeViewModel.uncommittedReminders.getter();

  v31 = *(v29 + 16);
  if (v31)
  {
    v32 = 0;
    v73 = v74 + 16;
    v33 = v72 + 56;
    v70 = (v74 + 32);
    v34 = (v74 + 8);
    v71 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v32 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      v35 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v36 = *(v74 + 72);
      (*(v74 + 16))(v75, v29 + v35 + v36 * v32, v5);
      if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
      {
        v37 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();

        v38 = [v37 saveRequest];

        if (v38)
        {
          if (*(v72 + 2))
          {
            v39 = v72;
            v40 = static Hasher._hash(seed:_:)();
            v41 = -1 << v39[32];
            v42 = v40 & ~v41;
            if ((*&v33[(v42 >> 3) & 0xFFFFFFFFFFFFFF8] >> v42))
            {
              v43 = ~v41;
              while (*(*(v72 + 6) + 8 * v42) != v38)
              {
                v42 = (v42 + 1) & v43;
                if (((*&v33[(v42 >> 3) & 0xFFFFFFFFFFFFFF8] >> v42) & 1) == 0)
                {
                  goto LABEL_22;
                }
              }

              v68 = *v70;
              (v68)(v61, v75, v5);
              v44 = v71;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v77 = v44;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1004A1C8C(0, v44[2] + 1, 1);
                v44 = v77;
              }

              v47 = v44[2];
              v46 = v44[3];
              v48 = v47 + 1;
              if (v47 >= v46 >> 1)
              {
                v71 = v47 + 1;
                sub_1004A1C8C(v46 > 1, v47 + 1, 1);
                v48 = v71;
                v44 = v77;
              }

              v44[2] = v48;
              v71 = v44;
              result = (v68)(v44 + v35 + v47 * v36, v61, v5);
              goto LABEL_24;
            }
          }

LABEL_22:
        }
      }

      result = (*v34)(v75, v5);
LABEL_24:
      if (++v32 == v31)
      {
        goto LABEL_32;
      }
    }
  }

  v71 = _swiftEmptyArrayStorage;
LABEL_32:

  v49 = TTRRemindersListTreeViewModel.sortUncommittedRemindersByLocation(_:)();

  v77 = _swiftEmptyArrayStorage;
  v50 = *(v49 + 16);
  if (v50)
  {
    v52 = v74 + 16;
    v51 = *(v74 + 16);
    v53 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v75 = v49;
    v54 = v49 + v53;
    v55 = *(v74 + 72);
    v56 = (v74 + 8);
    v57 = _swiftEmptyArrayStorage;
    v58 = v69;
    v51(v69, v54, v5);
    while (1)
    {
      if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
      {
        TTRRemindersListEditingSessionState.reminderChangeItem.getter();

        (*v56)(v58, v5);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v74 = v52;
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v52 = v74;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v57 = v77;
        v58 = v69;
      }

      else
      {
        (*v56)(v58, v5);
      }

      v54 += v55;
      if (!--v50)
      {
        break;
      }

      v51(v58, v54, v5);
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v57;
}

void *sub_100578800()
{
  v30 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v0 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v28 = &v21 - v3;
  v4 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = TTRRemindersListTreeViewModel.uncommittedReminders.getter();

  v34 = _swiftEmptyArrayStorage;
  v9 = *(v8 + 16);
  if (v9)
  {
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v21 = v8;
    v13 = v8 + v12;
    v32 = *(v10 + 56);
    v33 = v11;
    v26 = enum case for TTRRemindersListEditingSessionState.SaveState.notSaved(_:);
    v24 = (v0 + 8);
    v25 = (v0 + 104);
    v31 = (v10 - 8);
    v22 = _swiftEmptyArrayStorage;
    v23 = v7;
    v27 = v10;
    v11(v7, v8 + v12, v4);
    while (1)
    {
      if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
      {
        v14 = v4;
        v15 = v28;
        TTRRemindersListEditingSessionState.saveState.getter();
        v17 = v29;
        v16 = v30;
        (*v25)(v29, v26, v30);
        v18 = static TTRRemindersListEditingSessionState.SaveState.== infix(_:_:)();
        v19 = *v24;
        (*v24)(v17, v16);
        v19(v15, v16);
        if (v18)
        {
          TTRRemindersListEditingSessionState.reminderChangeItem.getter();

          v7 = v23;
          v4 = v14;
          (*v31)(v23, v14);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v22 = v34;
        }

        else
        {
          v7 = v23;
          v4 = v14;
          (*v31)(v23, v14);
        }
      }

      else
      {
        (*v31)(v7, v4);
      }

      v13 += v32;
      if (!--v9)
      {
        break;
      }

      v33(v7, v13, v4);
    }

    return v22;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t sub_100578B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10078D7D8);
  (*(v5 + 16))(v7, a2, v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v20 = v2;
    v12 = v11;
    v19 = swift_slowAlloc();
    v21 = v19;
    *v12 = 136315138;
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v13 = TTRTreeStorageItem.treeItemDescription.getter();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_100004060(v13, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting editingSessionState for editing item {item: %s}", v12, 0xCu);
    sub_100004758(v19);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  TTRRemindersListTreeViewModel.setEditingSessionState(_:for:)();
}

uint64_t sub_100578E40(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_10078D7D8);
  (*(v4 + 16))(v6, a1, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v13 = TTRTreeStorageItem.treeItemDescription.getter();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v16 = sub_100004060(v13, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Removing editingSessionState {item: %s}", v11, 0xCu);
    sub_100004758(v12);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  TTRRemindersListTreeViewModel.removeEditingSessionState(for:)();
}

void sub_1005790DC(uint64_t a1, void *a2)
{
  v3 = v2;
  v80 = a2;
  v5 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v5 - 8);
  v72 = &v68 - v6;
  v7 = sub_100058000(&qword_100778FB0);
  __chkstk_darwin(v7 - 8);
  v73 = &v68 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.DisplayDate();
  v10 = *(v9 - 8);
  v75 = v9;
  v76 = v10;
  __chkstk_darwin(v9);
  v77 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Reminder.Override();
  v13 = *(v12 - 8);
  v78 = v12;
  v79 = v13;
  __chkstk_darwin(v12);
  v71 = (&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v74 = &v68 - v16;
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  __chkstk_darwin(v20);
  v22 = (&v68 - v21);
  v23 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v23 - 8);
  v25 = &v68 - v24;
  v26 = type metadata accessor for TTRRemindersListViewModel.Reminder();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v30 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
    swift_unknownObjectRelease();
    if (v30)
    {
      return;
    }
  }

  v31 = REMReminder.accountCapabilities.getter();
  v32 = [v31 insertsCompletedRecurrentCloneAtTail];

  if (v32)
  {
    return;
  }

  sub_100570810(a1, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_1000079B4(v25, &qword_100772738);
  }

  else
  {
    (*(v27 + 32))(v29, v25, v26);
    v33 = TTRRemindersListViewModel.Reminder.subtaskCount.getter();
    if ((v34 & 1) == 0)
    {
      *v22 = v33;
      (*(v79 + 104))(v22, enum case for TTRRemindersListViewModel.Reminder.Override.subtaskCount(_:), v78);
      v35 = sub_100547260(0, 1, 1, _swiftEmptyArrayStorage);
      v38 = *(v35 + 2);
      v37 = *(v35 + 3);
      if (v38 >= v37 >> 1)
      {
        v35 = sub_100547260(v37 > 1, v38 + 1, 1, v35);
      }

      (*(v27 + 8))(v29, v26);
      *(v35 + 2) = v38 + 1;
      v39 = v22;
      v36 = v78;
      (*(v79 + 32))(&v35[((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v38], v39, v78);
      goto LABEL_12;
    }

    (*(v27 + 8))(v29, v26);
  }

  v35 = _swiftEmptyArrayStorage;
  v36 = v78;
LABEL_12:
  v40 = [v80 isRecurrent];
  v41 = v77;
  if (v40)
  {
    *v19 = 1;
    v70 = *(v79 + 104);
    v70(v19, enum case for TTRRemindersListViewModel.Reminder.Override.isCompleted(_:), v36);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_100547260(0, *(v35 + 2) + 1, 1, v35);
    }

    v43 = *(v35 + 2);
    v42 = *(v35 + 3);
    if (v43 >= v42 >> 1)
    {
      v35 = sub_100547260(v42 > 1, v43 + 1, 1, v35);
    }

    *(v35 + 2) = v43 + 1;
    v44 = *(v79 + 32);
    v68 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v45 = *(v79 + 72);
    v79 += 32;
    v69 = v44;
    v44(&v35[v68 + v45 * v43], v19, v36);
    v83 = sub_100003540(0, &qword_10076BB00);
    v84 = &protocol witness table for REMReminder;
    v81[4] = &protocol witness table for REMReminder;
    v82[0] = v80;
    v81[3] = v83;
    v81[0] = v80;
    v46 = *(*v3 + 248);
    v47 = v80;
    v46(v81);
    sub_100004758(v81);
    v48 = v73;
    static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)();
    sub_100004758(v82);
    v50 = v75;
    v49 = v76;
    if ((*(v76 + 48))(v48, 1, v75) == 1)
    {
      sub_1000079B4(v48, &qword_100778FB0);
    }

    else
    {
      (*(v49 + 32))(v41, v48, v50);
      v51 = v74;
      (*(v49 + 16))(v74, v41, v50);
      (*(v49 + 56))(v51, 0, 1, v50);
      v70(v51, enum case for TTRRemindersListViewModel.Reminder.Override.displayDate(_:), v36);
      v53 = *(v35 + 2);
      v52 = *(v35 + 3);
      if (v53 >= v52 >> 1)
      {
        v35 = sub_100547260(v52 > 1, v53 + 1, 1, v35);
      }

      *(v35 + 2) = v53 + 1;
      v69(&v35[v68 + v53 * v45], v74, v78);
      v54 = [v47 recurrenceRules];
      if (v54)
      {
        v55 = v54;
        sub_100003540(0, &unk_100775670);
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v56 = v72;
      TTRRemindersListViewModel.DisplayDate.date.getter();
      v57 = type metadata accessor for Date();
      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
      v58 = static TTRRemindersListViewModel.Reminder.recurrenceDescription(from:displayDate:)();
      v60 = v59;

      sub_1000079B4(v56, &qword_1007757F0);
      if (v60)
      {
        v61 = v71;
        *v71 = v58;
        v61[1] = v60;
        v62 = v78;
        v70(v61, enum case for TTRRemindersListViewModel.Reminder.Override.recurrenceDescription(_:), v78);
        v64 = *(v35 + 2);
        v63 = *(v35 + 3);
        if (v64 >= v63 >> 1)
        {
          v35 = sub_100547260(v63 > 1, v64 + 1, 1, v35);
        }

        (*(v76 + 8))(v41, v50);
        *(v35 + 2) = v64 + 1;
        v69(&v35[v68 + v64 * v45], v61, v62);
      }

      else
      {
        (*(v76 + 8))(v41, v50);
      }
    }
  }

  v65 = [v80 objectID];
  v66 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v81[0] = *(v3 + v66);
  *(v3 + v66) = 0x8000000000000000;
  sub_100127020(v35, v65, isUniquelyReferenced_nonNull_native);

  *(v3 + v66) = v81[0];
  swift_endAccess();
}

void sub_100579AA0(uint64_t a1, void *a2)
{
  v3 = v2;
  v65 = a1;
  v5 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v61 = &v54 - v9;
  v10 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v67 = *(v11 - 8);
  __chkstk_darwin(v11);
  v60 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  __chkstk_darwin(v16);
  v64 = &v54 - v17;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v62 = *(v21 - 8);
  v63 = v21;
  __chkstk_darwin(v21);
  v66 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter() || (swift_getObjectType(), v23 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter(), swift_unknownObjectRelease(), (v23 & 1) == 0))
  {
    v24 = [a2 accountCapabilities];
    v25 = [v24 insertsCompletedRecurrentCloneAtTail];

    if ((v25 & 1) == 0)
    {
      v57 = v5;
      v58 = v6;
      v26 = v67;
      v56 = *(v67 + 16);
      v56(v20, v65, v11);
      v27 = (*(v26 + 88))(v20, v11);
      if (v27 != enum case for TTRRemindersListViewModel.Item.reminder(_:))
      {
        (*(v26 + 8))(v20, v11);
        return;
      }

      v28 = v27;
      (*(v26 + 96))(v20, v11);
      (*(v62 + 32))(v66, v20, v63);
      v55 = a2;
      v29 = [a2 objectID];
      v30 = v11;
      v31 = v3;
      v32 = v26;
      TTRRemindersListViewModel.ReminderID.groupID.getter();
      v33 = v64;
      TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
      v34 = v32;
      v35 = v31;
      v36 = v30;
      (*(v34 + 104))(v33, v28, v30);
      v37 = v56;
      v56(v15, v33, v30);
      v37(v60, v65, v30);
      v38 = v61;
      TTRRemindersListTreeViewModel.RecurrentReminderReplacement.init(cloned:original:)();
      v39 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
      swift_beginAccess();
      v40 = *(v35 + v39);

      LOBYTE(v33) = sub_10010D110(v38, v40);

      v41 = v57;
      if ((v33 & 1) == 0)
      {
        v42 = v59;
        (*(v58 + 16))(v59, v38, v57);
        swift_beginAccess();
        v43 = *(v35 + v39);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v35 + v39) = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = sub_1005472AC(0, v43[2] + 1, 1, v43);
          *(v35 + v39) = v43;
        }

        v46 = v43[2];
        v45 = v43[3];
        if (v46 >= v45 >> 1)
        {
          v43 = sub_1005472AC(v45 > 1, v46 + 1, 1, v43);
        }

        v43[2] = v46 + 1;
        (*(v58 + 32))(v43 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v46, v42, v41);
        *(v35 + v39) = v43;
        swift_endAccess();
      }

      v47 = [v55 objectID];
      v48 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      v49 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
      swift_beginAccess();
      v50 = *(v35 + v49);
      if (*(v50 + 16))
      {

        v51 = sub_1002613B0(v48);
        if (v52)
        {
          v53 = *(*(v50 + 56) + 8 * v51);

LABEL_18:
          swift_beginAccess();
          sub_1002EA0E4(v53, v47);
          swift_endAccess();
          (*(v58 + 8))(v38, v41);
          (*(v67 + 8))(v64, v36);
          (*(v62 + 8))(v66, v63);
          return;
        }
      }

      else
      {
      }

      v53 = 0;
      goto LABEL_18;
    }
  }
}

uint64_t sub_10057A174(void *a1, uint64_t a2)
{
  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter() || (swift_getObjectType(), v4 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter(), result = swift_unknownObjectRelease(), (v4 & 1) == 0))
  {
    v15[2] = a1;

    sub_100058000(&qword_100775570);
    Set.removeAll(where:)();
    v6 = *(a2 + 16);
    if (v6)
    {
      v7 = (a2 + 40);
      do
      {
        v10 = *v7;
        v11 = *(v7 - 1);
        v12 = v10;
        v13 = REMReminder.accountCapabilities.getter();
        v14 = [v13 insertsCompletedRecurrentCloneAtTail];

        if (v14)
        {
          v8 = [v11 objectID];
          v9 = sub_1000E9C18(v8);
        }

        else
        {
          sub_10001DFB0(v15, [v11 objectID]);

          sub_10001DFB0(v15, [v12 objectID]);
        }

        v7 += 2;
        --v6;
      }

      while (v6);
    }

    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.insertAllowlistCompletedReminderIDs(_:)();

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10057A3A0(uint64_t a1)
{
  v3 = sub_100058000(&qword_10076FA28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v36 = &v32 - v7;
  v8 = sub_100058000(&qword_100781860);
  __chkstk_darwin(v8 - 8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v33 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v34 = v1;

  v13 = TTRRemindersListTreeViewModel.copy()();

  v15 = 0;
  v35 = a1;
  v39 = *(a1 + 16);
  v16 = (v4 + 32);
  v17 = (v4 + 8);
  while (1)
  {
    v18 = v39;
    if (v15 == v39)
    {
      v19 = sub_100058000(&qword_100781868);
      v20 = v38;
      (*(*(v19 - 8) + 56))(v38, 1, 1, v19);
      v15 = v18;
      goto LABEL_7;
    }

    if (v15 >= v39)
    {
      break;
    }

    v21 = sub_100058000(&qword_100781868);
    v22 = *(v21 - 8);
    v20 = v38;
    result = sub_10000794C(v35 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v15, v38, &qword_100781868);
    if (__OFADD__(v15++, 1))
    {
      goto LABEL_11;
    }

    (*(v22 + 56))(v20, 0, 1, v21);
LABEL_7:
    sub_100016588(v20, v12, &qword_100781860);
    v24 = sub_100058000(&qword_100781868);
    if ((*(*(v24 - 8) + 48))(v12, 1, v24) == 1)
    {
      *(v34 + v33) = v13;
    }

    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    v27 = *v16;
    v28 = v36;
    (*v16)(v36, &v12[v25], v3);
    v29 = v37;
    v27(v37, &v12[v26], v3);
    TTRRemindersListTreeViewModel.moveItem(from:to:)();
    v30 = *v17;
    (*v17)(v29, v3);
    v30(v28, v3);
    v31 = type metadata accessor for TTRRemindersListViewModel.Item();
    result = (*(*(v31 - 8) + 8))(v12, v31);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10057A7B4()
{
  swift_getObjectType();
  if (!dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    return 1;
  }

  swift_getObjectType();
  v0 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
  swift_unknownObjectRelease();
  return v0 & 1;
}

void sub_10057A85C()
{
  v1 = type metadata accessor for TTRListType.SortingCapability();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v2 + 96))(v4, v1);
    v7 = type metadata accessor for REMRemindersListDataView.SortingStyle();
    (*(*(v7 - 8) + 8))(v4, v7);
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_10078D7D8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Illegal attempt to change sorting style.", v11, 2u);
    }
  }

  else if (v6 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.update(_:shouldReloadList:)();
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_10057AADC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10057AB60(uint64_t a1)
{
  v156 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v160 = *(v156 - 8);
  __chkstk_darwin(v156);
  v3 = &v109[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v119 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v161 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v109[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v5 - 8);
  v140 = &v109[-v6];
  v139 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v149 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = &v109[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v137 = &v109[-v9];
  v10 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v10 - 8);
  v136 = &v109[-v11];
  v153 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v124 = *(v153 - 8);
  __chkstk_darwin(v153);
  v135 = &v109[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v144 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v109[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100058000(&qword_10078E0B8);
  __chkstk_darwin(v14 - 8);
  v150 = &v109[-v15];
  v158 = sub_100058000(&qword_10078E0C0);
  v122 = *(v158 - 8);
  v16 = __chkstk_darwin(v158);
  v134 = &v109[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v157 = &v109[-v18];
  v19 = sub_100058000(&qword_100772140);
  v20 = __chkstk_darwin(v19 - 8);
  v165 = &v109[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v155 = &v109[-v22];
  v23 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v23 - 8);
  v25 = &v109[-v24];
  v176 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v26 = *(v176 - 8);
  v27 = __chkstk_darwin(v176);
  v133 = &v109[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v30 = &v109[-v29];
  v31 = type metadata accessor for TTRRemindersListViewModel.Item();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v159 = &v109[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v132 = &v109[-v36];
  v37 = __chkstk_darwin(v35);
  v131 = &v109[-v38];
  __chkstk_darwin(v37);
  v40 = &v109[-v39];
  v41 = TTRRemindersListTreeViewModel.sectionItems.getter();
  v42 = v41;
  v173 = *(v41 + 16);
  if (!v173)
  {
  }

  v154 = v3;
  v172 = v41 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
  v130 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  v43 = 0;
  v174 = v32 + 16;
  v171 = (v26 + 48);
  v163 = (v32 + 48);
  v164 = (v26 + 32);
  v148 = (v32 + 32);
  v147 = (v160 + 88);
  v146 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v170 = (v32 + 8);
  v166 = (v26 + 8);
  v129 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:);
  v141 = (v160 + 8);
  v145 = (v144 + 13);
  v117 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:);
  ++v144;
  v143 = (v122 + 6);
  v110 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:);
  v128 = (v122 + 4);
  v127 = (v124 + 2);
  v126 = (v122 + 2);
  v142 = enum case for TTRRemindersListReminderCreationLocation.endOfSection(_:);
  v125 = (v149 + 8);
  ++v124;
  v123 = enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:);
  ++v122;
  v121 = (v26 + 16);
  v116 = (v161 + 8);
  *&v44 = 136315138;
  v115 = v44;
  v120 = (v32 + 104);
  v160 = a1;
  v175 = v30;
  v149 = v32;
  v161 = v42;
  v45 = v155;
  v162 = v25;
  v168 = v31;
  v169 = v40;
  while (v43 < *(v42 + 16))
  {
    v46 = *(v32 + 16);
    v46(v40, v172 + *(v32 + 72) * v43, v31);
    TTRRemindersListViewModel.Item.sectionHeader.getter();
    v47 = v176;
    if ((*v171)(v25, 1, v176) != 1)
    {
      v48 = v25;
      v49 = v45;
      v50 = v175;
      (*v164)(v175, v48, v47);
      if ((*(*v167 + 904))(v50, a1, &protocol witness table for TTRRemindersListTreeViewModel, 0))
      {
        v45 = v49;
        v40 = v169;
        TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();
        v31 = v168;
        if ((*v163)(v49, 1, v168) == 1)
        {
          sub_1000079B4(v49, &qword_100772140);
          v51 = v151;
          TTRRemindersListViewModel.SectionHeader.id.getter();
          v52 = v152;
          (*v145)(v51, v142, v152);
          v53 = v150;
          TTRRemindersListTreeViewModel.resolve(_:)();
          (*v144)(v51, v52);
          v54 = v158;
          v55 = (*v143)(v53, 1, v158);
          v25 = v162;
          if (v55 == 1)
          {
            sub_1000079B4(v53, &qword_10078E0B8);
            v31 = v168;
            if (qword_100767468 != -1)
            {
              swift_once();
            }

            v56 = type metadata accessor for Logger();
            sub_100003E30(v56, qword_10078D7D8);
            v57 = v133;
            v58 = v175;
            v59 = v176;
            (*v121)(v133, v175, v176);
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.fault.getter();
            v62 = os_log_type_enabled(v60, v61);
            v40 = v169;
            if (v62)
            {
              v63 = swift_slowAlloc();
              v112 = v63;
              v114 = swift_slowAlloc();
              v177 = v114;
              *v63 = v115;
              v64 = v118;
              v113 = v61;
              TTRRemindersListViewModel.SectionHeader.id.getter();
              sub_10059A488(&qword_10078E0F8, &type metadata accessor for TTRRemindersListViewModel.SectionID);
              v65 = v57;
              v66 = v119;
              v67 = dispatch thunk of CustomStringConvertible.description.getter();
              v111 = v60;
              v69 = v68;
              (*v116)(v64, v66);
              v70 = *v166;
              (*v166)(v65, v59);
              v71 = sub_100004060(v67, v69, &v177);

              v72 = v112;
              *(v112 + 1) = v71;
              v73 = v111;
              _os_log_impl(&_mh_execute_header, v111, v113, "Unable to resolve ReminderCreationLocation endOfSection for id %s", v72, 0xCu);
              sub_100004758(v114);

              v70(v175, v59);
            }

            else
            {

              v88 = *v166;
              (*v166)(v57, v59);
              v88(v58, v59);
            }

            (*v170)(v40, v31);
            a1 = v160;
          }

          else
          {
            (*v128)(v157, v53, v54);
            v80 = v137;
            sub_10000794C(v167 + v130, v137, &unk_10078A380);
            v81 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
            v82 = *(v81 - 8);
            v83 = (*(v82 + 48))(v80, 1, v81);
            v31 = v168;
            if (v83 == 1)
            {
              sub_1000079B4(v80, &unk_10078A380);
              v84 = type metadata accessor for TTRTemplatePublicLinkData();
              v85 = v136;
              (*(*(v84 - 8) + 56))(v136, 1, 1, v84);
              v86 = &selRef_newObjectID;
            }

            else
            {
              v85 = v136;
              TTRRemindersListViewModel.ListInfo.templateStatus.getter();
              (*(v82 + 8))(v80, v81);
              v89 = type metadata accessor for TTRTemplatePublicLinkData();
              if ((*(*(v89 - 8) + 48))(v85, 1, v89) == 1)
              {
                v86 = &selRef_newObjectID;
              }

              else
              {
                v86 = &selRef_newObjectIDForSavedReminder;
              }
            }

            v40 = v169;
            sub_1000079B4(v85, &qword_1007693B0);
            v90 = [objc_opt_self() *v86];
            v91 = v135;
            v92 = v157;
            sub_10057C4B4(v90, v135);

            v93 = v131;
            (*v127)(v131, v91, v153);
            (*v120)(v93, v123, v31);
            v46(v132, v93, v31);
            v94 = v92;
            v95 = v158;
            (*v126)(v134, v94, v158);
            v96 = v138;
            TTRRemindersListUncommittedReminder.init(placeholderReminder:location:)();
            v97 = v140;
            v98 = v160;
            TTRRemindersListTreeViewModel.insert(_:)();
            sub_1000079B4(v97, &qword_100773318);
            (*v125)(v96, v139);
            v99 = *v170;
            (*v170)(v93, v31);
            (*v124)(v91, v153);
            (*v122)(v157, v95);
            (*v166)(v175, v176);
            v99(v40, v31);
            a1 = v98;
          }

          v45 = v155;
          v32 = v149;
          v42 = v161;
          goto LABEL_4;
        }

        (*v166)(v175, v176);
        (*v170)(v40, v31);
        sub_1000079B4(v49, &qword_100772140);
        goto LABEL_25;
      }

      v74 = v165;
      v40 = v169;
      TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();
      v31 = v168;
      if ((*v163)(v74, 1, v168) == 1)
      {
        (*v166)(v175, v176);
        (*v170)(v40, v31);
        sub_1000079B4(v165, &qword_100772140);
      }

      else
      {
        v75 = v159;
        (*v148)(v159, v165, v31);
        v76 = v154;
        TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
        v77 = v156;
        v78 = (*v147)(v76, v156);
        if (v78 == v146)
        {
          v79 = *v170;
          (*v170)(v75, v31);
          (*v166)(v175, v176);
          v40 = v169;
          v79(v169, v31);
          a1 = v160;
          (*v141)(v76, v77);
        }

        else
        {
          if (v78 != v129)
          {
            v100 = v159;
            if (v78 == v117)
            {
              v101 = TTRRemindersListTreeViewModel.editingSessionState(for:)();
              v102 = v175;
              v45 = v49;
              if (v101)
              {
              }

              else
              {
                v105 = v140;
                TTRRemindersListTreeViewModel.delete(_:)();
                v106 = v105;
                v102 = v175;
                sub_1000079B4(v106, &qword_100773318);
              }

              v25 = v162;
              v107 = *v170;
              v31 = v168;
              (*v170)(v100, v168);
              (*v166)(v102, v176);
              v40 = v169;
              v107(v169, v31);
              (*v141)(v154, v156);
              a1 = v160;
              v42 = v161;
              goto LABEL_4;
            }

            v103 = v176;
            v42 = v161;
            if (v78 != v110)
            {
              goto LABEL_45;
            }

            v104 = *v170;
            v31 = v168;
            (*v170)(v159, v168);
            (*v166)(v175, v103);
            v40 = v169;
            v104(v169, v31);
            a1 = v160;
            goto LABEL_24;
          }

          v87 = *v170;
          v31 = v168;
          (*v170)(v159, v168);
          (*v166)(v175, v176);
          v40 = v169;
          v87(v169, v31);
          a1 = v160;
          (*v141)(v154, v156);
        }

        v42 = v161;
      }

LABEL_24:
      v45 = v49;
LABEL_25:
      v25 = v162;
      goto LABEL_4;
    }

    (*v170)(v40, v31);
    sub_1000079B4(v25, &qword_10076E900);
LABEL_4:
    if (v173 == ++v43)
    {
    }
  }

  __break(1u);
LABEL_45:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10057C1B0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  (*(v5 + 104))(&v20[-v9], enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:), v4);
  if (*(v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) == 1)
  {

    v11 = TTRRemindersListTreeViewModel.isEffectivelyEmpty.getter();

    if (v11)
    {
      (*(*v1 + 560))(v12);
      (*(v5 + 8))(v10, v4);
      (*(v5 + 32))(v10, v8, v4);
    }
  }

  v13 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_listMessaging;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v13, v4);
  sub_10059A488(&qword_100777948, &type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType);
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14)
  {
    if ((a1 & 1) == 0)
    {
      return (v15)(v10, v4);
    }
  }

  else
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v13, v10, v4);
    swift_endAccess();
  }

  v16 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    (*(v17 + 64))(v10, ObjectType, v17);
    swift_unknownObjectRelease();
  }

  return (v15)(v10, v4);
}

uint64_t sub_10057C4B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v2 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v31 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100772140);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100058000(&qword_10078E0C0);
  TTRTreeStorageTemporaryNodeLocation.parent.getter();
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &qword_100772140);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);

    TTRRemindersListTreeViewModel.sectionItem(containing:allowsSelf:)();

    if (v18(v11, 1, v14) == 1)
    {
      (*(v15 + 8))(v17, v14);
      sub_1000079B4(v11, &qword_100772140);
    }

    else
    {
      if ((*(v15 + 88))(v11, v14) == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        (*(v15 + 96))(v11, v14);
        v20 = v26;
        v19 = v27;
        (*(v27 + 32))(v26, v11, v29);

        TTRRemindersListTreeViewModel.reminderIDProvider.getter();

        v30 = v34[4];
        sub_10000C36C(v34, v34[3]);
        v21 = v28;
        TTRRemindersListViewModel.SectionHeader.id.getter();
        dispatch thunk of TTRRemindersListReminderIDProviding.makeReminderID(objectID:sectionID:)();
        (*(v5 + 8))(v21, v31);
        (*(v19 + 8))(v20, v29);
        (*(v15 + 8))(v17, v14);
        return sub_100004758(v34);
      }

      v23 = *(v15 + 8);
      v23(v17, v14);
      v23(v11, v14);
    }
  }

  (*(v5 + 56))(v4, 1, 1, v31);
  v24 = v32;
  return TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
}

void sub_10057C9B8(uint64_t a1@<X8>)
{
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v1 + v9, v5, &unk_10078A380);
  v10 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_1000079B4(v5, &unk_10078A380);
    v12 = type metadata accessor for TTRTemplatePublicLinkData();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.templateStatus.getter();
    (*(v11 + 8))(v5, v10);
    v13 = type metadata accessor for TTRTemplatePublicLinkData();
    if ((*(*(v13 - 8) + 48))(v8, 1, v13) != 1)
    {
      v14 = &selRef_newObjectIDForSavedReminder;
      goto LABEL_6;
    }
  }

  v14 = &selRef_newObjectID;
LABEL_6:
  sub_1000079B4(v8, &qword_1007693B0);
  v15 = [objc_opt_self() *v14];
  sub_10057C4B4(v15, a1);
}

uint64_t sub_10057CC60(uint64_t result, uint64_t a2)
{
  v2 = result;
  v17 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076BB78);
    sub_10000E188(&qword_10076BB80, &qword_10076BB78);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_10008BA48();
      return v17;
    }

    while (1)
    {
      sub_10058C94C(&v16, v15, &qword_100782430, &unk_10063E1C0, &qword_10076BB78);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076BB78);
        swift_dynamicCast();
        v15 = v16;
        v13 = v5;
        v14 = v6;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10057CE90(uint64_t result, uint64_t a2)
{
  v2 = result;
  v17 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076B788);
    sub_10000E188(&unk_10076B910, &qword_10076B788);
    result = Set.Iterator.init(_cocoa:)();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_18:
      sub_10008BA48();
      return v17;
    }

    while (1)
    {
      sub_10058C94C(&v16, v15, &qword_100782418, &unk_100647040, &qword_10076B788);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076B788);
        swift_dynamicCast();
        v15 = v16;
        v13 = v5;
        v14 = v6;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10057D0C0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10058CBA4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10057D1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v12.n128_f64[0] = __chkstk_darwin(v11);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4, v12);
      (*(v5 + 32))(v7, v14, v4);
      sub_10058B6B8(v10, v7);
      (*(v5 + 8))(v10, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10057D3E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10058CBA4(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10057D4E4(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076BB78);
    sub_10000E188(&qword_10076BB80, &qword_10076BB78);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v15[1];
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_10008BA48();
    }

    while (1)
    {
      sub_10058C94C(v15, v14, &qword_100782430, &unk_10063E1C0, &qword_10076BB78);

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076BB78);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v4;
        v13 = v5;
        if (v15[0])
        {
          continue;
        }
      }

      return sub_10008BA48();
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      return sub_10008BA48();
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_10057D710(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100003540(0, &qword_10076BA50);
    sub_1000072CC(&qword_10076D1D0, &qword_10076BA50);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_10008BA48();
      return;
    }

    while (1)
    {
      sub_10001DFB0(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100003540(0, &qword_10076BA50);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10057D91C(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100058000(&qword_10076B788);
    sub_10000E188(&unk_10076B910, &qword_10076B788);
    result = Set.Iterator.init(_cocoa:)();
    v1 = v15[1];
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
      return sub_10008BA48();
    }

    while (1)
    {
      sub_10058C94C(v15, v14, &qword_100782418, &unk_100647040, &qword_10076B788);

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100058000(&qword_10076B788);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v4;
        v13 = v5;
        if (v15[0])
        {
          continue;
        }
      }

      return sub_10008BA48();
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      return sub_10008BA48();
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10057DBA0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v26 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v25 - v10;
  result = __chkstk_darwin(v9);
  v14 = v25 - v13;
  v15 = 0;
  v27 = a1;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v27 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      v26(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10057DDC0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListTargetContainer();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTarget);
        v8 = &enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
LABEL_17:
        v17 = *v8;
        v18 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v18 - 8) + 104))(v6, v17, v18);
        v14 = &enum case for TTRRemindersListTargetContainer.targetList(_:);
        goto LABEL_19;
      }

      v15 = *a1;
      v16 = a1[1];

      *v6 = v16;
LABEL_16:
      v8 = &enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v19 = type metadata accessor for TTRSection();
      (*(*(v19 - 8) + 32))(v6, a1, v19);
      v14 = &enum case for TTRRemindersListTargetContainer.targetSection(_:);
      goto LABEL_19;
    }

    v10 = *a1;
    v9 = a1[1];
    v11 = a1[2];

    *v6 = v10;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *v6 = *a1;
      goto LABEL_16;
    }

    *v6 = *a1;
LABEL_14:
    v6[1] = 0;
    v14 = &enum case for TTRRemindersListTargetContainer.targetReminder(_:);
LABEL_19:
    (*(v21 + 104))(v6, *v14, v4);
    (*(v21 + 32))(a2, v6, v4);
    return (*(v21 + 56))(a2, 0, 1, v4);
  }

  v12 = *(v21 + 56);

  return v12(a2, 1, 1, v4);
}

uint64_t sub_10057E068@<X0>(uint64_t a1@<X8>)
{
  if (qword_100767470 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = sub_100003E30(v2, qword_1007A8920);
  return sub_10059A648(v3, a1, type metadata accessor for TTRRemindersListEditingInteractionOptions);
}

uint64_t sub_10057E0E8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v1 + v12, v7, &unk_10078A380);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &unk_10078A380);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
    v13 = TTRRemindersListViewModel.SupportsEditableSections.isSupported.getter();
    (*(v2 + 8))(v4, v21);
    (*(v9 + 8))(v11, v8);
    if (v13)
    {
      v14 = enum case for TTRAccesibility.SectionHeaderType.other(_:);
      v15 = type metadata accessor for TTRAccesibility.SectionHeaderType();
      v16 = *(v15 - 8);
      v17 = v22;
      (*(v16 + 104))(v22, v14, v15);
      return (*(v16 + 56))(v17, 0, 1, v15);
    }
  }

  v19 = type metadata accessor for TTRAccesibility.SectionHeaderType();
  return (*(*(v19 - 8) + 56))(v22, 1, 1, v19);
}

uint64_t sub_10057E44C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_10057E4BC()
{
  v1 = v0;
  v2 = type metadata accessor for TTRSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  __chkstk_darwin(v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10059A648(v1, v8, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
      v13 = static TTRLocalizableStrings.AutoCategorization.multipleItemsTitle(withCount:shouldUseItemWording:)();
      static TTRLocalizableStrings.AutoCategorization.multipleItemsSubtitle.getter();
      return v13;
    }

    v10 = sub_100058000(&unk_1007759C0);
    (*(v3 + 32))(v5, v8 + *(v10 + 48), v2);
    type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
    v11 = static TTRLocalizableStrings.AutoCategorization.multipleItemsTitle(withCount:shouldUseItemWording:)();
  }

  else
  {

    v12 = sub_100058000(&qword_100770AB8);
    (*(v3 + 32))(v5, v8 + *(v12 + 48), v2);
    v11 = static TTRLocalizableStrings.AutoCategorization.singleItemTitle.getter();
  }

  v13 = v11;
  TTRSection.displayName.getter();
  (*(v3 + 8))(v5, v2);
  return v13;
}

void sub_10057E72C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100003540(0, &qword_10076BA50);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100003540(0, &qword_10076BA50);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_10057E950(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_10057E9B4(uint64_t result, int a2, char a3, uint64_t a4, uint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100058000(a5);
      swift_dynamicCast();
      return v11;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    sub_100058000(a5);
    swift_dynamicCast();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(*(v11 + 16));
    v7 = Hasher._finalize()();
    v8 = -1 << *(a4 + 32);
    v9 = v7 & ~v8;
    if ((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      while (*(*(*(a4 + 48) + 8 * v9) + 16) != *(v11 + 16))
      {
        v9 = (v9 + 1) & v10;
        if (((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_16;
    }

LABEL_10:

    __break(1u);
  }

  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }
}

uint64_t sub_10057EBB0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

void sub_10057EC9C(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100003540(0, a5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100003540(0, a5);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v5 = v16;
    v9 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v10 = -1 << *(a4 + 32);
    a1 = v9 & ~v10;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * a1);
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v11;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v14 = *(*(a4 + 48) + 8 * a1);

  v15 = v14;
}

uint64_t sub_10057EEDC()
{
  sub_100058000(&qword_10076E0B0);
  sub_100058000(&qword_100773368);
  sub_10000E188(&unk_100784560, &qword_10076E0B0);
  return Sequence.completeCompactMap<A>(_:)();
}

uint64_t sub_10057EFA4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v33 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  __chkstk_darwin(v9);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10059A648(v1, v11, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      v14 = sub_100058000(&unk_1007759C0);
      (*(v3 + 32))(v5, &v11[*(v14 + 48)], v2);
      if (*(v1 + *(type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0) + 20)) == 1)
      {
        static TTRAccesibility.RemindersList.AutoCategorization.MultipleItemsSingleSectionCategorizationFormat.getter();
      }

      else
      {
        static TTRAccesibility.RemindersList.AutoCategorization.MultipleRemindersSingleSectionCategorizationFormat.getter();
      }

      sub_100058000(&unk_100786CB0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10062D3F0;
      *(v27 + 56) = &type metadata for Int;
      *(v27 + 64) = &protocol witness table for Int;
      *(v27 + 32) = v13;
      v28 = TTRSection.displayName.getter();
      v30 = v29;
      *(v27 + 96) = &type metadata for String;
      *(v27 + 104) = sub_10005C390();
      *(v27 + 72) = v28;
      *(v27 + 80) = v30;
      v25 = static String.localizedStringWithFormat(_:_:)();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v26 = *v11;
      if (*(v1 + *(type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0) + 20)) == 1)
      {
        static TTRAccesibility.RemindersList.AutoCategorization.MultipleItemsMultipleSectionsCategorizationFormat.getter();
      }

      else
      {
        static TTRAccesibility.RemindersList.AutoCategorization.MultipleRemindersMultipleSectionsCategorizationFormat.getter();
      }

      sub_100058000(&unk_100786CB0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10062D400;
      *(v31 + 56) = &type metadata for Int;
      *(v31 + 64) = &protocol witness table for Int;
      *(v31 + 32) = v26;
      v25 = static String.localizedStringWithFormat(_:_:)();
    }
  }

  else
  {
    v15 = *v11;
    v16 = sub_100058000(&qword_100770AB8);
    (*(v3 + 32))(v8, &v11[*(v16 + 48)], v2);
    v17 = [v15 titleAsString];
    if (v17)
    {
      v18 = v17;
      v33[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v33[1] = static TTRAccesibility.RemindersList.AutoCategorization.SingleItemCategorizationFormat.getter();
      sub_100058000(&unk_100786CB0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10062D3F0;
      *(v21 + 56) = &type metadata for String;
      v22 = sub_10005C390();
      *(v21 + 64) = v22;
      *(v21 + 32) = v33[0];
      *(v21 + 40) = v20;
      v23 = TTRSection.displayName.getter();
      *(v21 + 96) = &type metadata for String;
      *(v21 + 104) = v22;
      *(v21 + 72) = v23;
      *(v21 + 80) = v24;
      v25 = static String.localizedStringWithFormat(_:_:)();

      (*(v3 + 8))(v8, v2);
    }

    else
    {
      (*(v3 + 8))(v8, v2);

      return 0;
    }
  }

  return v25;
}

uint64_t sub_10057F400()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078D7D8);
  v1 = sub_100003E30(v0, qword_10078D7D8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10057F4D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10057F568(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  sub_100003E68(v5, a2);
  v6 = sub_100003E30(v5, a2);
  v7 = v5[5];
  v8 = *a3;
  v9 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = 1;
  v6[v5[6]] = 0;
  v6[v5[7]] = 0;
  v6[v5[8]] = 0;
  v6[v5[9]] = 0;
  v6[v5[10]] = 0;
  v6[v5[11]] = 0;
  v6[v5[12]] = 0;
  v6[v5[13]] = 0;
  return result;
}

uint64_t sub_10057F644(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:) || v6 == enum case for TTRRemindersListViewModel.Item.section(_:) || v6 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    goto LABEL_9;
  }

  if (v6 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v6 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:))
  {
    goto LABEL_15;
  }

  v12 = v6 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v6 == enum case for TTRRemindersListViewModel.Item.hashtags(_:);
  if (v12 || v6 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:))
  {
LABEL_9:
    v9 = 1;
LABEL_16:
    (*(v3 + 8))(v5, v2);
    return v9;
  }

  if (v6 == enum case for TTRRemindersListViewModel.Item.tip(_:))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (v6 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v6 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10057F828()
{
  v0 = sub_100058000(&unk_10078A380);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v1);
  v5 = &v16[-v4];
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    sub_10000794C(v11 + v12, v5, &unk_10078A380);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000079B4(v5, &unk_10078A380);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      (*(v7 + 16))(v3, v9, v6);
      (*(v7 + 56))(v3, 0, 1, v6);
      sub_10056F540(v3);
      sub_1000079B4(v3, &unk_10078A380);
      v13 = v11 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v14 = *(v13 + 8);
        ObjectType = swift_getObjectType();
        LOBYTE(v14) = (*(v14 + 32))(ObjectType, v14);
        swift_unknownObjectRelease();
        if (v14)
        {
          sub_1005820E8(1);
        }
      }

      (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

uint64_t sub_10057FAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v107 = a5;
  v108 = a4;
  v105 = a2;
  v7 = type metadata accessor for TTRReminderCellStyle();
  __chkstk_darwin(v7 - 8);
  v106 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100786490);
  __chkstk_darwin(v9 - 8);
  v103 = &v95 - v10;
  v102 = type metadata accessor for TTRReminderProtocolWithPendingMove();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v99 = &v95 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Reminder.Override();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v96 = (&v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v95 = &v95 - v18;
  __chkstk_darwin(v19);
  v98 = (&v95 - v20);
  __chkstk_darwin(v21);
  v97 = (&v95 - v22);
  __chkstk_darwin(v23);
  v25 = (&v95 - v24);
  __chkstk_darwin(v26);
  v28 = &v95 - v27;
  __chkstk_darwin(v29);
  v31 = &v95 - v30;
  v32 = sub_100058000(&qword_100778FB0);
  __chkstk_darwin(v32 - 8);
  v34 = &v95 - v33;
  v104 = a1;
  TTRReminderProtocolWithPendingMove.reminder.getter();
  v35 = _swiftEmptyArrayStorage;
  v109 = _swiftEmptyArrayStorage;
  if ((*(*a3 + 248))(v110))
  {
    static TTRRemindersListViewModel.Reminder.displayDate(from:dateHidden:)();
    sub_10000794C(v34, v31, &qword_100778FB0);
    (*(v15 + 104))(v31, enum case for TTRRemindersListViewModel.Reminder.Override.displayDate(_:), v14);
    v35 = sub_100547260(0, 1, 1, _swiftEmptyArrayStorage);
    v37 = v35[2];
    v36 = v35[3];
    if (v37 >= v36 >> 1)
    {
      v35 = sub_100547260(v36 > 1, v37 + 1, 1, v35);
    }

    sub_1000079B4(v34, &qword_100778FB0);
    v35[2] = v37 + 1;
    (*(v15 + 32))(v35 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v37, v31, v14);
    v109 = v35;
  }

  v38 = v108;
  if (((*(*a3 + 256))(v108) & 1) == 0)
  {
    v39 = type metadata accessor for TTRRemindersListViewModel.ListNameData();
    (*(*(v39 - 8) + 56))(v28, 1, 1, v39);
    (*(v15 + 104))(v28, enum case for TTRRemindersListViewModel.Reminder.Override.listNameData(_:), v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_100547260(0, v35[2] + 1, 1, v35);
    }

    v41 = v35[2];
    v40 = v35[3];
    if (v41 >= v40 >> 1)
    {
      v35 = sub_100547260(v40 > 1, v41 + 1, 1, v35);
    }

    v35[2] = v41 + 1;
    (*(v15 + 32))(v35 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v41, v28, v14);
    v109 = v35;
  }

  sub_10000C36C(v110, v110[3]);
  v42 = dispatch thunk of TTRReminderProtocol.objectID.getter();
  v43 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
  swift_beginAccess();
  v44 = *(a3 + v43);
  if (*(v44 + 16))
  {

    v45 = sub_1002613B0(v42);
    v46 = v97;
    if (v47)
    {
      v48 = *(*(v44 + 56) + 8 * v45);

      v49 = sub_10008154C(v48);
    }

    else
    {
    }
  }

  else
  {

    v46 = v97;
  }

  v50 = (*(*a3 + 272))(v49);
  if (v50)
  {
    *v25 = v50;
    v51 = v50;
    (*(v15 + 104))(v25, enum case for TTRRemindersListViewModel.Reminder.Override.color(_:), v14);
    v52 = v109;
    v53 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_100547260(0, v52[2] + 1, 1, v52);
    }

    v55 = v52[2];
    v54 = v52[3];
    if (v55 >= v54 >> 1)
    {
      v52 = sub_100547260(v54 > 1, v55 + 1, 1, v52);
    }

    v52[2] = v55 + 1;
    (*(v15 + 32))(v52 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v55, v25, v14);
    v109 = v52;
  }

  v56 = (*(*a3 + 280))();
  v57 = v98;
  if (v56)
  {
    *v46 = v56;
    v58 = v56;
    (*(v15 + 104))(v46, enum case for TTRRemindersListViewModel.Reminder.Override.controlColor(_:), v14);
    v59 = v109;
    v60 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_100547260(0, v59[2] + 1, 1, v59);
    }

    v62 = v59[2];
    v61 = v59[3];
    if (v62 >= v61 >> 1)
    {
      v59 = sub_100547260(v61 > 1, v62 + 1, 1, v59);
    }

    v59[2] = v62 + 1;
    (*(v15 + 32))(v59 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v62, v46, v14);
    v109 = v59;
  }

  v63 = (*(*a3 + 296))();
  if (v63)
  {
    *v57 = v63;
    v64 = v63;
    (*(v15 + 104))(v57, enum case for TTRRemindersListViewModel.Reminder.Override.completedStateTextColor(_:), v14);
    v65 = v109;
    v66 = v64;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_100547260(0, v65[2] + 1, 1, v65);
    }

    v68 = v65[2];
    v67 = v65[3];
    if (v68 >= v67 >> 1)
    {
      v65 = sub_100547260(v67 > 1, v68 + 1, 1, v65);
    }

    v65[2] = v68 + 1;
    (*(v15 + 32))(v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v68, v57, v14);
    v109 = v65;
  }

  if ((*(*a3 + 512))())
  {
    static TTRRemindersListViewModel.Reminder.completionDateString(from:completionHidden:forAccessibility:)();
    if (v69)
    {
      v70 = static TTRRemindersListViewModel.Reminder.completionDateString(from:completionHidden:forAccessibility:)();
      if (v71)
      {
        v98 = v70;
        v72 = static TTRLocalizableStrings.CompletedList.completed(dateString:)();
        v74 = v73;

        v75 = v95;
        *v95 = v72;
        *(v75 + 1) = v74;
        v97 = *(v15 + 104);
        v97();
        v76 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = sub_100547260(0, v76[2] + 1, 1, v76);
        }

        v78 = v76[2];
        v77 = v76[3];
        if (v78 >= v77 >> 1)
        {
          v76 = sub_100547260(v77 > 1, v78 + 1, 1, v76);
        }

        v76[2] = v78 + 1;
        v80 = *(v15 + 32);
        v79 = v15 + 32;
        v81 = (*(v79 + 48) + 32) & ~*(v79 + 48);
        v82 = *(v79 + 40);
        v83 = v95;
        v95 = v80;
        (v80)(v76 + v81 + v82 * v78, v83, v14);
        v84 = static TTRLocalizableStrings.CompletedList.completed(dateString:)();
        v86 = v85;

        v87 = v96;
        *v96 = v84;
        v87[1] = v86;
        v97();
        v89 = v76[2];
        v88 = v76[3];
        if (v89 >= v88 >> 1)
        {
          v76 = sub_100547260(v88 > 1, v89 + 1, 1, v76);
        }

        v76[2] = v89 + 1;
        (v95)(v76 + v81 + v89 * v82, v96, v14);
        v109 = v76;
        v38 = v108;
      }

      else
      {
      }
    }
  }

  v90 = type metadata accessor for TTRRemindersListViewModel.Item();
  v91 = *(v90 - 8);
  v92 = v99;
  (*(v91 + 16))(v99, v38, v90);
  (*(v91 + 56))(v92, 0, 1, v90);
  (*(v100 + 16))(v101, v104, v102);
  sub_10000794C(v105, v103, &unk_100786490);
  v93 = TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)();
  (*(*a3 + 264))(v93);
  TTRRemindersListViewModel.Reminder.style.setter();
  return sub_100004758(v110);
}

uint64_t sub_1005807E0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:) || v7 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (qword_100767468 == -1)
    {
LABEL_7:
      v9 = type metadata accessor for Logger();
      sub_100003E30(v9, qword_10078D7D8);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected item type: section", v12, 2u);
      }

      return 0;
    }

LABEL_26:
    swift_once();
    goto LABEL_7;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v7 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:))
  {
    goto LABEL_13;
  }

  if (v7 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  if (v7 != enum case for TTRRemindersListViewModel.Item.completed(_:) && v7 != enum case for TTRRemindersListViewModel.Item.hashtags(_:) && v7 != enum case for TTRRemindersListViewModel.Item.templateStatus(_:) && v7 != enum case for TTRRemindersListViewModel.Item.tip(_:))
  {
    if (v7 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v7 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      return 1;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_26;
  }

LABEL_13:
  (*(v3 + 8))(v6, v2);
  return 1;
}

uint64_t sub_100580AB0()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListUncommittedReminder.item.getter();
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  (*(v8 + 8))(v10, v7);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
  v11 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  return v11 & 1;
}

id sub_100580C88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree);
  v6 = *(*a1 + 904);

  v7 = v6(a2, v5, &protocol witness table for TTRRemindersListTreeViewModel, 1);

  if (v7)
  {
    result = [objc_opt_self() newObjectID];
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_100580D50(uint64_t a1, char a2, int a3)
{
  v48 = a3;
  v49 = a1;
  v46 = type metadata accessor for TTRRemindersListViewModel.Item();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v45 = &v40 - v6;
  v7 = type metadata accessor for TTREditingStateOption.InputType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for TTREditingStateOption();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v21 = &v40 - v19;
  if (a2)
  {
    (*(v8 + 104))(&v40 - v19, enum case for TTREditingStateOption.InputType.unspecified(_:), v7, v20);
    v22 = enum case for TTREditingStateOption.startsEditing(_:);
    (*(v15 + 104))(v21, enum case for TTREditingStateOption.startsEditing(_:), v14);
  }

  else
  {
    (*(v15 + 104))(&v40 - v19, enum case for TTREditingStateOption.doesNotStartEditing(_:), v14, v20);
    v22 = enum case for TTREditingStateOption.startsEditing(_:);
  }

  (*(v15 + 16))(v17, v21, v14);
  v23 = (*(v15 + 88))(v17, v14);
  if (v23 == v22)
  {
    (*(v15 + 96))(v17, v14);
    v42 = *(v8 + 32);
    v42(v10, v17, v7);
    v24 = v49;
    if (*(v49 + 16))
    {
      type metadata accessor for TTRRemindersListUncommittedReminder();
      v40 = v7;
      v41 = v10;
      v25 = v43;
      TTRRemindersListUncommittedReminder.item.getter();
      v26 = v45;
      v27 = *(v44 + 4);
      v44 = v21;
      v28 = v13;
      v29 = v46;
      v27(v45, v25, v46);
      v30 = sub_100058000(&unk_1007756F0);
      v31 = *(v30 + 48);
      v32 = v28;
      v33 = v29;
      v13 = v28;
      v21 = v44;
      v27(v32, v26, v33);
      v34 = &v13[v31];
      v24 = v49;
      v42(v34, v41, v40);
      v35 = (*(*(v30 - 8) + 56))(v13, 0, 1, v30);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v37 = sub_100058000(&unk_1007756F0);
      v35 = (*(*(v37 - 8) + 56))(v13, 1, 1, v37);
    }

    goto LABEL_10;
  }

  if (v23 == enum case for TTREditingStateOption.doesNotStartEditing(_:))
  {
    v36 = sub_100058000(&unk_1007756F0);
    v35 = (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
    v24 = v49;
LABEL_10:
    __chkstk_darwin(v35);
    v38 = v47;
    *(&v40 - 4) = v24;
    *(&v40 - 3) = v38;
    *(&v40 - 2) = 0;
    *(&v40 - 1) = 0;
    sub_100581B80(v13, v48 & 1, sub_10059C358, (&v40 - 6), static TTRSmartListFilterEditorViewModel.HelpTopic.__derived_enum_equals(_:_:), 0);
    sub_1000079B4(v13, &qword_10076E0D0);
    return (*(v15 + 8))(v21, v14);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100581360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v37 = a3;
  v35 = a2;
  v42 = type metadata accessor for TTRRemindersListViewModel.Item();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  __chkstk_darwin(v9);
  v40 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_10078E0C0);
  v34 = *(v12 - 8);
  v13 = v34;
  __chkstk_darwin(v12);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v19 = *a1;
  v18 = *(a1 + 8);
  v20 = *(sub_100058000(&qword_10078E110) + 48);
  sub_10000794C(v35, v17, &qword_100772140);
  *&v17[v20] = v18;
  (*(v13 + 104))(v17, enum case for TTRTreeStorageTemporaryNodeLocation.atIndexOfParent<A>(_:), v12);
  v21 = v19;
  v22 = [v21 objectID];
  v23 = v40;
  v31 = v17;
  sub_10057C4B4(v22, v40);

  (*(v10 + 16))(v8, v23, v9);
  v24 = v41;
  v25 = v42;
  (*(v41 + 104))(v8, enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:), v42);
  v37 = *(v24 + 16);
  v26 = v38;
  v37(v38, v8, v25);
  type metadata accessor for TTRRemindersListEditingSessionState();
  swift_allocObject();
  v27 = v21;
  TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)();
  v28 = v34;
  (*(v34 + 16))(v36, v17, v12);
  v29 = v42;
  v37(v26, v8, v42);
  TTRRemindersListUncommittedReminder.init(location:item:editingSessionState:)();

  (*(v41 + 8))(v8, v29);
  (*(v33 + 8))(v40, v32);
  return (*(v28 + 8))(v31, v12);
}

uint64_t sub_100581774(void *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v27 = a2;
  v24 = a1;
  v7 = type metadata accessor for REMRemindersListDataView.Diff();
  __chkstk_darwin(v7 - 8);
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v25 = *(updated - 8);
  v26 = updated;
  __chkstk_darwin(updated);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v15 = *(a5 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree);
  swift_retain_n();
  v16 = TTRRemindersListTreeViewModel.copy()();

  *(a5 + v14) = v16;

  if (a3(v16))
  {
    sub_10000794C(v24, v13, &qword_10076E0D0);
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
        v24 = v23;
      }

      else
      {
        v24 = &_swiftEmptySetSingleton;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }
    }

    else
    {
      v24 = &_swiftEmptySetSingleton;
    }

    v17 = *(sub_100058000(&qword_10078E048) + 48);
    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();

    TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
    v10[v17] = v27 & 1;
    (*(v25 + 104))(v10, enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:), v26);
    type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
    swift_allocObject();

    v18 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
    v19 = a5 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = *(v19 + 8);
      ObjectType = swift_getObjectType();
      (*(v20 + 72))(v18, ObjectType, v20);
      swift_unknownObjectRelease();
    }

    sub_10057C1B0(0);
  }

  else
  {

    *(a5 + v14) = v15;
  }
}

uint64_t sub_100581B80(void *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = v6;
  v31 = a6;
  v32 = a5;
  v30 = a2;
  v27 = a1;
  v9 = type metadata accessor for REMRemindersListDataView.Diff();
  __chkstk_darwin(v9 - 8);
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v28 = *(updated - 8);
  v29 = updated;
  __chkstk_darwin(updated);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
  v17 = *(v6 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree);
  swift_retain_n();
  v18 = TTRRemindersListTreeViewModel.copy()();

  *(v6 + v16) = v18;

  if (a3(v18))
  {
    sub_10000794C(v27, v15, &qword_10076E0D0);
    if (_swiftEmptyArrayStorage >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
        v27 = v26;
      }

      else
      {
        v27 = &_swiftEmptySetSingleton;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(_swiftEmptyArrayStorage);
      }
    }

    else
    {
      v27 = &_swiftEmptySetSingleton;
    }

    v19 = *(sub_100058000(&qword_10078E048) + 48);
    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();

    TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
    v12[v19] = v30 & 1;
    (*(v28 + 104))(v12, enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:), v29);
    type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
    swift_allocObject();

    v20 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
    v21 = v7 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = *(v21 + 8);
      ObjectType = swift_getObjectType();
      (*(v23 + 72))(v20, ObjectType, v23);
      Strong = swift_unknownObjectRelease();
    }

    if (v32(Strong))
    {
      sub_10057C1B0(0);
    }
  }

  else
  {

    *(v6 + v16) = v17;
  }
}

BOOL sub_100581FA0()
{

  v0 = TTRRemindersListTreeViewModel.hasLoadedReminderItems(with:)();

  return (v0 & 1) == 0;
}

uint64_t sub_100582000@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListTreeViewModel.RecurrentReminderReplacement.original.getter();
  v6 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t sub_1005820E8(char a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v4 - 8);
  v43 = &v38 - v5;
  v6 = type metadata accessor for REMRemindersListDataView.Diff();
  __chkstk_darwin(v6 - 8);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v9 = *(updated - 8);
  v10 = __chkstk_darwin(updated);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - v13;
  if (qword_100767468 != -1)
  {
    v36 = v12;
    swift_once();
    v12 = v36;
  }

  v44 = v12;
  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_10078D7D8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v45 = v20;
    *v19 = 136315138;
    v21 = _typeName(_:qualified:)();
    v23 = sub_100004060(v21, v22, &v45);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: recreating presentationTree", v19, 0xCu);
    sub_100004758(v20);

    a1 = v18;
  }

  v24 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;

  v25 = sub_100585DF8();
  v26 = TTRRemindersListTreeViewModel.replacingPresentationTree(with:)();
  sub_1000301AC(v25);

  sub_10057AB60(v26);
  if (a1)
  {
    v41 = *(v2 + v24);
    v39 = v9;
    if (&_swiftEmptyArrayStorage >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();

      if (v37)
      {
        sub_100599F5C(&_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(&_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(&_swiftEmptyArrayStorage);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_100599F5C(&_swiftEmptyArrayStorage);
      }
    }

    else
    {
    }

    v27 = *(sub_100058000(&qword_10078E048) + 48);
    REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
    TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
    v14[v27] = 1;
    v28 = enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:);
    v9 = v39;
  }

  else
  {
    v28 = enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:);
  }

  v29 = v44;
  (*(v9 + 104))(v14, v28, v44);
  v30 = sub_100058000(&unk_1007756F0);
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  (*(v9 + 16))(v42, v14, v29);
  type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
  swift_allocObject();

  v31 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
  *(v2 + v24) = v26;

  v32 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    (*(v33 + 72))(v31, ObjectType, v33);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return (*(v9 + 8))(v14, v29);
}

uint64_t sub_1005826E8()
{
  sub_10056FD38();

  return swift_deallocClassInstance();
}

void sub_100582768()
{
  type metadata accessor for TTRListType.SortingCapability();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
    if (v1 <= 0x3F)
    {
      sub_1005828C8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1005828C8()
{
  if (!qword_100784500)
  {
    type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100784500);
    }
  }
}

uint64_t getEnumTagSinglePayload for TTRRemindersListViewModelSource.NextDataModelUpdateOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRRemindersListViewModelSource.NextDataModelUpdateOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

char *sub_100582A3C(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    switch(EnumCaseMultiPayload)
    {
      case 4:
        v12 = *a2;
        v13 = a2[1];
        *a1 = v12;
        *(a1 + 1) = v13;
        v14 = v12;
        v15 = v13;
        goto LABEL_19;
      case 5:
        v18 = *a2;
        v19 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v19;
        v20 = a2[2];
        *(a1 + 2) = v20;
        v21 = v18;
        v22 = v19;
        v23 = v20;
        goto LABEL_19;
      case 6:
        v11 = type metadata accessor for TTRSection();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        goto LABEL_19;
    }
  }

  else if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

void sub_100582C1C(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2 && EnumCaseMultiPayload != 3)
    {
      return;
    }

    v3 = *a1;
    goto LABEL_15;
  }

  switch(EnumCaseMultiPayload)
  {
    case 4:

      v3 = *(a1 + 8);
LABEL_15:

      return;
    case 5:

      v3 = *(a1 + 16);
      goto LABEL_15;
    case 6:
      v4 = type metadata accessor for TTRSection();
      v5 = *(*(v4 - 8) + 8);

      v5(a1, v4);
      break;
  }
}

void **sub_100582D10(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    switch(EnumCaseMultiPayload)
    {
      case 4:
        v10 = *a2;
        v11 = a2[1];
        *a1 = v10;
        a1[1] = v11;
        v12 = v10;
        v13 = v11;
        goto LABEL_17;
      case 5:
        v16 = *a2;
        v17 = a2[1];
        *a1 = *a2;
        a1[1] = v17;
        v18 = a2[2];
        a1[2] = v18;
        v19 = v16;
        v20 = v17;
        v21 = v18;
        goto LABEL_17;
      case 6:
        v9 = type metadata accessor for TTRSection();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        goto LABEL_17;
    }
  }

  else if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_17:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void **sub_100582EB0(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    switch(EnumCaseMultiPayload)
    {
      case 4:
        v10 = *a2;
        *a1 = *a2;
        v11 = a2[1];
        a1[1] = v11;
        v12 = v10;
        v13 = v11;
        goto LABEL_18;
      case 5:
        v16 = *a2;
        *a1 = *a2;
        v17 = a2[1];
        a1[1] = v17;
        v18 = a2[2];
        a1[2] = v18;
        v19 = v16;
        v20 = v17;
        v21 = v18;
        goto LABEL_18;
      case 6:
        v9 = type metadata accessor for TTRSection();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
        goto LABEL_18;
    }
  }

  else if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

void *sub_1005830A4(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = type metadata accessor for TTRSection();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_100583174(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTarget);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v6 = type metadata accessor for TTRSection();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_100583268()
{
  result = type metadata accessor for TTRSection();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_100583328(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = &v13[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v14 = *(sub_100058000(&unk_1007759C0) + 48);
      v15 = type metadata accessor for TTRSection();
      (*(*(v15 - 8) + 16))(&a1[v14], &a2[v14], v15);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v7 - 8) + 64));
    }

    else
    {
      v9 = *a2;
      *a1 = *a2;
      v10 = v9;
      v11 = *(sub_100058000(&qword_100770AB8) + 48);
      v12 = type metadata accessor for TTRSection();
      (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
      swift_storeEnumTagMultiPayload();
    }

    a1[*(a3 + 20)] = a2[*(a3 + 20)];
  }

  return a1;
}

uint64_t sub_100583504(id *a1)
{
  type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = &unk_1007759C0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v3 = &qword_100770AB8;
  }

  v4 = *(sub_100058000(v3) + 48);
  v5 = type metadata accessor for TTRSection();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_1005835C8(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v12 = *(sub_100058000(&unk_1007759C0) + 48);
    v13 = type metadata accessor for TTRSection();
    (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    v10 = *(sub_100058000(&qword_100770AB8) + 48);
    v11 = type metadata accessor for TTRSection();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    swift_storeEnumTagMultiPayload();
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_100583738(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
    v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v12 = *(sub_100058000(&unk_1007759C0) + 48);
      v13 = type metadata accessor for TTRSection();
      (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      v8 = *a2;
      *a1 = *a2;
      v9 = v8;
      v10 = *(sub_100058000(&qword_100770AB8) + 48);
      v11 = type metadata accessor for TTRSection();
      (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
      swift_storeEnumTagMultiPayload();
    }
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t sub_1005838CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10058392C(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v10 = *(sub_100058000(&unk_1007759C0) + 48);
    v11 = type metadata accessor for TTRSection();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    swift_storeEnumTagMultiPayload();
  }

  else if (EnumCaseMultiPayload)
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  else
  {
    *a1 = *a2;
    v8 = *(sub_100058000(&qword_100770AB8) + 48);
    v9 = type metadata accessor for TTRSection();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    swift_storeEnumTagMultiPayload();
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_100583A98(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1005838CC(a1, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
    v6 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v10 = *(sub_100058000(&unk_1007759C0) + 48);
      v11 = type metadata accessor for TTRSection();
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload)
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }

    else
    {
      *a1 = *a2;
      v8 = *(sub_100058000(&qword_100770AB8) + 48);
      v9 = type metadata accessor for TTRSection();
      (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
      swift_storeEnumTagMultiPayload();
    }
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_100583C90(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = &v12[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v13 = *(sub_100058000(&unk_1007759C0) + 48);
    v14 = type metadata accessor for TTRSection();
    (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
    v10 = *(sub_100058000(&qword_100770AB8) + 48);
    v11 = type metadata accessor for TTRSection();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v16 = *(v6 + 64);

  return memcpy(a1, a2, v16);
}

uint64_t sub_100583E34(id *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v3 = &unk_1007759C0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v3 = &qword_100770AB8;
  }

  v4 = *(sub_100058000(v3) + 48);
  v5 = type metadata accessor for TTRSection();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_100583EE8(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(sub_100058000(&unk_1007759C0) + 48);
    v12 = type metadata accessor for TTRSection();
    (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
    v9 = *(sub_100058000(&qword_100770AB8) + 48);
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *sub_10058404C(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(sub_100058000(&unk_1007759C0) + 48);
    v12 = type metadata accessor for TTRSection();
    (*(*(v12 - 8) + 16))(&a1[v11], &a2[v11], v12);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
    v9 = *(sub_100058000(&qword_100770AB8) + 48);
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

char *sub_1005841D4(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v9 = *(sub_100058000(&unk_1007759C0) + 48);
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(sub_100058000(&qword_100770AB8) + 48);
    v8 = type metadata accessor for TTRSection();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

char *sub_100584334(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v9 = *(sub_100058000(&unk_1007759C0) + 48);
    v10 = type metadata accessor for TTRSection();
    (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    v7 = *(sub_100058000(&qword_100770AB8) + 48);
    v8 = type metadata accessor for TTRSection();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1005844B8()
{
  result = type metadata accessor for TTRSection();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v4 = &v3;
    swift_getTupleTypeLayout2();
    v5 = &v2;
    v6 = &value witness table for Builtin.Int64 + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_100584588(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      goto LABEL_9;
    case 2:
      v10 = *a2;
      v11 = a2[1];
      *a1 = v10;
      *(a1 + 1) = v11;
      v12 = v10;
      v13 = v11;
      goto LABEL_9;
    case 1:
      v8 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v17 = *(v6 + 64);

  return memcpy(a1, a2, v17);
}

void sub_1005846E4(uint64_t a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v5 = *a1;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v3 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        v4 = *(*(v3 - 8) + 8);

        v4(a1, v3);
      }

      return;
    }

    v5 = *(a1 + 8);
  }
}

void **sub_1005847A0(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v12 = *a2;
      *a1 = *a2;
      v13 = v12;
      goto LABEL_7;
    case 2:
      v8 = *a2;
      v9 = a2[1];
      *a1 = v8;
      a1[1] = v9;
      v10 = v8;
      v11 = v9;
      goto LABEL_7;
    case 1:
      v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void **sub_1005848BC(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v12 = *a2;
      *a1 = *a2;
      v13 = v12;
      goto LABEL_8;
    case 2:
      v8 = *a2;
      *a1 = *a2;
      v9 = a2[1];
      a1[1] = v9;
      v10 = v8;
      v11 = v9;
      goto LABEL_8;
    case 1:
      v7 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void *sub_100584A24(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

void *sub_100584AF4(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1005838CC(a1, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

uint64_t sub_100584BE8()
{
  result = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_100584E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_dataModelSource + 8);
  ObjectType = swift_getObjectType();
  return a3(ObjectType, v5);
}

uint64_t sub_10058500C()
{
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v1 = *(updated - 8);
  __chkstk_darwin(updated);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_100058000(&unk_1007756F0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:), updated);
  type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
  swift_allocObject();

  return TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
}

void *sub_1005851B8(void *a1)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v5 = sub_10013F404(a1, v4);

  return v5;
}

uint64_t sub_100585248(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = a1;
  (*(v7 + 104))(v10, *a4, v6, v8);

  v11 = a1;
  TTRRemindersListTreeViewModel.sectionItem(with:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100585454(uint64_t a1, int a2)
{
  v4 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  v7 = sub_100058000(&unk_1007756F0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v12 = a1;
  v10 = a1;
  sub_100581B80(v6, a2, sub_10059A6DC, v11, sub_10059A6E0, v9);
  return sub_1000079B4(v6, &qword_10076E0D0);
}

uint64_t sub_100585628()
{

  v0 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

  return v0;
}

uint64_t sub_100585760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = sub_100058000(&qword_10076FA28);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v17 - v12;
  sub_10000794C(a2, v6, &qword_100772140);
  type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);

  TTRDerivedTreeLocation.init(parent:index:)();
  TTRRemindersListTreeViewModel.unadjustInsertionLocation(_:forMoving:)();

  v14 = *(v8 + 8);
  v14(v10, v7);
  v15 = TTRDerivedTreeLocation.index.getter();
  v14(v13, v7);
  return v15;
}

uint64_t sub_100585A78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  v4 = type metadata accessor for TTRListType.SortingCapability();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100585B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(v3 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_dataModelSource + 8);
  ObjectType = swift_getObjectType();
  return a3(ObjectType, v5);
}

uint64_t sub_100585CD0(Swift::Bool a1)
{

  TTRRemindersListCurrentTipCapability.requestSetCurrentTipHidden(_:)(a1);
}

uint64_t sub_100585D20()
{

  TTRRemindersListCurrentTipCapability.requestDismissTip()();
}

uint64_t sub_100585D6C()
{

  v0 = TTRRemindersListTreeViewModel.editingSessionState(for:)();

  if (!v0)
  {
    return 0;
  }

  v1 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();

  return v1;
}

uint64_t (*sub_100585DF8())(uint64_t a1)
{
  v1 = v0;
  v2 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    v14 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    sub_10000794C(v1 + v14, v4, &unk_10078A380);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      v24 = *(v6 + 32);
      v25 = v24(v11, v4, v5);
      v26 = (*(*v1 + 1048))(v25);
      ObjectType = swift_getObjectType();
      (*(v13 + 24))(v33, ObjectType, v13);
      swift_unknownObjectRelease();
      sub_100005FD0(v33, v32);
      v24(v9, v11, v5);
      v28 = (*(v6 + 80) + 56) & ~*(v6 + 80);
      v29 = swift_allocObject();
      sub_100005FD0(v32, v29 + 16);
      v24((v29 + v28), v9, v5);
      v30 = (v29 + v28 + v7);
      *v30 = v26;
      v30[1] = HIBYTE(v26) & 1;
      return sub_10059A4D0;
    }

    swift_unknownObjectRelease();
    sub_1000079B4(v4, &unk_10078A380);
  }

  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003E30(v15, qword_10078D7D8);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v33[0] = v19;
    *v18 = 136315138;
    v20 = _typeName(_:qualified:)();
    v22 = sub_100004060(v20, v21, v33);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: failed to provide presentationTreeCreator", v18, 0xCu);
    sub_100004758(v19);
  }

  return 0;
}

uint64_t sub_100586238(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v121 = a7;
  v122 = a6;
  v135 = a5;
  v118 = a4;
  v119 = a3;
  v10 = sub_100058000(&qword_100770AA8);
  __chkstk_darwin(v10 - 8);
  v117 = &v109 - v11;
  v116 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v13 - 8);
  v124 = &v109 - v14;
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType();
  v132 = *(updated - 8);
  v15 = __chkstk_darwin(updated);
  v123 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v139 = &v109 - v17;
  v18 = sub_100058000(&qword_100772140);
  v19 = __chkstk_darwin(v18 - 8);
  v127 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v114 = &v109 - v22;
  v23 = __chkstk_darwin(v21);
  v130 = &v109 - v24;
  __chkstk_darwin(v23);
  v140 = &v109 - v25;
  v129 = type metadata accessor for REMRemindersListDataView.Diff();
  v128 = *(v129 - 8);
  v26 = __chkstk_darwin(v129);
  v110 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v134 = &v109 - v28;
  v144 = type metadata accessor for TTRRemindersListViewModel.Item();
  v131 = *(v144 - 8);
  v29 = __chkstk_darwin(v144);
  v113 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v142 = &v109 - v31;
  v143 = type metadata accessor for TTRRemindersListTreeViewModel.RecurrentReminderReplacement();
  v111 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TTRRemindersListLayout();
  v133 = *(v33 - 8);
  v34 = __chkstk_darwin(v33);
  v36 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v137 = &v109 - v37;
  v38 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v38 - 8);
  v40 = &v109 - v39;
  if (a1)
  {
    *(v7 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) = 1;
  }

  sub_10056F540(a2);
  v41 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  v42 = v7 + v41;
  v43 = v7;
  sub_10000794C(v42, v40, &unk_10078A380);
  v44 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v45 = (*(*(v44 - 8) + 48))(v40, 1, v44);
  sub_1000079B4(v40, &unk_10078A380);
  v46 = v132;
  if (v45 == 1)
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100003E30(v47, qword_10078D7D8);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Unexpected: a non-nil ListInfo should be set by the time the tree is updated.", v50, 2u);
    }
  }

  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.layoutContext.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    (*(v133 + 32))(v137, v36, v33);
  }

  else
  {
    (*(v133 + 104))(v137, enum case for TTRRemindersListLayout.list(_:), v33);
  }

  v51 = v131;
  v52 = v130;
  v53 = v43 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v54 = *(v53 + 8);
    ObjectType = swift_getObjectType();
    (*(v54 + 40))(v137, 0, 0, ObjectType, v54);
    swift_unknownObjectRelease();
  }

  v120 = v53;
  v56 = &_swiftEmptySetSingleton;
  v146 = &_swiftEmptySetSingleton;
  v136 = (v43 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions);
  v57 = *(v43 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions + 2) == 1;
  v138 = v43;
  v125 = v33;
  if (v57)
  {
    v58 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
    swift_beginAccess();
    v59 = *(v43 + v58);
    v60 = *(v59 + 16);
    if (v60)
    {
      v109 = v58;
      v61 = *(v111 + 16);
      v62 = v59 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
      v63 = *(v111 + 72);
      v64 = (v111 + 8);
      v65 = (v51 + 8);
      v111 = v59;

      do
      {
        v66 = v141;
        v67 = v143;
        v61(v141, v62, v143);
        v68 = v142;
        TTRRemindersListTreeViewModel.RecurrentReminderReplacement.original.getter();
        (*v64)(v66, v67);
        v69 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
        (*v65)(v68, v144);
        if (v69)
        {
          sub_10001DFB0(&v145, v69);
        }

        v62 += v63;
        --v60;
      }

      while (v60);

      v43 = v138;
      v58 = v109;
      v56 = v146;
      v46 = v132;
      v51 = v131;
      v52 = v130;
    }

    *(v43 + v58) = _swiftEmptyArrayStorage;

    v70 = v43;
    v71 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_reminderCompletionViewModelOverrides;
    swift_beginAccess();
    *(v70 + v71) = &_swiftEmptyDictionarySingleton;
  }

  if ((v56 & 0xC000000000000001) != 0)
  {
    __CocoaSet.count.getter();
  }

  v72 = v119();
  if (v136[1] == 1)
  {

    v73 = TTRRemindersListTreeViewModel.transferTemporaryItemsAndAuxiliaryData(to:)();

    sub_10057D710(v73);
    v56 = v146;
  }

  sub_10057AB60(v72);
  v74 = REMRemindersListDataView.Diff.updatedReminderObjectIDs.getter();
  v75 = sub_10056F238(v56);
  sub_10059A2BC(v75, v74);

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    v46 = v132;
  }

  v76 = v144;
  REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
  v77 = v140;
  (*(v51 + 56))(v140, 1, 1, v76);
  sub_10000794C(v121, v52, &qword_100772140);
  v78 = *(v51 + 48);
  if (v78(v52, 1, v76) == 1)
  {
    sub_1000079B4(v52, &qword_100772140);
  }

  else
  {
    v79 = v113;
    (*(v51 + 32))(v113, v52, v76);
    v80 = v114;
    TTRRemindersListTreeViewModel.uncommittedOrPlaceholderReminder(atTheEndOfSection:)();
    (*(v51 + 8))(v79, v76);
    sub_1000079B4(v140, &qword_100772140);
    v81 = v80;
    v46 = v132;
    v77 = v140;
    sub_100016588(v81, v140, &qword_100772140);
  }

  v82 = v127;
  if ((v122 & 1) != 0 || *v136 != 1)
  {
    v85 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.reload(_:);
  }

  else
  {
    v83 = *(sub_100058000(&qword_10078E048) + 48);
    (*(v128 + 16))(v110, v134, v129);

    v84 = v139;
    v82 = v127;
    v77 = v140;
    TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)();
    v84[v83] = 1;
    v85 = &enum case for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType.incremental(_:);
  }

  v86 = v46;
  v87 = updated;
  (*(v46 + 104))(v139, *v85, updated);
  sub_10000794C(v77, v82, &qword_100772140);
  v88 = 1;
  v89 = v144;
  v90 = v78(v82, 1, v144);
  v91 = sub_100058000(&unk_1007756F0);
  v92 = v91;
  v57 = v90 == 1;
  v93 = v124;
  if (!v57)
  {
    v94 = *(v91 + 48);
    (*(v131 + 32))(v124, v82, v89);
    v95 = enum case for TTREditingStateOption.InputType.unspecified(_:);
    v96 = type metadata accessor for TTREditingStateOption.InputType();
    (*(*(v96 - 8) + 104))(&v93[v94], v95, v96);
    v88 = 0;
  }

  (*(*(v92 - 8) + 56))(v93, v88, 1, v92);

  (*(v86 + 16))(v123, v139, v87);
  type metadata accessor for TTRRemindersListTreeViewModelUpdateContext();
  swift_allocObject();

  v97 = TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)();
  *(v138 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree) = v72;

  v98 = v120;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v99 = *(v98 + 8);
    v100 = swift_getObjectType();
    (*(v99 + 72))(v97, v100, v99);
    swift_unknownObjectRelease();
  }

  v101 = *(REMRemindersListDataView.Diff.newReminderMembershipsViaAutomation.getter() + 16);

  if (v101)
  {
    REMRemindersListDataView.Diff.newReminderMembershipsViaAutomation.getter();
    v102 = v117;
    sub_100587580(v117);

    if ((*(v115 + 48))(v102, 1, v116) == 1)
    {
      sub_1000079B4(v102, &qword_100770AA8);
    }

    else
    {
      v103 = v102;
      v104 = v112;
      sub_10059A3B0(v103, v112, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v105 = *(v98 + 8);
        v106 = swift_getObjectType();
        (*(v105 + 136))(v104, v106, v105);
        swift_unknownObjectRelease();
      }

      sub_1005838CC(v104, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary);
    }
  }

  sub_10057C1B0(0);

  (*(v86 + 8))(v139, v87);
  sub_1000079B4(v140, &qword_100772140);
  (*(v128 + 8))(v134, v129);
  result = (*(v133 + 8))(v137, v125);
  v108 = v136;
  *v136 = 257;
  v108[2] = 0;
  return result;
}

uint64_t sub_1005873D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _BYTE *, uint64_t, uint64_t (*)(uint64_t a1), uint64_t))
{
  type metadata accessor for TTRRemindersListTreeViewModel();
  sub_10000B0D8(a2, v13);
  v8 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_recurrentReminderReplacements;
  swift_beginAccess();
  v9 = *(a3 + v8);

  v10 = sub_100585DF8();
  return a4(a1, v13, v9, v10, v11);
}

BOOL sub_100587484()
{
  v0 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  TTRRemindersListTreeViewModel.insert(_:)();
  v3 = sub_100058000(&qword_100773320);
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) != 1;
  sub_1000079B4(v2, &qword_100773318);
  return v4;
}

uint64_t sub_100587580@<X0>(uint64_t a1@<X8>)
{
  v159 = a1;
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v151 = &v141 - v2;
  v3 = sub_100058000(&unk_100775960);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v147 = &v141 - v7;
  v8 = type metadata accessor for TTRSection();
  v153 = *(v8 - 8);
  v154 = v8;
  v9 = __chkstk_darwin(v8);
  v145 = (&v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v146 = &v141 - v11;
  v157 = type metadata accessor for UUID();
  v12 = *(v157 - 8);
  v13 = __chkstk_darwin(v157);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v152 = &v141 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v141 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v141 - v22;
  v24 = __chkstk_darwin(v21);
  v158 = &v141 - v25;
  __chkstk_darwin(v24);
  v155 = &v141 - v26;
  v148 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType(0);
  v27 = __chkstk_darwin(v148);
  v150 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v149 = (&v141 - v29);
  v30 = sub_100058000(&qword_10078E050);
  __chkstk_darwin(v30 - 8);
  v32 = &v141 - v31;
  v33 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v37 = (&v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v39 = &v141 - v38;
  v41 = v40;
  static REMRemindersListDataView.AutoCategorizationMessage.coalesceRecent(encodedMessageStrings:)();
  v42 = *(v34 + 48);
  v160 = v41;
  if (v42(v32, 1, v41) != 1)
  {
    v49 = v160;
    (*(v34 + 32))(v39, v32, v160);
    (*(v34 + 16))(v37, v39, v49);
    v50 = (*(v34 + 88))(v37, v49);
    if (v50 == enum case for REMRemindersListDataView.AutoCategorizationMessage.oneReminderToOneSection(_:))
    {
      v152 = v39;
      v144 = v34;
      (*(v34 + 96))(v37, v160);
      v145 = sub_100058000(&qword_10078E068);
      v51 = *(v145 + 12);
      v52 = v12[4];
      v53 = v155;
      v54 = v157;
      v52(v155, v37, v157);
      v52(v158, (v37 + v51), v54);
      v55 = v12[2];
      v55(v23, v53, v54);
      v56 = [objc_opt_self() cdEntityName];
      if (!v56)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = String._bridgeToObjectiveC()();
      }

      v57 = objc_allocWithZone(REMObjectID);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v142 = [v57 initWithUUID:isa entityName:v56];

      v59 = v12[1];
      v59(v23, v54);
      v55(v20, v158, v54);
      sub_100003540(0, &qword_10076E8E8);
      v60 = [swift_getObjCClassFromMetadata() cdEntityName];
      v61 = v54;
      if (!v60)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = String._bridgeToObjectiveC()();
      }

      v62 = v37 + *(v145 + 16);
      v63 = objc_allocWithZone(REMObjectID);
      v64 = UUID._bridgeToObjectiveC()().super.isa;
      v65 = [v63 initWithUUID:v64 entityName:v60];

      v145 = v59;
      v59(v20, v54);
      v66 = v156;
      swift_getObjectType();
      v67 = v142;
      v68 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.reminder(with:)();
      if (!v68)
      {
        goto LABEL_29;
      }

      v69 = v68;
      v70 = (*(*v66 + 424))();
      v143 = v62;
      if (v70)
      {
        v71 = v70;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v72 = *(v71 + 64);
          ObjectType = swift_getObjectType();
          (*(v72 + 16))(ObjectType, v72);
          swift_unknownObjectRelease();
          v74 = v65;
          v75 = v147;
          TTRSection.init(with:store:)();
          swift_unknownObjectRelease();
          v77 = v153;
          v76 = v154;
          if ((*(v153 + 48))(v75, 1, v154) == 1)
          {

            v61 = v157;
LABEL_28:
            sub_1000079B4(v75, &unk_100775960);
            v62 = v143;
LABEL_29:
            if (qword_100767468 != -1)
            {
              swift_once();
            }

            v105 = type metadata accessor for Logger();
            sub_100003E30(v105, qword_10078D7D8);
            v106 = v65;
            v107 = v67;
            v108 = Logger.logObject.getter();
            v109 = static os_log_type_t.error.getter();

            v110 = os_log_type_enabled(v108, v109);
            v111 = v158;
            v112 = v145;
            if (v110)
            {
              v113 = swift_slowAlloc();
              v114 = swift_slowAlloc();
              *v113 = 138412546;
              *(v113 + 4) = v107;
              *(v113 + 12) = 2112;
              *(v113 + 14) = v106;
              *v114 = v107;
              v114[1] = v106;
              v115 = v106;
              v116 = v107;
              _os_log_impl(&_mh_execute_header, v108, v109, "summarizeAutoCategorizationMessages: could not get reminder or section {reminderObjectID: %@, sectionObjectID: %@}", v113, 0x16u);
              sub_100058000(&unk_10076DF80);
              swift_arrayDestroy();
              v61 = v157;
            }

            v112(v111, v61);
            v112(v155, v61);
            (*(v144 + 8))(v152, v160);
LABEL_47:
            v139 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
            (*(*(v139 - 8) + 56))(v159, 1, 1, v139);
            v140 = type metadata accessor for Date();
            return (*(*(v140 - 8) + 8))(v62, v140);
          }

          v117 = v157;
          v118 = v145;
          v145(v158, v157);
          v118(v155, v117);
          v119 = *(v77 + 32);
          v120 = v146;
          v119(v146, v75, v76);
          v121 = *(sub_100058000(&qword_100770AB8) + 48);
          v100 = v149;
          *v149 = v69;
          v119((v100 + v121), v120, v76);
          v101 = v151;
          v39 = v152;
          v34 = v144;
          goto LABEL_35;
        }

        swift_unknownObjectRelease();
      }

      v75 = v147;
      (*(v153 + 56))(v147, 1, 1, v154);
      goto LABEL_28;
    }

    if (v50 != enum case for REMRemindersListDataView.AutoCategorizationMessage.manyRemindersToOneSection(_:))
    {
      if (v50 != enum case for REMRemindersListDataView.AutoCategorizationMessage.manyRemindersToManySections(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      (*(v34 + 96))(v37, v160);
      v102 = *v37;
      v103 = v37 + *(sub_100058000(&qword_10078E058) + 48);
      v100 = v149;
      v104 = v150;
      *v149 = v102;
      v101 = v151;
      v66 = v156;
      goto LABEL_36;
    }

    v144 = v34;
    (*(v34 + 96))(v37, v160);
    v158 = *v37;
    v78 = sub_100058000(&qword_10078E060);
    v79 = v12;
    v80 = v152;
    v81 = v157;
    (v12[4])(v152, v37 + *(v78 + 48), v157);
    (v12[2])(v15, v80, v81);
    sub_100003540(0, &qword_10076E8E8);
    v82 = [swift_getObjCClassFromMetadata() cdEntityName];
    if (!v82)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = String._bridgeToObjectiveC()();
      v79 = v12;
    }

    v83 = v37 + *(v78 + 64);
    v84 = objc_allocWithZone(REMObjectID);
    v85 = UUID._bridgeToObjectiveC()().super.isa;
    v86 = [v84 initWithUUID:v85 entityName:v82];

    v87 = v79[1];
    v88 = v87(v15, v81);
    v89 = (*(*v156 + 424))(v88);
    v143 = v83;
    if (v89)
    {
      v90 = v89;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v91 = v39;
        v92 = *(v90 + 64);
        v93 = swift_getObjectType();
        (*(v92 + 16))(v93, v92);
        swift_unknownObjectRelease();
        v94 = v86;
        v39 = v91;
        v81 = v157;
        TTRSection.init(with:store:)();
        swift_unknownObjectRelease();
        v96 = v153;
        v95 = v154;
        if ((*(v153 + 48))(v6, 1, v154) != 1)
        {
          v87(v152, v81);

          v97 = *(v96 + 32);
          v98 = v145;
          v97(v145, v6, v95);
          v99 = *(sub_100058000(&unk_1007759C0) + 48);
          v100 = v149;
          *v149 = v158;
          v97((v100 + v99), v98, v95);
          v34 = v144;
          v101 = v151;
          v66 = v156;
LABEL_35:
          v104 = v150;
          v103 = v143;
LABEL_36:
          swift_storeEnumTagMultiPayload();
          v122 = type metadata accessor for Date();
          (*(*(v122 - 8) + 8))(v103, v122);
          sub_10059A648(v100, v104, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
          v123 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
          swift_beginAccess();
          sub_10000794C(v66 + v123, v101, &unk_10078A380);
          v124 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
          v125 = *(v124 - 8);
          if ((*(v125 + 48))(v101, 1, v124) == 1)
          {
            sub_1005838CC(v100, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
            (*(v34 + 8))(v39, v160);
            sub_1000079B4(v101, &unk_10078A380);
            v126 = 0;
          }

          else
          {
            v126 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
            sub_1005838CC(v100, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
            (*(v34 + 8))(v39, v160);
            (*(v125 + 8))(v101, v124);
          }

          v127 = v159;
          sub_10059A3B0(v104, v159, type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary.ChangeSummaryType);
          v128 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
          *(v127 + *(v128 + 20)) = v126 & 1;
          return (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
        }

LABEL_42:
        sub_1000079B4(v6, &unk_100775960);
        v129 = v144;
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v130 = type metadata accessor for Logger();
        sub_100003E30(v130, qword_10078D7D8);
        v131 = v86;
        v132 = Logger.logObject.getter();
        v133 = static os_log_type_t.error.getter();

        v134 = os_log_type_enabled(v132, v133);
        v62 = v143;
        if (v134)
        {
          v135 = swift_slowAlloc();
          v136 = v39;
          v137 = swift_slowAlloc();
          *v135 = 138412290;
          *(v135 + 4) = v131;
          *v137 = v131;
          v138 = v131;
          _os_log_impl(&_mh_execute_header, v132, v133, "summarizeAutoCategorizationMessages: could not get section {sectionObjectID: %@}", v135, 0xCu);
          sub_1000079B4(v137, &unk_10076DF80);
          v39 = v136;
          v81 = v157;

          v129 = v144;
        }

        v87(v152, v81);
        (*(v129 + 8))(v39, v160);
        goto LABEL_47;
      }

      swift_unknownObjectRelease();
    }

    (*(v153 + 56))(v6, 1, 1, v154);
    goto LABEL_42;
  }

  sub_1000079B4(v32, &qword_10078E050);
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100003E30(v43, qword_10078D7D8);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v44, v45, "summarizeAutoCategorizationMessages: error coalescing encoded AutoCategorization message strings", v46, 2u);
  }

  v47 = type metadata accessor for TTRRemindersListViewModelMembershipChangeSummary(0);
  return (*(*(v47 - 8) + 56))(v159, 1, 1, v47);
}

uint64_t sub_100588848()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for REMRemindersListDataView.Diff();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  if (_swiftEmptyArrayStorage >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    swift_retain_n();
    if (v14)
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_100403F5C(_swiftEmptyArrayStorage);
    }
  }

  else
  {
    swift_retain_n();
  }

  REMRemindersListDataView.Diff.init(updatedReminderObjectIDs:insertedReminderObjectIDs:updatedListObjectIDs:updatedSectionObjectIDs:newReminderMembershipsViaAutomation:)();
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);

  sub_10059B024(0, v10, v7, 0, v3, v0, v0);

  sub_1000079B4(v3, &qword_100772140);
  (*(v5 + 8))(v7, v4);
  sub_1000079B4(v10, &unk_10078A380);
}

uint64_t sub_100588BAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v30[1] = a1;
  v6 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v6 - 8);
  v8 = v30 - v7;
  v9 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = __chkstk_darwin(v9);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v35 = 0;
    v17 = *(v10 + 16);
    v16 = v10 + 16;
    v15 = v17;
    v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v19 = (v16 - 8);
    v36 = *(v16 + 56);
    v31 = v9;
    v17(v13, v18, v9, v11);
    while (1)
    {
      TTRRemindersListTreeViewModel.insert(_:)();
      v21 = sub_100058000(&qword_100773320);
      v22 = (*(*(v21 - 8) + 48))(v8, 1, v21);
      sub_1000079B4(v8, &qword_100773318);
      if (v22 == 1)
      {
        v23 = v15;
        v24 = v16;
        if (qword_100767468 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100003E30(v25, qword_10078D7D8);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Failed to insert uncommittedReminder", v28, 2u);
        }

        v16 = v24;
        v15 = v23;
        v9 = v31;
      }

      else
      {
        sub_100588EB0(v13, v33);
        v35 = 1;
      }

      (*v19)(v13, v9);
      v18 += v36;
      if (!--v14)
      {
        break;
      }

      v15(v13, v18, v9, v20);
    }
  }

  else
  {
    v35 = 0;
  }

  return v35 & 1;
}

void sub_100588EB0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (TTRRemindersListUncommittedReminder.editingSessionState.getter())
  {
    v8 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();

    TTRRemindersListUncommittedReminder.item.getter();
    type metadata accessor for TTRReminderEditor();
    sub_10059A488(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
    v9 = v8;
    TTRUndoableEditing.init(changeItem:undoManager:)();
    v10 = v16;
    (*(*v2 + 752))(v7, v16);
    if (a2)
    {
      a2(v10);

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_10078D7D8);
    v15 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v15, v12, "Missing reminderChangeItem for presetUncommittedReminder", v13, 2u);
    }

    v14 = v15;
  }
}

uint64_t sub_100589194(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 0;
  }

  v13 = *(v7 + 16);
  v12 = v7 + 16;
  v24 = v13;
  v14 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
  v22 = *(v12 + 56);
  v15 = (v3 + 88);
  v23 = enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:);
  v16 = (v12 - 8);
  v17 = (v3 + 8);
  while (1)
  {
    v18 = v12;
    v24(v10, v14, v6, v8);
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v19 = (*v15)(v5, v2);
    if (v19 != v23)
    {
      break;
    }

    (*v16)(v10, v6);
    (*v17)(v5, v2);
    v14 += v22;
    --v11;
    v12 = v18;
    if (!v11)
    {
      return 0;
    }
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*v16)(v10, v6);
    (*v17)(v5, v2);
    return 1;
  }

  if (v19 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    (*v16)(v10, v6);
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100589444(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListDataModelSourceListReloadReason();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.sourceIdentityChanged(_:))
  {
    v10 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      LOBYTE(v11) = (*(v11 + 16))(ObjectType, v11);
      swift_unknownObjectRelease();
      v13 = 1;
      if (v11)
      {
        v14 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions;
        *v14 = 0;
        *(v14 + 2) = 1;
        *(v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_receivedFirstUpdateFromDataModelSource) = 0;
        sub_100588848();
      }

      v15 = 0;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.showCompletedChanged(_:))
  {
LABEL_7:
    v15 = 0;
LABEL_8:
    v13 = 1;
LABEL_9:
    v16 = (v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_nextDataModelUpdateOptions);
    *v16 = v15;
    v16[1] = v15;
    v16[2] = v13;
    TTRModuleState.modelWillUnload()();
    return;
  }

  if (v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.showCompletedAllowlistInserted(_:))
  {
    if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.showCompletedAllowlistCleared(_:))
    {
      v15 = 1;
      goto LABEL_8;
    }

    if (v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.currentLocationChange(_:) && v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.groupedStateChanged(_:))
    {
      if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.searchTermChanged(_:))
      {
        goto LABEL_21;
      }

      if (v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.sortingStyleChanged(_:))
      {
        if (v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.hashtagLabelsChanged(_:) || v9 == enum case for TTRRemindersListDataModelSourceListReloadReason.hideEmptySectionsChanged(_:))
        {
          goto LABEL_7;
        }

        if (v9 != enum case for TTRRemindersListDataModelSourceListReloadReason.initial(_:))
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

LABEL_21:
        v15 = 0;
        v13 = 0;
        goto LABEL_9;
      }
    }

    v13 = 0;
    v15 = 1;
    goto LABEL_9;
  }
}

void sub_1005896D4(int a1)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v37 = *(v9 - 8);
  __chkstk_darwin(v9);
  v35 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListLayout();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.layoutContext.getter())
  {
    v34 = v9;
    v15 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = v5;
      v16 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      swift_getObjectType();
      dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
      v17 = *(v16 + 40);
      v18 = v16;
      v5 = v33;
      v17(v14, v36 & 1, 1, ObjectType, v18);
      swift_unknownObjectRelease();
      (*(v12 + 8))(v14, v11);
    }

    v19 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
    swift_beginAccess();
    sub_10000794C(v2 + v19, v8, &unk_10078A380);
    v20 = v37;
    v21 = v34;
    if ((v37)[6](v8, 1, v34) == 1)
    {
      sub_1000079B4(v8, &unk_10078A380);
    }

    else
    {
      v29 = v35;
      (v20)[4](v35, v8, v21);
      (v20)[2](v5, v29, v21);
      (v20[7])(v5, 0, 1, v21);
      sub_10056F540(v5);
      sub_1000079B4(v5, &unk_10078A380);
      (v20[1])(v29, v21);
    }

    sub_1005820E8(0);
    sub_10057C1B0(1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100003E30(v22, qword_10078D7D8);

    v37 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      v26 = _typeName(_:qualified:)();
      v28 = sub_100004060(v26, v27, v38);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v37, v23, "%s: missing layoutContext", v24, 0xCu);
      sub_100004758(v25);
    }

    else
    {
      v30 = v37;
    }
  }
}

uint64_t sub_100589C0C()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 8))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void sub_100589CBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v60 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100003E30(v16, qword_10078D7D8);
  v18 = *(v11 + 16);
  v59 = a1;
  v56 = v18;
  v57 = v11 + 16;
  v18(v15, a1, v10);
  v54 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v21 = os_log_type_enabled(v19, v20);
  v58 = v11;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v53 = v7;
    v23 = v22;
    v51 = swift_slowAlloc();
    v52 = v2;
    v61 = v51;
    *v23 = 136315138;
    sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
    v24 = TTRTreeStorageItem.treeItemDescription.getter();
    v25 = v8;
    v26 = v6;
    v28 = v27;
    v29 = *(v11 + 8);
    v29(v15, v10);
    v30 = sub_100004060(v24, v28, &v61);
    v6 = v26;
    v8 = v25;

    *(v23 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Discard uncommittedSection {item: %s}", v23, 0xCu);
    sub_100004758(v51);

    v7 = v53;
  }

  else
  {

    v29 = *(v11 + 8);
    v29(v15, v10);
  }

  v31 = v59;
  v32 = v60;
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  v33 = (*(v8 + 88))(v32, v7);
  if (v33 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
  {
    sub_100058000(&qword_100772150);
    v34 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10062D400;
    v56(v35 + v34, v31, v10);
    v36 = sub_100058000(&unk_1007756F0);
    v37 = (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
    __chkstk_darwin(v37);
    *(&v50 - 2) = v35;
    __chkstk_darwin(v38);
    *(&v50 - 2) = v35;
    sub_100581B80(v6, 1, sub_10059F0D0, v39, sub_10059F0CC, (&v50 - 4));

    sub_1000079B4(v6, &qword_10076E0D0);
    (*(v8 + 8))(v32, v7);
  }

  else if (v33 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
  {
    v40 = v55;
    v56(v55, v31, v10);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v29;
      v45 = swift_slowAlloc();
      v61 = v45;
      *v43 = 136315138;
      sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
      v46 = TTRTreeStorageItem.treeItemDescription.getter();
      v48 = v47;
      v44(v40, v10);
      v49 = sub_100004060(v46, v48, &v61);

      *(v43 + 4) = v49;
      _os_log_impl(&_mh_execute_header, v41, v42, "Discard uncommittedSection invalid item type {item: %s}", v43, 0xCu);
      sub_100004758(v45);
    }

    else
    {

      v29(v40, v10);
    }
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_10058A394(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v66 = a5;
  v61 = a4;
  v65 = a3;
  v60 = a1;
  v7 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v8 = *(v7 - 8);
  v73 = v7;
  v74 = v8;
  __chkstk_darwin(v7);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v72 = &v60 - v11;
  v12 = sub_100058000(&qword_10076E0D0);
  __chkstk_darwin(v12 - 8);
  v62 = &v60 - v13;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_100058000(&qword_100773320);
  v70 = *(v19 - 8);
  __chkstk_darwin(v19);
  v69 = &v60 - v20;
  v21 = sub_100058000(&qword_10078E0B8);
  __chkstk_darwin(v21 - 8);
  v23 = &v60 - v22;
  v24 = sub_100058000(&qword_10078E0C0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v60 - v26;

  v71 = a2;
  TTRRemindersListTreeViewModel.resolve(_:)();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &qword_10078E0B8;
    v29 = v23;
  }

  else
  {
    (*(v25 + 32))(v27, v23, v24);

    TTRRemindersListTreeViewModel.resolve(_:)();

    v30 = v70;
    if ((*(v70 + 48))(v18, 1, v19) != 1)
    {
      v44 = v5;
      v45 = *(v30 + 32);
      v74 = v19;
      v45(v69, v18, v19);
      v46 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
      v47 = v67;
      (*(*(v46 - 8) + 16))(v67, v60, v46);
      v48 = v63;
      v49 = v64;
      (*(v63 + 104))(v47, enum case for TTRRemindersListViewModel.Item.section(_:), v64);
      v50 = sub_100058000(&unk_1007756F0);
      v51 = v50;
      if (v61)
      {
        v52 = *(v50 + 48);
        v53 = v62;
        (*(v48 + 16))(v62, v47, v49);
        v54 = enum case for TTREditingStateOption.InputType.unspecified(_:);
        v55 = type metadata accessor for TTREditingStateOption.InputType();
        v56 = v54;
        v47 = v67;
        (*(*(v55 - 8) + 104))(&v53[v52], v56, v55);
        v57 = 0;
      }

      else
      {
        v57 = 1;
        v53 = v62;
      }

      v58 = (*(*(v51 - 8) + 56))(v53, v57, 1, v51);
      __chkstk_darwin(v58);
      v59 = v69;
      *(&v60 - 4) = v47;
      *(&v60 - 3) = v59;
      *(&v60 - 2) = v65;
      *(&v60 - 1) = v44;
      sub_100581774(v53, v66 & 1, sub_10059C278, (&v60 - 6), v44);
      sub_1000079B4(v53, &qword_10076E0D0);
      (*(v25 + 8))(v27, v24);
      (*(v48 + 8))(v47, v49);
      (*(v70 + 8))(v59, v74);
      return;
    }

    (*(v25 + 8))(v27, v24);
    v28 = &qword_100773318;
    v29 = v18;
  }

  sub_1000079B4(v29, v28);
  v31 = v74;
  v32 = v72;
  if (qword_100767468 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100003E30(v33, qword_10078D7D8);
  v34 = *(v31 + 16);
  v35 = v73;
  v34(v32, v71, v73);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v75 = v39;
    *v38 = 136315138;
    v34(v68, v32, v35);
    v40 = String.init<A>(describing:)();
    v42 = v41;
    (*(v31 + 8))(v32, v35);
    v43 = sub_100004060(v40, v42, &v75);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v37, "Cannot resolve SectionCreationLocation {location: %s}", v38, 0xCu);
    sub_100004758(v39);
  }

  else
  {

    (*(v31 + 8))(v32, v35);
  }
}

uint64_t sub_10058ABC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_100058000(&qword_100773320);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  TTRRemindersListTreeViewModel.insertNewItem(_:at:)();
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v6, a2, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  sub_10059A488(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);
  TTRBaseTreeLocation.init(parent:index:)();
  v13 = TTRRemindersListTreeViewModel.move(_:to:)();
  (*(v8 + 8))(v10, v7);
  if (v13)
  {
    sub_10057AB60(a1);
  }

  else
  {
    if (qword_100767468 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_10078D7D8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to move items to editable section in tree view model", v17, 2u);
    }
  }

  return v13 & 1;
}

uint64_t sub_10058AEF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  return sub_10000794C(v1 + v3, a1, &unk_10078A380);
}

uint64_t sub_10058AFC0(uint64_t a1)
{
  result = sub_10059A488(&qword_10078E040, type metadata accessor for TTRRemindersListViewModelSource);
  *(a1 + 8) = result;
  return result;
}

void sub_10058B018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSectionID();
  v56 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v45 - v8;
  v9 = sub_100058000(&qword_10078E3F0);
  __chkstk_darwin(v9 - 8);
  v13.n128_f64[0] = __chkstk_darwin(v10);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v50 = (&v45 - v11);
    v51 = v12;
    v49 = v6;
    v14 = 0;
    v47 = a1;
    v15 = *(a1 + 64);
    v46 = a1 + 64;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v52 = v56 + 16;
    v53 = (v56 + 32);
    v48 = (v56 + 8);
    while (1)
    {
      v20 = v51;
      if (!v18)
      {
        break;
      }

      v54 = (v18 - 1) & v18;
      v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
      v26 = *(*(v47 + 48) + 8 * v21);
      v28 = v55;
      v27 = v56;
      (*(v56 + 16))(v55, *(v47 + 56) + *(v56 + 72) * v21, v4, v13);
      v29 = sub_100058000(&qword_1007758D8);
      v30 = *(v29 + 48);
      *v20 = v26;
      (*(v27 + 32))(&v20[v30], v28, v4);
      (*(*(v29 - 8) + 56))(v20, 0, 1, v29);
      v31 = v26;
LABEL_17:
      v32 = v50;
      sub_100016588(v20, v50, &qword_10078E3F0);
      v33 = sub_100058000(&qword_1007758D8);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        return;
      }

      v34 = a2;
      v35 = *v32;
      v36 = v49;
      (*v53)(v49, v32 + *(v33 + 48), v4);
      v37 = sub_1002613B0(v35);
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        (*v48)(v36, v4);
        return;
      }

      v41 = v55;
      v40 = v56;
      (*(v56 + 16))(v55, *(v34 + 56) + *(v56 + 72) * v37, v4);
      sub_10059A488(&qword_10076BE70, &type metadata accessor for TTRSectionID);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = *(v40 + 8);
      v43(v41, v4);
      v43(v36, v4);
      a2 = v34;
      v18 = v54;
      if ((v42 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v14 + 1)
    {
      v22 = v14 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v44 = sub_100058000(&qword_1007758D8);
        (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
        v54 = 0;
        v14 = v23;
        goto LABEL_17;
      }

      v25 = *(v46 + 8 * v24);
      ++v14;
      if (v25)
      {
        v54 = (v25 - 1) & v25;
        v21 = __clz(__rbit64(v25)) | (v24 << 6);
        v14 = v24;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10058B518(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for REMObjectID_Codable();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for REMObjectID_Codable();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "TTRITemplateList-Editor";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x800000010068CD70;
  v7._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10058B6B8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_10076FE50, &type metadata accessor for TTRRemindersListViewModel.ItemID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100594B08(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058B9BC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRSectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_1007758E0, &type metadata accessor for TTRSectionID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_10076BE70, &type metadata accessor for TTRSectionID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100594DD0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058BC9C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100595098(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10058BD80(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for REMObjectID_Codable();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1005945B0(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100591D28(v20 + 1, &qword_1007823F8);
    }

    v18 = v8;
    sub_1005949E0(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for REMObjectID_Codable();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1005951B8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_10058BFA8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_100776308, &type metadata accessor for TTRRemindersListViewModel.Item);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_100768B68, &type metadata accessor for TTRRemindersListViewModel.Item);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100595348(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10058C288(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v9 = 0x6F6E6E4177656976;
          v10 = 0xEE006E6F69746174;
        }

        else
        {
          if (v8 == 4)
          {
            v9 = 0x75736F6C63736964;
          }

          else
          {
            v9 = 0xD000000000000016;
          }

          if (v8 == 4)
          {
            v10 = 0xEF65746174536572;
          }

          else
          {
            v10 = 0x800000010066E7D0;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v8 == 1)
        {
          v9 = 0x74786554656D616ELL;
        }

        else
        {
          v9 = 0x6F74617261706573;
        }

        if (v8 == 1)
        {
          v10 = 0xEC00000077656956;
        }

        else
        {
          v10 = 0xE900000000000072;
        }
      }

      else
      {
        v9 = 0xD000000000000018;
        v10 = 0x800000010066E780;
      }

      v11 = 0x75736F6C63736964;
      if (a2 != 4)
      {
        v11 = 0xD000000000000016;
      }

      v12 = 0xEF65746174536572;
      if (a2 != 4)
      {
        v12 = 0x800000010066E7D0;
      }

      if (a2 == 3)
      {
        v11 = 0x6F6E6E4177656976;
        v12 = 0xEE006E6F69746174;
      }

      v13 = 0xD000000000000018;
      v14 = 0x74786554656D616ELL;
      if (a2 != 1)
      {
        v14 = 0x6F74617261706573;
      }

      v15 = 0xEC00000077656956;
      if (a2 != 1)
      {
        v15 = 0xE900000000000072;
      }

      if (a2)
      {
        v13 = v14;
        v16 = v15;
      }

      else
      {
        v16 = 0x800000010066E780;
      }

      v17 = a2 <= 2u ? v13 : v11;
      v18 = a2 <= 2u ? v16 : v12;
      if (v9 == v17 && v10 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_45;
      }

      v7 = (v7 + 1) & v24;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v22;
    sub_100595610(a2, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v25;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10058C648(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10059A488(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_10059A488(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100595A28(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}