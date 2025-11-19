NSBundle *TTRComplicationBundleGet()
{
  v0 = objc_opt_class();

  return [NSBundle bundleForClass:v0];
}

id TTRBundleGet()
{
  if (qword_173E0 != -1)
  {
    sub_7CEC();
  }

  v1 = qword_173D8;

  return v1;
}

void sub_3FFC(id a1)
{
  qword_173D8 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id TTRIComplicationSwitcherTimelineModelSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIComplicationSwitcherTimelineModelSource.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_model] = [objc_allocWithZone(type metadata accessor for TTRComplicationSwitcherTimelineModel()) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIComplicationSwitcherTimelineModelSource();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t TTRIComplicationSwitcherTimelineModelSource.model.getter()
{
  v1 = OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_model;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t TTRIComplicationSwitcherTimelineModelSource.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_model;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t TTRIComplicationSwitcherTimelineModelSource.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIComplicationSwitcherTimelineModelSource.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_67E4;
}

void sub_67E4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

Class sub_6900()
{
  v0 = sub_7EA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7E80();
  (*(v1 + 8))(v4, v0);
  sub_6A88();
  v5.super.isa = sub_7FC0().super.isa;

  return v5.super.isa;
}

id sub_6A50(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_6A88()
{
  result = qword_17240;
  if (!qword_17240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_17240);
  }

  return result;
}

id sub_6AD4()
{
  v0 = sub_7F40();
  v77 = *(v0 - 8);
  v78 = v0;
  v1 = *(v77 + 64);
  (__chkstk_darwin)();
  v76 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_7E30();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  (__chkstk_darwin)();
  v85 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_7EC0();
  v71 = *(v75 - 8);
  v6 = *(v71 + 64);
  (__chkstk_darwin)();
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7ED0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  (__chkstk_darwin)();
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7EB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  (__chkstk_darwin)();
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(*(sub_73AC(&qword_17248, qword_C9A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v20 = &v69 - v19;
  v21 = sub_7EA0();
  v22 = *(v21 - 8);
  v73 = v21;
  v74 = v22;
  v23 = *(v22 + 64);
  v24 = (__chkstk_darwin)();
  v83 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v69 - v27;
  __chkstk_darwin(v26);
  v84 = &v69 - v29;
  v30 = sub_7F10();
  v79 = *(v30 - 8);
  v80 = v30;
  v31 = *(v79 + 64);
  __chkstk_darwin(v30);
  v33 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = TTRComplicationCalendarCreate();
  v86 = v33;
  sub_7EF0();

  result = [objc_opt_self() unmodifiedDate];
  if (result)
  {
    v36 = result;
    v37 = v28;
    sub_7E80();

    v38 = *(v14 + 104);
    v70 = v13;
    v38(v17, enum case for Calendar.MatchingPolicy.nextTime(_:), v13);
    v39 = *(v9 + 104);
    v69 = v8;
    v39(v12, enum case for Calendar.RepeatedTimePolicy.first(_:), v8);
    v41 = v71;
    v40 = v72;
    v42 = v75;
    (*(v71 + 104))(v72, enum case for Calendar.SearchDirection.forward(_:), v75);
    sub_7F00();
    (*(v41 + 8))(v40, v42);
    (*(v9 + 8))(v12, v69);
    (*(v14 + 8))(v17, v70);
    v43 = v73;
    v44 = v74;
    v45 = v37;
    v46 = *(v74 + 8);
    v46(v45, v73);
    v47 = *(v44 + 48);
    if (v47(v20, 1, v43) == 1)
    {
      sub_7E90();
      if (v47(v20, 1, v43) != 1)
      {
        sub_73F4(v20);
      }
    }

    else
    {
      (*(v44 + 32))(v84, v20, v43);
    }

    v48 = objc_opt_self();
    isa = sub_7E70().super.isa;
    v50 = v76;
    sub_7F20();
    v51 = sub_7F30().super.isa;
    (*(v77 + 8))(v50, v78);
    v52 = [v48 rem_dateComponentsWithDate:isa timeZone:v51 isAllDay:0];

    sub_7E20();
    v53 = objc_allocWithZone(TTRComplicationReminderDueDate);
    v54 = sub_7E10().super.isa;
    v55 = sub_7EE0().super.isa;
    v56 = [v53 initWithDateComponents:v54 inCalendar:v55];

    if (!v56)
    {
      v57 = v83;
      sub_7E90();
      v58 = objc_allocWithZone(TTRComplicationReminderDueDate);
      v59 = sub_7E70().super.isa;
      v56 = [v58 initWithDate:v59 precision:0];

      v46(v57, v43);
    }

    v87._countAndFlagsBits = 0x6D6163206B6F6F42;
    v87._object = 0xEE00657469732070;
    v88._object = 0x800000000000C7D0;
    v88._countAndFlagsBits = 0xD000000000000049;
    sub_7F50(v87, v88);
    v60 = v83;
    sub_7E90();
    v61 = objc_allocWithZone(TTRComplicationReminder);
    v62 = v56;
    v63 = sub_7E70().super.isa;
    v64 = sub_7FB0();

    v65 = [v61 initWithCreationDate:v63 dueDate:v62 title:v64];

    v46(v60, v43);
    sub_7E60();
    v66 = objc_allocWithZone(TTRComplicationTimelineModelEntry);
    v67 = sub_7E70().super.isa;
    v68 = [v66 initWithStartDate:v67 overdueCount:0 remainingDueTodayCount:1 representativeReminder:v65];

    v46(v60, v43);
    (*(v81 + 8))(v85, v82);
    v46(v84, v43);
    (*(v79 + 8))(v86, v80);
    return v68;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_73AC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_73F4(uint64_t a1)
{
  v2 = sub_73AC(&qword_17248, qword_C9A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TTRComplicationRouter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRComplicationRouter();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRComplicationRouter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRComplicationRouter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t TTRComplicationRouter.launchURLForTimeline(withEntryCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_73AC(&qword_172B0, qword_C9C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_7FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  v19 = (v12 + 104);
  if (a1)
  {
    v20 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.showContents(_:);
    v21 = sub_7F60();
    (*(*(v21 - 8) + 104))(v16, v20, v21);
    (*v19)(v16, enum case for REMNavigationSpecifier.today(_:), v11);
    sub_7F80();
    v22 = sub_7E50();
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (v24(v8, 1, v22) == 1)
    {
      sub_7F90();
      (*(v12 + 8))(v16, v11);
      result = v24(v8, 1, v22);
      if (result == 1)
      {
        return result;
      }

      v26 = v8;
      return sub_7958(v26);
    }

    (*(v12 + 8))(v16, v11);
    return (*(v23 + 32))(a2, v8, v22);
  }

  else
  {
    v27 = enum case for REMNavigationSpecifier.RootPathSpecifier.none(_:);
    v28 = sub_7F70();
    (*(*(v28 - 8) + 104))(v18, v27, v28);
    (*v19)(v18, enum case for REMNavigationSpecifier.root(_:), v11);
    sub_7F80();
    v29 = sub_7E50();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v10, 1, v29) == 1)
    {
      sub_7F90();
      (*(v12 + 8))(v18, v11);
      result = v31(v10, 1, v29);
      if (result == 1)
      {
        return result;
      }

      v26 = v10;
      return sub_7958(v26);
    }

    (*(v12 + 8))(v18, v11);
    return (*(v30 + 32))(a2, v10, v29);
  }
}

uint64_t sub_7958(uint64_t a1)
{
  v2 = sub_73AC(&qword_172B0, qword_C9C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_7B7C(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "No template generator available for complication family; using empty template generator. {family: %@}", &v4, 0xCu);
}

void sub_7C20(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_0, log, OS_LOG_TYPE_FAULT, "Unable to determine date for components; returning nil {dateComponents: %@, timeZone: %@}", &v3, 0x16u);
}