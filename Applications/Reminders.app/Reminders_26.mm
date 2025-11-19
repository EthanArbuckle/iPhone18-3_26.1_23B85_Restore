uint64_t sub_1002D19E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  sub_100003540(0, &qword_10076BA50);
  v9 = 0;
  v11 = *(v5 + 16);
  v10 = v5 + 16;
  v32 = a2 & 0xC000000000000001;
  v33 = v11;
  v31 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
  v12 = *(v10 + 56);
  v13 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v13 = a2;
  }

  v27 = v4;
  v28 = v13;
  v29 = (v10 - 8);
  v30 = v12;
  v14 = a2 + 56;
  v25 = v8;
  v26 = v10;
  while (1)
  {
    v33(v7, v31 + v30 * v9, v4);
    v15 = REMRemindersListDataView.ReminderLite.objectID.getter();
    if (!v32)
    {
      break;
    }

    v16 = __CocoaSet.contains(_:)();

    (*v29)(v7, v4);
    if ((v16 & 1) == 0)
    {
      return 1;
    }

LABEL_15:
    if (++v9 == v8)
    {
      return 0;
    }
  }

  if (*(a2 + 16))
  {
    v17 = NSObject._rawHashValue(seed:)(*(a2 + 40));
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if ((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = *(*(a2 + 48) + 8 * v19);
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v14 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v4 = v27;
      (*v29)(v7, v27);

      v8 = v25;
      goto LABEL_15;
    }
  }

LABEL_17:
  (*v29)(v7, v27);

  return 1;
}

uint64_t sub_1002D1C6C()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + *(type metadata accessor for MoveSubject(0) + 20));
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v6 + 88))(v8, v5);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v6 + 96))(v8, v5);
    (*(v2 + 32))(v4, v8, v1);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v9 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v2 + 8))(v4, v1);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v6 + 8))(v8, v5);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1002D1EF8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
LABEL_2:
    (*(v5 + 8))(v8, v4);
LABEL_3:
    *a1 = 0;
    type metadata accessor for TTRRemindersListReminderActionTarget(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v9 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    v11 = REMSmartListTypeScheduled;
    *a1 = REMSmartListTypeScheduled;
    type metadata accessor for TTRRemindersListReminderActionTarget(0);
    swift_storeEnumTagMultiPayload();
    v12 = *(v5 + 8);
    v13 = v11;
    return v12(v8, v4);
  }

  else
  {
    if (v9 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v9 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v9 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v9 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v9 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v9 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v9 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
      goto LABEL_2;
    }

    if (v9 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v9 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      goto LABEL_3;
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D2130@<X0>(char *a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_100058000(&qword_10076FA28);
  v37 = *(v10 - 8);
  v38 = v10;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_100058000(&qword_100773320);
  v36 = *(v16 - 8);
  __chkstk_darwin(v16);
  v39 = &v31 - v17;
  type metadata accessor for RemindersInsertionRequest(0);
  v32 = *(v3 + 16);
  v32(v9, v1, v2);
  v35 = v3;
  (*(v3 + 56))(v9, 0, 1, v2);
  sub_1002D57C4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);

  TTRDerivedTreeLocation.init(parent:index:)();
  TTRRemindersListTreeViewModel.actualInsertionLocation(at:)();
  v18 = v12;
  v19 = v36;
  (*(v37 + 8))(v18, v38);
  if ((*(v19 + 48))(v15, 1, v16) == 1)
  {

    v20 = &qword_100773318;
    v21 = v15;
LABEL_5:
    sub_1000079B4(v21, v20);
    v24 = sub_100058000(&qword_10076C708);
    return (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
  }

  (*(v19 + 32))(v39, v15, v16);
  v22 = v33;
  TTRBaseTreeLocation.parent.getter();
  v23 = v35;
  if ((*(v35 + 48))(v22, 1, v2) == 1)
  {
    (*(v19 + 8))(v39, v16);

    v20 = &qword_100772140;
    v21 = v22;
    goto LABEL_5;
  }

  v26 = v34;
  (*(v23 + 32))(v34, v22, v2);
  v27 = sub_100058000(&qword_10076C708);
  v38 = *(v27 + 48);
  v28 = v40;
  v32(v40, v26, v2);
  v29 = v39;
  v30 = TTRBaseTreeLocation.index.getter();

  (*(v23 + 8))(v34, v2);
  (*(v19 + 8))(v29, v16);
  *&v28[v38] = v30;
  return (*(*(v27 - 8) + 56))(v28, 0, 1, v27);
}

uint64_t sub_1002D26CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a1;
  v88 = a2;
  v3 = sub_100058000(&qword_10076C6B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v76 - v7;
  __chkstk_darwin(v9);
  v11 = &v76 - v10;
  v12 = type metadata accessor for DateComponents();
  v82 = *(v12 - 8);
  __chkstk_darwin(v12);
  v87 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  v16 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v84 = *(v16 - 8);
  v85 = v16;
  __chkstk_darwin(v16);
  v83 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&qword_1007775C0);
  __chkstk_darwin(v18 - 8);
  v20 = &v76 - v19;
  v21 = sub_100058000(&qword_100779D40);
  __chkstk_darwin(v21 - 8);
  v23 = &v76 - v22;
  v24 = type metadata accessor for TTRRemindersListViewModel.Item();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v25 + 16);
  v89 = v2;
  v29(v28, v2, v24, v26);
  v30 = (*(v25 + 88))(v28, v24);
  if (v30 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
  {
    goto LABEL_2;
  }

  if (v30 == enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v25 + 96))(v28, v24);
    v24 = v83;
    v37 = v84;
    (*(v84 + 32))(v83, v28, v85);
    type metadata accessor for RemindersInsertionRequest(0);
    sub_1002CCA14(v11);
    v25 = v82;
    v79 = *(v82 + 48);
    v80 = v82 + 48;
    if (v79(v11, 1, v12) == 1)
    {
      sub_1000079B4(v11, &qword_10076C6B8);
      v38 = type metadata accessor for Calendar();
      (*(*(v38 - 8) + 56))(v23, 1, 1, v38);
      v39 = type metadata accessor for TimeZone();
      (*(*(v39 - 8) + 56))(v20, 1, 1, v39);
      v40 = type metadata accessor for RemindersInsertionPlan(0);
      v41 = v88;
      v88[3] = v40;
      v41[4] = &off_10071E7A8;
      v42 = v24;
      v43 = sub_1000317B8(v41);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      (*(v37 + 8))(v42, v85);
      result = sub_1002D674C(v89, v43 + *(v40 + 28), type metadata accessor for RemindersInsertionRequest);
      v43[1] = _swiftEmptyArrayStorage;
      *v43 = 1;
      return result;
    }
  }

  else
  {
    if (v30 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v30 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v30 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v30 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v30 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v30 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v30 == enum case for TTRRemindersListViewModel.Item.tip(_:))
    {
LABEL_2:
      (*(v25 + 8))(v28, v24);
LABEL_3:
      v31 = type metadata accessor for Calendar();
      (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
      v32 = type metadata accessor for TimeZone();
      (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
      v33 = type metadata accessor for RemindersInsertionPlan(0);
      v34 = v88;
      v88[3] = v33;
      v34[4] = &off_10071E7A8;
      v35 = sub_1000317B8(v34);
      DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
      result = sub_1002D674C(v89, v35 + *(v33 + 28), type metadata accessor for RemindersInsertionRequest);
      v35[1] = _swiftEmptyArrayStorage;
      *v35 = 1;
      return result;
    }

    if (v30 == enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) || v30 == enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
    {
      goto LABEL_3;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  v77 = *(v25 + 32);
  v78 = v25 + 32;
  v77(v86, v11, v12);
  v44 = v89;
  sub_1002D3214();
  if (v45)
  {
    (*(v84 + 8))(v24, v85);
    v46 = 1;
    v47 = v81;
    goto LABEL_51;
  }

  v47 = v81;
  v48 = *(v81 + 16);
  if (!v48)
  {
    v46 = 0;
    goto LABEL_50;
  }

  v49 = v81 + 32;
  v50 = (v25 + 56);
  v82 = v25 + 8;
  while (1)
  {
    sub_10000B0D8(v49, v90);
    v51 = v91;
    v52 = v92;
    sub_10000C36C(v90, v91);
    v53 = (*(v52 + 8))(v51, v52);
    if (!v53)
    {
      (*v50)(v8, 1, 1, v12);
LABEL_27:
      sub_1000079B4(v8, &qword_10076C6B8);
      goto LABEL_42;
    }

    v54 = v53;
    v55 = [v53 dueDateComponents];

    if (v55)
    {
      static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    (*v50)(v5, v56, 1, v12);
    sub_100016588(v5, v8, &qword_10076C6B8);
    if (v79(v8, 1, v12) == 1)
    {
      goto LABEL_27;
    }

    v77(v87, v8, v12);
    v57 = DateComponents.year.getter();
    v59 = v58;
    v60 = DateComponents.year.getter();
    if (v59)
    {
      if ((v61 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v61 & 1) != 0 || v57 != v60)
    {
LABEL_41:
      (*v82)(v87, v12);
      goto LABEL_42;
    }

    v62 = DateComponents.month.getter();
    v64 = v63;
    v65 = DateComponents.month.getter();
    if (v64)
    {
      if ((v66 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else if ((v66 & 1) != 0 || v62 != v65)
    {
      goto LABEL_41;
    }

    v76 = DateComponents.day.getter();
    v68 = v67;
    v69 = v87;
    v70 = DateComponents.day.getter();
    v72 = v71;
    (*v82)(v69, v12);
    if (v68)
    {
      if (v72)
      {
        sub_100004758(v90);
        v46 = 1;
        goto LABEL_48;
      }

      goto LABEL_42;
    }

    if ((v72 & 1) == 0)
    {
      break;
    }

LABEL_42:
    sub_100004758(v90);
LABEL_43:
    v49 += 40;
    if (!--v48)
    {
      v46 = 0;
      goto LABEL_48;
    }
  }

  sub_100004758(v90);
  if (v76 != v70)
  {
    goto LABEL_43;
  }

  v46 = 1;
LABEL_48:
  v44 = v89;
  v47 = v81;
LABEL_50:
  (*(v84 + 8))(v83, v85);
LABEL_51:
  v73 = type metadata accessor for RemindersInsertionPlan(0);
  v74 = v88;
  v88[3] = v73;
  v74[4] = &off_10071E7A8;
  v75 = sub_1000317B8(v74);
  v77(v75 + *(v73 + 24), v86, v12);
  sub_1002D674C(v44, v75 + *(v73 + 28), type metadata accessor for RemindersInsertionRequest);
  v75[1] = v47;
  *v75 = v46;
}

void sub_1002D3214()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + *(type metadata accessor for RemindersInsertionRequest(0) + 20)) >= 1)
  {
    v19 = v1;
    type metadata accessor for TTRRemindersListTreeViewModel();
    v18 = v2;

    v12 = dispatch thunk of TTRRemindersListTreeContentsQueryable.presentationTree.getter();

    swift_getObjectType();
    v20 = v12;
    (*(v9 + 16))(v7, v0, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    v13 = v19;
    dispatch thunk of TTRTreeContentsQueryable.child(_:of:)();
    sub_1000079B4(v7, &qword_100772140);
    v14 = v18;
    swift_unknownObjectRelease();
    TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
    v15 = (*(v14 + 88))(v4, v13);
    if (v15 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) || v15 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
    {
      (*(v9 + 8))(v11, v8);
      (*(v14 + 8))(v4, v13);
    }

    else if (v15 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      (*(v9 + 8))(v11, v8);
      (*(v14 + 8))(v4, v13);
    }

    else if (v15 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      if (qword_100767138 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100003E30(v16, qword_1007794A0);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown reminder case", 21, 2);
      __break(1u);
    }
  }
}

void *sub_1002D362C()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_1004A24B0(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v1 + 32;
    do
    {
      sub_10000B0D8(v4, &v11);
      v12[24] = 1;
      v13 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1004A24B0((v5 > 1), v6 + 1, 1);
        v3 = v13;
      }

      v3[2] = v6 + 1;
      v7 = &v3[6 * v6];
      v8 = v11;
      v9 = *v12;
      *(v7 + 57) = *&v12[9];
      v7[2] = v8;
      v7[3] = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1002D3718()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = v14 - v2;
  v4 = sub_100058000(&qword_10076FA28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  v14[1] = *(v0 + 8);

  sub_100058000(&qword_100773338);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  sub_10011763C(&qword_100773340, &qword_100773338);
  v9 = Sequence.completeCompactMap<A>(_:)();

  if (!v9)
  {
    return 0;
  }

  v10 = v0 + *(type metadata accessor for RemindersInsertionPlan(0) + 28);
  type metadata accessor for RemindersInsertionRequest(0);
  v11 = *(v8 - 8);
  (*(v11 + 16))(v3, v10, v8);
  (*(v11 + 56))(v3, 0, 1, v8);
  sub_1002D57C4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);

  TTRDerivedTreeLocation.init(parent:index:)();
  v12 = TTRRemindersListTreeViewModel.steps(forMoving:to:)();

  (*(v5 + 8))(v7, v4);
  return v12;
}

uint64_t sub_1002D39FC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = _swiftEmptyArrayStorage;
  v19 = _swiftEmptyArrayStorage;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4 + 32;
    do
    {
      sub_10000B0D8(v7, v16);
      v8 = v17;
      v9 = v18;
      sub_10000C36C(v16, v17);
      v10 = (*(v9 + 8))(v8, v9);
      sub_100004758(v16);
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v19;
      }

      v7 += 40;
      --v6;
    }

    while (v6);
  }

  v11 = *(sub_100058000(&qword_100776350) + 48);
  *a1 = v5;
  v12 = *(type metadata accessor for RemindersInsertionPlan(0) + 24);
  v13 = type metadata accessor for DateComponents();
  (*(*(v13 - 8) + 16))(&a1[v11], v2 + v12, v13);
  v14 = type metadata accessor for TTRRemindersListMovingRemindersParams(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

uint64_t sub_1002D3BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100058000(&qword_100779DE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5 - 8];
  v7 = type metadata accessor for MoveSubject(0);
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
    sub_1002D66C4(v6, v10, type metadata accessor for MoveSubject);
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2, v10, v13);
    sub_1002D6EE0(v10, type metadata accessor for MoveSubject);
    return (*(v14 + 56))(a2, 0, 1, v13);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000079B4(v6, &qword_100779DE0);
    v16 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }
}

void sub_1002D3E6C(void *a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v51 = *(v2 - 8);
  __chkstk_darwin(v2);
  v71 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v58 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v50 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v72 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_100773300);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v69 = sub_100058000(&qword_100773308);
  __chkstk_darwin(v69);
  v13 = &v47 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v55 = *(v14 - 8);
  __chkstk_darwin(v14);
  v56 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v73 = &v47 - v17;
  v19 = a1[3];
  v18 = a1[4];
  v20 = sub_10000C36C(a1, v19);
  v21 = *(v18 + 8);
  v68 = v20;
  v22 = v21(v19, v18);
  if (v22)
  {

    sub_1002D4788(v11);
    v23 = sub_100058000(&qword_100773310);
    if ((*(*(v23 - 8) + 48))(v11, 1, v23) == 1)
    {
      sub_1000079B4(v11, &qword_100773300);
    }

    else
    {
      v66 = *(v23 + 48);
      v67 = v21;
      v65 = *(v69 + 48);
      v24 = v13;
      v25 = *(v55 + 32);
      v25(v24, v11, v14);
      sub_1002D66C4(&v11[v66], &v24[v65], type metadata accessor for TTRRemindersListMatchedAttributeValue);
      v26 = *(v69 + 48);
      v25(v73, v24, v14);
      sub_1002D6EE0(&v24[v26], type metadata accessor for TTRRemindersListMatchedAttributeValue);
      v27 = v67(v19, v18);
      if (v27)
      {
        v28 = v27;
        v52 = v14;
        v29 = *&v70[*(type metadata accessor for AttributeMatchingRequest(0) + 24)];
        v68 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_tree;
        v69 = v29;

        v30 = [v28 objectID];
        v31 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

        v67 = *(v31 + 16);
        if (v67)
        {
          v47 = v28;
          v32 = 0;
          v66 = v31 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
          v65 = v72 + 16;
          v64 = enum case for TTRRemindersListViewModel.Item.reminder(_:);
          v70 = (v51 + 1);
          v62 = (v51 + 6);
          v63 = (v51 + 13);
          v54 = (v51 + 11);
          v53 = enum case for TTRRemindersListViewModel.Item.section(_:);
          v61 = (v72 + 8);
          v51 += 12;
          v49 = (v50 + 4);
          v48 = (v55 + 8);
          ++v50;
          v34 = v59;
          v33 = v60;
          while (v32 < *(v31 + 16))
          {
            v36 = v6;
            v37 = v2;
            v38 = *(v72 + 16);
            v38(v34, v66 + *(v72 + 72) * v32, v33);
            v39 = v71;
            v38(v71, v34, v33);
            v2 = v37;
            v6 = v36;
            (*v63)(v39, v64, v2);

            TTRRemindersListTreeViewModel.parent(of:)();

            v40 = *v70;
            (*v70)(v39, v2);
            if ((*v62)(v36, 1, v2) == 1)
            {
              (*v61)(v34, v33);
              sub_1000079B4(v36, &qword_100772140);
            }

            else
            {
              v41 = (*v54)(v36, v2);
              if (v41 == v53)
              {
                (*v51)(v36, v2);
                v43 = v57;
                v42 = v58;
                (*v49)(v57, v6, v58);
                v44 = v56;
                TTRRemindersListViewModel.SectionHeader.id.getter();
                sub_1002D57C4(&qword_100768B80, &type metadata accessor for TTRRemindersListViewModel.SectionID);
                v45 = v52;
                v46 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v48)(v44, v45);
                (*v50)(v43, v42);
                v33 = v60;
                v34 = v59;
                (*v61)(v59, v60);
                if (v46)
                {
                  v35 = v73;
LABEL_18:
                  v28 = v47;
                  goto LABEL_19;
                }
              }

              else
              {
                v33 = v60;
                v34 = v59;
                (*v61)(v59, v60);
                v40(v36, v2);
              }
            }

            ++v32;
            v35 = v73;
            if (v67 == v32)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
        }

        else
        {
          v35 = v73;
LABEL_19:

          (*(v55 + 8))(v35, v52);
        }
      }

      else
      {
        (*(v55 + 8))(v73, v14);
      }
    }
  }
}

uint64_t sub_1002D4788@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_10076C6B8);
  __chkstk_darwin(v2 - 8);
  v46 = &v41 - v3;
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  __chkstk_darwin(v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076C6F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v41 - v21;
  sub_1002D5170(v12);
  v23 = sub_100058000(&qword_10076C708);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    sub_1000079B4(v12, &qword_10076C6F8);
    v24 = sub_100058000(&qword_100773310);
    v25 = *(*(v24 - 8) + 56);
    v26 = a1;
  }

  else
  {
    v43 = a1;
    v27 = *(v17 + 32);
    v27(v15, v12, v16);
    v27(v22, v15, v16);
    (*(v17 + 16))(v19, v22, v16);
    v28 = (*(v17 + 88))(v19, v16);
    if (v28 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
    {
      v29 = *(v17 + 8);
      v29(v22, v16);
      v29(v19, v16);
      v30 = v43;
    }

    else
    {
      if (v28 == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        (*(v17 + 96))(v19, v16);
        v31 = v44;
        (*(v44 + 32))(v9, v19, v7);
        type metadata accessor for AttributeMatchingRequest(0);
        v32 = v46;
        sub_1002CCA14(v46);
        v33 = v47;
        v34 = v48;
        if ((*(v48 + 48))(v32, 1, v47) != 1)
        {
          v37 = *(v34 + 32);
          v48 = v34 + 32;
          v42 = v37;
          v37(v45, v32, v33);
          v38 = sub_100058000(&qword_100773310);
          v39 = *(v38 + 48);
          v40 = v43;
          TTRRemindersListViewModel.SectionHeader.id.getter();
          (*(v31 + 8))(v9, v7);
          (*(v17 + 8))(v22, v16);
          v42(v40 + v39, v45, v47);
          type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v38 - 8) + 56))(v40, 0, 1, v38);
        }

        (*(v31 + 8))(v9, v7);
        (*(v17 + 8))(v22, v16);
        sub_1000079B4(v32, &qword_10076C6B8);
        v24 = sub_100058000(&qword_100773310);
        v25 = *(*(v24 - 8) + 56);
        v26 = v43;
        return v25(v26, 1, 1, v24);
      }

      v30 = v43;
      if (v28 == enum case for TTRRemindersListViewModel.Item.reminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v28 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v28 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v28 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v28 == enum case for TTRRemindersListViewModel.Item.tip(_:))
      {
        v35 = *(v17 + 8);
        v35(v22, v16);
        v35(v19, v16);
      }

      else
      {
        if (v28 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v28 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*(v17 + 8))(v22, v16);
      }
    }

    v24 = sub_100058000(&qword_100773310);
    v25 = *(*(v24 - 8) + 56);
    v26 = v30;
  }

  return v25(v26, 1, 1, v24);
}

uint64_t sub_1002D4F08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100058000(&qword_100773300);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100058000(&qword_100773308);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_1002D4788(v4);
  v8 = sub_100058000(&qword_100773310);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_1000079B4(v4, &qword_100773300);
    v9 = 1;
  }

  else
  {
    v10 = *(v8 + 48);
    v11 = *(v5 + 48);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID();
    v13 = *(v12 - 8);
    (*(v13 + 32))(v7, v4, v12);
    sub_1002D66C4(&v4[v10], &v7[v11], type metadata accessor for TTRRemindersListMatchedAttributeValue);
    sub_1002D66C4(&v7[*(v5 + 48)], a1, type metadata accessor for TTRRemindersListMatchedAttributeValue);
    (*(v13 + 8))(v7, v12);
    v9 = 0;
  }

  v14 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  return (*(*(v14 - 8) + 56))(a1, v9, 1, v14);
}

uint64_t sub_1002D5170@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = type metadata accessor for TTRRemindersListViewModel.Item();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  v33 = sub_100058000(&qword_10076FA28);
  v8 = *(v33 - 8);
  __chkstk_darwin(v33);
  v10 = &v30 - v9;
  v11 = sub_100058000(&qword_100773318);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_100058000(&qword_100773320);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  type metadata accessor for AttributeMatchingRequest(0);
  sub_10000794C(v1, v7, &qword_100772140);
  sub_1002D57C4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item);

  v18 = v34;
  TTRDerivedTreeLocation.init(parent:index:)();
  TTRRemindersListTreeViewModel.actualInsertionLocation(at:)();

  (*(v8 + 8))(v10, v33);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = &qword_100773318;
    v20 = v13;
LABEL_5:
    sub_1000079B4(v20, v19);
    v23 = sub_100058000(&qword_10076C708);
    return (*(*(v23 - 8) + 56))(v35, 1, 1, v23);
  }

  (*(v15 + 32))(v17, v13, v14);
  v21 = v31;
  TTRBaseTreeLocation.parent.getter();
  v22 = v32;
  if ((*(v32 + 48))(v21, 1, v18) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v19 = &qword_100772140;
    v20 = v21;
    goto LABEL_5;
  }

  v25 = v30;
  (*(v22 + 32))(v30, v21, v18);
  v26 = sub_100058000(&qword_10076C708);
  v27 = *(v26 + 48);
  v28 = v35;
  (*(v22 + 16))(v35, v25, v18);
  v29 = TTRBaseTreeLocation.index.getter();
  (*(v22 + 8))(v25, v18);
  (*(v15 + 8))(v17, v14);
  *(v28 + v27) = v29;
  return (*(*(v26 - 8) + 56))(v28, 0, 1, v26);
}

id sub_1002D56C0@<X0>(void *a1@<X8>)
{
  v2 = REMSmartListTypeScheduled;
  *a1 = REMSmartListTypeScheduled;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();

  return v2;
}

uint64_t sub_1002D5734(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076B070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D57C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002D586C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders31TTRShowScheduledViewModelSource_defaultSectionID;
  swift_beginAccess();
  return sub_10000794C(v1 + v3, a1, &qword_10076B070);
}

uint64_t *sub_1002D5914(uint64_t *a1, uint64_t *a2, uint64_t a3)
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

uint64_t sub_1002D59E4(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_1002D5A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1002D5AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));

  return a1;
}

uint64_t sub_1002D5B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_1002D5BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_1002D5CCC()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_1002D5D6C(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100058000(&qword_100772140);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v11) = *(a2 + v11);
  }

  return a1;
}

uint64_t sub_1002D5EF0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

char *sub_1002D5FBC(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100772140);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v9] = *&a2[v9];

  return a1;
}

char *sub_1002D60F8(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100772140);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];

  return a1;
}

char *sub_1002D62A8(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100772140);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v9] = *&a2[v9];
  return a1;
}

char *sub_1002D63E0(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = sub_100058000(&qword_100772140);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v12] = *&a2[v12];

  return a1;
}

void sub_1002D65AC()
{
  sub_1002D6670(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1002D6670(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1002D66C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D674C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_1002D67B4(char *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v15 = *a2;
    *v3 = *a2;
    v3 = (v15 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = a2[1];
    v5 = *(a3 + 24);
    v8 = type metadata accessor for DateComponents();
    v9 = *(*(v8 - 8) + 16);

    v9(&v3[v5], a2 + v5, v8);
    v10 = *(a3 + 28);
    v11 = &v3[v10];
    v12 = a2 + v10;
    v13 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v13 - 8) + 16))(v11, v12, v13);
    v14 = type metadata accessor for RemindersInsertionRequest(0);
    *&v11[*(v14 + 20)] = *&v12[*(v14 + 20)];
    *&v11[*(v14 + 24)] = *&v12[*(v14 + 24)];
  }

  return v3;
}

uint64_t sub_1002D6908(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 24);
  v5 = type metadata accessor for DateComponents();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = a1 + *(a2 + 28);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v7 - 8) + 8))(v6, v7);
  type metadata accessor for RemindersInsertionRequest(0);
}

uint64_t sub_1002D69D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for DateComponents();
  v8 = *(*(v7 - 8) + 16);

  v8(a1 + v6, a2 + v6, v7);
  v9 = *(a3 + 28);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v12 - 8) + 16))(v10, v11, v12);
  v13 = type metadata accessor for RemindersInsertionRequest(0);
  *(v10 + *(v13 + 20)) = *(v11 + *(v13 + 20));
  *(v10 + *(v13 + 24)) = *(v11 + *(v13 + 24));

  return a1;
}

uint64_t sub_1002D6AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for DateComponents();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 24))(v9, v10, v11);
  v12 = type metadata accessor for RemindersInsertionRequest(0);
  *(v9 + *(v12 + 20)) = *(v10 + *(v12 + 20));
  *(v9 + *(v12 + 24)) = *(v10 + *(v12 + 24));

  return a1;
}

uint64_t sub_1002D6BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for DateComponents();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 32))(v9, v10, v11);
  v12 = type metadata accessor for RemindersInsertionRequest(0);
  *(v9 + *(v12 + 20)) = *(v10 + *(v12 + 20));
  *(v9 + *(v12 + 24)) = *(v10 + *(v12 + 24));
  return a1;
}

uint64_t sub_1002D6CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a3 + 24);
  v7 = type metadata accessor for DateComponents();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 40))(v9, v10, v11);
  v12 = type metadata accessor for RemindersInsertionRequest(0);
  *(v9 + *(v12 + 20)) = *(v10 + *(v12 + 20));
  *(v9 + *(v12 + 24)) = *(v10 + *(v12 + 24));

  return a1;
}

uint64_t sub_1002D6E00()
{
  result = type metadata accessor for DateComponents();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RemindersInsertionRequest(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002D6EE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D6F4C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100779DE8);
  v1 = sub_100003E30(v0, qword_100779DE8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002D7014()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10054161C();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002D707C()
{
  if (*(v0 + 56))
  {
    sub_1002D7384();

    static NSUndoManager.removeObserver(with:)();

    sub_10003B788(v0 + 16);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002D7140(uint64_t a1)
{
  if (a1)
  {
    if (qword_100767148 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003E30(v1, qword_100779DE8);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v12 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_100004060(v5, v6, &v12);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Error saving group: %s", v3, 0xCu);
      sub_100004758(v4);

      return;
    }
  }

  else
  {
    if (qword_100767148 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_100779DE8);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Group saved!", v10, 2u);
    }
  }
}

unint64_t sub_1002D7384()
{
  result = qword_100788D40;
  if (!qword_100788D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100788D40);
  }

  return result;
}

uint64_t sub_1002D73D0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100779EC8);
  v1 = sub_100003E30(v0, qword_100779EC8);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002D7498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return _swift_task_switch(sub_1002D7538, v7, v6);
}

uint64_t sub_1002D7538()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1002D7668;
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[2];
    v6 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v5, v6, v3, 0, 0, 1, v4);
  }

  else
  {

    (*(*(v0[5] - 8) + 56))(v0[2], 1, 1);
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1002D7668()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1002D77A8, v4, v3);
}

uint64_t sub_1002D77A8()
{

  (*(*(v0[5] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

void sub_1002D7840()
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

  if (qword_100767150 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100779EC8);
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

uint64_t sub_1002D7988()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D79EC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100779F88);
  v1 = sub_100003E30(v0, qword_100779F88);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002D7B70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for TTRListDetailViewModel();
  v4 = __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewDidLoad", v4);
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClassUnconditional();
    v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 1.0, 8.0}];
    [v9 setTableHeaderView:v10];

    sub_1002D7D6C();
    v11 = [v1 navigationItem];
    v12 = *&v1[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
    v13 = swift_getObjectType();
    (*(*(v12 + 8) + 8))(v13);

    sub_1002DE6EC(v6, type metadata accessor for TTRListDetailViewModel);
    v14 = String._bridgeToObjectiveC()();

    [v11 setTitle:v14];

    sub_1002D7F28();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002D7D6C()
{
  v1 = [v0 navigationItem];
  v2 = objc_allocWithZone(UIBarButtonItem);
  v3 = v0;
  v4 = [v2 initWithBarButtonSystemItem:1 target:v3 action:"didTapCancel:"];
  [v1 setLeftBarButtonItem:v4];

  v5 = [v3 navigationItem];
  v6 = [v5 leftBarButtonItem];

  swift_unknownObjectWeakAssign();
  v7 = [v3 navigationItem];
  v8 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v3 action:"didTapDone:"];

  [v7 setRightBarButtonItem:v8];
  v9 = [v3 navigationItem];
  v10 = [v9 rightBarButtonItem];

  swift_unknownObjectWeakAssign();
}

void sub_1002D7F28()
{
  v1 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRTableViewAnimations();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController;
  if (!*&v0[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController])
  {
    v22 = [v0 view];
    if (v22)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v21 = v11;
        sub_100058000(&qword_10076B780);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100634FC0;
        v13 = v0;
        *(inited + 32) = sub_1002D874C();
        *(inited + 40) = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersSection, sub_1002DAB48);
        *(inited + 48) = sub_1002D8958();
        *(inited + 56) = sub_1002D8B38();
        *(inited + 64) = sub_1002D8D18();
        v24 = sub_1002DE848();
        v25 = &protocol witness table for UITableView;
        v23 = v21;
        v22 = v22;
        sub_1003E09F0(inited);

        (*(v6 + 104))(v9, enum case for TTRTableViewAnimations.fade(_:), v5);
        v14 = objc_allocWithZone(type metadata accessor for TTRITableDataController());
        v15 = TTRITableDataController.init(tableView:sections:rowInsertionAnimationType:collapseSectionIfItemsAreHidden:)();
        TTRITableDataController.customSectionSpacing.setter();
        v16 = *&v13[v10];
        *&v13[v10] = v15;
        v17 = v15;

        v18 = v21;
        [v21 setDataSource:v17];
        [v18 setDelegate:v17];
        v19 = (*(v2 + 104))(v4, enum case for TTRITableDataController.BatchUpdatesApplication.reload(_:), v1);
        __chkstk_darwin(v19);
        *(&v21 - 2) = v13;
        TTRITableDataController.performBatchUpdates(by:updates:)();

        (*(v2 + 8))(v4, v1);
      }

      else
      {
        v20 = v22;
      }
    }
  }
}

id sub_1002D8308(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1);
  result = [v1 view];
  if (result)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v8[3] = sub_1002DE848();
    v8[4] = &protocol witness table for UITableView;
    v8[0] = v4;
    UIViewController.deselectRowsAlongsideTransition(for:animated:)();
    sub_100004758(v8);
    v5 = UIViewController.effectiveNavigationControllerForBars.getter();
    if (v5)
    {
      v6 = a1 & 1;
      v7 = v5;
      [v5 setToolbarHidden:1 animated:v6];
    }

    sub_1002DE800(&qword_10077A100, type metadata accessor for TTRIListDetailViewController);
    return TTRKeyboardAvoidance<>.startAvoidingKeyboard()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002D848C(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  [v2 becomeFirstResponder];
  v4 = *&v2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
  ObjectType = swift_getObjectType();
  if (((*(v4 + 16))(ObjectType, v4) & 1) == 0)
  {
    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell, sub_1002DA8A8);
    v6 = TTRITableCell.content.getter();

    v7 = TTRITextCellContent.currentText.getter();
    v9 = v8;

    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
LABEL_6:
      v11 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_autoBeginEditingPerformed;
      if ((v2[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_autoBeginEditingPerformed] & 1) == 0)
      {

        v12 = TTRITableCell.content.getter();

        TTRITextCellContent.beginEditing()();

        v2[v11] = 1;
      }
    }
  }
}

uint64_t sub_1002D874C()
{
  v1 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v3, 1, 1, v9);
    sub_100058000(&qword_1007768B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D3F0;
    v12 = v0;
    v13 = sub_1002DA5C0();
    v14 = sub_1002DE894(&unk_100780820, &qword_10077A0F8);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    v15 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell, sub_1002DA8A8);
    v16 = sub_1002DE894(&unk_10077A110, &unk_100780800);
    *(v11 + 48) = v15;
    *(v11 + 56) = v16;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1002D8958()
{
  v1 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v3, 1, 1, v9);
    sub_100058000(&qword_1007768B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsCell, sub_1002DCE58);
    v14 = sub_1002DE894(&qword_10077A108, &qword_10077A090);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1002D8B38()
{
  v1 = sub_100058000(&qword_100777BC0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v4, 1, 1, v9);
    sub_100058000(&qword_1007768B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsCell, sub_1002DD128);
    v14 = sub_1002DE894(&qword_10077A088, &qword_10077A080);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1002D8D18()
{
  v1 = sub_100058000(&qword_100777BC0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection))
  {
    v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection);
  }

  else
  {
    v9 = type metadata accessor for TTRITableSectionHeaderFooter();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 1, 1, v9);
    v10(v4, 1, 1, v9);
    sub_100058000(&qword_1007768B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10062D400;
    v12 = v0;
    v13 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListActionCell, sub_1002DD424);
    v14 = sub_1002DE894(&qword_10077A070, &qword_10077A078);
    *(v11 + 32) = v13;
    *(v11 + 40) = v14;
    type metadata accessor for TTRITableSection();
    swift_allocObject();
    v8 = TTRITableSection.init(header:footer:items:)();
    *(v12 + v7) = v8;
  }

  return v8;
}

uint64_t sub_1002D8EF8()
{
  v1 = type metadata accessor for TTRListColors.Color();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRListDetailViewModel();
  __chkstk_darwin(v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 8);
  (*(v10 + 8))(ObjectType, v10);
  sub_1002D918C(v7);
  sub_1002D947C(v7);
  sub_1002D9688(v7);
  v11 = (*(v10 + 16))(ObjectType, v10);
  TTRListDetailBadgeViewModel.badgeColor.getter();
  v12 = sub_1000DC0DC(v4, v11);
  LOBYTE(ObjectType) = v13;

  (*(v2 + 8))(v4, v1);
  sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsCell, sub_1002DCE58);
  v14 = TTRITableCell.content.getter();

  v20 = v12;
  v21 = ObjectType & 1;
  TTRITableCellContent.state.setter();

  sub_1002D9B90(v7);
  sub_1002D9FB0(v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    object = v7->_object;
    v17 = v7->_countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((object & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(object) & 0xF;
    }

    v18 = Strong;
    [Strong setEnabled:v17 != 0];
  }

  return sub_1002DE6EC(v7, type metadata accessor for TTRListDetailViewModel);
}

void sub_1002D918C(uint64_t a1)
{
  v2 = type metadata accessor for TTRListDetailViewModelBadge();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListDetailBadgeViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  __chkstk_darwin(v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002DA5C0();
  v27 = TTRITableCell.content.getter();

  v13 = type metadata accessor for TTRListDetailViewModel();
  v14 = *(v7 + 16);
  v15 = a1 + *(v13 + 20);
  v28 = v6;
  v14(v9, v15, v6);
  TTRListDetailBadgeViewModel.badge.getter();
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 == enum case for TTRListDetailViewModelBadge.emblem(_:))
  {
    (*(v3 + 96))(v5, v2);
    v17 = *v5;
    v18 = REMListBadgeEmblem.image.getter();

    v19 = v18;
    v20 = 0;
    v21 = 0;
LABEL_5:
    TTRListDetailBadgeViewModel.badgeColor.getter();
    v22 = TTRListDetailBadgeViewModel.badgeName.getter();
    v24 = v23;
    TTRListDetailBadgeViewModel.badgeDisplayStyle.getter();

    (*(v7 + 8))(v9, v28);
    *v12 = v18;
    v12[1] = v20;
    v12[2] = v21;
    v25 = (v12 + *(v10 + 28));
    *v25 = v22;
    v25[1] = v24;
    v26 = v27;
    TTRITableCellContent.state.setter();

    return;
  }

  if (v16 == enum case for TTRListDetailViewModelBadge.emoji(_:))
  {
    (*(v3 + 96))(v5, v2);
    v18 = 0;
    v20 = *v5;
    v21 = *(v5 + 1);
    goto LABEL_5;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

void sub_1002D947C(Swift::String *a1)
{
  v2 = type metadata accessor for TTRListColors.Color();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell, sub_1002DA8A8);
  v6 = TTRITableCell.content.getter();

  TTRITextCellContent.setTextIfNotEditing(_:)(*a1);

  v7 = TTRITableCell.content.getter();

  type metadata accessor for TTRListDetailViewModel();
  TTRListDetailBadgeViewModel.badgeColor.getter();
  TTRListColors.Color.nativeColor.getter();
  (*(v3 + 8))(v5, v2);
  v8 = TTRITableCellContent.state.modify();
  TTRITextCellContentState.textColor.setter();
  v8(v11, 0);

  v9 = TTRITableCell.content.getter();

  v10 = TTRITableCellContent.state.modify();
  TTRITextCellContentState.placeholder.setter();
  v10(v11, 0);
}

uint64_t sub_1002D9688(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListListType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v7 - 8);
  v9 = v35 - v8;
  v10 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v10 - 8);
  v12 = v35 - v11;
  sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersSection, sub_1002DAB48);
  sub_1002DC634(a1, v1);
  TTRITableSection.isHidden.setter();

  result = sub_1002DC634(a1, v1);
  if ((result & 1) == 0)
  {
    v38 = type metadata accessor for TTRListDetailViewModel();
    v14 = v38[14];
    v15 = (a1 + v38[13]);
    v16 = v15[1];
    if (v16)
    {
      v17 = *v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = 0xE000000000000000;
    if (v16)
    {
      v18 = v16;
    }

    v35[0] = v18;
    v35[1] = v17;
    v37 = *(a1 + v14);
    swift_bridgeObjectRetain_n();
    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___listTypeCell, sub_1002DB598);
    v19 = TTRITableCell.content.getter();

    sub_1002DC828(a1, v12);
    v20 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
    v21 = TTRITableCellContent.state.modify();
    v39 = v3;
    v22 = v21;
    sub_100058000(&qword_10077A098);
    v36 = v6;
    TTRIOptionMenuCellContentState.icon.setter();
    v22(v40, 0);

    v23 = TTRITableCell.content.getter();

    v24 = TTRITableCellContent.state.modify();
    TTRIOptionMenuCellContentState.title.setter();
    v24(v40, 0);

    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersCell, sub_1002DB0F8);
    v25 = TTRITableCell.content.getter();

    v26 = TTRITableCellContent.state.modify();
    TTRIDetailCellState.title.setter();
    v26(v40, 0);

    v27 = TTRITableCell.content.getter();

    v28 = v37;
    v29 = TTRITableCellContent.state.modify();
    TTRIDetailCellState.subtitle.setter();
    v29(v40, 0);

    v30 = v39;

    sub_1002DCB08(a1, v1, v9);
    TTRITableSection.footer.setter();

    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___editFiltersCell, sub_1002DC1EC);
    v31 = a1 + v38[17];
    v32 = v36;
    (*(v4 + 16))(v36, v31, v30);
    v33 = (*(v4 + 88))(v32, v30);
    v34 = v33 == enum case for TTRRemindersListListType.standard(_:) || v33 == enum case for TTRRemindersListListType.groceries(_:);
    if (v34 || v33 == enum case for TTRRemindersListListType.smartList(_:))
    {
      TTRITableCell.isHidden.setter();
    }

    else
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002D9B90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRListDetailViewModelBadge();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002D8B38();
  v8 = TTRITableSection.isHidden.getter();

  if (v8)
  {
    goto LABEL_25;
  }

  type metadata accessor for TTRListDetailViewModel();
  TTRListDetailBadgeViewModel.badge.getter();
  v9 = (*(v5 + 88))(v7, v4);
  v42[1] = a1;
  if (v9 == enum case for TTRListDetailViewModelBadge.emblem(_:))
  {
    (*(v5 + 96))(v7, v4);
    v10 = *v7;
    v11 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    ObjectType = swift_getObjectType();
    v13 = (*(*(v11 + 8) + 24))(ObjectType);
    v14 = v13;
    v44 = *(v13 + 16);
    if (v44)
    {
      v15 = 0;
      v16 = (v13 + 56);
      v43 = v13;
      while (v15 < *(v14 + 16))
      {
        if (*v16)
        {
          v17 = *(v16 - 3);
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;
          if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
          {
            v36 = v17;

            v26 = v10;
            v37 = v10;

            v29 = 0;
            goto LABEL_23;
          }

          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v24 = v17;

          v25 = v10;
          v26 = v10;
          v27 = v2;
          v28 = v25;

          v2 = v27;
          v10 = v26;

          v14 = v43;
          if (v23)
          {
            v29 = 0;
            goto LABEL_23;
          }
        }

        ++v15;
        v16 += 4;
        if (v44 == v15)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_27;
    }

LABEL_20:
    v26 = v10;
    v15 = 0;
    v29 = 1;
LABEL_23:

    goto LABEL_24;
  }

  if (v9 == enum case for TTRListDetailViewModelBadge.emoji(_:))
  {
    (*(v5 + 8))(v7, v4);
    v30 = *(v1 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    v31 = swift_getObjectType();
    v32 = (*(*(v30 + 8) + 24))(v31);
    v33 = *(v32 + 16);
    if (v33)
    {
      v15 = 0;
      v34 = 56;
      while (1)
      {
        v35 = *(v32 + v34);
        v29 = v35 != 0;
        if (!v35)
        {
          break;
        }

        ++v15;
        v34 += 32;
        if (v33 == v15)
        {
          v15 = 0;
          break;
        }
      }
    }

    else
    {
      v15 = 0;
      v29 = 1;
    }

LABEL_24:

    sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsCell, sub_1002DD128);
    v38 = TTRITableCell.content.getter();

    v39 = TTRITableCellContent.state.modify();
    *v40 = v15;
    *(v40 + 8) = v29;
    v39(v45, 0);

LABEL_25:
    type metadata accessor for TTRListDetailViewModel();

    TTRITableSection.isHidden.setter();
  }

LABEL_27:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002D9FB0(uint64_t a1)
{
  v40 = a1;
  v1 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v1 - 8);
  v39 = &v33 - v2;
  v3 = sub_100058000(&qword_100776A30);
  __chkstk_darwin(v3 - 8);
  v36 = &v33 - v4;
  v5 = sub_100058000(&qword_100776A38);
  __chkstk_darwin(v5 - 8);
  v34 = &v33 - v6;
  v7 = type metadata accessor for TTRIHelpLinkHeaderFooterContentConfiguration();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = __chkstk_darwin(v7);
  v35 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v41 = type metadata accessor for UIListContentConfiguration();
  v12 = *(v41 - 8);
  v13 = __chkstk_darwin(v41);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = type metadata accessor for TTRLearnMoreContent();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TTRIHelpLinkHeaderFooterContentConfiguration.LearnMore();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v40) = *(v40 + *(type metadata accessor for TTRListDetailViewModel() + 40));
  if (v40 == 1)
  {
    (*(v19 + 104))(v21, enum case for TTRLearnMoreContent.customSmartList(_:), v18);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v25;
    TTRIHelpLinkHeaderFooterContentConfiguration.LearnMore.init(content:action:)();
    static UIListContentConfiguration.groupedFooter()();
    static TTRLocalizableStrings.ConvertToCustomSmartListAlert.detailsForFooter.getter();
    UIListContentConfiguration.attributedText.setter();
    (*(v12 + 16))(v15, v17, v41);
    v26 = type metadata accessor for TTRIHelpLinkHeaderFooterContentConfiguration.Help();
    (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
    v27 = v36;
    (*(v23 + 16))(v36, v25, v22);
    (*(v23 + 56))(v27, 0, 1, v22);
    TTRIHelpLinkHeaderFooterContentConfiguration.init(listContentConfiguration:help:learnMore:)();
    sub_1002D8D18();
    v29 = v37;
    v28 = v38;
    (*(v37 + 16))(v35, v11, v38);
    sub_1002DE800(&qword_100776A50, &type metadata accessor for TTRIHelpLinkHeaderFooterContentConfiguration);
    v30 = v39;
    TTRITableSectionHeaderFooter.init<A>(contentProvider:height:)();
    v31 = type metadata accessor for TTRITableSectionHeaderFooter();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    TTRITableSection.footer.setter();

    (*(v29 + 8))(v11, v28);
    (*(v12 + 8))(v17, v41);
    (*(v23 + 8))(v33, v22);
  }

  sub_1002D8D18();
  TTRITableSection.isHidden.setter();
}

uint64_t sub_1002DA5C0()
{
  v1 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell;
  if (*(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell);
  }

  else
  {
    v2 = sub_1002DA624();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1002DA624()
{
  v0 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIListDetailBadgeCellContentState(0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v20 - v9);
  v11 = REMListBadgeEmblem.image.getter();
  type metadata accessor for TTRListColors();
  static TTRListColors.defaultColor.getter();
  v12 = *(v5 + 40);
  v13 = enum case for TTRListDetailViewModelBadgeDisplayStyle.list(_:);
  v14 = type metadata accessor for TTRListDetailViewModelBadgeDisplayStyle();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = v11;
  v15 = (v10 + *(v5 + 36));
  v16 = type metadata accessor for TTRIListDetailBadgeCellContent(0);
  *v15 = 0;
  v15[1] = 0;
  v17 = objc_allocWithZone(v16);
  v18 = &v17[qword_100773438];
  *v18 = 0;
  *(v18 + 1) = 0;
  sub_1002DE684(v10, v8, type metadata accessor for TTRIListDetailBadgeCellContentState);
  (*(v1 + 104))(v3, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v0);
  TTRITableCellContent.init(state:prototypeCellView:reuseIdentifier:)();
  sub_1002DE6EC(v10, type metadata accessor for TTRIListDetailBadgeCellContentState);
  sub_100058000(&qword_10077A0F8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_1002DA8A8()
{
  v0 = type metadata accessor for TTRITextCellContentStateChangeEvent();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for TTRITextCellContentState();
  __chkstk_darwin(v1 - 8);
  [objc_allocWithZone(NSAttributedString) init];
  v2._countAndFlagsBits = 0x6D614E207473694CLL;
  v3._object = 0x800000010067E940;
  v2._object = 0xE900000000000065;
  v3._countAndFlagsBits = 0xD000000000000026;
  TTRLocalizedString(_:comment:)(v2, v3);
  TTRITextCellContentState.init(attributedText:placeholder:)();
  static TTRITextCellContentStateChangeEvent.editingChanged.getter();
  v4 = objc_allocWithZone(sub_100058000(&qword_10077A0F0));
  TTRITextCellContent.init(textAutocapitalizationType:keyboardType:state:stateChangeEvent:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRITextCellContent.stateChangeBlock.setter();

  sub_100058000(&unk_100780800);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_1002DAA88()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    v2 = result;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v3 = TTRITextCellContentState.text.getter();
    (*(*(v1 + 8) + 32))(v3);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002DAB48(uint64_t a1)
{
  v2 = sub_100058000(&qword_100777BC0);
  v3 = __chkstk_darwin(v2 - 8);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v38 - v5;
  v47 = type metadata accessor for TTRListDetailViewModel() - 8;
  v6 = __chkstk_darwin(v47);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v38 - v8;
  v10 = type metadata accessor for TTRRemindersListListType();
  v42 = *(v10 - 8);
  v11 = v42;
  v12 = __chkstk_darwin(v10);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  v44 = a1;
  v16 = *(a1 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v41 = v16;
  v18 = *(v16 + 8);
  v19 = *(v18 + 8);
  v19(ObjectType, v18);
  (*(v11 + 16))(v15, &v9[*(v47 + 76)], v10);
  sub_1002DE6EC(v9, type metadata accessor for TTRListDetailViewModel);
  v20 = v43;
  v40 = ObjectType;
  v19(ObjectType, v18);
  v21 = v42;
  LODWORD(v16) = *(v20 + *(v47 + 56));
  sub_1002DE6EC(v20, type metadata accessor for TTRListDetailViewModel);
  if (v16 != 1 || (v22 = v39, (*(v21 + 104))(v39, enum case for TTRRemindersListListType.smartList(_:), v10), sub_1002DE800(&qword_10077A0B0, &type metadata accessor for TTRRemindersListListType), v23 = dispatch thunk of static Equatable.== infix(_:_:)(), (*(v21 + 8))(v22, v10), (v23)) && ((*(v41 + 16))(v40))
  {
    v31 = type metadata accessor for TTRITableSectionHeaderFooter();
    v32 = *(*(v31 - 8) + 56);
    v32(v45, 1, 1, v31);
    v32(v46, 1, 1, v31);
    sub_100058000(&qword_1007768B0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10062D400;
    v34 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersCell, sub_1002DB0F8);
    v35 = sub_1002DE894(&qword_10077A0D8, &qword_10077A0A8);
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
  }

  else
  {
    v24 = type metadata accessor for TTRITableSectionHeaderFooter();
    v25 = *(*(v24 - 8) + 56);
    v25(v45, 1, 1, v24);
    v25(v46, 1, 1, v24);
    sub_100058000(&qword_1007768B0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10062D3F0;
    v27 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___listTypeCell, sub_1002DB598);
    v28 = sub_1002DE894(&qword_10077A0E0, &qword_10077A0C0);
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    v29 = sub_1002DD3BC(&OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___editFiltersCell, sub_1002DC1EC);
    v30 = sub_1002DE894(&qword_10077A0E8, &qword_10077A0A0);
    *(v26 + 48) = v29;
    *(v26 + 56) = v30;
  }

  type metadata accessor for TTRITableSection();
  swift_allocObject();
  v36 = TTRITableSection.init(header:footer:items:)();
  (*(v21 + 8))(v15, v10);
  return v36;
}

uint64_t sub_1002DB0F8(uint64_t a1)
{
  v31 = a1;
  v1 = type metadata accessor for TTRIDetailCellState.CheckmarkState();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRListColors.Color();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v8 - 8);
  v10 = v28 - v9;
  v11 = type metadata accessor for TTRIDetailCellState();
  __chkstk_darwin(v11 - 8);
  v12._countAndFlagsBits = 0x737265746C6946;
  v13._countAndFlagsBits = 0xD000000000000032;
  v13._object = 0x800000010067E810;
  v12._object = 0xE700000000000000;
  v14 = TTRLocalizedString(_:comment:)(v12, v13);
  v28[1] = v14._object;
  v28[2] = v14._countAndFlagsBits;
  v15._countAndFlagsBits = 0xD000000000000025;
  v15._object = 0x800000010067E850;
  v16._object = 0x800000010067E880;
  v16._countAndFlagsBits = 0xD000000000000024;
  TTRLocalizedString(_:comment:)(v15, v16);
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() _systemImageNamed:v17];

  type metadata accessor for TTRListColors();
  static TTRListColors.defaultColor.getter();
  TTRListColors.Color.nativeColor.getter();
  (*(v5 + 8))(v7, v4);
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v19 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v20 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v10, v19, v20);
  (*(v21 + 56))(v10, 0, 1, v20);
  v22 = objc_allocWithZone(NSAttributedString);
  v23 = String._bridgeToObjectiveC()();

  [v22 initWithString:v23];

  (*(v29 + 104))(v3, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v30);
  TTRIDetailCellState.init(icon:title:titleTextColor:subtitle:detailText:detailTextColor:shortenedDetailText:checkmarkState:accessibilityLabel:accessibilityValue:accessibilityHint:accessibilityDifferentiateWithoutColorsIcon:)();
  v24 = objc_allocWithZone(type metadata accessor for TTRIDetailDisclosureCellContent());
  v25 = TTRIDetailDisclosureCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v25;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_10077A0A8);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_1002DB598(uint64_t a1)
{
  v101 = a1;
  v1 = type metadata accessor for TTRListColors.Color();
  v87 = *(v1 - 8);
  v88 = v1;
  __chkstk_darwin(v1);
  v86 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100058000(&qword_100776880);
  __chkstk_darwin(v3 - 8);
  v89 = &v71 - v4;
  v5 = sub_100058000(&qword_10077A098);
  __chkstk_darwin(v5 - 8);
  v99 = &v71 - v6;
  v93 = type metadata accessor for TTRListDetailViewModel();
  __chkstk_darwin(v93);
  v94 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListListType();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  v102 = sub_100058000(&qword_1007699F8);
  v81 = *(v102 - 8);
  v15 = __chkstk_darwin(v102);
  v77 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v71 - v17;
  v19 = enum case for TTRRemindersListListType.standard(_:);
  v21 = v9 + 104;
  v20 = *(v9 + 104);
  v20(v14, enum case for TTRRemindersListListType.standard(_:), v8);
  TTRRemindersListListType.localizedOptionString.getter();
  v85 = v9;
  v22 = v9;
  v23 = v81;
  v24 = *(v22 + 8);
  v100 = v14;
  v97 = v24;
  v98 = v22 + 8;
  v24(v14, v8);
  v83 = v20;
  v84 = v21;
  v20(v12, v19, v8);
  v95 = sub_1002DE800(&qword_10077A0B0, &type metadata accessor for TTRRemindersListListType);
  v96 = v12;
  v92 = v8;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v25 = *(v23 + 104);
  v82 = enum case for TTRIOptionMenuCellContentState.Option.item<A>(_:);
  v90 = v25;
  v91 = v23 + 104;
  v25(v18);
  v26 = sub_100548160(0, 1, 1, _swiftEmptyArrayStorage);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_100548160(v27 > 1, v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v30 = *(v23 + 32);
  v29 = v23 + 32;
  v76 = *(v29 + 48);
  v31 = (v76 + 32) & ~v76;
  v32 = *(v29 + 40);
  v75 = v30;
  v30(&v26[v31 + v32 * v28], v18, v102);
  v103 = v26;
  v33 = *(v101 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter);
  v34 = *(v101 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v36 = *(v34 + 8);
  v37 = *(v36 + 8);
  v38 = v94;
  v80 = v36;
  v79 = v36 + 8;
  v78 = v37;
  v37();
  v39 = *(v38 + *(v93 + 48));
  sub_1002DE6EC(v38, type metadata accessor for TTRListDetailViewModel);
  v81 = ObjectType;
  if (v39 == 1)
  {
    v72 = v31;
    v73 = v32;
    v74 = v33;
    v40 = enum case for TTRRemindersListListType.groceries(_:);
    v41 = v100;
    v42 = v92;
    v43 = v83;
    v83(v100, enum case for TTRRemindersListListType.groceries(_:), v92);
    TTRRemindersListListType.localizedOptionString.getter();
    v97(v41, v42);
    v43(v96, v40, v42);
    v44 = v77;
    TTRIMenuItem.init(title:image:item:selectedTitle:)();
    v90(v44, v82, v102);
    v46 = *(v26 + 2);
    v45 = *(v26 + 3);
    if (v46 >= v45 >> 1)
    {
      v26 = sub_100548160(v45 > 1, v46 + 1, 1, v26);
    }

    v32 = v73;
    v31 = v72;
    *(v26 + 2) = v46 + 1;
    v75(&v26[v31 + v46 * v32], v44, v102);
    v103 = v26;
    ObjectType = v81;
  }

  if (((*(v34 + 16))(ObjectType, v34) & 1) == 0)
  {
    sub_100058000(&qword_10077A0C8);
    v47 = swift_allocObject();
    v77 = v47;
    *(v47 + 16) = xmmword_10062D3F0;
    v48 = v47 + v31;
    v90(v47 + v31, enum case for TTRIOptionMenuCellContentState.Option.separator<A>(_:), v102);
    v49 = enum case for TTRRemindersListListType.smartList(_:);
    v50 = v32;
    v51 = v100;
    v52 = v92;
    v53 = v83;
    v83(v100, enum case for TTRRemindersListListType.smartList(_:), v92);
    TTRRemindersListListType.localizedOptionString.getter();
    v97(v51, v52);
    v54 = v49;
    ObjectType = v81;
    v53(v96, v54, v52);
    TTRIMenuItem.init(title:image:item:selectedTitle:)();
    v90(v48 + v50, v82, v102);
    sub_1000818CC(v77);
  }

  v55 = v94;
  (v78)(ObjectType, v80);
  v56 = v92;
  v57 = *(v85 + 16);
  v58 = v100;
  v57(v100, v55 + *(v93 + 68), v92);
  sub_1002DE6EC(v55, type metadata accessor for TTRListDetailViewModel);
  v59 = String._bridgeToObjectiveC()();
  v60 = [objc_opt_self() _systemImageNamed:v59];

  type metadata accessor for TTRListColors();
  v61 = v86;
  static TTRListColors.defaultColor.getter();
  TTRListColors.Color.nativeColor.getter();
  (*(v87 + 8))(v61, v88);
  v62 = v89;
  TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
  v63 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
  v64 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  v65 = *(v64 - 8);
  (*(v65 + 104))(v62, v63, v64);
  (*(v65 + 56))(v62, 0, 1, v64);
  v66._countAndFlagsBits = 0x707954207473694CLL;
  v67._object = 0x800000010067E910;
  v66._object = 0xE900000000000065;
  v67._countAndFlagsBits = 0xD00000000000002ALL;
  TTRLocalizedString(_:comment:)(v66, v67);
  v57(v96, v58, v56);
  TTRIOptionMenuCellContentState.init(icon:title:ttriAccessibilitySubtitle:menuOptions:selectedItem:isSeparatorHidden:)();
  v68 = objc_allocWithZone(sub_100058000(&qword_10077A0B8));
  TTRIOptionMenuCellContent.init(state:menuImageProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  TTRIOptionMenuCellContent.stateChangeBlock.setter();
  sub_100058000(&qword_10077A0C0);
  swift_allocObject();
  v69 = TTRITableCell.init(_:)();
  v97(v58, v56);
  return v69;
}

void sub_1002DC094()
{
  v0 = type metadata accessor for TTRRemindersListListType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    sub_100058000(&qword_10077A098);
    TTRIOptionMenuCellContentState.selectedItem.getter();
    (*(*(v5 + 8) + 64))(v3, ObjectType);
    (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1002DC1EC()
{
  v0 = type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor(0);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State(0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12._countAndFlagsBits = 0x6C69462074696445;
  v12._object = 0xEC00000073726574;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  *&v10[*(v5 + 28)] = TTRLocalizedString(_:comment:)(v12, v13);
  objc_allocWithZone(type metadata accessor for TTRIListDetailEditFiltersCellContent(0));
  v14 = enum case for TTRITableCellContentPrototypeCellView.cellClass(_:);
  v15 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  (*(*(v15 - 8) + 104))(v3, v14, v15);
  v16 = &v3[*(v1 + 28)];
  *v16 = 0xD000000000000011;
  *(v16 + 1) = 0x800000010067E6B0;
  sub_1002DE684(v10, v8, type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State);
  v17 = TTRIGenericCellContent.init(adaptor:hasDisclosure:state:)();
  sub_1002DE6EC(v10, type metadata accessor for TTRIListDetailEditFiltersCellStateAdaptor.State);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v17;

  dispatch thunk of TTRIGenericCellContent.action.setter();

  sub_100058000(&qword_10077A0A0);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_1002DC4A8()
{
  v0 = type metadata accessor for TTRITipKitSignal();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 32);
    swift_unknownObjectRetain();
    v8(1, ObjectType, v5);
    swift_unknownObjectRelease();
    (*(v1 + 104))(v3, enum case for TTRITipKitSignal.editedCustomSmartList(_:), v0);
    v9.value._countAndFlagsBits = static TTRITipKitSignalContext.ListDetail.editFilters.getter();
    TTRITipKitSignal.donate(signalContext:)(v9);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1002DC634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListListType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListDetailViewModel();
  v9 = v8;
  if (*(a1 + *(v8 + 32)) == 1 && (*(a1 + *(v8 + 28)) & 1) != 0)
  {
LABEL_7:
    v10 = 1;
    return v10 & 1;
  }

  (*(v5 + 104))(v7, enum case for TTRRemindersListListType.standard(_:), v4);
  sub_1002DE800(&qword_10077A0D0, &type metadata accessor for TTRRemindersListListType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v5 + 8))(v7, v4);
  if (v14[1] == v14[0] && (*(a1 + *(v9 + 48)) & 1) == 0)
  {
    v11 = *(a2 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    ObjectType = swift_getObjectType();
    if (((*(v11 + 16))(ObjectType, v11) & 1) == 0)
    {
      v10 = *(a1 + *(v9 + 44)) ^ 1;
      return v10 & 1;
    }

    goto LABEL_7;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1002DC828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRListColors.Color();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListListType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRListDetailViewModel();
  (*(v9 + 16))(v11, a1 + *(v12 + 68), v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRRemindersListListType.standard(_:) || v13 == enum case for TTRRemindersListListType.groceries(_:) || v13 == enum case for TTRRemindersListListType.smartList(_:))
  {
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_opt_self() _systemImageNamed:v14];

    type metadata accessor for TTRListColors();
    static TTRListColors.defaultColor.getter();
    TTRListColors.Color.nativeColor.getter();
    (*(v5 + 8))(v7, v4);
    TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)();
    v16 = enum case for TTRIStaticTableViewStandardCell.Icon.roundRectIcon(_:);
    v17 = type metadata accessor for TTRIStaticTableViewStandardCell.Icon();
    return (*(*(v17 - 8) + 104))(a2, v16, v17);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DCB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100058000(&qword_100777BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for TTRRemindersListListType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRListDetailViewModel();
  (*(v10 + 16))(v12, a1 + *(v13 + 68), v9);
  v14 = (*(v10 + 88))(v12, v9);
  if (v14 == enum case for TTRRemindersListListType.standard(_:))
  {
    v15 = type metadata accessor for TTRITableSectionHeaderFooter();
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }

  else if (v14 == enum case for TTRRemindersListListType.groceries(_:))
  {
    v17._countAndFlagsBits = 0xD00000000000002BLL;
    v17._object = 0x800000010067E760;
    v18._countAndFlagsBits = 0xD000000000000034;
    v18._object = 0x800000010067E790;
    v19._countAndFlagsBits = 0xD000000000000030;
    v19._object = 0x800000010067E7D0;
    TTRLocalizedString(_:value:comment:)(v17, v18, v19);
    TTRITableSectionHeaderFooter.init(title:height:)();
    v20 = type metadata accessor for TTRITableSectionHeaderFooter();
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }

  else if (v14 == enum case for TTRRemindersListListType.smartList(_:))
  {
    v21 = *(a2 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    ObjectType = swift_getObjectType();
    if ((*(v21 + 16))(ObjectType, v21))
    {
      v23 = 1;
    }

    else
    {
      v24._countAndFlagsBits = 0xD000000000000029;
      v24._object = 0x800000010067E6D0;
      v25._object = 0x800000010067E700;
      v26._countAndFlagsBits = 0xD00000000000002ELL;
      v26._object = 0x800000010067E730;
      v25._countAndFlagsBits = 0xD000000000000026;
      TTRLocalizedString(_:value:comment:)(v24, v25, v26);
      TTRITableSectionHeaderFooter.init(title:height:)();
      v23 = 0;
    }

    v27 = type metadata accessor for TTRITableSectionHeaderFooter();
    (*(*(v27 - 8) + 56))(v8, v23, 1, v27);
    return sub_1002DE5E8(v8, a3);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DCE58(uint64_t a1)
{
  v2 = type metadata accessor for TTRITableCellContentPrototypeCellView();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v8 = (*(*(v6 + 8) + 16))(ObjectType);
  v9 = objc_allocWithZone(type metadata accessor for TTRIListDetailColorsContent());
  v10 = &v9[qword_100768C18];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[qword_100768C20] = v8;
  v16 = 0;
  v17 = 1;
  (*(v3 + 104))(v5, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v2);
  v11 = TTRITableCellContent.init(state:prototypeCellView:reuseIdentifier:)();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = (v11 + qword_100768C18);
  v14 = *(v11 + qword_100768C18);
  *v13 = sub_1002DE5DC;
  v13[1] = v12;

  sub_1000301AC(v14);

  sub_100058000(&qword_10077A090);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

void sub_1002DD060(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((a2 & 1) == 0)
    {
      v5 = *&Strong[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
      v6 = Strong;
      ObjectType = swift_getObjectType();
      v8 = *(v5 + 8);
      v9 = *(v8 + 40);
      swift_unknownObjectRetain();
      v9(a1, ObjectType, v8);
      swift_unknownObjectRelease();
      Strong = v6;
    }
  }
}

id sub_1002DD128(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
  ObjectType = swift_getObjectType();
  v4 = (*(*(v2 + 8) + 24))(ObjectType);
  result = [a1 view];
  if (result)
  {
    v6 = result;
    v7 = objc_allocWithZone(type metadata accessor for TTRIListDetailEmblemsContent());
    v8 = sub_1005D04D8(0, 1, 0, 0, v4);

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = (v8 + qword_100790FF0);
    v11 = *(v8 + qword_100790FF0);
    *v10 = sub_1002DE5C8;
    v10[1] = v9;

    sub_1000301AC(v11);

    sub_100058000(&qword_10077A080);
    swift_allocObject();
    return TTRITableCell.init(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002DD280(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      if (a4)
      {
        v9 = *&Strong[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
        v10 = Strong;
        ObjectType = swift_getObjectType();
        v12 = *(v9 + 8);
        v13 = *(v12 + 56);
        swift_unknownObjectRetain();
        v13(a3, a4, ObjectType, v12);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v14 = *&Strong[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
      v15 = Strong;
      v16 = swift_getObjectType();
      v17 = *(v14 + 8);
      v18 = *(v17 + 48);
      swift_unknownObjectRetain();
      v18(a1, v16, v17);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1002DD3BC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_1002DD424()
{
  v0 = type metadata accessor for TTRIButtonCellContentState();
  __chkstk_darwin(v0 - 8);
  v1._object = 0x800000010067C170;
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x800000010067E660;
  v1._countAndFlagsBits = 0xD000000000000015;
  TTRLocalizedString(_:comment:)(v1, v2);
  TTRIButtonCellContentState.init(title:)();
  v3 = objc_allocWithZone(type metadata accessor for TTRIButtonCellContent());
  TTRIButtonCellContent.init(state:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRIButtonCellContent.action.setter();

  sub_100058000(&qword_10077A078);
  swift_allocObject();
  return TTRITableCell.init(_:)();
}

uint64_t sub_1002DD574()
{
  v0 = type metadata accessor for TTRITipKitSignal();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    v6 = result;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 40);
    swift_unknownObjectRetain();
    v8(ObjectType, v5);
    swift_unknownObjectRelease();
    (*(v1 + 104))(v3, enum case for TTRITipKitSignal.editedCustomSmartList(_:), v0);
    v9.value._countAndFlagsBits = static TTRITipKitSignalContext.ListDetail.convertList.getter();
    TTRITipKitSignal.donate(signalContext:)(v9);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_1002DD6FC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
    v2 = result;
    ObjectType = swift_getObjectType();
    v4 = OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_cslHelpAnchor;
    v5 = *(v1 + 64);
    swift_unknownObjectRetain();
    v5(&v2[v4], ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002DD940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1002DD9D8, v6, v5);
}

uint64_t sub_1002DD9D8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 48) + **(v1 + 48));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1002DDB08;

  return v5(ObjectType, v1);
}

uint64_t sub_1002DDB08()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10001E828, v3, v2);
}

void sub_1002DDD94()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRListDetailViewModel();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 navigationItem];
  v10 = *&v0[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_presenter + 8];
  ObjectType = swift_getObjectType();
  (*(*(v10 + 8) + 8))(ObjectType);

  sub_1002DE6EC(v8, type metadata accessor for TTRListDetailViewModel);
  v12 = String._bridgeToObjectiveC()();

  [v9 setTitle:v12];

  v13 = *&v1[OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController];
  if (v13)
  {
    *v5 = 1;
    v14 = (*(v3 + 104))(v5, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v2);
    __chkstk_darwin(v14);
    *(&v16 - 2) = v1;
    v15 = v13;
    TTRITableDataController.performBatchUpdates(by:updates:)();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t type metadata accessor for TTRIListDetailViewController()
{
  result = qword_10077A060;
  if (!qword_10077A060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DE200()
{
  result = type metadata accessor for TTRHelpAnchor();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1002DE304()
{
  v1 = sub_100058000(&qword_100776A40);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_100058000(&qword_100776A48);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_tableDataController) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController_autoBeginEditingPerformed) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___badgeCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___nameCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___filtersCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___listTypeCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___editFiltersCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___colorsCell) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___emblemsCell) = 0;
  static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
  TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
  v7 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListSection) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders28TTRIListDetailViewController____lazy_storage___makeListIntoCustomSmartListActionCell) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002DE5E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100777BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002DE684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002DE6EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002DE74C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_1002DD940(a1, v4, v5, v6);
}

uint64_t sub_1002DE800(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002DE848()
{
  result = qword_100771B60;
  if (!qword_100771B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100771B60);
  }

  return result;
}

uint64_t sub_1002DE894(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002DE8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  sub_1001AAABC(a1, v19);
  v7 = v20;
  if (v20)
  {
    v8 = sub_10000C36C(v19, v20);
    v9 = *(v7 - 8);
    v10 = __chkstk_darwin(v8);
    v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    sub_100004758(v19);
  }

  else
  {
    v13 = 0;
  }

  v18.receiver = v3;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "initWithTarget:action:", v13, a2);
  swift_unknownObjectRelease();
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  [v15 setName:v16];

  [v15 setDelegate:v15];
  [v15 setCancelsTouchesInView:0];
  [v15 setDelaysTouchesBegan:0];
  [v15 setDelaysTouchesEnded:0];

  sub_10000B070(a1);
  return v15;
}

uint64_t sub_1002DEB88(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 2;
  }

  v3 = Strong;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v4 = sub_1000A9AE0(a1);
    if (v4)
    {
      v5 = v4;
      [v4 locationInView:v3];
      v7 = v6;
      v9 = v8;
      [v3 contentSize];
      v15.size.width = v10;
      v15.size.height = v11;
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v14.x = v7;
      v14.y = v9;
      v12 = CGRectContainsPoint(v15, v14);

      return v12;
    }

    goto LABEL_8;
  }

  if (*(a1 + 16) == 1)
  {
    goto LABEL_6;
  }

LABEL_8:

  return 2;
}

uint64_t sub_1002DEDD8(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0xD000000000000023 && 0x800000010067EA80 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1002DEE84()
{
  result = qword_10077A1B0;
  if (!qword_10077A1B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10077A1B0);
  }

  return result;
}

unint64_t sub_1002DEED0()
{
  result = qword_10077A1B8;
  if (!qword_10077A1B8)
  {
    sub_1002DEE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A1B8);
  }

  return result;
}

void sub_1002DEF28()
{
  _StringGuts.grow(_:)(24);
  v0 = TTRAppBundleIdentifier.getter();
  v2 = v1;

  v3._object = 0x800000010067EB90;
  v3._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v3);
  qword_10077A1C0 = v0;
  *algn_10077A1C8 = v2;
}

uint64_t type metadata accessor for TTRIRemindersBoardColumnDragItem()
{
  result = qword_10077A1F8;
  if (!qword_10077A1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DF0A4()
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
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

Class sub_1002DF218()
{
  sub_100058000(&unk_100771E10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10062D400;
  if (qword_100767160 != -1)
  {
    swift_once();
  }

  v1 = *algn_10077A1C8;
  *(v0 + 32) = qword_10077A1C0;
  *(v0 + 40) = v1;

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

uint64_t sub_1002DF358(uint64_t a1)
{
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(28);

  if (qword_100767160 != -1)
  {
    swift_once();
  }

  String.append(_:)(xmmword_10077A1C0);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 internalErrorWithDebugDescription:{v3, 0xD00000000000001ALL, 0x800000010067EBB0}];

  v5 = _convertErrorToNSError(_:)();
  (*(a1 + 16))(a1, 0, v5);

  return 0;
}

uint64_t sub_1002DF6A8()
{

  return v0;
}

uint64_t sub_1002DF718()
{
  sub_1002DF6A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1002DF7A4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077A490);
  v1 = sub_100003E30(v0, qword_10077A490);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1002DF86C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton] = 0;
  v10 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  v11 = type metadata accessor for TTRPermissionConfiguration.Header();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v50.receiver = v4;
  v50.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v50, "initWithFrame:", a1, a2, a3, a4);
  sub_1002E2148();
  v13 = v12;
  UICollectionViewCell.contentConfiguration.setter();
  v14 = [v13 contentView];
  type metadata accessor for ContentGridView(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    if (qword_100767168 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100003E30(v16, qword_10077A490);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "TTRIInlinePermissionViewCell_collectionView: failed to create ContentGridView", v19, 2u);
    }

    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v14 = v15;
  }

  v20 = v15;
  v21 = v14;
  v22 = *&v13[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView];
  *&v13[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView] = v20;
  v49 = v20;

  sub_100003540(0, &qword_10076B020);
  sub_100058000(&unk_100771E00);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1006337E0;
  *(v23 + 32) = sub_1002DFF88();
  *(v23 + 40) = 1144750080;
  *(v23 + 48) = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel, &static UIFont.roundedHeadlineFont.getter, &static UIColor.ttrLabelColor.getter);
  *(v23 + 56) = 1132068864;
  *(v23 + 64) = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel, &static UIFont.roundedSubheadlineFont.getter, &static UIColor.ttrSecondaryLabelColor.getter);
  *(v23 + 72) = 1132068864;
  *(v23 + 80) = sub_1002E004C();
  *(v23 + 88) = 1144750080;
  sub_100058000(&qword_1007884F0);
  v24 = type metadata accessor for TTRIViewContentPriorityType();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v48 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10062D3F0;
  v29 = (v28 + v27);
  *v29 = 0;
  v47 = enum case for TTRIViewContentPriorityType.hugging(_:);
  v30 = *(v25 + 104);
  v30(v28 + v27);
  *(v29 + v26) = 0;
  v46 = enum case for TTRIViewContentPriorityType.compressionResistance(_:);
  v30(v29 + v26);
  static UIView.setContentPriorities(_:for:)();

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1006337E0;
  v32 = *&v13[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView];
  *(v31 + 32) = v32;
  *(v31 + 40) = 1144750080;
  v33 = v13;
  v34 = *&v13[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel];
  *(v31 + 48) = v34;
  type metadata accessor for UILayoutPriority(0);
  sub_1002E2894(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  v35 = v32;
  v36 = v34;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v37 = *&v33[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel];
  *(v31 + 64) = v37;
  v38 = v37;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v39 = *&v33[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton];
  *(v31 + 80) = v39;
  *(v31 + 88) = 1144750080;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10062D3F0;
  v41 = v40 + v48;
  *(v40 + v48) = 1;
  (v30)(v40 + v48, v47, v24);
  *(v41 + v26) = 1;
  (v30)(v41 + v26, v46, v24);
  v42 = v39;
  static UIView.setContentPriorities(_:for:)();

  v43 = v49;
  [v43 setHorizontalDistribution:0];
  [v43 setVerticalDistribution:0];
  [v43 setHorizontalAlignment:1];
  [v43 setVerticalAlignment:1];
  [v43 setColumnSpacing:12.0];
  [v43 setRowSpacing:4.0];

  [v43 setPreservesSuperviewLayoutMargins:1];
  v44 = v43;
  [v44 setLayoutMarginsRelativeArrangement:1];
  [v44 setDelegate:v33];

  sub_1002E0324();
  return v33;
}

id sub_1002DFF88()
{
  v1 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView);
  }

  else
  {
    v4 = sub_1002E1730();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1002DFFE8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_1002E18D4(a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_1002E004C()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton;
  v10 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton];
  }

  else
  {
    static UIButton.Configuration.plain()();
    v12 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleHeadline scale:1];
    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() _systemImageNamed:v13 withConfiguration:v12];

    UIButton.Configuration.image.setter();
    sub_100003540(0, &qword_100772610);
    static UIColor.ttrTertiaryLabelColor.getter();
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.Configuration.contentInsets.setter();
    sub_100003540(0, &unk_10077A690);
    (*(v3 + 16))(v5, v8, v2);
    sub_100003540(0, &qword_10076BA60);
    *(swift_allocObject() + 16) = v1;
    v15 = v1;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v16 = UIButton.init(configuration:primaryAction:)();

    (*(v3 + 8))(v8, v2);
    v17 = *&v1[v9];
    *&v1[v9] = v16;
    v11 = v16;

    v10 = 0;
  }

  v18 = v10;
  return v11;
}

id sub_1002E0324()
{
  sub_100058000(&qword_10076B780);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006322B0;
  *(v1 + 32) = sub_1002DFF88();
  *(v1 + 40) = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel, &static UIFont.roundedHeadlineFont.getter, &static UIColor.ttrLabelColor.getter);
  *(v1 + 48) = sub_1002E004C();
  v2 = _swiftEmptyArrayStorage;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100547B84(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    v23 = v2;
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100547B84((v3 > 1), v4 + 1, 1, v2);
  }

  v2[2] = v4 + 1;
  v2[v4 + 4] = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006322B0;
  v6 = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView];
  *(v5 + 32) = v6;
  v7 = v6;
  *(v5 + 40) = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel, &static UIFont.roundedSubheadlineFont.getter, &static UIColor.ttrSecondaryLabelColor.getter);
  *(v5 + 48) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100547B84(0, v2[2] + 1, 1, v2);
  }

  v9 = v2[2];
  v8 = v2[3];
  if (v9 >= v8 >> 1)
  {
    v2 = sub_100547B84((v8 > 1), v9 + 1, 1, v2);
  }

  v2[2] = v9 + 1;
  v2[v9 + 4] = v5;
  v23 = v2;
  v10 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView;
  result = *&v0[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [result arrangedSubviewRows];
  if (result)
  {
    v12 = result;
    sub_100058000(&unk_10076BCD0);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v12) = sub_10012678C(v13, v2);

    if (v12)
    {
      v14 = 0;
LABEL_16:

      return sub_1000301AC(v14);
    }
  }

  v15 = *&v0[v10];
  if (v15)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v0;
    *(v16 + 24) = &v23;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1002E28DC;
    *(v17 + 24) = v16;
    aBlock[4] = sub_100026410;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10071EB98;
    v18 = _Block_copy(aBlock);
    v19 = v15;
    v20 = v0;

    [v19 performBatchUpdates:v18];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v14 = sub_1002E28DC;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1002E0790(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_100058000(&qword_10076BE20);
  __chkstk_darwin(v3 - 8);
  v38 = &v34 - v4;
  v5 = type metadata accessor for TTRPermissionConfiguration.Header();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077A660);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for TTRIAccountsListsItemIntermediateViewModel();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  __chkstk_darwin(v21);
  v23 = &v34 - v22;
  v39 = v2;
  sub_100030908();
  sub_100058000(&qword_10076EA28);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  sub_10000794C(&v13[*(v11 + 28)], v9, &unk_10077A660);
  v24 = sub_100058000(&qword_10077A670);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    sub_1000299A4(v13);
    return sub_1000079B4(v9, &unk_10077A660);
  }

  else
  {
    TTRDiffableEquatableWrapper.base.getter();
    sub_1000299A4(v13);
    (*(v25 + 8))(v9, v24);
    (*(v15 + 32))(v23, v20, v14);
    (*(v15 + 16))(v17, v23, v14);
    if ((*(v15 + 88))(v17, v14) == enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:))
    {
      (*(v15 + 96))(v17, v14);
      v27 = type metadata accessor for TTRAccountsListsViewModel.PermissionRequest();
      v28 = *(v27 - 8);
      if ((*(v28 + 88))(v17, v27) == enum case for TTRAccountsListsViewModel.PermissionRequest.header(_:))
      {
        (*(v28 + 96))(v17, v27);
        v30 = v35;
        v29 = v36;
        v31 = v37;
        (*(v36 + 32))(v35, v17, v37);
        v32 = v38;
        (*(v29 + 16))(v38, v30, v31);
        (*(v29 + 56))(v32, 0, 1, v31);
        sub_1002E0D14(v32);
        (*(v29 + 8))(v30, v31);
        return (*(v15 + 8))(v23, v14);
      }

      else
      {
        (*(v15 + 8))(v23, v14);
        return (*(v28 + 8))(v17, v27);
      }
    }

    else
    {
      v33 = *(v15 + 8);
      v33(v23, v14);
      return (v33)(v17, v14);
    }
  }
}

uint64_t sub_1002E0D14(uint64_t a1)
{
  v3 = type metadata accessor for TTRPermissionConfiguration.Header();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076BE20);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100058000(&qword_10077A678);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_10000794C(v1 + v13, v12, &qword_10076BE20);
  sub_10000794C(a1, &v12[v14], &qword_10076BE20);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) != 1)
  {
    sub_10000794C(v12, v8, &qword_10076BE20);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v17 = v20;
      (*(v4 + 32))(v20, &v12[v14], v3);
      sub_1002E2894(&qword_10077A680, &type metadata accessor for TTRPermissionConfiguration.Header);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v17, v3);
      v19(v8, v3);
      sub_1000079B4(v12, &qword_10076BE20);
      if (v18)
      {
        return sub_1000079B4(a1, &qword_10076BE20);
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
LABEL_6:
    sub_1000079B4(v12, &qword_10077A678);
LABEL_7:
    sub_1002E1334(a1);
    return sub_1000079B4(a1, &qword_10076BE20);
  }

  if (v15(&v12[v14], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000079B4(v12, &qword_10076BE20);
  return sub_1000079B4(a1, &qword_10076BE20);
}

uint64_t sub_1002E107C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UIListContentConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20[-1] - v10;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "_bridgedUpdateConfigurationUsingState:", isa);

  static UIListContentConfiguration.cell()();
  v13 = type metadata accessor for UICellConfigurationState();
  v20[3] = v13;
  v20[4] = &protocol witness table for UICellConfigurationState;
  v14 = sub_1000317B8(v20);
  (*(*(v13 - 8) + 16))(v14, a1, v13);
  UIListContentConfiguration.updated(for:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  result = sub_100004758(v20);
  v17 = *&v2[OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView];
  if (v17)
  {
    v18 = v17;
    UIView.applyLayoutMargins(from:)();

    return (v15)(v11, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E1334(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10077A688);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_100058000(&qword_10076BE20);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = type metadata accessor for TTRPermissionConfiguration.Header();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  swift_beginAccess();
  sub_1002E2800(a1, v2 + v14);
  swift_endAccess();
  sub_10000794C(v2 + v14, v9, &qword_10076BE20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_10076BE20);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = sub_1002DFF88();
  TTRPermissionConfiguration.Header.icon.getter();
  dispatch thunk of TTRListBadgeView.image.setter();

  v17 = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel, &static UIFont.roundedHeadlineFont.getter, &static UIColor.ttrLabelColor.getter);
  TTRPermissionConfiguration.Header.title.getter();
  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  v19 = sub_1002E004C();
  TTRPermissionConfiguration.Header.action.getter();
  v20 = type metadata accessor for TTRPermissionConfiguration.Action();
  v21 = (*(*(v20 - 8) + 48))(v6, 1, v20) == 1;
  sub_1000079B4(v6, &qword_10077A688);
  [v19 setHidden:v21];

  v22 = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel, &static UIFont.roundedSubheadlineFont.getter, &static UIColor.ttrSecondaryLabelColor.getter);
  [v22 setHidden:(TTRPermissionConfiguration.Header.showsBodyLabel.getter() & 1) == 0];

  if (TTRPermissionConfiguration.Header.showsBodyLabel.getter())
  {
    v23 = *(v2 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel);
    TTRPermissionConfiguration.Header.body.getter();
    if (v24)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    [v23 setText:v25];
  }

  return (*(v11 + 8))(v13, v10);
}

id sub_1002E1730()
{
  v0 = type metadata accessor for TTRListBadgeView.Shape();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView()) initWithFrame:{0.0, 0.0, 32.0, 32.0}];
  v5 = [objc_opt_self() whiteColor];
  dispatch thunk of TTRListBadgeView.imageColor.setter();
  sub_100003540(0, &qword_100772610);
  v6 = v4;
  v7 = static UIColor.ttrSecondaryLabelColor.getter();
  [v6 setTintColor:v7];

  (*(v1 + 104))(v3, enum case for TTRListBadgeView.Shape.round(_:), v0);
  dispatch thunk of TTRListBadgeView.shape.setter();
  dispatch thunk of TTRListBadgeView.contentInset.setter();
  [v6 setAccessibilityElementsHidden:1];
  return v6;
}

id sub_1002E18D4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = [objc_allocWithZone(UILabel) init];
  sub_100003540(0, &qword_100771DF0);
  v5 = a1();
  [v4 setFont:v5];

  sub_100003540(0, &qword_100772610);
  v6 = a2();
  [v4 setTextColor:v6];

  [v4 setTextAlignment:4];
  [v4 setNumberOfLines:0];
  [v4 setLineBreakMode:0];
  return v4;
}

void sub_1002E19DC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView);
  if (v1)
  {
    v2 = v1;

    sub_100058000(&unk_10076BCD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setArrangedSubviewRows:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002E1A80()
{
  sub_10003B788(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_delegate);

  return sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration, &qword_10076BE20);
}

id sub_1002E1C94(uint64_t a1)
{
  if (*(a1 + qword_10077A580))
  {
    v1 = *(a1 + qword_10077A580 + 8);
    v4[4] = *(a1 + qword_10077A580);
    v4[5] = v1;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10001047C;
    v4[3] = &unk_10071EAF8;
    v2 = _Block_copy(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1002E1D5C(char *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1002E219C;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[qword_10077A580];
  v8 = *&a1[qword_10077A580];
  *v7 = v6;
  v7[1] = v4;
  v9 = a1;
  sub_1000301AC(v8);
}

id sub_1002E1E08(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_10077A580];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&a1[qword_10077A588] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1002E1E94(char *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100058000(&unk_10076BCD0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = &a1[qword_10077A580];
    *v6 = 0;
    *(v6 + 1) = 0;
    *&a1[qword_10077A588] = 0;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = &a1[qword_10077A580];
    *v7 = 0;
    *(v7 + 1) = 0;
    *&a1[qword_10077A588] = 0;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithArrangedSubviewRows:", isa);

  return v8;
}

id sub_1002E1F78(char *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = &a1[qword_10077A580];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&a1[qword_10077A588] = 0;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", v7);

  if (v8)
  {
  }

  return v8;
}

unint64_t sub_1002E204C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForContentGridView;
  result = sub_1002E2148();
  *(a1 + 32) = result;
  return result;
}

void (*sub_1002E2080(uint64_t *a1))(uint64_t *a1)
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
  *(v2 + 24) = &type metadata for ContentConfigurationForContentGridView;
  *(v2 + 32) = sub_1002E2148();
  return sub_10009D584;
}

uint64_t sub_1002E20F8(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650);
  return swift_dynamicCast();
}

unint64_t sub_1002E2148()
{
  result = qword_10077A658;
  if (!qword_10077A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A658);
  }

  return result;
}

id sub_1002E21A4()
{
  type metadata accessor for ContentGridView(0);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1002E2894(&unk_10077A6C0, type metadata accessor for ContentGridView);
  return v0;
}

void sub_1002E221C()
{
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___iconView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___bodyLabel) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___dismissButton) = 0;
  v1 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  v2 = type metadata accessor for TTRPermissionConfiguration.Header();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002E2318()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10077A688);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for TTRPermissionConfiguration.Action();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v19 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_10076BE20);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for TTRPermissionConfiguration.Header();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_appliedConfiguration;
  swift_beginAccess();
  sub_10000794C(v1 + v14, v9, &qword_10076BE20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000079B4(v9, &qword_10076BE20);
  }

  (*(v11 + 32))(v13, v9, v10);
  TTRPermissionConfiguration.Header.action.getter();
  v16 = v20;
  if ((*(v20 + 48))(v4, 1, v5) == 1)
  {
    (*(v11 + 8))(v13, v10);
    return sub_1000079B4(v4, &qword_10077A688);
  }

  else
  {
    v17 = v19;
    (*(v16 + 32))(v19, v4, v5);
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_1002E2894(&unk_10077A6A0, type metadata accessor for TTRIAccountsListsInlinePermissionHeaderCell);
      dispatch thunk of TTRInlinePermissionViewDelegate.inlinePermissionView(_:didRequestAction:)();
      swift_unknownObjectRelease();
    }

    (*(v16 + 8))(v17, v5);
    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1002E26C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell_containerView);
  if (v1)
  {
    v8 = v1;
    v2 = sub_1002DFFE8(&OBJC_IVAR____TtC9Reminders43TTRIAccountsListsInlinePermissionHeaderCell____lazy_storage___titleLabel, &static UIFont.roundedHeadlineFont.getter, &static UIColor.ttrLabelColor.getter);
    UIView.leadingSpace(to:)();
    v4 = v3;
    v5 = qword_10077A588;
    if ((sub_10002E9C4(*&v8[qword_10077A588], 0.0000000149011612, v3) & 1) != 0 || (*&v8[v5] = v4, (v6 = *&v8[qword_10077A580]) == 0))
    {
    }

    else
    {

      v6(v7);

      sub_1000301AC(v6);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002E2800(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BE20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E2894(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002E28FC(uint64_t a1)
{
  v55 = type metadata accessor for TTRSectionID();
  v53 = *(v55 - 8);
  v2 = __chkstk_darwin(v55);
  v54 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v45 = v44 - v5;
  __chkstk_darwin(v4);
  v51 = v44 - v6;
  v7 = sub_100460C58(_swiftEmptyArrayStorage);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10001DF64();
    sub_10001DDC4(&qword_10076D1D0, sub_10001DF64);
    Set.Iterator.init(_cocoa:)();
    a1 = v58;
    v8 = v59;
    v9 = v60;
    v10 = v61;
    v11 = v62;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v10 = 0;
  }

  v15 = (v9 + 64) >> 6;
  v44[0] = v9;
  v44[1] = v53 + 16;
  v48 = enum case for TTRSectionID.sectionless(_:);
  v46 = v53 + 40;
  v47 = (v53 + 104);
  v49 = a1;
  v50 = (v53 + 32);
  v52 = (v53 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  while (a1 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v56 = v21, sub_10001DF64(), swift_dynamicCast(), v20 = v57, v18 = v10, v19 = v11, !v57))
    {
LABEL_32:
      sub_10008BA48();
      return v7;
    }

LABEL_19:
    v22 = sub_1002E3980();
    if (*(v22 + 16) && (v23 = sub_1002613B0(v20), (v24 & 1) != 0))
    {
      v25 = v53;
      v26 = v45;
      v27 = v55;
      (*(v53 + 16))(v45, *(v22 + 56) + *(v53 + 72) * v23, v55);

      v28 = *(v25 + 32);
      v29 = v51;
      v28(v51, v26, v27);
    }

    else
    {

      v29 = v51;
      v27 = v55;
      (*v47)(v51, v48, v55);
      v28 = *v50;
    }

    v28(v54, v29, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v7;
    v31 = sub_1002613B0(v20);
    v33 = v7[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_34;
    }

    v37 = v32;
    if (v7[3] >= v36)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = v31;
        sub_1003AE274();
        v31 = v42;
      }
    }

    else
    {
      sub_100549434(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1002613B0(v20);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_36;
      }
    }

    v39 = v55;
    v7 = v57;
    if (v37)
    {
      (*(v53 + 40))(v57[7] + *(v53 + 72) * v31, v54, v55);
    }

    else
    {
      v57[(v31 >> 6) + 8] |= 1 << v31;
      *(v7[6] + 8 * v31) = v20;
      v28((v7[7] + *(v53 + 72) * v31), v54, v39);
      v40 = v7[2];
      v35 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v35)
      {
        goto LABEL_35;
      }

      v7[2] = v41;
    }

    v10 = v18;
    v11 = v19;
    a1 = v49;
  }

  v16 = v10;
  v17 = v11;
  v18 = v10;
  if (v11)
  {
LABEL_15:
    v19 = (v17 - 1) & v17;
    v20 = *(*(a1 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v20)
    {
      goto LABEL_32;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_32;
    }

    v17 = *(v8 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_10001DF64();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E2DE0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077A6D0);
  v1 = sub_100003E30(v0, qword_10077A6D0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_1002E2EA8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_1002E2F08(v0);
    *(v0 + 16) = v1;
  }

  return v1;
}

void *sub_1002E2F08(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  __chkstk_darwin(v2 - 8);
  v30 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRSectionLite();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 72);
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v31 = _swiftEmptyArrayStorage;
    sub_1004A1AE0(0, v9, 0);
    v10 = v31;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v25 = *(v11 + 56);
    v26 = v12;
    v14 = (v11 - 8);
    v24 = v6 + 32;
    v15 = v23;
    do
    {
      v16 = v27;
      v17 = v29;
      v18 = v11;
      v26(v27, v13, v29);
      REMRemindersListDataView.SectionLite.type.getter();
      TTRSectionLite.init(sectionType:)();
      (*v14)(v16, v17);
      v31 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_1004A1AE0(v19 > 1, v20 + 1, 1);
        v15 = v23;
        v10 = v31;
      }

      v10[2] = v20 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v15, v28);
      v13 += v25;
      --v9;
      v11 = v18;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1002E31CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_1002E322C(v0);
    v1 = v2;
    *(v0 + 24) = v2;
  }

  return v1;
}

void sub_1002E322C(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = *(a1 + 72);
  v27 = *(v10 + 16);
  if (v27)
  {
    v11 = 0;
    v21 = (v3 + 8);
    v25 = (v3 + 32);
    v26 = v3 + 16;
    v12 = _swiftEmptyArrayStorage;
    v23 = v5;
    v24 = v2;
    v22 = v10;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = *(v3 + 72);
      (*(v3 + 16))(v9, v10 + v13 + v14 * v11, v2, v7);
      if (REMRemindersListDataView.SectionLite.isEmpty.getter())
      {
        v15 = *v25;
        (*v25)(v5, v9, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1004A1B84(0, v12[2] + 1, 1);
          v12 = v28;
        }

        v18 = v12[2];
        v17 = v12[3];
        if (v18 >= v17 >> 1)
        {
          sub_1004A1B84(v17 > 1, v18 + 1, 1);
          v12 = v28;
        }

        v12[2] = v18 + 1;
        v19 = v12 + v13 + v18 * v14;
        v5 = v23;
        v2 = v24;
        v15(v19, v23, v24);
        v10 = v22;
      }

      else
      {
        (*v21)(v9, v2);
      }

      if (v27 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
LABEL_13:
    v28 = v12;
    sub_100058000(&qword_10077A7F8);
    type metadata accessor for TTRSectionID();
    sub_1002E8554();
    sub_10001DDC4(&qword_1007758E0, &type metadata accessor for TTRSectionID);
    Sequence.mapToSet<A>(_:)();
  }
}

uint64_t sub_1002E3520()
{
  v0 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for TTRSectionLite();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.SectionLite.type.getter();
  TTRSectionLite.init(sectionType:)();
  TTRSectionLite.sectionID.getter();
  return (*(v2 + 8))(v4, v1);
}

void *sub_1002E365C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_1002E36BC(v0);
    *(v0 + 32) = v1;
  }

  return v1;
}

void *sub_1002E36BC(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  __chkstk_darwin(v2 - 8);
  v30 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TTRSectionLite();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 80);
  v9 = *(v8 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v31 = _swiftEmptyArrayStorage;
    sub_1004A1AE0(0, v9, 0);
    v10 = v31;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v25 = *(v11 + 56);
    v26 = v12;
    v14 = (v11 - 8);
    v24 = v6 + 32;
    v15 = v23;
    do
    {
      v16 = v27;
      v17 = v29;
      v18 = v11;
      v26(v27, v13, v29);
      REMRemindersListDataView.SectionLite.type.getter();
      TTRSectionLite.init(sectionType:)();
      (*v14)(v16, v17);
      v31 = v10;
      v20 = v10[2];
      v19 = v10[3];
      if (v20 >= v19 >> 1)
      {
        sub_1004A1AE0(v19 > 1, v20 + 1, 1);
        v15 = v23;
        v10 = v31;
      }

      v10[2] = v20 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v15, v28);
      v13 += v25;
      --v9;
      v11 = v18;
    }

    while (v9);
  }

  return v10;
}

unint64_t sub_1002E3980()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_1002E6528(v0);
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_1002E39E0()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_1002E6F68(v0);
    *(v0 + 104) = v1;
  }

  return v1;
}

void *sub_1002E3A40(uint64_t a1, int a2)
{
  v46 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v4 = *(v46 - 8);
  v5 = __chkstk_darwin(v46);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v32 - v8;
  v9 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_1002E39E0();
  if (!*(v16 + 16) || (v17 = sub_1003AB5F4(a1), (v18 & 1) == 0))
  {

    return _swiftEmptyArrayStorage;
  }

  (*(v10 + 16))(v13, *(v16 + 56) + *(v10 + 72) * v17, v9);

  (*(v10 + 32))(v15, v13, v9);
  result = REMRemindersListDataView.SectionLite.reminders.getter();
  v47 = _swiftEmptyArrayStorage;
  v43 = result[2];
  if (!v43)
  {

    v26 = _swiftEmptyArrayStorage;
LABEL_23:
    (*(v10 + 8))(v15, v9);
    return v26;
  }

  v32 = v15;
  v33 = v10;
  v20 = 0;
  v21 = *(v4 + 80);
  v34 = v9;
  v35 = (v21 + 32) & ~v21;
  v41 = result + v35;
  v42 = result;
  v45 = v4 + 16;
  v22 = (v4 + 8);
  v37 = v4;
  v23 = v40;
  v36 = a2;
  while (v20 < result[2])
  {
    v24 = *(v4 + 72);
    v44 = v20;
    v25 = *(v4 + 16);
    v25(v23, &v41[v24 * v20], v46);
    REMRemindersListDataView.ReminderLite.objectID.getter();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v4 = v37;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = v47;
    if ((a2 & 1) != 0 && (v27 = REMRemindersListDataView.ReminderLite.subtasks.getter()) != 0)
    {
      v28 = *(v27 + 16);
      if (v28)
      {
        v38 = v27;
        v39 = v22 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = v27 + v35;
        do
        {
          v30 = v46;
          v25(v7, v29, v46);
          REMRemindersListDataView.ReminderLite.objectID.getter();
          v31 = *v22;
          (*v22)(v7, v30);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v29 += v24;
          --v28;
        }

        while (v28);
        v26 = v47;

        LOBYTE(a2) = v36;
      }

      else
      {

        v31 = *v22;
      }

      v23 = v40;
      v31(v40, v46);
      v4 = v37;
    }

    else
    {
      (*v22)(v23, v46);
    }

    result = v42;
    v20 = v44 + 1;
    if (v44 + 1 == v43)
    {

      v10 = v33;
      v9 = v34;
      v15 = v32;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E3E88(uint64_t a1)
{
  v44 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = sub_1002E39E0();
  if (!*(v15 + 16) || (v16 = sub_1003AB5F4(a1), (v17 & 1) == 0))
  {

    return 0;
  }

  (*(v9 + 16))(v11, *(v15 + 56) + *(v9 + 72) * v16, v8);

  (*(v9 + 32))(v14, v11, v8);
  result = REMRemindersListDataView.SectionLite.reminders.getter();
  v19 = result;
  v38 = *(result + 16);
  if (!v38)
  {
LABEL_18:

    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v20 = 0;
  v42 = (v2 + 8);
  v43 = v2 + 16;
  v35 = v9;
  v36 = v8;
  v34 = v7;
  v37 = v2;
  v39 = result;
  v40 = v14;
  v21 = v44;
  while (v20 < *(v19 + 16))
  {
    v22 = v2;
    v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v24 = *(v22 + 72);
    v41 = v20;
    v25 = *(v22 + 16);
    v25(v7, v19 + v23 + v24 * v20, v44);
    if (REMRemindersListDataView.ReminderLite.isCompleted.getter())
    {

      (*v42)(v7, v44);
      (*(v9 + 8))(v40, v8);
      return 1;
    }

    result = REMRemindersListDataView.ReminderLite.subtasks.getter();
    if (result)
    {
      v26 = result;
      v27 = result + v23;
      v28 = -*(result + 16);
      v29 = -1;
      while (1)
      {
        if (v28 + v29 == -1)
        {

          v9 = v35;
          v8 = v36;
          v7 = v34;
          goto LABEL_9;
        }

        if (++v29 >= *(v26 + 16))
        {
          break;
        }

        v30 = v27 + v24;
        (v25)(v4);
        v31 = REMRemindersListDataView.ReminderLite.isCompleted.getter();
        v32 = *v42;
        result = (*v42)(v4, v21);
        v27 = v30;
        if (v31)
        {

          v32(v34, v44);
          (*(v35 + 8))(v40, v36);
          return 1;
        }
      }

      __break(1u);
      break;
    }

LABEL_9:
    v20 = v41 + 1;
    result = (*v42)(v7, v44);
    v2 = v37;
    v19 = v39;
    v14 = v40;
    if (v20 == v38)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E4288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = sub_1002E4504();
  if (*(v14 + 16) && (v15 = sub_100009044(a1, a2), (v16 & 1) != 0))
  {
    (*(v8 + 16))(v10, *(v14 + 56) + *(v8 + 72) * v15, v7);

    (*(v8 + 32))(v13, v10, v7);
    REMRemindersListDataView.SectionLite.type.getter();
    TTRSectionLite.init(sectionType:)();
    (*(v8 + 8))(v13, v7);
    v17 = type metadata accessor for TTRSectionLite();
    return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
  }

  else
  {

    v19 = type metadata accessor for TTRSectionLite();
    v20 = *(*(v19 - 8) + 56);

    return v20(a3, 1, 1, v19);
  }
}

uint64_t sub_1002E4504()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_1002E77E8(v0);
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1002E457C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, void *a5@<X8>)
{
  v97 = a4;
  v99 = a2;
  v98 = a1;
  v7 = sub_100058000(&qword_10076E900);
  __chkstk_darwin(v7 - 8);
  v9 = &v72 - v8;
  v80 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v80);
  v11 = &v72 - v10;
  v12 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v90 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v88 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v18 - 8);
  v20 = &v72 - v19;
  v21 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v21 - 8);
  v85 = &v72 - v22;
  v119 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v105 = *(v119 - 1);
  __chkstk_darwin(v119);
  v82 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v118 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v106 = *(v118 - 8);
  __chkstk_darwin(v118);
  v86 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRRemindersListViewModel.Item();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v108 = &v72 - v30;
  v31 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v31 - 8);
  v109 = &v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v72 - v34;
  Strong = swift_unknownObjectWeakLoadStrong();
  v121 = v25;
  if (Strong)
  {
    v120 = v26;
    v103 = a3;
    v104 = v35;
    v37 = *(a3 + 64);
    ObjectType = swift_getObjectType();
    (*(v37 + 8))(ObjectType, v37);
    swift_unknownObjectRelease();
    v39 = TTRRemindersListTreeViewModel.sectionItems.getter();

    v117 = *(v39 + 16);
    if (v117)
    {
      v78 = v20;
      v79 = a5;
      v40 = 0;
      v116 = v39 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      v114 = enum case for TTRRemindersListViewModel.SectionID.named(_:);
      v115 = v120 + 16;
      v41 = (v106 + 48);
      v42 = (v105 + 56);
      v112 = (v105 + 88);
      v113 = (v106 + 8);
      v110 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
      v107 = enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:);
      v81 = enum case for TTRRemindersListViewModel.SectionID.date(_:);
      v77 = enum case for TTRRemindersListViewModel.SectionID.day(_:);
      v76 = enum case for TTRRemindersListViewModel.SectionID.month(_:);
      v75 = enum case for TTRRemindersListViewModel.SectionID.year(_:);
      v74 = enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:);
      v111 = (v105 + 8);
      v43 = (v120 + 8);
      v73 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
      v72 = enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:);
      v44 = v121;
      while (1)
      {
        if (v40 >= *(v39 + 16))
        {
          __break(1u);
LABEL_41:

          (*v111)(v11, a5);
          v26 = v120;
          v35 = v104;
          (*(v120 + 4))(v104, v28, v44);
          (*(v26 + 7))(v35, 0, 1, v44);
          v47 = v79;
          a3 = v103;
          v20 = v78;
          goto LABEL_25;
        }

        (*(v120 + 2))(v28, v116 + *(v120 + 9) * v40, v44);
        TTRRemindersListViewModel.Item.sectionHeader.getter();
        v45 = v118;
        if ((*v41)(v9, 1, v118) == 1)
        {
          break;
        }

        TTRRemindersListViewModel.SectionHeader.id.getter();
        (*v113)(v9, v45);
        a5 = v119;
        (*v42)(v11, 0, 1, v119);
        v46 = (*v112)(v11, a5);
        if (v46 == v114)
        {
          (*v111)(v11, a5);
          goto LABEL_5;
        }

        v44 = v121;
        if (v46 != v110 && v46 != v107 && v46 != v81 && v46 != v77 && v46 != v76 && v46 != v75 && v46 != v74)
        {
          if (v46 == v73)
          {
            goto LABEL_41;
          }

          if (v46 != v72)
          {
            result = _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            return result;
          }
        }

        (*v111)(v11, a5);
LABEL_6:
        ++v40;
        (*v43)(v28, v44);
        if (v117 == v40)
        {

          v47 = v79;
          v20 = v78;
          goto LABEL_24;
        }
      }

      sub_1000079B4(v9, &qword_10076E900);
      a5 = v119;
      (*v42)(v11, 1, 1, v119);
LABEL_5:
      v44 = v121;
      goto LABEL_6;
    }

    v44 = v121;
    v47 = a5;
    a5 = v119;
LABEL_24:
    v26 = v120;
    v35 = v104;
    (*(v120 + 7))(v104, 1, 1, v44);
    a3 = v103;
  }

  else
  {
    (*(v26 + 7))(v35, 1, 1, v25);
    v44 = v25;
    v47 = a5;
    a5 = v119;
  }

LABEL_25:
  v48 = v109;
  sub_10000794C(v35, v109, &qword_100772140);
  if ((*(v26 + 6))(v48, 1, v44) == 1)
  {
    sub_1000079B4(v48, &qword_100772140);
    if (qword_100767170 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100003E30(v49, qword_10077A6D0);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "Unable to find sectionless item", v52, 2u);
    }
  }

  else
  {
    v53 = *(v26 + 4);
    v53(v108, v48, v44);
    if (*(a3 + 88))
    {
      v54 = [swift_getObjCClassFromMetadata() newObjectID];
      if (v54)
      {
        v120 = v53;
        v55 = v82;
        *v82 = v54;
        v56 = v54;
        (*(v105 + 104))(v55, *v97, a5);
        v57 = type metadata accessor for TTRListColors.Color();
        (*(*(v57 - 8) + 56))(v20, 1, 1, v57);
        (*(v83 + 104))(v88, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:), v84);
        (*(v87 + 104))(v90, enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:), v89);
        (*(v91 + 104))(v93, enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:), v92);
        (*(v94 + 104))(v96, enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:), v95);
        v119 = v56;
        v58 = v47;

        v59 = v85;
        TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
        v60 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
        (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
        v61 = v86;
        TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
        sub_1000079B4(v35, &qword_100772140);
        v62 = v100;
        v120(v100, v108, v121);
        v64 = v101;
        v63 = v102;
        (*(v101 + 104))(v62, enum case for TTRRemindersListSectionCreationLocation.aboveItem(_:), v102);
        v65 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection();
        (*(v64 + 32))(v58 + *(v65 + 24), v62, v63);
        (*(v106 + 32))(v58, v61, v118);
        *(v58 + *(v65 + 20)) = v119;
        return (*(*(v65 - 8) + 56))(v58, 0, 1, v65);
      }
    }

    if (qword_100767170 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_100003E30(v67, qword_10077A6D0);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v68, v69, "Unable to create new section ID from section class", v70, 2u);
    }

    (*(v26 + 1))(v108, v121);
  }

  sub_1000079B4(v35, &qword_100772140);
  v71 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection();
  return (*(*(v71 - 8) + 56))(v47, 1, 1, v71);
}

uint64_t sub_1002E562C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_10000794C(v1 + 120, &v6, &qword_10077A7E8);
  if (v7)
  {
    return sub_100005FD0(&v6, a1);
  }

  sub_1000079B4(&v6, &qword_10077A7E8);
  v4 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = &off_10071EBE0;
  swift_unknownObjectWeakAssign();
  a1[3] = v4;
  a1[4] = &off_100718330;
  *a1 = v5;
  sub_10000B0D8(a1, &v6);
  swift_beginAccess();
  sub_1002E84E4(&v6, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_1002E5744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_1002E562C(v16);
  v9 = *sub_10000C36C(v16, v16[3]);
  sub_10000794C(a1, v8, &qword_100772140);
  v10 = type metadata accessor for TTRRemindersListDragAndDropSectionsPresenterCapability.SectionsInsertionRequest(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___creationTarget;
  v13 = sub_100058000(&qword_100775970);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v11 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest____lazy_storage___hasValidInsertionLocation) = 2;
  sub_100154F88(v8, v11 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_parent);
  *(v11 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_childIndex) = a2;
  *(v11 + OBJC_IVAR____TtCC9Reminders54TTRRemindersListDragAndDropSectionsPresenterCapabilityP33_D785A6EAE5278EEAAA813EF6D537F28B24SectionsInsertionRequest_dragAndDropCapability) = v9;
  a3[3] = v10;
  a3[4] = &off_100718320;
  *a3 = v11;

  return sub_100004758(v16);
}

uint64_t sub_1002E58D8(int a1, uint64_t a2)
{
  v4 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TTRRemindersListLayout();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  __chkstk_darwin(v11);
  v49 = &v42 - v12;
  v13 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  Strong = swift_unknownObjectWeakLoadStrong();
  v47 = a1;
  v46 = a2;
  if (Strong)
  {
    v23 = *(a2 + 64);
    ObjectType = swift_getObjectType();
    (*(v23 + 24))(ObjectType, v23);
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
  }

  sub_10000794C(v21, v18, &unk_10078A380);
  v26 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v18, 1, v26) == 1)
  {
    sub_1000079B4(v18, &unk_10078A380);
    v29 = v48;
    v30 = v49;
    (*(v6 + 104))(v49, enum case for TTRRemindersListLayout.list(_:), v48);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.listLayout.getter();
    (*(v27 + 8))(v18, v26);
    v30 = v49;
    v31 = v10;
    v29 = v48;
    (*(v6 + 32))(v49, v31, v48);
  }

  sub_10000794C(v21, v15, &unk_10078A380);
  if (v28(v15, 1, v26) == 1)
  {
    sub_1000079B4(v15, &unk_10078A380);
    v32 = v47;
  }

  else
  {
    v33 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v27 + 8))(v15, v26);
    v32 = v33 | v47;
  }

  v34 = v45;
  v35 = v46;
  (*(v6 + 16))(v45, v30, v29);
  v36 = (*(v6 + 88))(v34, v29);
  if (v36 == enum case for TTRRemindersListLayout.list(_:))
  {
    v37 = sub_1002E365C()[2];

    if (!v37)
    {
      v32 = 0;
      goto LABEL_16;
    }

    v38 = *(v35 + 32);
    sub_100058000(&qword_10077A7F0);
    type metadata accessor for TTRSectionLite();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10062D400;
    (*(v43 + 104))(v42, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v44);

    TTRSectionLite.init(sectionType:)();
    v40 = sub_100126730(v38, v39);

    swift_setDeallocating();
    swift_arrayDestroy();
    v29 = v48;
    swift_deallocClassInstance();
    if (v40)
    {
      v32 = 0;
    }

LABEL_15:
    v30 = v49;
LABEL_16:
    (*(v6 + 8))(v30, v29);
    sub_1000079B4(v21, &unk_10078A380);
    return v32 & 1;
  }

  if (v36 == enum case for TTRRemindersListLayout.columns(_:))
  {
    goto LABEL_15;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E5EF4(int a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  v5 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TTRRemindersListLayout();
  v7 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  __chkstk_darwin(v12);
  v53 = &v43 - v13;
  v14 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = a1;
  v50 = v3;
  if (Strong)
  {
    v24 = *(v3 + 64);
    ObjectType = swift_getObjectType();
    (*(v24 + 24))(ObjectType, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  }

  v54 = v22;
  sub_10000794C(v22, v19, &unk_10078A380);
  v27 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v19, 1, v27) == 1)
  {
    sub_1000079B4(v19, &unk_10078A380);
    v31 = v52;
    v30 = v53;
    (*(v7 + 104))(v53, enum case for TTRRemindersListLayout.list(_:), v52);
  }

  else
  {
    TTRRemindersListViewModel.ListInfo.listLayout.getter();
    (*(v28 + 8))(v19, v27);
    v30 = v53;
    v32 = v11;
    v31 = v52;
    (*(v7 + 32))(v53, v32, v52);
  }

  sub_10000794C(v54, v16, &unk_10078A380);
  if (v29(v16, 1, v27) == 1)
  {
    sub_1000079B4(v16, &unk_10078A380);
    v33 = v51;
  }

  else
  {
    v34 = TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter();
    (*(v28 + 8))(v16, v27);
    v33 = v34 | v51;
  }

  v35 = v49;
  v36 = v50;
  (*(v7 + 16))(v49, v30, v31);
  v37 = (*(v7 + 88))(v35, v31);
  if (v37 == enum case for TTRRemindersListLayout.list(_:))
  {
    v38 = sub_1002E365C()[2];

    if (!v38)
    {
LABEL_18:
      (*(v7 + 8))(v30, v31);
      sub_1000079B4(v54, &unk_10078A380);
      return v38 & 1;
    }

    v39 = *(v36 + 32);
    sub_100058000(&qword_10077A7F0);
    type metadata accessor for TTRSectionLite();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10062D400;
    (*(v45 + 104))(v44, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v46);

    TTRSectionLite.init(sectionType:)();
    v41 = sub_100126730(v39, v40);

    swift_setDeallocating();
    swift_arrayDestroy();
    v30 = v53;
    v37 = swift_deallocClassInstance();
    if ((v41 | v33))
    {
      LOBYTE(v38) = v41 ^ 1;
      goto LABEL_18;
    }

LABEL_17:
    LOBYTE(v38) = v48(v37);
    goto LABEL_18;
  }

  if (v37 == enum case for TTRRemindersListLayout.columns(_:))
  {
    if (v33)
    {
      LOBYTE(v38) = 1;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_1002E6528(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 72);
  result = sub_100460C58(_swiftEmptyArrayStorage);
  v12 = result;
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v3 + 8);
    while (v9 < *(v6 + 16))
    {
      (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v2);
      sub_1002E66B8(&v12);
      ++v9;
      (*v10)(v5, v2);
      if (v8 == v9)
      {
        return v12;
      }
    }

    __break(1u);

    (*v10)(v5, v2);

    __break(1u);
  }

  return result;
}

uint64_t sub_1002E66B8(void *a1)
{
  v88 = type metadata accessor for TTRSectionID();
  v2 = *(v88 - 8);
  v3 = __chkstk_darwin(v88);
  v104 = &v71[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v3);
  v87 = &v71[-v6];
  v7 = __chkstk_darwin(v5);
  v9 = &v71[-v8];
  __chkstk_darwin(v7);
  v79 = &v71[-v10];
  v101 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v80 = *(v101 - 8);
  v11 = __chkstk_darwin(v101);
  v86 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v71[-v13];
  v15 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  REMRemindersListDataView.SectionLite.type.getter();
  result = (*(v16 + 88))(v18, v15);
  if (result != enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:))
  {
    if (result == enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:))
    {
      return result;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_36:
  }

  (*(v16 + 96))(v18, v15);
  v20 = *v18;

  v21 = REMRemindersListDataView.SectionLite.reminders.getter();
  v78 = *(v21 + 16);
  if (!v78)
  {
  }

  v77 = v20;
  v22 = 0;
  v74 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v76 = v21 + v74;
  v99 = v80 + 16;
  v98 = enum case for TTRSectionID.sectioned(_:);
  v97 = (v2 + 104);
  v103 = (v2 + 32);
  v84 = (v2 + 40);
  v23 = v80 + 8;
  v24 = v88;
  v73 = v2;
  v72 = v9;
  v82 = v14;
  v75 = v21;
  v85 = (v80 + 8);
  while (v22 < *(v21 + 16))
  {
    v25 = *(v80 + 72);
    v83 = v22;
    v93 = v25;
    v96 = *(v80 + 16);
    v96(v14, v76 + v25 * v22, v101);
    v26 = REMRemindersListDataView.ReminderLite.objectID.getter();
    v27 = v79;
    v28 = v77;
    *v79 = v77;
    v95 = *v97;
    v95(v27, v98, v24);
    v102 = *v103;
    v102(v9, v27, v24);
    v100 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = *a1;
    v30 = v105;
    v31 = sub_1002613B0(v26);
    v33 = v30[2];
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_44;
    }

    v37 = v32;
    if (v30[3] < v36)
    {
      sub_100549434(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1002613B0(v26);
      if ((v37 & 1) != (v38 & 1))
      {
        goto LABEL_46;
      }

LABEL_12:
      v39 = v105;
      if (v37)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    v41 = v31;
    sub_1003AE274();
    v31 = v41;
    v39 = v105;
    if (v37)
    {
LABEL_13:
      v40 = v39[7];
      v94 = *(v2 + 72);
      (*(v2 + 40))(v40 + v94 * v31, v9, v24);

      goto LABEL_17;
    }

LABEL_15:
    v39[(v31 >> 6) + 8] |= 1 << v31;
    *(v39[6] + 8 * v31) = v26;
    v42 = v39[7];
    v94 = *(v2 + 72);
    v102((v42 + v94 * v31), v9, v24);
    v43 = v39[2];
    v35 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v35)
    {
      goto LABEL_45;
    }

    v39[2] = v44;
LABEL_17:
    *a1 = v39;
    v14 = v82;
    v45 = REMRemindersListDataView.ReminderLite.subtasks.getter();
    if (v45)
    {
      v46 = v45;
      v47 = *(v45 + 16);
      v81 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v92 = v47;
      if (v47)
      {
        v48 = 0;
        v49 = v45 + v74;
        v50 = v23;
        v91 = v45;
        while (v48 < *(v46 + 16))
        {
          v51 = v86;
          v52 = v101;
          v96(v86, v49, v101);
          v53 = a1;
          v54 = v24;
          v55 = v100;
          v56 = REMRemindersListDataView.ReminderLite.objectID.getter();
          v90 = *v50;
          v90(v51, v52);
          v57 = v87;
          v89 = v55;
          *v87 = v55;
          v95(v57, v98, v54);
          v102(v104, v57, v54);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v105 = *v53;
          v59 = v105;
          v61 = sub_1002613B0(v56);
          v62 = v59[2];
          v63 = (v60 & 1) == 0;
          v64 = v62 + v63;
          if (__OFADD__(v62, v63))
          {
            goto LABEL_41;
          }

          v65 = v60;
          if (v59[3] >= v64)
          {
            if ((v58 & 1) == 0)
            {
              sub_1003AE274();
            }
          }

          else
          {
            sub_100549434(v64, v58);
            v66 = sub_1002613B0(v56);
            if ((v65 & 1) != (v67 & 1))
            {
              goto LABEL_46;
            }

            v61 = v66;
          }

          v24 = v88;
          v68 = v105;
          if (v65)
          {
            (*v84)(v105[7] + v94 * v61, v104, v88);
          }

          else
          {
            v105[(v61 >> 6) + 8] |= 1 << v61;
            *(v68[6] + 8 * v61) = v56;
            v102((v68[7] + v94 * v61), v104, v24);
            v69 = v68[2];
            v35 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v35)
            {
              goto LABEL_42;
            }

            v68[2] = v70;
          }

          ++v48;
          a1 = v53;
          *v53 = v68;
          v49 += v93;
          v50 = v85;
          v46 = v91;
          if (v92 == v48)
          {
            v23 = v85;

            v2 = v73;
            v9 = v72;
            v14 = v82;
            v90(v82, v101);
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      (*v23)(v14, v101);
    }

    else
    {

      (*v23)(v14, v101);
    }

LABEL_5:
    v22 = v83 + 1;
    v21 = v75;
    if (v83 + 1 == v78)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_10001DF64();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E6F68(uint64_t a1)
{
  v2 = type metadata accessor for TTRSectionID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v83 = (&v61 - v7);
  v8 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v12 = *(v85 - 8);
  v13 = __chkstk_darwin(v85);
  v82 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v81 = &v61 - v16;
  __chkstk_darwin(v15);
  v18 = &v61 - v17;
  v19 = *(a1 + 72);
  v20 = sub_100461210(_swiftEmptyArrayStorage);
  v21 = v19;
  v22 = v20;
  v80 = *(v21 + 16);
  if (!v80)
  {
    return v22;
  }

  v23 = 0;
  v79 = (v9 + 88);
  v78 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
  v69 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
  v68 = enum case for TTRSectionID.sectionless(_:);
  v77 = (v3 + 104);
  v64 = v3 + 16;
  v63 = (v12 + 32);
  v70 = v3;
  v74 = (v12 + 8);
  v75 = (v3 + 8);
  v62 = (v12 + 40);
  v67 = (v9 + 96);
  v66 = enum case for TTRSectionID.sectioned(_:);
  v72 = v8;
  v24 = v85;
  v76 = v18;
  v84 = v12 + 16;
  v61 = v6;
  v65 = v11;
  v73 = v12;
  v71 = v21;
  while (v23 < *(v21 + 16))
  {
    v25 = v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    v86 = v23;
    v87 = v26;
    v27 = *(v12 + 16);
    v27(v18, v25 + v26 * v23, v24);
    REMRemindersListDataView.SectionLite.type.getter();
    v28 = (*v79)(v11, v8);
    if (v28 == v78)
    {
      (*v67)(v11, v8);
      v29 = *v11;

      v30 = v83;
      *v83 = v29;
      v31 = v2;
      (*v77)(v30, v66, v2);
      v27(v81, v18, v24);
      v32 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v22;
      v35 = sub_1003AB5F4(v30);
      v36 = v22[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_31;
      }

      v39 = v34;
      if (v22[3] >= v38)
      {
        v24 = v85;
        v18 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1003AF034();
          v24 = v85;
        }

        v2 = v31;
      }

      else
      {
        sub_10054AA9C(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_1003AB5F4(v83);
        v18 = v76;
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_37;
        }

        v35 = v40;
        v2 = v31;
        v24 = v85;
      }

      v22 = v88;
      v51 = v70;
      if (v39)
      {
        (*v62)(v88[7] + v35 * v87, v81, v24);

        (*v75)(v83, v2);
        (*v74)(v18, v24);
        v6 = v61;
        v8 = v72;
        v12 = v73;
        v11 = v65;
      }

      else
      {
        v88[(v35 >> 6) + 8] |= 1 << v35;
        v52 = v83;
        (*(v51 + 16))(v22[6] + *(v51 + 72) * v35, v83, v2);
        (*v63)(v22[7] + v35 * v87, v81, v24);

        (*(v51 + 8))(v52, v2);
        (*v74)(v18, v24);
        v53 = v22[2];
        v47 = __OFADD__(v53, 1);
        v54 = v53 + 1;
        v11 = v65;
        if (v47)
        {
          goto LABEL_33;
        }

        v22[2] = v54;
        v6 = v61;
        v8 = v72;
        v12 = v73;
      }
    }

    else
    {
      if (v28 != v69)
      {
        goto LABEL_35;
      }

      (*v77)(v6, v68, v2);
      v18 = v76;
      v27(v82, v76, v85);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v88 = v22;
      v43 = sub_1003AB5F4(v6);
      v45 = v22[2];
      v46 = (v44 & 1) == 0;
      v47 = __OFADD__(v45, v46);
      v48 = v45 + v46;
      if (v47)
      {
        goto LABEL_32;
      }

      v49 = v44;
      if (v22[3] >= v48)
      {
        v24 = v85;
        if ((v42 & 1) == 0)
        {
          v59 = v43;
          sub_1003AF034();
          v24 = v85;
          v43 = v59;
        }
      }

      else
      {
        sub_10054AA9C(v48, v42);
        v43 = sub_1003AB5F4(v6);
        if ((v49 & 1) != (v50 & 1))
        {
          goto LABEL_36;
        }

        v24 = v85;
      }

      v12 = v73;
      v22 = v88;
      if (v49)
      {
        (*v62)(v88[7] + v43 * v87, v82, v24);
        (*v75)(v6, v2);
        (*v74)(v18, v24);
      }

      else
      {
        v88[(v43 >> 6) + 8] |= 1 << v43;
        v55 = v70;
        v56 = v43;
        (*(v70 + 16))(v22[6] + *(v70 + 72) * v43, v6, v2);
        (*v63)(v22[7] + v56 * v87, v82, v24);
        (*(v55 + 8))(v6, v2);
        (*v74)(v18, v24);
        v57 = v22[2];
        v47 = __OFADD__(v57, 1);
        v58 = v57 + 1;
        if (v47)
        {
          goto LABEL_34;
        }

        v22[2] = v58;
      }

      v8 = v72;
    }

    v21 = v71;
    v23 = v86 + 1;
    if (v80 == v86 + 1)
    {
      return v22;
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
LABEL_35:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_36:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_37:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E77E8(uint64_t a1)
{
  v57 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v2 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for REMRemindersListDataView.SectionLite();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = *(a1 + 72);
  v49 = sub_100461430(_swiftEmptyArrayStorage);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v54 = (v2 + 88);
    v55 = v5 + 16;
    v53 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
    v51 = v11;
    v52 = (v5 + 8);
    v50 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
    v43 = (v5 + 40);
    v44 = (v5 + 32);
    v46 = v11 - 1;
    v47 = (v2 + 96);
    while (2)
    {
      for (i = v12; ; ++i)
      {
        if (i >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v14 = v10;
        v15 = *(v5 + 72);
        v16 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v15 * i;
        v17 = *(v5 + 16);
        v18 = v4;
        v17(v9, v16, v4);
        v12 = i + 1;
        v19 = v56;
        REMRemindersListDataView.SectionLite.type.getter();
        v20 = (*v54)(v19, v57);
        if (v20 == v53)
        {
          break;
        }

        if (v20 != v50)
        {
          goto LABEL_28;
        }

        v4 = v18;
        (*v52)(v9, v18);
        v10 = v14;
        if (v51 == v12)
        {
          return v49;
        }
      }

      v21 = v56;
      (*v47)(v56, v57);
      v22 = *v21;
      v45 = *(v21 + 3);
      v23 = *(v21 + 4);

      if (v23)
      {
        v42 = v23;
        v4 = v18;
        v17(v48, v9, v18);
        v24 = v49;
        LODWORD(v41) = swift_isUniquelyReferenced_nonNull_native();
        v58 = v24;
        v25 = v45;
        v26 = v42;
        v28 = sub_100009044(v45, v42);
        v29 = *(v24 + 16);
        v30 = (v27 & 1) == 0;
        v31 = v29 + v30;
        if (!__OFADD__(v29, v30))
        {
          if (*(v24 + 24) >= v31)
          {
            if (v41)
            {
              if ((v27 & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v41 = v28;
              LODWORD(v49) = v27;
              sub_1003AF070();
              v28 = v41;
              if ((v49 & 1) == 0)
              {
                goto LABEL_21;
              }
            }
          }

          else
          {
            LODWORD(v49) = v27;
            sub_10054AF44(v31, v41);
            v32 = sub_100009044(v25, v26);
            if ((v49 & 1) != (v33 & 1))
            {
              goto LABEL_29;
            }

            v28 = v32;
            if ((v49 & 1) == 0)
            {
LABEL_21:
              v35 = v58;
              v58[(v28 >> 6) + 8] |= 1 << v28;
              v36 = (v35[6] + 16 * v28);
              *v36 = v25;
              v36[1] = v26;
              (*v44)(v35[7] + v28 * v15, v48, v4);
              (*v52)(v9, v4);
              v37 = v35[2];
              v38 = __OFADD__(v37, 1);
              v39 = v37 + 1;
              if (!v38)
              {
                v49 = v35;
                v35[2] = v39;
                goto LABEL_23;
              }

LABEL_27:
              __break(1u);
LABEL_28:
              _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
LABEL_29:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }
          }

          v34 = v28;

          v49 = v58;
          (*v43)(v58[7] + v34 * v15, v48, v4);
          (*v52)(v9, v4);
          goto LABEL_23;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v4 = v18;
      (*v52)(v9, v18);
LABEL_23:
      v10 = v14;
      if (v46 != i)
      {
        continue;
      }

      break;
    }
  }

  return v49;
}

uint64_t sub_1002E7CC4()
{

  sub_10003B788(v0 + 56);

  sub_1000079B4(v0 + 120, &qword_10077A7E8);
  return v0;
}

uint64_t sub_1002E7D44()
{
  sub_1002E7CC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1002E7DEC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v11 = (*(v8 + 88))(v10, v7);
  if (v11 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
  {
    goto LABEL_2;
  }

  if (v11 == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    (*(v8 + 8))(v10, v7);
    v12 = 1;
    return v12 & 1;
  }

  v14 = v11 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v11 == enum case for TTRRemindersListViewModel.SectionID.date(_:);
  v15 = v14 || v11 == enum case for TTRRemindersListViewModel.SectionID.day(_:);
  v16 = v15 || v11 == enum case for TTRRemindersListViewModel.SectionID.month(_:);
  v17 = v16 || v11 == enum case for TTRRemindersListViewModel.SectionID.year(_:);
  if (v17 || v11 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
  {
    goto LABEL_2;
  }

  if (v11 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
  {
    (*(v8 + 8))(v10, v7);
    v12 = sub_1002E5EF4(a2 & 1, a3, a4);
    return v12 & 1;
  }

  if (v11 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
  {
LABEL_2:
    (*(v8 + 8))(v10, v7);
    v12 = 0;
    return v12 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E8008@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.section(_:))
  {
    (*(v14 + 96))(v16, v13);
    v14 = v26;
    (*(v26 + 32))(v12, v16, v10);
    TTRRemindersListViewModel.SectionHeader.id.getter();
    TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
    (*(v7 + 8))(v9, v6);
    a1 = v27;
    v16 = v28;
    v18 = (*(v27 + 88))(v5, v28);
    if (v18 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
    {
      (*(a1 + 96))(v5, v16);
      v19 = *v5;
      v20 = v25[1];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v20 + 64);
        ObjectType = swift_getObjectType();
        (*(v21 + 16))(ObjectType, v21);
        swift_unknownObjectRelease();
        TTRSection.init(with:store:)();
        return (*(v14 + 8))(v12, v10);
      }

LABEL_12:
      (*(v14 + 8))(v12, v10);
      goto LABEL_13;
    }
  }

  else
  {
    if (v17 == enum case for TTRRemindersListViewModel.Item.SectionCasesItem.unknown(_:))
    {
      goto LABEL_13;
    }

    v18 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  if (v18 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:) && v18 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
  {
    if (v18 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    goto LABEL_12;
  }

  (*(v14 + 8))(v12, v10);
  (*(a1 + 8))(v5, v16);
LABEL_13:
  v24 = type metadata accessor for TTRSection();
  return (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
}

uint64_t type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection()
{
  result = qword_10077A860;
  if (!qword_10077A860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E84E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10077A7E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002E8554()
{
  result = qword_10077A800;
  if (!qword_10077A800)
  {
    sub_10005D20C(&qword_10077A7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A800);
  }

  return result;
}

char *sub_1002E85B8(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = *&a2[v8];
    *&a1[v8] = v10;
    v11 = type metadata accessor for TTRRemindersListSectionCreationLocation();
    v12 = *(*(v11 - 8) + 16);
    v13 = v10;
    v12(&a1[v9], &a2[v9], v11);
  }

  return a1;
}

uint64_t sub_1002E86D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = *(a2 + 24);
  v6 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1002E8784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  v11 = *(*(v10 - 8) + 16);
  v12 = v9;
  v11(a1 + v8, a2 + v8, v10);
  return a1;
}

uint64_t sub_1002E8854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = *(a3 + 24);
  v12 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t sub_1002E891C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  *(a1 + v7) = *(a2 + v7);
  v9 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  return a1;
}

uint64_t sub_1002E89D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = *(a3 + 24);
  v10 = type metadata accessor for TTRRemindersListSectionCreationLocation();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  return a1;
}

uint64_t sub_1002E8AC0()
{
  result = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListSectionCreationLocation();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002E8BB8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002E8C4C, v2, v1);
}

uint64_t sub_1002E8C4C()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1002E8CAC(uint64_t a1)
{
  v2 = sub_100058000(&qword_100771588);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() daemonUserDefaults];
  v10 = [v9 enableAutoCompleteReminders];

  result = 0;
  if (v10)
  {
    (*(v6 + 16))(v8, a1, v5);
    type metadata accessor for TTRIReminderCellAutoCompletePresenter();
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v12 + 40) = 0;
    swift_unknownObjectWeakInit();
    v13 = OBJC_IVAR____TtC9Reminders37TTRIReminderCellAutoCompletePresenter_viewModel;
    v14 = type metadata accessor for TTRIReminderCellAutoCompleteViewModel();
    v15 = *(*(v14 - 1) + 56);
    v15(v12 + v13, 1, 1, v14);
    (*(v6 + 32))(v4, v8, v5);
    v4[v14[5]] = 0;
    v16 = &v4[v14[6]];
    *v16 = 0;
    *(v16 + 1) = 0;
    *&v4[v14[7]] = _swiftEmptyArrayStorage;
    v15(v4, 0, 1, v14);
    swift_beginAccess();
    sub_1002E8FAC(v4, v12 + v13);
    swift_endAccess();
    v17 = sub_1002E901C();
    v18 = type metadata accessor for TTRIReminderCellAutoCompleteViewController();
    v19 = objc_allocWithZone(v18);
    *&v19[OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_autoCompleteStack] = 0;
    v20 = &v19[OBJC_IVAR____TtC9Reminders42TTRIReminderCellAutoCompleteViewController_presenter];
    *v20 = v12;
    v20[1] = v17;
    v23.receiver = v19;
    v23.super_class = v18;

    v21 = objc_msgSendSuper2(&v23, "init");
    *(v12 + 24) = &off_100719340;
    swift_unknownObjectWeakAssign();
    return v21;
  }

  return result;
}

uint64_t sub_1002E8FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100771588);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002E901C()
{
  result = qword_10077A938;
  if (!qword_10077A938)
  {
    type metadata accessor for TTRIReminderCellAutoCompletePresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077A938);
  }

  return result;
}

uint64_t sub_1002E9074()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077A940);
  v1 = sub_100003E30(v0, qword_10077A940);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002E91A0(uint64_t a1)
{
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TTRListOrCustomSmartList.list(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = [*v5 displayName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if ([v7 sharingStatus] - 1 > 2)
    {
      v13 = 0x800000010067F540;
      v14 = 0xD000000000000036;
      v15 = 0x800000010067F560;
      v12 = 0x1000000000000015;
    }

    else
    {
      v12 = 0x100000000000001CLL;
      v13 = 0x800000010067F5A0;
      v14 = 0xD000000000000032;
      v15 = 0x800000010067F5C0;
    }

    TTRLocalizedString(_:comment:)(*&v12, *&v14);
    sub_100058000(&unk_100786CB0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10062D400;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_10005C390();
    *(v25 + 32) = v9;
    *(v25 + 40) = v11;
    v24 = String.init(format:_:)();

    return v24;
  }

  if (v6 == enum case for TTRListOrCustomSmartList.customSmartList(_:))
  {
    (*(v3 + 96))(v5, v2);
    v16 = *v5;
    v17._countAndFlagsBits = 0x100000000000001BLL;
    v17._object = 0x800000010067F4F0;
    v18._object = 0x800000010067F510;
    v18._countAndFlagsBits = 0xD00000000000002ELL;
    TTRLocalizedString(_:comment:)(v17, v18);
    sub_100058000(&unk_100786CB0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10062D400;
    v20 = [v16 name];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10005C390();
    *(v19 + 32) = v21;
    *(v19 + 40) = v23;
    v24 = String.init(format:_:)();

    return v24;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E950C(uint64_t a1)
{
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for TTRListOrCustomSmartList.list(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = [*v5 sharingStatus];
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        if (v8 != 3)
        {
          goto LABEL_11;
        }

LABEL_10:
        v12 = "t shared by someone else";
        v13 = "eted from all of their devices.";
        v14 = 0xD00000000000007FLL;
LABEL_18:
        v15 = v12 | 0x8000000000000000;
        v17 = 0xD00000000000002ELL;
        goto LABEL_19;
      }

      v13 = "he link you were invited with.";
      v14 = 0xD00000000000008ELL;
      v15 = 0x800000010067F2A0;
      v17 = 0xD000000000000038;
LABEL_19:
      v16 = v13 | 0x8000000000000000;
      goto LABEL_20;
    }

    if (v8)
    {
      if (v8 != 1)
      {
LABEL_11:
        v15 = 0x800000010067F1F0;
        v16 = 0x800000010067F270;
        v14 = 0x1000000000000077;
        v17 = 0xD00000000000002DLL;
LABEL_20:
        countAndFlagsBits = TTRLocalizedString(_:comment:)(*&v14, *&v17)._countAndFlagsBits;

        return countAndFlagsBits;
      }

      goto LABEL_10;
    }

    REMList.ttrGroceryContext.getter();
    if (v22)
    {
      sub_10000C36C(v21, v22);
      ShouldCategorizeGrocery = dispatch thunk of TTRListGroceryContextProtocol.ttrShouldCategorizeGroceryItems.getter();
      sub_100004758(v21);
      if (ShouldCategorizeGrocery)
      {
        v13 = " all items in this list.";
        v14 = 0xD000000000000028;
        v15 = 0x800000010067F480;
        v17 = 0xD000000000000036;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1002E982C(v21);
    }

    v12 = "te alert for list shared by me";
    v13 = " all reminders in this list.";
    v14 = 0xD00000000000002CLL;
    goto LABEL_18;
  }

  if (v6 == enum case for TTRListOrCustomSmartList.customSmartList(_:))
  {
    (*(v3 + 8))(v5, v2);
    v9._countAndFlagsBits = 0x1000000000000058;
    v9._object = 0x800000010067F150;
    v10._countAndFlagsBits = 0xD000000000000037;
    v10._object = 0x800000010067F1B0;
    return TTRLocalizedString(_:comment:)(v9, v10)._countAndFlagsBits;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E982C(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007757E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002E9894(uint64_t a1)
{
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = __chkstk_darwin(v2);
  v5 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v8 = &v31 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {

    v26 = 0;
    v27 = 0;
    v28 = 0;
    return v28 | v26 | v27 & 1;
  }

  v32 = 0;
  v46 = 0;
  v35 = 0;
  v10 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v11 = 0;
  v41 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v38 = (v6 + 88);
  v37 = enum case for TTRListOrCustomSmartList.list(_:);
  v34 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
  v39 = v6 + 16;
  v40 = (v6 + 8);
  v33 = (v6 + 96);
  v31 = v9 - 1;
  v36 = v9;
  do
  {
    while (1)
    {
      if (v11 >= *(a1 + 16))
      {
        __break(1u);
LABEL_50:
        v26 = &_mh_execute_header;
        if ((v35 & 1) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      v13 = v5;
      v14 = v6;
      v15 = *(v6 + 16);
      v16 = v2;
      v17 = v2;
      v18 = v8;
      v15(v8, v41 + *(v6 + 72) * v11, v16);
      if (v43)
      {
        v10 = v42;
      }

      v19 = v46;
      if ((v43 & 1 & v42) != 0)
      {
        v19 = v44;
      }

      if ((v43 & 1 & v42 & v44) != 0)
      {
        (*v40)(v18, v17);

        v26 = 0x1000000;
        if (v32)
        {
          v26 = 0x101000000;
        }

        if (v35)
        {
          v26 |= 0x10000uLL;
        }

        v27 = 1;
        goto LABEL_48;
      }

      v45 = v10;
      v46 = v19;
      v20 = v18;
      v15(v13, v18, v17);
      v5 = v13;
      v21 = (*v38)(v13, v17);
      v2 = v17;
      if (v21 == v37)
      {
        break;
      }

      if (v21 != v34)
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v25 = *v40;
      (*v40)(v20, v17);
      v25(v13, v17);
      v8 = v20;
      v46 = 1;
      v44 = 1;
      v6 = v14;
      v10 = v45;
      v12 = v36;
LABEL_5:
      if (v12 == ++v11)
      {

        v26 = 0x1000000;
        if (v32)
        {
          v26 = 0x101000000;
        }

        v29 = &_mh_execute_header;
        if ((v32 & 1) == 0)
        {
          v29 = 0;
        }

        if ((v46 & 1) == 0)
        {
          v26 = v29;
        }

        if (v35)
        {
          goto LABEL_46;
        }

LABEL_51:
        if (v10)
        {
          goto LABEL_47;
        }

        goto LABEL_52;
      }
    }

    (*v33)(v13, v17);
    v22 = *v13;
    if (([*v13 isGroup] & 1) == 0)
    {
      v23 = [v22 sharingStatus];

      (*v40)(v20, v2);
      if (v23 <= 1)
      {
        v6 = v14;
        v5 = v13;
        v10 = v45;
        if (v23)
        {
          v24 = v23 == 1;
          v8 = v20;
LABEL_22:
          v12 = v36;
          v35 = 1;
          if (v24)
          {
            v43 = 1;
          }

          goto LABEL_5;
        }

        v35 = 1;
      }

      else
      {
        v6 = v14;
        v5 = v13;
        if (v23 != 2)
        {
          v8 = v20;
          if (v23 != 4)
          {
            v24 = v23 == 3;
            v10 = v45;
            goto LABEL_22;
          }

          v35 = 1;
          v10 = v45;
          goto LABEL_4;
        }

        v35 = 1;
        v10 = 1;
        v42 = 1;
      }

      v8 = v20;
LABEL_4:
      v12 = v36;
      goto LABEL_5;
    }

    (*v40)(v20, v17);

    v8 = v20;
    v32 = 1;
    v24 = v31 == v11++;
    v6 = v14;
    v5 = v13;
    v10 = v45;
  }

  while (!v24);

  if ((v46 & 1) == 0)
  {
    goto LABEL_50;
  }

  v26 = 0x101000000;
  if ((v35 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_46:
  v26 |= 0x10000uLL;
  if (v10)
  {
LABEL_47:
    v27 = v43;
LABEL_48:
    v28 = 256;
    return v28 | v26 | v27 & 1;
  }

LABEL_52:
  v28 = 0;
  v27 = v43;
  return v28 | v26 | v27 & 1;
}

uint64_t sub_1002E9D98()
{

  v1 = sub_1002E9894(v0);
  if ((v1 & 0x10000) != 0)
  {
    if ((v1 & 0x1000000) != 0)
    {
      if ((v1 & 1) == 0)
      {
        if ((v1 & 0x100) != 0)
        {
          v8 = " not delete its reminders.";
          v10 = 0xD00000000000010ALL;
          v11 = 0x800000010067FCE0;
          v9 = 0xD00000000000008DLL;
          goto LABEL_26;
        }

        v7 = "ustom smart list.";
        v8 = "elete its reminders.";
        v10 = 0xD000000000000074;
        v9 = 0xD000000000000077;
        goto LABEL_20;
      }

      if ((v1 & 0x100) != 0)
      {
        v8 = "t delete its reminders.";
        v10 = 0x1000000000000117;
        v11 = 0x8000000100680020;
        v9 = 0xD0000000000000A9;
        goto LABEL_26;
      }

      v13 = "t one is a custom smart list.";
      v14 = "ot delete its reminders.";
      v10 = 0xD000000000000108;
    }

    else
    {
      if (v1)
      {
        if ((v1 & 0x100) != 0)
        {
          v11 = 0x800000010067FA40;
          v9 = 0xD0000000000000A1;
          v12 = 0x800000010067FB30;
          v10 = 0x10000000000000E2;
          return TTRLocalizedString(_:comment:)(*&v10, *&v9)._countAndFlagsBits;
        }

        v7 = " a custom smart list.";
        v8 = "l of their devices.";
        v9 = 0xD00000000000007DLL;
        v10 = 0xD0000000000000D3;
        goto LABEL_20;
      }

      if ((v1 & 0x100) == 0)
      {
        v7 = "rt lists on macOS.";
        v8 = " the lists and their reminders.";
        v10 = 0xD00000000000003FLL;
        v9 = 0xD00000000000006FLL;
LABEL_20:
        v11 = v7 | 0x8000000000000000;
LABEL_26:
        v12 = v8 | 0x8000000000000000;
        return TTRLocalizedString(_:comment:)(*&v10, *&v9)._countAndFlagsBits;
      }

      v13 = "d. None is a custom smart list.";
      v14 = "ou were invited with.";
      v10 = 0xD0000000000000D5;
    }

    v11 = v13 | 0x8000000000000000;
    v12 = v14 | 0x8000000000000000;
    v9 = 0xD000000000000085;
    return TTRLocalizedString(_:comment:)(*&v10, *&v9)._countAndFlagsBits;
  }

  if ((v1 & 0x1000000) != 0)
  {
    v9 = 0xD000000000000042;
    v10 = 0xD000000000000066;
    v11 = 0x800000010067F600;
    v12 = 0x800000010067F670;
    return TTRLocalizedString(_:comment:)(*&v10, *&v9)._countAndFlagsBits;
  }

  if (qword_100767178 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10077A940);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Attempted to get deletion confirmation message for deleting a group with no list", v5, 2u);
  }

  return 0;
}

unint64_t sub_1002EA030(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  if (a2)
  {
    result = sub_1003AB368(a3);
    if (v7)
    {
      v8 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1003AE128();
        v10 = v13;
      }

      result = sub_1003AC8A4(v8, v10);
      *v4 = v10;
    }
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_100126C90(a1, a3, v12);
    *v3 = v14;
  }

  return result;
}

void sub_1002EA0E4(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100127020(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1002613B0(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_1003AE758();
        v10 = v13;
      }

      sub_1003ACA38(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_1002EA1E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100127484(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1003B3EDC(a3);
    if (v11)
    {
      v12 = v10;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v4;
      if (!v13)
      {
        sub_1003AF6F4();
        v14 = v16;
      }

      sub_1003AD1D8(v12, v14);

      *v4 = v14;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1002EA304(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1000079B4(a1, &qword_100771DD0);
    sub_1002EF7AC(a2, &type metadata accessor for TTRAccountsListsViewModel.PinnedList, sub_1003AD37C, sub_1003AF8A4, v7);
    v12 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1000079B4(v7, &qword_100771DD0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1001275D0(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1002EA56C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100058000(&unk_100776650);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for REMHashtagLabelSpecifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1000079B4(a1, &unk_100776650);
    sub_1002EF7AC(a2, &type metadata accessor for REMHashtagLabelSpecifier, sub_1003AD364, sub_1003AF868, v7);
    v12 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_1000079B4(v7, &unk_100776650);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100127624(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void sub_1002EA7D4(char *a1@<X8>)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v76 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v60 - v7;
  v89 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v93 = *(v89 - 8);
  v9 = __chkstk_darwin(v89);
  v91 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v60 - v11;
  v80 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v79 = *(v80 - 8);
  v12 = __chkstk_darwin(v80);
  v77 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v78 = &v60 - v14;
  v15 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v90 = v1;
  v22 = *(v1 + qword_10078A548);
  if (!v22)
  {
    __break(1u);
LABEL_44:
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100003E30(v59, qword_10077A980);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown item type", 17, 2);
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = sub_1000DF504(0);

  v98 = v24[2];
  if (!v98)
  {

    v42 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
    v43 = *(*(v42 - 8) + 56);

    v43(a1, 1, 1, v42);
    return;
  }

  v61 = v8;
  v62 = v4;
  v63 = v3;
  v82 = a1;
  v26 = 0;
  v87 = qword_10077A9A0;
  v67 = qword_10077A9A8;
  v97 = v16 + 88;
  v96 = enum case for TTRAccountsListsViewModel.Item.sectionProxy(_:);
  v94 = enum case for TTRAccountsListsViewModel.Item.pinnedListsSection(_:);
  v92 = enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:);
  v85 = enum case for TTRAccountsListsViewModel.Item.editablePredefinedSmartList(_:);
  v83 = enum case for TTRAccountsListsViewModel.Item.account(_:);
  v81 = enum case for TTRAccountsListsViewModel.Item.list(_:);
  v75 = enum case for TTRAccountsListsViewModel.Item.customSmartList(_:);
  v74 = enum case for TTRAccountsListsViewModel.Item.group(_:);
  v73 = enum case for TTRAccountsListsViewModel.Item.permissionSection(_:);
  v72 = enum case for TTRAccountsListsViewModel.Item.permissionRequest(_:);
  v71 = enum case for TTRAccountsListsViewModel.Item.tipSection(_:);
  v70 = enum case for TTRAccountsListsViewModel.Item.tip(_:);
  v69 = enum case for TTRAccountsListsViewModel.Item.hashtagsSection(_:);
  v68 = enum case for TTRAccountsListsViewModel.Item.hashtags(_:);
  v66 = enum case for TTRAccountsListsViewModel.Item.recentlyDeletedList(_:);
  v65 = enum case for TTRAccountsListsViewModel.Item.suggestGroceriesSection(_:);
  v27 = (v16 + 8);
  v88 = (v93 + 1);
  v93 = (v16 + 96);
  v64 = enum case for TTRAccountsListsViewModel.Item.suggestGroceries(_:);
  v28 = v91;
  v86 = v24;
  v84 = v16 + 16;
  while (v26 < v24[2])
  {
    v23 = *(v16 + 16);
    (v23)(v21, v24 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v26, v15);
    (v23)(v19, v21, v15);
    v29 = (*(v16 + 88))(v19, v15);
    if (v29 == v96)
    {
      (*v93)(v19, v15);
      v30 = type metadata accessor for UUID();
      (*(*(v30 - 8) + 8))(v19, v30);
      goto LABEL_11;
    }

    v23 = v95;
    if (v29 == v94)
    {
      goto LABEL_10;
    }

    if (v29 == v92)
    {
      v31 = *v27;
      (*v27)(v19, v15);
      v32 = v23;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v33 = v90;
      v34 = v87;
      swift_beginAccess();
      v23 = *(v33 + v34);
      v35 = v32;
      if (v23[2])
      {
        v36 = sub_1003AB730(v32);
        if (v37)
        {
          v44 = v79;
          v45 = v77;
          v46 = v80;
          (*(v79 + 16))(v77, v23[7] + *(v79 + 72) * v36, v80);
          v47 = *(v44 + 32);
          v48 = v78;
          v47(v78, v45, v46);
          swift_endAccess();

          (*v88)(v35, v89);
          v49 = *(sub_100058000(&unk_10076B860) + 48);
          v50 = v82;
          (*(v16 + 32))(v82, v21, v15);
          v47(&v50[v49], v48, v46);
          v51 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
          goto LABEL_40;
        }
      }

      swift_endAccess();
      (*v88)(v32, v89);
      v25 = v31(v21, v15);
      v28 = v91;
      v24 = v86;
    }

    else
    {
      if (v29 == v85 || v29 == v83 || v29 == v81 || v29 == v75 || v29 == v74 || v29 == v73 || v29 == v72 || v29 == v71 || v29 == v70)
      {
        goto LABEL_10;
      }

      if (v29 != v69 && v29 != v68)
      {
        if (v29 == v66)
        {
LABEL_10:
          (*v27)(v19, v15);
        }

        else if (v29 != v65 && v29 != v64)
        {
          goto LABEL_44;
        }

LABEL_11:
        v25 = (*v27)(v21, v15);
        goto LABEL_5;
      }

      v60 = *v27;
      v60(v19, v15);
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v38 = v67;
      swift_beginAccess();
      v23 = *(v90 + v38);
      if (v23[2])
      {
        v25 = sub_1003AB730(v28);
        if (v39)
        {
          goto LABEL_42;
        }
      }

      swift_endAccess();
      (*v88)(v28, v89);
      v25 = (v60)(v21, v15);
    }

LABEL_5:
    if (v98 == ++v26)
    {
      v40 = v82;
      *v82 = v24;
      v41 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
      return;
    }
  }

  __break(1u);
LABEL_42:
  v52 = v62;
  v53 = v28;
  v54 = v76;
  v55 = v63;
  (*(v62 + 16))(v76, v23[7] + *(v62 + 72) * v25, v63);
  v56 = *(v52 + 32);
  v57 = v61;
  v56(v61, v54, v55);
  swift_endAccess();

  (*v88)(v53, v89);
  v58 = *(sub_100058000(&qword_10076B858) + 48);
  v50 = v82;
  (*(v16 + 32))(v82, v21, v15);
  v56(&v50[v58], v57, v55);
  v51 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
LABEL_40:
  swift_storeEnumTagMultiPayload();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
}

void sub_1002EB374(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v74 = a2;
  v75 = a5;
  v62 = a4;
  v63 = a3;
  v7 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v7 - 8);
  v71 = &v59 - v8;
  v9 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v68 = *(v9 - 8);
  v69 = v9;
  v10 = __chkstk_darwin(v9);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v59 - v12;
  v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v14 = *(v13 - 8);
  v76 = v13;
  v77 = v14;
  __chkstk_darwin(v13);
  v72 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_100771DD0);
  v17 = __chkstk_darwin(v16 - 8);
  v65 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v73 = &v59 - v20;
  __chkstk_darwin(v19);
  v22 = &v59 - v21;
  v23 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TTRAccountsListsViewModel.PinnedLists();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v24 + 16);
  v70 = a1;
  v64 = v31;
  v31(v26, a1, v23);
  if ((*(v24 + 88))(v26, v23) == enum case for TTRAccountsListsViewModel.Item.pinnedLists(_:))
  {
    v61 = v5;
    (*(v24 + 96))(v26, v23);
    (*(v28 + 32))(v30, v26, v27);
    v32 = TTRAccountsListsViewModel.PinnedLists.lists.getter();
    __chkstk_darwin(v32);
    v33 = v75;
    *(&v59 - 2) = v74;
    sub_1002ECBD4(v33, v32, &type metadata accessor for TTRAccountsListsViewModel.PinnedList, v22);

    v34 = v73;
    sub_10002C688(v22, v73);
    v35 = v76;
    v36 = v77;
    if ((*(v77 + 48))(v34, 1, v76) == 1)
    {
      sub_1000079B4(v22, &qword_100771DD0);
      (*(v28 + 8))(v30, v27);
      sub_1000079B4(v34, &qword_100771DD0);
      return;
    }

    v60 = v30;
    v74 = v28;
    v75 = v27;
    v59 = v22;
    v41 = v72;
    (*(v36 + 32))(v72, v34, v35);
    v42 = v67;
    v43 = v70;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v44 = v65;
    (*(v36 + 16))(v65, v41, v35);
    (*(v36 + 56))(v44, 0, 1, v35);
    v45 = v61;
    swift_beginAccess();
    sub_1002EA304(v44, v42);
    swift_endAccess();
    v46 = v66;
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    swift_beginAccess();
    sub_10058C648(v42, v46);
    swift_endAccess();
    (*(v68 + 8))(v42, v69);
    v47 = v71;
    v64(v71, v43, v23);
    (*(v24 + 56))(v47, 0, 1, v23);
    v48 = qword_10078A548;
    v49 = *(v45 + qword_10078A548);
    if (v49)
    {
      v50 = v49;
      v51 = sub_1000DF504(0);

      v52 = *(v45 + v48);
      v53 = v59;
      v55 = v74;
      v54 = v75;
      v56 = v60;
      if (v52)
      {
        v57 = v52;
        v58 = v63;
        sub_1000DFB6C(v47, v63 & 1, v62);

        sub_1002EE0CC(v51, v58 & 1);

        sub_1000079B4(v47, &unk_100771B40);
        (*(v77 + 8))(v72, v76);
        sub_1000079B4(v53, &qword_100771DD0);
        (*(v55 + 1))(v56, v54);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100003E30(v37, qword_10077A980);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "selectSmartListItem: invalid item", v40, 2u);
    }
  }
}

void sub_1002EBB5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v38 = a4;
  v39 = a3;
  v41 = a2;
  v5 = sub_100058000(&unk_100771B40);
  __chkstk_darwin(v5 - 8);
  v44 = &v37 - v6;
  v7 = sub_100058000(&unk_100776650);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v42 = *(v10 - 8);
  v43 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v40 = *(v17 + 16);
  v40(v19, a1, v16);
  v21 = (*(v17 + 88))(v19, v16);
  LODWORD(a1) = enum case for TTRAccountsListsViewModel.Item.hashtags(_:);
  (*(v17 + 8))(v19, v16);
  if (v21 == a1)
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v22 = type metadata accessor for REMHashtagLabelSpecifier();
    v23 = *(v22 - 8);
    (*(v23 + 16))(v9, v41, v22);
    (*(v23 + 56))(v9, 0, 1, v22);
    v24 = v45;
    swift_beginAccess();
    sub_1002EA56C(v9, v15);
    swift_endAccess();
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    swift_beginAccess();
    sub_10058C648(v15, v13);
    swift_endAccess();
    (*(v42 + 8))(v15, v43);
    v25 = v44;
    v40(v44, v20, v16);
    (*(v17 + 56))(v25, 0, 1, v16);
    v26 = qword_10078A548;
    v27 = *(v24 + qword_10078A548);
    if (v27)
    {
      v28 = v27;
      v29 = sub_1000DF504(0);

      v30 = *(v24 + v26);
      if (v30)
      {
        v31 = v30;
        v32 = v39;
        sub_1000DFB6C(v25, v39 & 1, v38);

        sub_1002EE0CC(v29, v32 & 1);

        sub_1000079B4(v25, &unk_100771B40);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100003E30(v33, qword_10077A980);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "selectHashtagItem: invalid item", v36, 2u);
    }
  }
}

void sub_1002EC064(void *a1, uint64_t a2)
{
  v63 = type metadata accessor for REMHashtagLabelSpecifier();
  v65 = *(v63 - 8);
  v4 = __chkstk_darwin(v63);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v53 - v6;
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = __chkstk_darwin(v7);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v10;
  v11 = sub_100058000(&qword_10076B850);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v61 = *(v21 - 8);
  v62 = v21;
  v22 = __chkstk_darwin(v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v53 - v25;
  v27 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v27 - 8);
  v29 = &v53 - v28;
  v58 = a2;
  sub_1002EFA60(a2);
  if (v30 != 2)
  {
    if (v30)
    {
      type metadata accessor for TTRIHashtagCollectionCell();
      if (swift_dynamicCastClass())
      {
        v31 = a1;
        v32 = v64;
        static REMHashtagLabelSpecifier.empty.getter();
        sub_1002EA7D4(v14);
        v33 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
        if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
        {
          sub_1000079B4(v14, &qword_10076B850);
          v34 = v63;
        }

        else if (swift_getEnumCaseMultiPayload() == 2)
        {
          v66 = v31;
          v40 = *(sub_100058000(&qword_10076B858) + 48);
          v41 = v61;
          (*(v61 + 32))(v24, v14, v62);
          v34 = v63;
          v54 = *(v65 + 32);
          v54(v55, &v14[v40], v63);
          v42 = v57;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          v43 = v56;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          LOBYTE(v40) = static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)();
          v44 = *(v59 + 8);
          v45 = v43;
          v46 = v60;
          v44(v45, v60);
          v44(v42, v46);
          (*(v41 + 8))(v24, v62);
          v47 = *(v65 + 8);
          if (v40)
          {
            v32 = v64;
            v47(v64, v34);
            v54(v32, v55, v34);
          }

          else
          {
            v47(v55, v34);
            v32 = v64;
          }

          v31 = v66;
        }

        else
        {
          sub_1002EFEBC(v14, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
          v34 = v63;
        }

        TTRIHashtagCollectionCell.setSelection(_:animated:)();

        (*(v65 + 8))(v32, v34);
      }
    }

    else
    {
      type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;
        v37 = v18;
        v65 = *(v18 + 56);
        (v65)(v29, 1, 1, v17);
        v38 = a1;
        sub_1002EA7D4(v16);
        v39 = type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection(0);
        if ((*(*(v39 - 8) + 48))(v16, 1, v39) == 1)
        {
          sub_1000079B4(v16, &qword_10076B850);
        }

        else if (swift_getEnumCaseMultiPayload() == 1)
        {
          v64 = v38;
          v66 = v36;
          v48 = *(sub_100058000(&unk_10076B860) + 48);
          (*(v61 + 32))(v26, v16, v62);
          v54 = *(v37 + 32);
          v55 = (v37 + 32);
          v54(v20, &v16[v48], v17);
          v49 = v57;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          v58 = v37;
          v50 = v56;
          TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
          LODWORD(v63) = static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)();
          v51 = v60;
          v52 = *(v59 + 8);
          v52(v50, v60);
          v52(v49, v51);
          (*(v61 + 8))(v26, v62);
          if (v63)
          {
            sub_1000079B4(v29, &qword_100771DD0);
            v54(v29, v20, v17);
            (v65)(v29, 0, 1, v17);
          }

          else
          {
            (*(v58 + 8))(v20, v17);
          }

          v38 = v64;
        }

        else
        {
          sub_1002EFEBC(v16, type metadata accessor for TTRIAccountsListsTreeView.ExtendedSelection);
        }

        sub_100329FF4(v29, 0);

        sub_1000079B4(v29, &qword_100771DD0);
      }
    }
  }
}

uint64_t sub_1002EC8F0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TTRIGroupMembershipViewModel.List(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1002EFDF4(v12, v10);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1002EFEBC(v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
      }

      if (v14)
      {
        break;
      }

      sub_1002EFEBC(v10, type metadata accessor for TTRIGroupMembershipViewModel.List);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1002EFE58(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

void *sub_1002ECA94(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_1002ECBD4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t sub_1002ECDA8(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 9;
  }

  v6 = (a3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v11 = v8;
    v9 = a1(&v11);
    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (!--v4)
    {
      return 9;
    }
  }

  return v7;
}

uint64_t sub_1002ECE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000F2C50(a1, a3);
  if (result)
  {
    v8 = result;
    v9 = sub_1002EF9F4(result, a2, a4, sub_1003B3EDC);
    if (v9 && (v10 = v9, , v10 == v8) && *(a4 + 16) && (v11 = sub_1003B3EDC(v8), (v12 & 1) != 0))
    {
      v13 = [*(v4 + qword_100771730) headerViewForSection:*(*(a4 + 56) + 8 * v11)];

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1002ECEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000F4DB4(a1, a3);
  if (result)
  {
    v8 = result;
    v9 = sub_1002EF9F4(result, a2, a4, sub_1003B3EDC);
    if (v9 && (v10 = v9, , v10 == v8) && *(a4 + 16) && (v11 = sub_1003B3EDC(v8), (v12 & 1) != 0))
    {
      v13 = [*(v4 + qword_100771730) headerViewForSection:*(*(a4 + 56) + 8 * v11)];

      return v13;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_1002ECFBC(uint64_t a1, int a2)
{
  v23 = a2;
  v4 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v4 - 8);
  v6 = &v22[-v5];
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + qword_10078A548);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1000C8504();
    v15 = v14;
    v17 = v16;
    v19 = sub_1000F4DB4(a1, v18);
    if (!v19)
    {

      (*(v8 + 56))(v6, 1, 1, v7);
      goto LABEL_6;
    }

    sub_1000C77E8(v19, v17 & 1, v13, v15, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

LABEL_6:
      sub_1000079B4(v6, &unk_100771B10);
      return;
    }

    (*(v8 + 32))(v10, v6, v7);
    v20 = *&v12[qword_100771730];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v20 deselectRowAtIndexPath:isa animated:v23 & 1];

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002ED254()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10077A980);
  v1 = sub_100003E30(v0, qword_10077A980);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1002ED31C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.SmartList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    TTRAccountsListsViewModel.SmartList.type.getter();
    sub_1002EF994(&qword_10077B010, &type metadata accessor for TTRListType.PredefinedSmartListType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v20 != v18 || v21 != v19)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v17 + 8))(v5, v3);
    (*(v7 + 8))(v9, v6);
  }

  else if (v14 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_10077A980);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pinned list type", 24, 2);
    __break(1u);
  }
}

void sub_1002ED6FC(uint64_t a1)
{
  v2 = type metadata accessor for TTRAccountsListsViewModel.List();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRAccountsListsViewModel.PinnedList.predefinedSmartList(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 == enum case for TTRAccountsListsViewModel.PinnedList.list(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    static TTRAccountsListsViewModel.List.== infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_100767180 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_10077A980);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_100008E04(&_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown pinned list type", 24, 2);
    __break(1u);
  }
}

void sub_1002ED9A4(uint64_t a1, int a2)
{
  v57 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v55 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v52 - v6;
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  v56 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100776650);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v17 - 8);
  v19 = &v52 - v18;
  sub_1002EFA60(a1);
  if (v20 == 2)
  {
    return;
  }

  v21 = v20;
  v52 = v3;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
  v22 = (v14 + 8);
  if ((v21 & 1) == 0)
  {
    v28 = v58;
    swift_beginAccess();
    sub_1003A9928(v16, v19);
    swift_endAccess();
    (*v22)(v16, v13);
    sub_1000079B4(v19, &qword_100771DD0);
    v29 = *(v28 + qword_10078A548);
    if (v29)
    {
      v30 = v29;
      v31 = sub_1000DE964(a1);

      if (v31)
      {
        type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
        if (swift_dynamicCastClass())
        {
          v32 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
          (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
          sub_100329FF4(v19, v57 & 1);

          sub_1000079B4(v19, &qword_100771DD0);
        }

        else
        {
        }
      }

      return;
    }

    goto LABEL_25;
  }

  v23 = v58;
  swift_beginAccess();
  sub_1003A9B14(v16, v12);
  swift_endAccess();
  (*v22)(v16, v13);
  sub_1000079B4(v12, &unk_100776650);
  v24 = qword_10078A548;
  v25 = *(v23 + qword_10078A548);
  if (!v25)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v25;
  v27 = sub_1000DE964(a1);

  if (v27)
  {
    type metadata accessor for TTRIHashtagCollectionCell();
    if (swift_dynamicCastClass())
    {
      static REMHashtagLabelSpecifier.empty.getter();
      TTRIHashtagCollectionCell.setSelection(_:animated:)();

      (*(v56 + 8))(v9, v7);
    }

    else
    {
    }
  }

  v33 = *(v58 + v24);
  if (!v33)
  {
    goto LABEL_26;
  }

  v34 = v33;
  sub_1000C8504();
  v36 = sub_1000F4DB4(a1, v35);

  if (!v36)
  {

    return;
  }

  v37 = sub_1000C8504();
  v39 = sub_1002EF9F4(v36, v37, v38, sub_1003B3EDC);

  v40 = v52;
  if (v39)
  {
    v41 = *(*v39 + 144);
    swift_beginAccess();
    v42 = v55;
    v43 = v39 + v41;
    v44 = v53;
    (*(v55 + 16))(v53, v43, v40);

    v45 = v54;
    (*(v42 + 32))(v54, v44, v40);
    v46 = *(v58 + v24);
    if (v46)
    {
      v47 = v46;
      v48 = sub_1000C8504();
      v51 = sub_1002ECEE8(v45, v48, v49, v50);

      if (v51)
      {
        type metadata accessor for TTRIAccountsListsTagsSectionHeaderView();
        if (swift_dynamicCastClass())
        {
          sub_10039A0BC(1);
        }
      }

      (*(v42 + 8))(v45, v52);
      return;
    }

LABEL_27:
    __break(1u);
  }
}

void sub_1002EE048(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  swift_endAccess();
}

uint64_t sub_1002EE0CC(uint64_t a1, int a2)
{
  v70 = a2;
  v66 = a1;
  v3 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v64 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v89 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v64 - v7;
  __chkstk_darwin(v6);
  v78 = &v64 - v9;
  v10 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v88 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v80 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v81 = &v64 - v14;
  v15 = __chkstk_darwin(v13);
  v79 = &v64 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v64 - v18;
  v74 = v2;
  v20 = *(v2 + qword_10078A548);
  if (v20)
  {
    v21 = v20;
    v22 = sub_1000DF504(0);

    v86 = v22;
    v23 = v22[2];
    v90 = v10;
    v71 = v23;
    if (v23)
    {
      v24 = v88;
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v68 = v86 + v25;
      v69 = qword_10077A9B0;
      result = swift_beginAccess();
      v26 = 0;
      v84 = v24 + 16;
      v67 = v64 + 16;
      v27 = (v64 + 8);
      v65 = v66 + v25;
      v87 = (v24 + 8);
      v85 = v19;
      while (v26 < v86[2])
      {
        v29 = *(v88 + 72);
        v73 = v26;
        v82 = *(v88 + 16);
        v83 = v29;
        (v82)(v19, &v68[v29 * v26], v10);
        v30 = *(v74 + v69);

        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v31 = *(v30 + 16);
        v72 = v87 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v31 && (sub_1002EF994(&qword_1007727B0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v33 = -1 << *(v30 + 32), v34 = v32 & ~v33, ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
        {
          v75 = ~v33;
          v35 = *(v64 + 72);
          v76 = *(v64 + 16);
          v77 = v35;
          while (1)
          {
            v76(v8, *(v30 + 48) + v77 * v34, v3);
            sub_1002EF994(&qword_10076B7A0, &type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
            v36 = dispatch thunk of static Equatable.== infix(_:_:)();
            v37 = *v27;
            (*v27)(v8, v3);
            if (v36)
            {
              break;
            }

            v34 = (v34 + 1) & v75;
            if (((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v37(v78, v3);
        }

        else
        {
LABEL_13:

          v38 = *v27;
          (*v27)(v78, v3);
          v39 = *(v66 + 16) + 1;
          v40 = v65;
          while (--v39)
          {
            v41 = v40 + v83;
            v42 = v79;
            v43 = v90;
            (v82)(v79);
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v44 = v89;
            TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
            v45 = static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)();
            v38(v44, v3);
            v38(v8, v3);
            v28 = *v87;
            (*v87)(v42, v43);
            v40 = v41;
            if (v45)
            {
              v19 = v85;
              goto LABEL_6;
            }
          }
        }

        v19 = v85;
        sub_1002EE998(v85, v70 & 1);
        v28 = *v87;
LABEL_6:
        v26 = v73 + 1;
        v10 = v90;
        result = (v28)(v19, v90);
        if (v26 == v71)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v83 = v3;
      v46 = v81;
      v79 = *(v66 + 16);
      if (!v79)
      {
LABEL_26:

        v62 = qword_10077A9B0;
        v63 = v74;
        swift_beginAccess();
        *(v63 + v62) = &_swiftEmptySetSingleton;
      }

      v47 = 0;
      v87 = *(v88 + 16);
      v48 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v78 = (v66 + v48);
      v85 = *(v88 + 72);
      v77 = v86 + v48;
      v49 = (v64 + 8);
      v88 += 16;
      v50 = (v88 - 8);
      v84 = -v71;
      v76 = ((v88 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v51 = v90;
LABEL_21:
      v82 = v47 + 1;
      result = (v87)(v46, &v78[v85 * v47], v10);
      v53 = -1;
      v54 = v77;
      while (1)
      {
        if (v84 + v53 == -1)
        {
          v46 = v81;
          sub_1002ED9A4(v81, v70 & 1);
          v52 = *v50;
          goto LABEL_20;
        }

        if (++v53 >= v86[2])
        {
          break;
        }

        v55 = &v85[v54];
        v56 = v80;
        (v87)(v80);
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v57 = v89;
        TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
        v58 = static TTRAccountsListsViewModel.ItemIdentifier.== infix(_:_:)();
        v59 = *v49;
        v60 = v57;
        v61 = v83;
        (*v49)(v60, v83);
        v59(v8, v61);
        v52 = *v50;
        result = (*v50)(v56, v51);
        v54 = v55;
        if (v58)
        {
          v46 = v81;
LABEL_20:
          v10 = v90;
          v52(v46, v90);
          v47 = v82;
          if (v82 == v79)
          {
            goto LABEL_26;
          }

          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EE904(uint64_t result, char a2)
{
  v3 = *(v2 + qword_10078A548);
  if (v3)
  {
    v5 = result;
    v6 = v3;
    v7 = sub_1000DF504(0);

    sub_1002ECFBC(v5, a2 & 1);
    sub_1002EE0CC(v7, a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002EE998(uint64_t a1, int a2)
{
  v80 = a2;
  v79 = type metadata accessor for TTRAccountsListsViewModel.Item();
  v81 = *(v79 - 8);
  v3 = __chkstk_darwin(v79);
  v78 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v82 = &v77 - v5;
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v84 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v85 = (&v77 - v10);
  v11 = sub_100058000(&qword_100771DD0);
  __chkstk_darwin(v11 - 8);
  v77 = &v77 - v12;
  v13 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v77 - v18;
  v83 = type metadata accessor for TTRAccountsListsViewModel.PinnedList();
  v20 = *(v83 - 8);
  v21 = __chkstk_darwin(v83);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v77 - v24;
  v86 = a1;
  sub_1002EFA60(a1);
  if (v26 != 2)
  {
    if (v26)
    {
      v27 = v6;
      TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
      v28 = qword_10077A9A8;
      v29 = v87;
      swift_beginAccess();
      v30 = *(v29 + v28);
      if (*(v30 + 16))
      {
        v31 = sub_1003AB730(v17);
        if (v32)
        {
          v33 = v84;
          (*(v84 + 16))(v9, *(v30 + 56) + *(v84 + 72) * v31, v27);
          (*(v33 + 32))(v85, v9, v27);
          swift_endAccess();
          (*(v14 + 8))(v17, v13);
          v34 = qword_10078A548;
          v35 = *(v87 + qword_10078A548);
          if (v35)
          {
            v36 = v35;
            v37 = sub_1000DE964(v86);

            v38 = v82;
            if (v37)
            {
              type metadata accessor for TTRIHashtagCollectionCell();
              if (swift_dynamicCastClass())
              {
                TTRIHashtagCollectionCell.setSelection(_:animated:)();
              }
            }

            v39 = *(v87 + v34);
            if (v39)
            {
              v40 = v39;
              sub_1000C8504();
              v42 = sub_1000F4DB4(v86, v41);

              if (v42)
              {
                v43 = sub_1000C8504();
                v45 = sub_1002EF9F4(v42, v43, v44, sub_1003B3EDC);

                if (v45)
                {
                  v46 = *(*v45 + 144);
                  swift_beginAccess();
                  v47 = v81;
                  v48 = v45 + v46;
                  v49 = v78;
                  v50 = v79;
                  (*(v81 + 16))(v78, v48, v79);

                  (*(v47 + 32))(v38, v49, v50);
                  v51 = *(v87 + v34);
                  if (v51)
                  {
                    v52 = v51;
                    v53 = sub_1000C8504();
                    v56 = sub_1002ECEE8(v38, v53, v54, v55);

                    if (v56)
                    {
                      type metadata accessor for TTRIAccountsListsTagsSectionHeaderView();
                      if (swift_dynamicCastClass())
                      {
                        v57 = v85;
                        sub_100399C20(v85);

                        (*(v81 + 8))(v38, v50);
                        (*(v84 + 8))(v57, v27);
                        return;
                      }
                    }

                    (*(v81 + 8))(v38, v50);
                    goto LABEL_39;
                  }

                  goto LABEL_43;
                }
              }

              else
              {
              }

LABEL_39:
              (*(v84 + 8))(v85, v27);
              return;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            return;
          }

          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      swift_endAccess();
      (*(v14 + 8))(v17, v13);
      if (qword_100767180 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100003E30(v71, qword_10077A980);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v72, v73))
      {
        goto LABEL_32;
      }

      v74 = swift_slowAlloc();
      *v74 = 0;
      v75 = "Unable to select hashtag cell - missing associated hashtag selection";
      goto LABEL_31;
    }

    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter();
    v58 = qword_10077A9A0;
    v59 = v87;
    swift_beginAccess();
    v60 = *(v59 + v58);
    if (!*(v60 + 16) || (v61 = sub_1003AB730(v19), (v62 & 1) == 0))
    {
      swift_endAccess();
      (*(v14 + 8))(v19, v13);
      if (qword_100767180 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_100003E30(v76, qword_10077A980);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v72, v73))
      {
        goto LABEL_32;
      }

      v74 = swift_slowAlloc();
      *v74 = 0;
      v75 = "Unable to smart list cell - missing associated predefined smart list type";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v72, v73, v75, v74, 2u);

LABEL_32:

      return;
    }

    v63 = v20;
    v64 = *(v60 + 56) + *(v20 + 72) * v61;
    v65 = *(v20 + 16);
    v66 = v83;
    v85 = v65;
    (v65)(v23, v64, v83);
    (*(v63 + 32))(v25, v23, v66);
    swift_endAccess();
    (*(v14 + 8))(v19, v13);
    v67 = *(v87 + qword_10078A548);
    if (!v67)
    {
      goto LABEL_41;
    }

    v68 = v67;
    v69 = sub_1000DE964(v86);

    if (v69)
    {
      type metadata accessor for TTRIAccountsListsViewPinnedListsCell();
      if (swift_dynamicCastClass())
      {
        v70 = v77;
        (v85)(v77, v25, v66);
        (*(v63 + 56))(v70, 0, 1, v66);
        sub_100329FF4(v70, v80 & 1);

        sub_1000079B4(v70, &qword_100771DD0);
      }

      else
      {
      }
    }

    (*(v63 + 8))(v25, v66);
  }
}