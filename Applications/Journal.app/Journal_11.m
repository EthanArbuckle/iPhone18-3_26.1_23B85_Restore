void sub_10013A28C(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for InsightsCalendarDetailViewController();
  objc_msgSendSuper2(&v12, "viewIsAppearing:", a1 & 1);
  v3 = sub_10013A18C();
  if (v3 && (v4 = v3, v5 = [v3 isEditing], v4, v5))
  {
    v6 = sub_10013A18C();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 traitCollection];

      v9 = [v8 horizontalSizeClass];
      v10 = v9 != 1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [v1 navigationController];
  [v11 setToolbarHidden:v10 animated:a1 & 1];
}

void (*sub_10013A3E8(uint64_t a1, uint64_t a2))(_BYTE *, void)
{
  if (static Selector.== infix(_:_:)())
  {

    return sub_10013A59C();
  }

  else
  {
    sub_1000082B4(a2, v15, &qword_100AD13D0);
    v6 = v16;
    if (v16)
    {
      v7 = sub_10000CA14(v15, v16);
      v8 = *(v6 - 8);
      __chkstk_darwin(v7);
      v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v8 + 8))(v10, v6);
      sub_10000BA7C(v15);
    }

    else
    {
      v11 = 0;
    }

    v12 = type metadata accessor for InsightsCalendarDetailViewController();
    v14.receiver = v2;
    v14.super_class = v12;
    v13 = objc_msgSendSuper2(&v14, "canPerformAction:withSender:", a1, v11);
    swift_unknownObjectRelease();
    return v13;
  }
}

void (*sub_10013A59C())(_BYTE *, void)
{
  v1 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-v2 - 8];
  v16 = type metadata accessor for Calendar();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for DateComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_selectedDate;
  swift_beginAccess();
  v12 = *(v8 + 16);
  v12(v10, v0 + v11, v7);
  result = DateComponents.day.modify();
  if (*(v14 + 8))
  {
    result(v17, 0);
LABEL_5:
    static Calendar.current.getter();
    v12(v3, v10, v7);
    (*(v8 + 56))(v3, 0, 1, v7);
    v15 = sub_10088FE98(v3);
    sub_100004F84(v3, &unk_100AD9850);
    (*(v4 + 8))(v6, v16);
    (*(v8 + 8))(v10, v7);
    return !v15;
  }

  if (!__OFADD__(*v14, 1))
  {
    ++*v14;
    result(v17, 0);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_10013A9E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightsCalendarDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InsightsCalendarDetailViewController()
{
  result = qword_100AD4768;
  if (!qword_100AD4768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013AC50()
{
  type metadata accessor for DateComponents();
  if (v0 <= 0x3F)
  {
    sub_10000C298();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10013AD44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD4790);
  v8 = __chkstk_darwin(v7 - 8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v28 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = type metadata accessor for Calendar();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v21 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_selectedDate;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v21, v3);
  Calendar.date(from:)();
  (*(v4 + 8))(v6, v3);
  v22 = *(v13 + 48);
  if (v22(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v23 = *(v13 + 32);
  v23(v17, v11, v12);
  v11 = v29;
  sub_10088FB70(v29);
  if (v22(v11, 1, v12) == 1)
  {
    (*(v13 + 8))(v17, v12);
LABEL_4:
    sub_100004F84(v11, &unk_100AD4790);
    goto LABEL_5;
  }

  v25 = v28;
  v23(v28, v11, v12);
  v26 = Calendar.isDateInToday(_:)();
  v27 = *(v13 + 8);
  v27(v17, v12);
  if ((v26 & 1) == 0)
  {
    (*(v30 + 8))(v20, v31);
    return (v23)(v32, v25, v12);
  }

  v27(v25, v12);
LABEL_5:
  static Date.now.getter();
  return (*(v30 + 8))(v20, v31);
}

void sub_10013B14C(uint64_t a1, uint64_t a2, char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10013B1A8(a3);
  }
}

void sub_10013B1A8(char *a1)
{
  [v1 setContentScrollView:*&a1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView] forEdge:15];
  [v1 setNeedsFocusUpdate];
  *(v1 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition) = 0;
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 5)
  {
    return;
  }

  v5 = [a1 view];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = v5;
  v7 = v5;
  v8 = v6;
  do
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      v11 = [v6 superview];
      if (!v11)
      {
        break;
      }

      while (1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v12 = [v11 superview];
        v11 = v12;
        if (!v12)
        {
          goto LABEL_15;
        }
      }

      v6 = v11;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = [v6 superview];
    v10 = v9;

    v6 = v9;
  }

  while (v10);
LABEL_15:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_17;
    }
  }

  else if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_20;
    }

    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = _swiftEmptyArrayStorage[4];
LABEL_20:
      v14 = v13;

      [v14 setFocusEffect:0];

      return;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }
}

void sub_10013B4B0()
{
  v16 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date.FormatStyle.DateStyle();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0;
  v11 = [v0 navigationItem];
  sub_10013AD44(v10);
  static Date.FormatStyle.DateStyle.abbreviated.getter();
  static Date.FormatStyle.TimeStyle.omitted.getter();
  Date.formatted(date:time:)();
  (*(v1 + 8))(v3, v16);
  (*(v4 + 8))(v6, v15);
  (*(v8 + 8))(v10, v7);
  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v13 = v17;
  [v17 setEnabled:sub_10013A59C() & 1];
}

id sub_10013B794@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 superview];
  *a2 = result;
  return result;
}

char *sub_10013B7D0(void *a1, uint64_t a2)
{
  v35 = a2;
  v4 = type metadata accessor for Calendar();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD9850);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for DateComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for InsightsEntriesViewController();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    return 0;
  }

  v18 = v17;
  v33 = v4;
  v19 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  swift_beginAccess();
  sub_1000082B4(v18 + v19, v12, &unk_100AD9850);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100004F84(v12, &unk_100AD9850);
    return 0;
  }

  v32 = v2;
  (*(v14 + 32))(v16, v12, v13);
  v20 = a1;
  result = DateComponents.day.modify();
  v23 = *(v22 + 8);
  v31 = v20;
  if (v23)
  {
    (result)(v37, 0);
LABEL_8:
    static Calendar.current.getter();
    v24 = *(v14 + 16);
    v24(v10, v16, v13);
    v25 = *(v14 + 56);
    v25(v10, 0, 1, v13);
    v26 = sub_10088FE98(v10);
    sub_100004F84(v10, &unk_100AD9850);
    (*(v36 + 8))(v6, v33);
    if (!v26)
    {
      sub_100137BA0(0);
      v28 = objc_allocWithZone(v34);
      *&v28[OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model] = 0;
      v25(&v28[OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate], 1, 1, v13);
      v27 = sub_100013708(0, 0);
      v24(v10, v16, v13);
      v25(v10, 0, 1, v13);
      v29 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
      swift_beginAccess();
      sub_10013E988(v10, &v27[v29]);
      swift_endAccess();
      sub_10016448C();

      sub_100004F84(v10, &unk_100AD9850);
      (*(v14 + 8))(v16, v13);
      *&v27[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate + 8] = &off_100A5E018;
      swift_unknownObjectWeakAssign();
      return v27;
    }

    (*(v14 + 8))(v16, v13);

    return 0;
  }

  if (!__OFADD__(*v22, v35))
  {
    *v22 += v35;
    (result)(v37, 0);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_10013BC90()
{
  if ((*(v0 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition) & 1) == 0)
  {
    v1 = sub_10013A18C();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 isEditing];

      if ((v3 & 1) == 0)
      {
        v4 = sub_100137800();
        v6 = DateComponents.day.modify();
        if (*(v5 + 8))
        {
          v6(v7, 0);
          (v4)(v8, 0);
        }

        else
        {
          if (__OFSUB__(*v5, 1))
          {
            __break(1u);
            return;
          }

          --*v5;
          v6(v7, 0);
          (v4)(v8, 0);
        }

        sub_100139178(1, 1);
      }
    }
  }
}

void sub_10013BDF4()
{
  if ((*(v0 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition) & 1) == 0)
  {
    v1 = sub_10013A18C();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 isEditing];

      if ((v3 & 1) == 0)
      {
        v4 = sub_100137800();
        v6 = DateComponents.day.modify();
        if (*(v5 + 8))
        {
          v6(v7, 0);
          (v4)(v8, 0);
        }

        else
        {
          if (__OFADD__(*v5, 1))
          {
            __break(1u);
            return;
          }

          ++*v5;
          v6(v7, 0);
          (v4)(v8, 0);
        }

        sub_100139178(0, 1);
      }
    }
  }
}

uint64_t sub_10013C0A8()
{
  v0 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v0 - 8);
  v47 = &v43 - v1;
  v2 = type metadata accessor for EntryDateSource();
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v52 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Date();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_1000F24EC(&unk_100ADE5F0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = type metadata accessor for EntrySource();
  __chkstk_darwin(v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v21;
  v49 = v20;
  (*(v21 + 104))(v19, enum case for EntrySource.blankEntry(_:));
  v22 = type metadata accessor for EntryListType();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v16, 1, 1, v22);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v24 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  UUID.init()();
  v45 = v6;
  v46 = v5;
  (*(v6 + 56))(v10, 0, 1, v5);
  type metadata accessor for JournalEntryMO();
  v25 = static JournalEntryMO.create(type:context:uuid:)();
  type metadata accessor for EntryViewModel();
  swift_allocObject();
  v26 = v24;
  v27 = v25;
  v28 = sub_100035ADC(v27, 1, 1, v26);
  sub_1000082B4(v16, v14, &unk_100ADE5F0);
  if ((*(v23 + 48))(v14, 1, v22) == 1)
  {

    sub_100004F84(v10, &qword_100AD1420);
    sub_100004F84(v16, &unk_100ADE5F0);
    (*(v48 + 8))(v19, v49);
    sub_100004F84(v14, &unk_100ADE5F0);
  }

  else
  {
    v29 = sub_1000F24EC(&qword_100AD47A0);
    if ((*(*(v29 - 8) + 48))(v14, 2, v29))
    {

      sub_100004F84(v10, &qword_100AD1420);
      sub_100004F84(v16, &unk_100ADE5F0);
      (*(v48 + 8))(v19, v49);
      sub_100011478(v14);
    }

    else
    {
      v31 = v44;
      v30 = v45;
      v32 = v14;
      v33 = v46;
      (*(v45 + 32))(v44, v32, v46);
      sub_1007788F0(v31);

      (*(v30 + 8))(v31, v33);
      sub_100004F84(v10, &qword_100AD1420);
      sub_100004F84(v16, &unk_100ADE5F0);
      (*(v48 + 8))(v19, v49);
    }
  }

  v34 = v50;
  sub_10013AD44(v50);
  v36 = v54;
  v35 = v55;
  v37 = v52;
  (*(v54 + 104))(v52, enum case for EntryDateSource.custom(_:), v55);
  sub_1007824F0(v34, v37);
  (*(v36 + 8))(v37, v35);
  (*(v51 + 8))(v34, v53);
  v38 = sub_10013A18C();
  if (!v38)
  {
  }

  v39 = v38;
  v40 = type metadata accessor for CanvasContentInputType();
  v41 = v47;
  (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
  sub_1003054F0(v28, v41, 1);

  return sub_100004F84(v41, &qword_100AD57F0);
}

void sub_10013C898(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController] viewControllers];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1000065A8(0, &qword_100AD4C80);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_21:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v22 = v6;

  type metadata accessor for InsightsEntriesViewController();
  v7 = swift_dynamicCastClass();
  if (!v7 || ![v7 isEditing])
  {
    v11 = v22;
    goto LABEL_12;
  }

  v8 = [v1 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 5)
  {
    v10 = [v1 navigationItem];
    sub_1000065A8(0, &qword_100AD43B0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v10 setRightBarButtonItems:isa animated:a1 & 1];

    v11 = isa;
LABEL_12:

    return;
  }

  v12 = [v1 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (v13 == 1)
  {
    sub_1000F24EC(&unk_100AD4780);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100941D70;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v14 + 32) = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v14 + 40) = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v14 + 48) = v23;
    sub_1000065A8(0, &qword_100AD43B0);
    v15 = Array._bridgeToObjectiveC()().super.isa;

    [v1 setToolbarItems:v15 animated:a1 & 1];

    v16 = [v1 navigationItem];
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100941D50;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v17 + 32) = v23;
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 setRightBarButtonItems:v18.super.isa animated:a1 & 1];
  }

  else
  {
    v19 = [v1 navigationItem];
    sub_1000F24EC(&unk_100AD4780);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100941830;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v20 + 32) = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v20 + 40) = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v20 + 48) = v23;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v20 + 56) = v23;
    sub_1000065A8(0, &qword_100AD43B0);
    v18.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 setRightBarButtonItems:v18.super.isa animated:a1 & 1];
  }
}

void sub_10013CEF4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController) viewControllers];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1000065A8(0, &qword_100AD4C80);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v7 = v4;

  type metadata accessor for InsightsEntriesViewController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    if ([v5 isEditing])
    {
      [v6 setEditing:0 animated:1];
      sub_100139550(1);
      sub_10013973C();
    }
  }
}

void sub_10013D078(char a1)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = [*(v1 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController) viewControllers];
  if (!v7)
  {
    return;
  }

  inited = v7;
  sub_1000065A8(0, &qword_100AD4C80);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_38:

    return;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_38;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_43;
    }

    v10 = *(v9 + 32);
  }

  v30 = v10;

  type metadata accessor for InsightsEntriesViewController();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    sub_1000F24EC(&unk_100AD4780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100941D70;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(inited + 32) = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(inited + 40) = v31;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(inited + 48) = v31;
    if (![v12 isEditing])
    {

      swift_setDeallocating();
      swift_arrayDestroy();
      return;
    }

    v13 = *&v12[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
    if (v13)
    {
      v14 = v30;
      v15 = [v13 indexPathsForSelectedItems];
      if (v15)
      {
        v16 = v15;
        type metadata accessor for IndexPath();
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        goto LABEL_18;
      }
    }

    else
    {
      v18 = v30;
    }

    v17 = _swiftEmptyArrayStorage;
    v16 = v30;
LABEL_18:

    v2 = v17[2];

    v3 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) == 0)
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_45;
      }

      v19 = *(inited + 32);
LABEL_21:
      v20 = v19;
      [v19 setEnabled:v2 != 0];

      if (v3)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          goto LABEL_47;
        }

        v21 = *(inited + 40);
      }

      v22 = v21;
      [v21 setEnabled:v2 != 0];

      if (v3)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_29;
      }

      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v23 = *(inited + 48);
LABEL_29:
        v24 = v23;
        v29 = a1;

        [v24 setEnabled:v2 != 0];

        LOBYTE(v12) = sub_100302D24();
        if (qword_100AD08F8 == -1)
        {
LABEL_30:
          v25 = qword_100B30DD0;
          if (qword_100AD0908 != -1)
          {
            swift_once();
          }

          v26 = qword_100B30DE0;
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          if (v12)
          {
            v27 = v26;
          }

          else
          {
            v27 = v25;
          }

          [v31 setImage:v27];

          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v28 = String._bridgeToObjectiveC()();

          [v31 setTitle:v28];

          sub_10013DDF4(v29 & 1);
          sub_10013973C();

          return;
        }

LABEL_45:
        swift_once();
        goto LABEL_30;
      }

LABEL_47:
      __break(1u);
      return;
    }

LABEL_43:
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_21;
  }
}

void sub_10013D774()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10013A18C();

    if (v2)
    {
      sub_1008BAA94();
    }
  }
}

void sub_10013D7DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10013A18C();

    if (v2)
    {
      [v2 toggleBookmark];
    }
  }
}

void sub_10013D84C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10013A18C();

    if (v2)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        v3 = v5;
      }

      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_10030F810(v3, sub_10013EA30, v4);

      swift_unknownObjectRelease();
    }
  }
}

void sub_10013D988()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100137BA0(1);
  }
}

void sub_10013D9E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10013A18C();

    if (v2)
    {
      sub_1003027EC();
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_10013D078(1);
  }
}

void sub_10013DA80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_10013A18C();

    if (v2)
    {
      v3 = *&v2[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
      if (v3)
      {
        v4 = v3;
        sub_1006018C4();
      }
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_10013D078(1);
  }
}

void sub_10013DB3C(char *a1)
{
  v3 = *&a1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v3 && (v4 = [v3 indexPathsForSelectedItems]) != 0)
  {
    v5 = v4;
    type metadata accessor for IndexPath();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];

  if (v8 || (v9 = [v1 traitCollection], v10 = objc_msgSend(v9, "userInterfaceIdiom"), v9, v10 != 5))
  {
    sub_10013DC68();

    sub_10013D078(0);
  }

  else if ([a1 isEditing])
  {
    sub_100137BA0(1);

    sub_10013973C();
  }
}

void sub_10013DC68()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController) viewControllers];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_1000065A8(0, &qword_100AD4C80);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v7 = v4;

  type metadata accessor for InsightsEntriesViewController();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    if (([v5 isEditing] & 1) == 0)
    {
      [v6 setEditing:1 animated:1];
      sub_100139550(1);
      sub_10013D078(1);
      sub_10013973C();
    }
  }
}

void sub_10013DDF4(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController] viewControllers];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1000065A8(0, &qword_100AD4C80);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_16:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v13 = v6;

  type metadata accessor for InsightsEntriesViewController();
  v7 = swift_dynamicCastClass();
  if (v7 && [v7 isEditing] && (v8 = objc_msgSend(v1, "traitCollection"), v9 = objc_msgSend(v8, "userInterfaceIdiom"), v8, v9 != 5))
  {
    sub_1003031B0();
    v10 = [v1 navigationItem];
    sub_1000F24EC(&unk_100AD4780);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100941D50;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v11 + 32) = v14;
    sub_1000065A8(0, &qword_100AD43B0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setLeftBarButtonItems:isa animated:a1 & 1];
  }

  else
  {
  }
}

void sub_10013E0CC(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5 && ((v4 = *&a1[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView]) == 0 || (v5 = [v4 indexPathsForSelectedItems]) == 0 ? (v8 = _swiftEmptyArrayStorage) : (v6 = v5, type metadata accessor for IndexPath(), v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v6, v8 = v7), v9 = v8[2], , !v9))
  {

    sub_100137BA0(1);
  }

  else
  {

    sub_10013D078(1);
  }
}

uint64_t sub_10013E1D0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10013E24C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

void sub_10013E2C0(char a1)
{
  v3 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = [*(v1 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController) viewControllers];
  if (!v13)
  {
    return;
  }

  v14 = v13;
  sub_1000065A8(0, &qword_100AD4C80);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v16 = *(v15 + 32);
  }

  v23 = v16;

  type metadata accessor for InsightsEntriesViewController();
  v17 = swift_dynamicCastClass();
  if (v17 && (v18 = v17, sub_10013B1A8(v17), (a1 & 1) != 0))
  {
    v19 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
    swift_beginAccess();
    sub_1000082B4(&v18[v19], v5, &unk_100AD9850);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_100004F84(v5, &unk_100AD9850);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      (*(v7 + 16))(v10, v12, v6);
      v21 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_selectedDate;
      swift_beginAccess();
      (*(v7 + 40))(v1 + v21, v10, v6);
      swift_endAccess();
      sub_10013B4B0();

      (*(v7 + 8))(v12, v6);
    }
  }

  else
  {
    v20 = v23;
  }
}

void sub_10013E660(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  NSManagedObjectContext.performAndWait<A>(_:)();
  if ((v20 & 1) == 0)
  {
    static Calendar.current.getter();
    if (qword_100AD0BA8 != -1)
    {
      swift_once();
    }

    v14 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
    swift_beginAccess();
    (*(v3 + 16))(v5, v13 + v14, v2);
    Calendar.dateComponents(_:from:)();
    (*(v3 + 8))(v5, v2);
    (*(v17 + 8))(v8, v18);
    v15 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_selectedDate;
    v16 = v19;
    swift_beginAccess();
    (*(v10 + 40))(v16 + v15, v12, v9);
    swift_endAccess();
    sub_100139178(0, 0);
  }
}

uint64_t sub_10013E988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD9850);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013EA38()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10013F5D0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A5E168;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000691C(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

char *sub_10013ECF0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapView;
  type metadata accessor for GenericMapAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapAsset] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for FullScreenGenericMapView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  *(*&v11[OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapView] + OBJC_IVAR____TtC7Journal19GenericMapAssetView_delegate + 8) = &off_100A5E118;
  swift_unknownObjectWeakAssign();
  return v11;
}

void sub_10013EE44()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardView);
  v3 = [v2 window];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardHeightConstraint;
    v6 = *(v1 + OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardHeightConstraint);
    if (v6)
    {
      [v6 setActive:0];
    }

    v7 = [v2 heightAnchor];
    v8 = [v4 heightAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 multiplier:0.5];

    type metadata accessor for UILayoutPriority(0);
    sub_10000691C(&qword_100AF3610, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.+ infix(_:_:)();
    LODWORD(v10) = v13;
    [v9 setPriority:v10];
    v11 = *(v1 + v5);
    *(v1 + v5) = v9;
    v12 = v9;

    [v12 setActive:1];
  }
}

id sub_10013F034()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenGenericMapView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013F0F8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardView;
    v3 = [*(result + OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardView) layer];
    if (qword_100AD0A18 != -1)
    {
      swift_once();
    }

    v35 = xmmword_100B30F28;
    v36 = *&qword_100B30F38;
    v37 = xmmword_100B30F48;
    v38 = *&qword_100B30F58;
    [v3 setCornerRadii:&v35];

    [v1 addSubview:*&v1[v2]];
    v4 = *&v1[v2];
    v5 = [v4 superview];
    v6 = &selRef_setSuggestedName_;
    if (v5)
    {
      v7 = v5;
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [v4 leadingAnchor];
      v9 = [v7 leadingAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];

      [v10 setConstant:20.0];
      if (v10)
      {
        [v10 setActive:1];
      }

      v6 = &selRef_setSuggestedName_;
    }

    else
    {
      v10 = 0;
      v7 = v4;
    }

    v11 = *&v1[v2];
    v12 = [v11 superview];
    if (v12)
    {
      v13 = v12;
      v14 = v6;
      [v11 v6[278]];
      v15 = [v11 trailingAnchor];
      v16 = [v13 trailingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      [v17 setConstant:-20.0];
      if (v17)
      {
        [v17 setActive:1];
      }

      v6 = v14;
    }

    else
    {
      v17 = 0;
      v13 = v11;
    }

    v18 = *&v1[v2];
    v19 = [v18 superview];
    if (v19)
    {
      v20 = v19;
      [v18 v6[278]];
      v21 = [v18 centerYAnchor];
      v22 = [v20 centerYAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      [v23 setConstant:0.0];
      if (v23)
      {
        [v23 setActive:1];
      }
    }

    else
    {
      v23 = 0;
      v20 = v18;
    }

    sub_10013EE44();
    v24 = OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapView;
    v25 = *&v1[OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapView];
    v26 = *&v1[OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapAsset];
    v27 = *&v25[OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset];
    *&v25[OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset] = v26;
    v28 = v26;
    v29 = v25;

    sub_1007195FC();
    v30 = *&v1[v24];
    v30[OBJC_IVAR____TtC7Journal19GenericMapAssetView_isInteractive] = 1;
    v31 = v30;
    sub_1007199B8();

    v32 = [*&v1[v24] layer];
    v35 = xmmword_100B30F28;
    v36 = *&qword_100B30F38;
    v37 = xmmword_100B30F48;
    v38 = *&qword_100B30F58;
    [v32 setCornerRadii:&v35];

    v33 = [*&v1[v24] layer];
    [v33 setMasksToBounds:1];

    [*&v1[v2] addSubview:*&v1[v24]];
    v34 = *&v1[v24];
    sub_100013178(0.0);
  }

  return result;
}

void sub_10013F5D8()
{
  v1 = OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapView;
  type metadata accessor for GenericMapAssetView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_cardHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal24FullScreenGenericMapView_mapAsset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int sub_10013F6B0()
{
  Hasher.init(_seed:)();
  sub_100029840(v1);
  return Hasher._finalize()();
}

void *sub_10013F728()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController____lazy_storage___appStorage;
  v3 = *(v0 + OBJC_IVAR____TtC7Journal30AppNavigationSidebarController____lazy_storage___appStorage);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for AppStorageMO();
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v5 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    v4 = static AppStorageMO.sharedStorage(context:)();

    v6 = *(v1 + v2);
    *(v1 + v2) = v4;
    v7 = v4;
    sub_10015DB5C(v6);
  }

  sub_10015DB6C(v3);
  return v4;
}

void sub_10013F8E0()
{
  v1 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsTask;
  if (*(v0 + OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsTask))
  {

    sub_1000F24EC(&qword_100AD5BC0);
    Task.cancel()();
  }

  *(v0 + v1) = 0;

  v2 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsPopoverController;
  v3 = *(v0 + OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsPopoverController);
  if (v3)
  {
    [v3 dismissViewControllerAnimated:1 completion:0];
    v4 = *(v0 + v2);
    *(v0 + v2) = 0;
  }
}

void sub_10013FA4C()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 indexPathsForSelectedItems];

    if (v9)
    {
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = v10[2];
      if (v11 == 0.0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      v11 = _swiftEmptyArrayStorage[2];
      if (v11 == 0.0)
      {
LABEL_10:

        return;
      }
    }

    v12 = 0;
    while (v12 < *(v10 + 2))
    {
      (*(v3 + 16))(v6, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v2);
      v13 = [v17 collectionView];
      if (!v13)
      {
        goto LABEL_12;
      }

      v14 = v13;
      ++v12;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v14 deselectItemAtIndexPath:isa animated:1];

      (*(v3 + 8))(v6, v2);
      if (*&v11 == v12)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10013FC60(uint64_t a1, unsigned int *a2)
{
  v4 = type metadata accessor for AppNavigationSidebarController.Item(0);
  __chkstk_darwin(v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  v8 = type metadata accessor for SidebarPreferences.Brick();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v7) = sub_100029D48(a1, v6);
  sub_10000D5C8(v6, type metadata accessor for AppNavigationSidebarController.Item);
  return v7 & 1;
}

uint64_t sub_10013FD5C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD4C60);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for AppNavigationSidebarController.Item(0);
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  sub_10001C850(a1, v12, type metadata accessor for AppNavigationSidebarController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10000D5C8(v12, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_12:
    v24 = 0;
    return v24 & 1;
  }

  v19 = v3;
  sub_10001DAC8(v12, v18, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v20 = *(v7 + 48);
  sub_10001C850(v28, v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_10001C850(v18, &v9[v20], type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v21 = sub_1000F24EC(&qword_100AD47A0);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v9, 2, v21);
  if (!v23)
  {
    sub_10001C850(v9, v16, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (!v22(&v9[v20], 2, v21))
    {
      (*(v4 + 32))(v6, &v9[v20], v19);
      v24 = static UUID.== infix(_:_:)();
      v26 = *(v4 + 8);
      v26(v6, v19);
      sub_10000D5C8(v18, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v26(v16, v19);
      sub_10000D5C8(v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      return v24 & 1;
    }

    sub_10000D5C8(v18, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    (*(v4 + 8))(v16, v19);
    goto LABEL_11;
  }

  if (v23 == 1)
  {
    sub_10000D5C8(v18, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (v22(&v9[v20], 2, v21) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_10000D5C8(v18, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (v22(&v9[v20], 2, v21) != 2)
    {
LABEL_11:
      sub_100004F84(v9, &qword_100AD4C60);
      goto LABEL_12;
    }
  }

  sub_10000D5C8(v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_1001401E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (sub_1001414C8(a1))
    {
      sub_1000065A8(0, &qword_100AD4E28);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v5 = [objc_opt_self() configurationWithActions:isa];

      [v5 setPerformsFirstActionWithFullSwipe:0];
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1001402F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000F24EC(&unk_100AD6DD0);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for OpenSensitiveURLAction.Destination();
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1001403F8, v6, v5);
}

uint64_t sub_1001403F8()
{
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v1 = [*(qword_100B2F898 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings];
  v2 = [v1 authorizationStatus];

  v3 = v0[2];
  swift_storeEnumTagMultiPayload();
  v4 = v3;
  if (v2)
  {
    v0[14] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v0[15] = v5;
    v0[16] = v6;
    v8 = sub_100140864;
  }

  else
  {
    v0[10] = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v0[11] = v5;
    v0[12] = v9;
    v8 = sub_10014055C;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_10014055C()
{
  v1 = v0[2];
  sub_1008B4384(v0[3]);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_100140608;
  v3 = v0[3];

  return sub_1008B5208(v3, 0, v1, 0);
}

uint64_t sub_100140608()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_100004F84(v2, &unk_100AD6DD0);
  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_10014075C, v4, v3);
}

uint64_t sub_10014075C()
{
  v1 = v0[5];

  sub_10000D5C8(v1, type metadata accessor for OpenSensitiveURLAction.Destination);
  v2 = v0[8];
  v3 = v0[9];

  return _swift_task_switch(sub_1001407E0, v2, v3);
}

uint64_t sub_1001407E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100140864()
{
  v1 = v0[2];
  sub_1008B4384(v0[3]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100140910;
  v3 = v0[3];

  return sub_1008B5208(v3, 0, v1, 0);
}

uint64_t sub_100140910()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_100004F84(v2, &unk_100AD6DD0);
  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_100140A64, v4, v3);
}

uint64_t sub_100140A64()
{
  v1 = v0[5];

  sub_10000D5C8(v1, type metadata accessor for OpenSensitiveURLAction.Destination);
  v2 = v0[8];
  v3 = v0[9];

  return _swift_task_switch(sub_10015E088, v2, v3);
}

uint64_t sub_100140B08(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1003E9628(0, 0, v7, a3, v11);
}

uint64_t sub_100140C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000F24EC(&unk_100AD6DD0);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for OpenSensitiveURLAction.Destination();
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for Tips.InvalidationReason();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[11] = v7;
  v4[12] = v6;

  return _swift_task_switch(sub_100140D8C, v7, v6);
}

uint64_t sub_100140D8C()
{
  if (qword_100ACF988 != -1)
  {
    swift_once();
  }

  if ([objc_opt_self() isHealthDataAvailable])
  {
    v1 = sub_100027494(1);
    if ((v2 & 1) != 0 || v1) && ((v3 = sub_100027494(0), (v4) || v3))
    {
      v9 = v0[2];
      swift_storeEnumTagMultiPayload();
      v10 = v9;
      v0[14] = static MainActor.shared.getter();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[15] = v12;
      v0[16] = v11;

      return _swift_task_switch(sub_1001411BC, v12, v11);
    }

    else
    {
      v5 = v0[10];

      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v6[1] = sub_100140F90;

      return sub_100136530(v5, &protocol witness table for MainActor, &off_100A56508);
    }
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100140F90()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_1001410D4, v3, v2);
}

uint64_t sub_1001410D4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 104))(v1, enum case for Tips.InvalidationReason.actionPerformed(_:), v3);
  sub_10009F12C();
  Tip.invalidate(reason:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001411BC()
{
  v1 = v0[2];
  sub_1008B4384(v0[3]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100141268;
  v3 = v0[3];

  return sub_1008B5208(v3, 0, v1, 0);
}

uint64_t sub_100141268()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_100004F84(v2, &unk_100AD6DD0);
  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return _swift_task_switch(sub_1001413BC, v4, v3);
}

uint64_t sub_1001413BC()
{
  v1 = v0[5];

  sub_10000D5C8(v1, type metadata accessor for OpenSensitiveURLAction.Destination);
  v2 = v0[11];
  v3 = v0[12];

  return _swift_task_switch(sub_100141440, v2, v3);
}

uint64_t sub_100141440()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001414C8(uint64_t a1)
{
  v107 = a1;
  v2 = type metadata accessor for SidebarPreferences.Brick();
  v100 = *(v2 - 1);
  v101 = v2;
  v3 = v100[8];
  v4 = __chkstk_darwin(v2);
  v99 = v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v106 = v90 - v5;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v103 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v102 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for UUID();
  v96 = *(v98 - 8);
  v10 = *(v96 + 64);
  v11 = __chkstk_darwin(v98);
  v90[0] = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = v90 - v12;
  v13 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v92 = *(v13 - 8);
  v14 = __chkstk_darwin(v13 - 8);
  v94 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v97 = v90 - v17;
  v93 = v18;
  __chkstk_darwin(v16);
  v105 = v90 - v19;
  v20 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v20 - 8);
  v22 = v90 - v21;
  v23 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v91 = v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v29 = v90 - v28;
  v90[1] = v30;
  __chkstk_darwin(v27);
  v32 = v90 - v31;
  swift_getKeyPath();
  swift_getKeyPath();
  v104 = v1;
  static UIViewController.ViewLoading.subscript.getter();

  v33 = aBlock;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v34 = v24;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100004F84(v22, &qword_100AD4B90);
    return 0;
  }

  sub_10001DAC8(v22, v32, type metadata accessor for AppNavigationSidebarController.Item);
  sub_10001C850(v32, v29, type metadata accessor for AppNavigationSidebarController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v107 = v32;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v100;
      v37 = v100[4];
      v38 = v106;
      v39 = v101;
      (v37)(v106, v29);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = v99;
      (v36[2])(v99, v38, v39);
      v42 = (*(v36 + 80) + 24) & ~*(v36 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = v40;
      (v37)(v43 + v42, v41, v39);

      v44 = String._bridgeToObjectiveC()();

      v112 = sub_10015D4D8;
      v113 = v43;
      aBlock = _NSConcreteStackBlock;
      v109 = 1107296256;
      v110 = sub_100831E20;
      v111 = &unk_100A5E708;
      v45 = _Block_copy(&aBlock);
      v46 = [objc_opt_self() contextualActionWithStyle:0 title:v44 handler:v45];

      _Block_release(v45);

      v47 = String._bridgeToObjectiveC()();
      v48 = [objc_opt_self() systemImageNamed:v47];

      [v46 setImage:v48];
      sub_1000F24EC(&unk_100AD4780);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_100941D50;
      *(v49 + 32) = v46;
      (v36[1])(v106, v39);
      sub_10000D5C8(v107, type metadata accessor for AppNavigationSidebarController.Item);
      return v49;
    }

    sub_10000D5C8(v107, type metadata accessor for AppNavigationSidebarController.Item);
    v60 = v29;
    goto LABEL_15;
  }

  v51 = v29;
  v52 = v105;
  v53 = sub_10001DAC8(v51, v105, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  if ((sub_1005251D0(v53) & 1) == 0)
  {
LABEL_13:
    sub_10000D5C8(v52, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v60 = v107;
LABEL_15:
    sub_10000D5C8(v60, type metadata accessor for AppNavigationSidebarController.Item);
    return 0;
  }

  v54 = v97;
  sub_10001C850(v52, v97, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v55 = sub_1000F24EC(&qword_100AD47A0);
  if ((*(*(v55 - 8) + 48))(v54, 2, v55))
  {
    sub_10000D5C8(v54, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (qword_100ACF990 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_10000617C(v56, qword_100AD47F0);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "Trying to present the edit view for a non-editable journal", v59, 2u);
    }

    goto LABEL_13;
  }

  v61 = v96;
  v62 = *(v96 + 32);
  v63 = v95;
  v62(v95, v54, v98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v65 = v90[0];
  v66 = v63;
  v67 = v98;
  (*(v61 + 16))(v90[0], v66, v98);
  v68 = (*(v61 + 80) + 24) & ~*(v61 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = v64;
  v62((v69 + v68), v65, v67);

  v70 = String._bridgeToObjectiveC()();

  v112 = sub_10015D504;
  v113 = v69;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v100 = &v110;
  v110 = sub_100831E20;
  v111 = &unk_100A5E758;
  v71 = _Block_copy(&aBlock);
  v72 = objc_opt_self();
  v73 = [v72 contextualActionWithStyle:0 title:v70 handler:v71];
  v106 = v73;

  _Block_release(v71);

  v74 = String._bridgeToObjectiveC()();
  v101 = objc_opt_self();
  v75 = [v101 systemImageNamed:v74];

  [v73 setImage:v75];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = v94;
  sub_10001C850(v105, v94, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v78 = v91;
  sub_10001C850(v107, v91, type metadata accessor for AppNavigationSidebarController.Item);
  v79 = (*(v92 + 80) + 24) & ~*(v92 + 80);
  v80 = (v93 + *(v34 + 80) + v79) & ~*(v34 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v76;
  sub_10001DAC8(v77, v81 + v79, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_10001DAC8(v78, v81 + v80, type metadata accessor for AppNavigationSidebarController.Item);

  v82 = String._bridgeToObjectiveC()();

  v112 = sub_10015D814;
  v113 = v81;
  aBlock = _NSConcreteStackBlock;
  v109 = 1107296256;
  v110 = sub_100831E20;
  v111 = &unk_100A5E7A8;
  v83 = _Block_copy(&aBlock);
  v84 = [v72 contextualActionWithStyle:0 title:v82 handler:v83];

  _Block_release(v83);

  v85 = [objc_opt_self() systemRedColor];
  [v84 setBackgroundColor:v85];

  v86 = String._bridgeToObjectiveC()();
  v87 = [v101 systemImageNamed:v86];

  [v84 setImage:v87];
  sub_1000F24EC(&unk_100AD4780);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_100941D60;
  v89 = v106;
  *(v88 + 32) = v84;
  *(v88 + 40) = v89;
  (*(v96 + 8))(v95, v98);
  sub_10000D5C8(v105, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_10000D5C8(v107, type metadata accessor for AppNavigationSidebarController.Item);
  return v88;
}

uint64_t sub_100142420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a3();
  }

  v12 = Strong;
  (a3)(1);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, a6, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  sub_100142978(v10);

  return sub_100004F84(v10, &qword_100AD1420);
}

uint64_t sub_100142588(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a3)(0);
  }

  v19 = Strong;
  sub_10001C850(a6, v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v20 = sub_1000F24EC(&qword_100AD47A0);
  if ((*(*(v20 - 8) + 48))(v13, 2, v20))
  {

    sub_10000D5C8(v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    return (a3)(0);
  }

  (*(v15 + 32))(v17, v13, v14);
  sub_100142D94(v17, a7, a3, a4);

  return (*(v15 + 8))(v17, v14);
}

void sub_1001427B0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100142810();
  }
}

uint64_t sub_100142810()
{
  v1 = v0;
  v2 = sub_10013F728();
  if (v2)
  {
    v3 = v2;
    AppStorageMO.setHiddenFromSidebar(_:for:)();
  }

  result = [v1 isEditing];
  if ((result & 1) == 0)
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v5 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    v9 = 0;
    v6 = [v5 save:&v9];
    v7 = v9;
    if (v6)
    {

      return v7;
    }

    else
    {
      v8 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return result;
}

void sub_100142978(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  sub_1000082B4(a1, v4, &qword_100AD1420);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004F84(v4, &qword_100AD1420);
    type metadata accessor for CustomizeJournalViewModel();
    swift_allocObject();
    v12 = sub_1003DA2DC();
    v13 = type metadata accessor for CustomizeJournalViewController();
    v14 = objc_allocWithZone(v13);
    sub_1000F24EC(&unk_100AD4D10);
    UIViewController.ViewLoading.init()();
    sub_1000065A8(0, &qword_100AD43B0);
    UIViewController.ViewLoading.init()();
    UIViewController.ViewLoading.init()();
    *&v14[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_colorPickerViewController] = 0;
    *&v14[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel] = v12;
    v24.receiver = v14;
    v24.super_class = v13;
    v15 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v16 = sub_1003DCA90(v9);
    if (!v16)
    {
      type metadata accessor for CustomizeJournalViewModel();
      swift_allocObject();
      v16 = sub_1003DA2DC();
    }

    v17 = v16;
    v18 = type metadata accessor for CustomizeJournalViewController();
    v19 = objc_allocWithZone(v18);
    sub_1000F24EC(&unk_100AD4D10);
    UIViewController.ViewLoading.init()();
    sub_1000065A8(0, &qword_100AD43B0);
    UIViewController.ViewLoading.init()();
    UIViewController.ViewLoading.init()();
    *&v19[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_colorPickerViewController] = 0;
    *&v19[OBJC_IVAR____TtC7Journal30CustomizeJournalViewController_viewModel] = v17;
    v23.receiver = v19;
    v23.super_class = v18;
    v15 = objc_msgSendSuper2(&v23, "initWithNibName:bundle:", 0, 0);
    (*(v6 + 8))(v11, v5);
  }

  v20 = v15;
  v21 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v20];

  [v21 setModalInPresentation:1];
  v22 = UIViewController.forPresenting.getter();
  [v22 presentViewController:v21 animated:1 completion:0];

  swift_unknownObjectWeakAssign();
}

void sub_100142D94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  v90 = a4;
  v92 = a3;
  v86 = a2;
  v5 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v80 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v85 = v6;
  v87 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v84 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v16 - 8);
  v18 = &v68 - v17;
  v19 = type metadata accessor for JournalSidebarViewModel(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = a1;
  v89 = v13;
  v23 = *(v13 + 16);
  v83 = v12;
  v81 = v23;
  v23(v15, a1, v12);
  sub_1005219BC(v15, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100004F84(v18, &unk_100AD4400);
    if (qword_100ACF990 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000617C(v24, qword_100AD47F0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Trying to present the edit view for a non-editable journal", v27, 2u);
    }

    if (v92)
    {
      v92(0);
    }
  }

  else
  {
    sub_10001DAC8(v18, v22, type metadata accessor for JournalSidebarViewModel);
    if (sub_100521CB8() < 1)
    {
      if (v92)
      {
        v92(1);
      }

      sub_100144AD8(v88);
      v67 = v22;
    }

    else
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v28._countAndFlagsBits = 0xE2206574656C6544;
      v28._object = 0xAA00000000009C80;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v22);
      v29._countAndFlagsBits = 0x72756F4A209D80E2;
      v29._object = 0xAC0000003F6C616ELL;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v78 = v22;
      v30 = String._bridgeToObjectiveC()();

      v31 = String._bridgeToObjectiveC()();

      v79 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v71 = String.init(localized:table:bundle:locale:comment:)();
      v70 = v32;
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = v83;
      v81(&v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v88, v83);
      v77 = type metadata accessor for AppNavigationSidebarController.Item;
      sub_10001C850(v86, v87, type metadata accessor for AppNavigationSidebarController.Item);
      v35 = v92;
      v36 = v89;
      v69 = *(v89 + 80);
      v37 = (v69 + 40) & ~v69;
      v74 = v80[80];
      v75 = v14 + v74;
      v38 = (v14 + v74 + v37) & ~v74;
      v76 = v69 | v74;
      v39 = swift_allocObject();
      v40 = v90;
      v39[2] = v35;
      v39[3] = v40;
      v39[4] = v33;
      v41 = *(v36 + 32);
      v89 = v36 + 32;
      v73 = v41;
      v41(v39 + v37, v15, v34);
      v72 = type metadata accessor for AppNavigationSidebarController.Item;
      v42 = v87;
      sub_10001DAC8(v87, v39 + v38, type metadata accessor for AppNavigationSidebarController.Item);
      sub_100021E80(v35);

      v43 = String._bridgeToObjectiveC()();

      v97 = sub_10015D27C;
      v98 = v39;
      aBlock = _NSConcreteStackBlock;
      v94 = 1107296256;
      v71 = &v95;
      v95 = sub_10016B4D8;
      v96 = &unk_100A5E618;
      v44 = _Block_copy(&aBlock);

      v70 = objc_opt_self();
      v45 = [v70 actionWithTitle:v43 style:2 handler:v44];
      v80 = v45;
      _Block_release(v44);

      [v79 addAction:v45];
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v84 = String.init(localized:table:bundle:locale:comment:)();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = v83;
      v81(v15, v88, v83);
      sub_10001C850(v86, v42, v77);
      v48 = (v69 + 24) & ~v69;
      v49 = (v75 + v48) & ~v74;
      v50 = (v85 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      *(v51 + 16) = v46;
      v73(v51 + v48, v15, v47);
      sub_10001DAC8(v42, v51 + v49, v72);
      v52 = (v51 + v50);
      v53 = v92;
      v54 = v90;
      *v52 = v92;
      v52[1] = v54;
      sub_100021E80(v53);

      v55 = String._bridgeToObjectiveC()();

      v97 = sub_10015D358;
      v98 = v51;
      aBlock = _NSConcreteStackBlock;
      v94 = 1107296256;
      v95 = sub_10016B4D8;
      v96 = &unk_100A5E668;
      v56 = _Block_copy(&aBlock);

      v57 = v70;
      v58 = [v70 actionWithTitle:v55 style:2 handler:v56];
      _Block_release(v56);

      v59 = v79;
      [v79 addAction:v58];
      v60 = [objc_opt_self() mainBundle];
      v99._object = 0x80000001008E0EF0;
      v61._countAndFlagsBits = 0x6C65636E6143;
      v99._countAndFlagsBits = 0xD00000000000001BLL;
      v61._object = 0xE600000000000000;
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v61, 0, v60, v62, v99);

      v63 = swift_allocObject();
      *(v63 + 16) = v53;
      *(v63 + 24) = v54;
      sub_100021E80(v53);
      v64 = String._bridgeToObjectiveC()();

      v97 = sub_10015D4A0;
      v98 = v63;
      aBlock = _NSConcreteStackBlock;
      v94 = 1107296256;
      v95 = sub_10016B4D8;
      v96 = &unk_100A5E6B8;
      v65 = _Block_copy(&aBlock);

      v66 = [v57 actionWithTitle:v64 style:1 handler:v65];
      _Block_release(v65);

      [v59 addAction:v66];
      [v91 presentViewController:v59 animated:1 completion:0];

      v67 = v78;
    }

    sub_10000D5C8(v67, type metadata accessor for JournalSidebarViewModel);
  }
}

void sub_100143A68(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a2(1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100143B58(a5);
  }
}

void sub_100143AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_10014404C(a3, v10, a5, a6);
  }
}

uint64_t sub_100143B58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for JournalSidebarViewModel(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  (*(v5 + 16))(v7, a1, v4);
  sub_1005219BC(v7, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_100004F84(v10, &unk_100AD4400);
  }

  sub_10001DAC8(v10, v17, type metadata accessor for JournalSidebarViewModel);
  v19 = sub_10002B504();
  sub_10001C850(v17, v15, type metadata accessor for JournalSidebarViewModel);
  type metadata accessor for DeleteJournalViewModel();
  swift_allocObject();
  sub_1002A4C44(v15, v19);
  v20 = objc_allocWithZone(type metadata accessor for DeleteJournalMoveEntriesViewController());

  v22 = sub_1004A0E00(v21);
  *&v22[OBJC_IVAR____TtC7Journal38DeleteJournalMoveEntriesViewController_delegate + 8] = &off_100A5E220;
  swift_unknownObjectWeakAssign();
  v23 = [v22 sheetPresentationController];
  if (v23)
  {
    v24 = v23;
    v25 = [v2 traitCollection];
    v26 = [v25 userInterfaceIdiom];

    if (v26 != 5)
    {
      v27 = [v2 traitCollection];
      v28 = [v27 horizontalSizeClass];

      if (v28 == 1)
      {
        v29 = String._bridgeToObjectiveC()();
        sub_1000065A8(0, &qword_100AD85C0);
        *(swift_allocObject() + 16) = v22;
        v30 = v29;
        v31 = v22;
        v32 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

        sub_1000F24EC(&unk_100AD4780);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_100941D50;
        *(v33 + 32) = v32;
        v34 = v32;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v24 setDetents:isa];

        [v24 setPrefersEdgeAttachedInCompactHeight:1];
      }

      else
      {
        [v24 setPrefersPageSizing:0];
      }

      [v24 setPrefersScrollingExpandsWhenScrolledToEdge:0];
      [v24 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
    }
  }

  [v2 presentViewController:v22 animated:1 completion:0];

  return sub_10000D5C8(v17, type metadata accessor for JournalSidebarViewModel);
}

uint64_t sub_10014404C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v64 = a4;
  v65 = a3;
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v61 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v66 = &v54 - ((&v17->_object + 7) & 0xFFFFFFFFFFFFFFF0);
  v60 = v17;
  __chkstk_darwin(v16);
  v19 = &v54 - v18;
  v20 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v20 - 8);
  v22 = &v54 - v21;
  v23 = type metadata accessor for JournalSidebarViewModel(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *(v15 + 16);
  v58(v19, a1, v14);
  sub_1005219BC(v19, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_100004F84(v22, &unk_100AD4400);
  }

  sub_10001DAC8(v22, v26, type metadata accessor for JournalSidebarViewModel);
  sub_10001C850(v26 + *(v23 + 24), v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v28 = sub_1000F24EC(&qword_100AD47A0);
  if ((*(*(v28 - 8) + 48))(v13, 2, v28))
  {
    sub_10000D5C8(v13, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (qword_100ACF990 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000617C(v29, qword_100AD47F0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Trying to present the edit view for a non-editable journal", v32, 2u);
    }

    if (v65)
    {
      v65(0);
    }

    v33 = v26;
  }

  else
  {
    v57 = v15;
    v34 = *(v15 + 32);
    v54 = v15 + 32;
    v55 = v34;
    v34(v66, v13, v14);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v35._object = 0x80000001008E0E50;
    v35._countAndFlagsBits = 0x1000000000000016;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v35);
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*v26);
    v36._countAndFlagsBits = 0x100000000000001CLL;
    v36._object = 0x80000001008E0E70;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v36);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v37 = String._bridgeToObjectiveC()();

    v38 = String._bridgeToObjectiveC()();

    v59 = [objc_opt_self() alertControllerWithTitle:v37 message:v38 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v56 = v14;
    v58(v19, v66, v14);
    v40 = (*(v57 + 80) + 40) & ~*(v57 + 80);
    v41 = swift_allocObject();
    v60 = v26;
    v42 = v41;
    v44 = v64;
    v43 = v65;
    v41[2] = v65;
    v41[3] = v44;
    v41[4] = v39;
    v55(v41 + v40, v19, v14);
    sub_100021E80(v43);

    v45 = String._bridgeToObjectiveC()();

    v71 = sub_10015D1D8;
    v72 = v42;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_10016B4D8;
    v70 = &unk_100A5E550;
    v46 = _Block_copy(&aBlock);

    v47 = objc_opt_self();
    v48 = [v47 actionWithTitle:v45 style:2 handler:v46];
    _Block_release(v46);

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v49 = swift_allocObject();
    *(v49 + 16) = v43;
    *(v49 + 24) = v44;
    sub_100021E80(v43);
    v50 = String._bridgeToObjectiveC()();

    v71 = sub_10015E0B8;
    v72 = v49;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_10016B4D8;
    v70 = &unk_100A5E5A0;
    v51 = _Block_copy(&aBlock);

    v52 = [v47 actionWithTitle:v50 style:1 handler:v51];
    _Block_release(v51);

    v53 = v59;
    [v59 addAction:v48];
    [v53 addAction:v52];
    [v63 presentViewController:v53 animated:1 completion:0];

    (*(v57 + 8))(v66, v56);
    v33 = v60;
  }

  return sub_10000D5C8(v33, type metadata accessor for JournalSidebarViewModel);
}

void sub_100144A60(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a2(1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100144AD8(a5);
  }
}

void sub_100144AD8(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v10 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v11 = sub_10014514C(v1, a1);
  type metadata accessor for JournalMO();
  sub_1001588B0(&qword_100AD4C68, &type metadata accessor for JournalMO);
  v12 = static Identifiable<>.fetch(id:context:)();
  if (v12)
  {
    v22 = v12;
    static JournalMO.delete(_:shouldDeleteEntries:)();
    v23 = swift_allocObject();
    *(v23 + 16) = v10;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_10015D1D0;
    *(v24 + 24) = v23;
    aBlock[4] = sub_100028EF4;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001A7D4;
    aBlock[3] = &unk_100A5E500;
    v25 = _Block_copy(aBlock);
    v26 = v10;

    [v26 performBlockAndWait:v25];
    _Block_release(v25);
    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
    }

    else
    {
      v27 = v1;
      v28 = [v27 parentViewController];

      if (!v28)
      {
        goto LABEL_17;
      }

      type metadata accessor for SceneSplitViewController(0);
      while (1)
      {
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          break;
        }

        v30 = v28;
        v28 = [v30 parentViewController];

        if (!v28)
        {
          goto LABEL_17;
        }
      }

      v31 = [*(v29 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

      if ((v31 & 1) == 0)
      {
        if (v11)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = sub_1000F24EC(&qword_100AD47A0);
            (*(*(v32 - 8) + 56))(v9, 2, 2, v32);
            v33 = sub_1000F24EC(&unk_100AD4BA0);
            (*(*(v33 - 8) + 56))(v9, 0, 2, v33);
            sub_1002E5234(v9, 0);
            swift_unknownObjectRelease();
            sub_10000D5C8(v9, type metadata accessor for SceneSplitViewController.ContentType);
          }

          sub_10002CCF8(0);
        }

        else
        {
        }
      }

      else
      {
LABEL_17:
      }
    }
  }

  else
  {
    if (qword_100ACF990 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000617C(v13, qword_100AD47F0);
    (*(v4 + 16))(v6, a1, v3);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock[0] = v17;
      *v16 = 136315138;
      sub_1001588B0(&qword_100AE19B0, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v4 + 8))(v6, v3);
      v21 = sub_100008458(v18, v20, aBlock);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Couldn't fetch a JournalMO for id %s", v16, 0xCu);
      sub_10000BA7C(v17);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

id sub_10014514C(void *a1, uint64_t a2)
{
  v37 = a2;
  v38 = type metadata accessor for UUID();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v40 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v34 - v11;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  result = [a1 collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = [result indexPathsForSelectedItems];

  if (v21)
  {
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v22 + 16))
    {
      (*(v13 + 16))(v16, v22 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

      (*(v13 + 32))(v18, v16, v12);
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v23 = v41;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        (*(v13 + 8))(v18, v12);
        sub_100004F84(v6, &qword_100AD4B90);
      }

      else
      {
        v24 = v39;
        sub_10001DAC8(v6, v39, type metadata accessor for AppNavigationSidebarController.Item);
        v25 = v40;
        sub_10001C850(v24, v40, type metadata accessor for AppNavigationSidebarController.Item);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_10000D5C8(v24, type metadata accessor for AppNavigationSidebarController.Item);
          (*(v13 + 8))(v18, v12);
          v26 = v25;
          v27 = type metadata accessor for AppNavigationSidebarController.Item;
        }

        else
        {
          v28 = sub_1000F24EC(&qword_100AD47A0);
          if (!(*(*(v28 - 8) + 48))(v25, 2, v28))
          {
            v30 = v35;
            v29 = v36;
            v31 = v25;
            v32 = v38;
            (*(v36 + 32))(v35, v31, v38);
            v33 = static UUID.== infix(_:_:)();
            (*(v29 + 8))(v30, v32);
            sub_10000D5C8(v24, type metadata accessor for AppNavigationSidebarController.Item);
            (*(v13 + 8))(v18, v12);
            return ((v33 & 1) != 0);
          }

          sub_10000D5C8(v24, type metadata accessor for AppNavigationSidebarController.Item);
          (*(v13 + 8))(v18, v12);
          v27 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType;
          v26 = v25;
        }

        sub_10000D5C8(v26, v27);
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_1001456D4(void *a1)
{
  v11 = 0;
  v1 = [a1 save:&v11];
  v2 = v11;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACF990 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000617C(v5, qword_100AD47F0);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to save journal deletion: %@", v8, 0xCu);
      sub_100004F84(v9, &unk_100AD4BB0);
    }

    else
    {
    }
  }
}

id sub_100145A10(void *a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsPopoverController] = 0;
  *&v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsTask] = 0;
  *&v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000F24EC(&qword_100AD48A0);
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  v5 = &v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_headerItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v5 = String.init(localized:table:bundle:locale:comment:)();
  v5[1] = v6;
  type metadata accessor for AppNavigationSidebarController.Item(0);
  swift_storeEnumTagMultiPayload();
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController____lazy_storage___appStorage] = 1;
  v7 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_activeDrag;
  v8 = type metadata accessor for AppNavigationSidebarController.DragState(0);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for AppNavigationSidebarController(0);
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_100145CA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppNavigationSidebarController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100145E64()
{
  if (!qword_100AD48A8)
  {
    type metadata accessor for AppNavigationSidebarController.DragState(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AD48A8);
    }
  }
}

void sub_100145EDC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = a3 & 1;
    v6 = Strong;
    [Strong setEditing:v5 animated:1];
  }
}

UIMenu sub_100145F44(uint64_t a1, void *a2)
{
  sub_1000065A8(0, &unk_100AD4D00);
  sub_1000F24EC(&unk_100AD4780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100941D50;
  *(preferredElementSize + 32) = a2;
  v4 = a2;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v8, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v7);
}

uint64_t sub_100145FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10001C850(a3, v8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v15 = sub_1000F24EC(&qword_100AD47A0);
    if ((*(*(v15 - 8) + 48))(v8, 2, v15))
    {

      return sub_10000D5C8(v8, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_100142D94(v12, a4, 0, 0);

      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_1001461FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_10001C850(a3, v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v16 = sub_1000F24EC(&qword_100AD47A0);
    if ((*(*(v16 - 8) + 48))(v9, 2, v16))
    {

      return sub_10000D5C8(v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v6, v13, v10);
      (*(v11 + 56))(v6, 0, 1, v10);
      sub_100142978(v6);

      sub_100004F84(v6, &qword_100AD1420);
      return (*(v11 + 8))(v13, v10);
    }
  }

  return result;
}

UIMenu sub_1001464A0(uint64_t a1, void *a2, void *a3)
{
  sub_1000065A8(0, &unk_100AD4D00);
  sub_1000F24EC(&unk_100AD4780);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100941D60;
  *(preferredElementSize + 32) = a2;
  *(preferredElementSize + 40) = a3;
  v6 = a2;
  v7 = a3;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v8, 0, v11, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v10);
}

void sub_100146558()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100142810();
  }
}

Class sub_1001465B8(int a1, id a2, void *a3, void *a4, void *a5)
{
  v8 = [a2 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  sub_1000F24EC(&unk_100AD4780);
  preferredElementSize = swift_allocObject();
  if (v9 == 5)
  {
    *(preferredElementSize + 16) = xmmword_100941D60;
    *(preferredElementSize + 32) = a3;
    *(preferredElementSize + 40) = a4;
    v11 = a3;
  }

  else
  {
    *(preferredElementSize + 16) = xmmword_100941D50;
    *(preferredElementSize + 32) = a5;
    a4 = a5;
  }

  v12 = a4;
  sub_1000065A8(0, &unk_100AD4D00);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v16, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v15).super.super.isa;
}

id sub_100146764(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a4;
  v13 = a1;
  v14 = sub_10015A958(v11);

  (*(v8 + 8))(v10, v7);

  return v14;
}

BOOL sub_100146890(void *a1, uint64_t a2)
{
  if ([v2 isEditing])
  {
    return 0;
  }

  v6 = [a1 indexPathsForSelectedItems];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  type metadata accessor for IndexPath();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_1006B7854(a2, v8);

  if (!v9)
  {
    return 1;
  }

  v10 = v2;
  v11 = [v10 parentViewController];

  if (!v11)
  {
    return 1;
  }

  type metadata accessor for SceneSplitViewController(0);
  while (1)
  {
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      break;
    }

    v13 = v11;
    v11 = [v13 parentViewController];

    if (!v11)
    {
      return 1;
    }
  }

  v14 = [*(v12 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

  return (v14 & 1) != 0;
}

uint64_t sub_100146B04(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

void sub_100146C14(void *a1, uint64_t a2)
{
  v3 = v2;
  v60 = a2;
  v56 = a1;
  v4 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v4 - 8);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v6 - 8);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v52 - v12;
  v13 = sub_1000F24EC(&qword_100AD4B90);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v19 = type metadata accessor for SidebarPreferences.Brick();
  v58 = *(v19 - 8);
  v59 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v52 = &v52 - v24;
  __chkstk_darwin(v23);
  v26 = &v52 - v25;
  if ([v2 isEditing])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v27 = v61;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v9 + 48))(v18, 1, v8) == 1)
    {
      sub_100004F84(v18, &qword_100AD4B90);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v58;
        v28 = v59;
        (*(v58 + 32))(v26, v18, v59);
        sub_100142810();
        (*(v29 + 8))(v26, v28);
        return;
      }

      sub_10000D5C8(v18, type metadata accessor for AppNavigationSidebarController.Item);
    }
  }

  v30 = v3;
  v31 = [v30 parentViewController];

  if (v31)
  {
    type metadata accessor for SceneSplitViewController(0);
    while (1)
    {
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        break;
      }

      v33 = v31;
      v31 = [v33 parentViewController];

      if (!v31)
      {
        return;
      }
    }

    v34 = [*(v32 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

    if ((v34 & 1) == 0 && ([v30 isEditing] & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v35 = v61;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*(v9 + 48))(v16, 1, v8) == 1)
      {
        sub_100004F84(v16, &qword_100AD4B90);
        return;
      }

      v36 = v57;
      sub_10001DAC8(v16, v57, type metadata accessor for AppNavigationSidebarController.Item);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v38 = [v56 cellForItemAtIndexPath:isa];

      if (!v38)
      {
        goto LABEL_31;
      }

      v39 = v55;
      sub_10001C850(v36, v55, type metadata accessor for AppNavigationSidebarController.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v47 = v53;
        sub_10001DAC8(v39, v53, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v48 = v54;
          sub_10001C850(v47, v54, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          v49 = sub_1000F24EC(&unk_100AD4BA0);
          (*(*(v49 - 8) + 56))(v48, 0, 2, v49);
          sub_1002E5234(v48, 0);
          swift_unknownObjectRelease();
          sub_10000D5C8(v48, type metadata accessor for SceneSplitViewController.ContentType);
        }

        sub_10000D5C8(v47, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        goto LABEL_31;
      }

      if (EnumCaseMultiPayload != 1)
      {
        sub_10000D5C8(v36, type metadata accessor for AppNavigationSidebarController.Item);
        v50 = v39;
LABEL_32:
        sub_10000D5C8(v50, type metadata accessor for AppNavigationSidebarController.Item);
        return;
      }

      v42 = v58;
      v41 = v59;
      v43 = v52;
      (*(v58 + 32))(v52, v39, v59);
      (*(v42 + 16))(v22, v43, v41);
      v44 = (*(v42 + 88))(v22, v41);
      if (v44 == enum case for SidebarPreferences.Brick.insights(_:))
      {
        if (!swift_unknownObjectWeakLoadStrong())
        {
LABEL_30:
          (*(v42 + 8))(v43, v41);
LABEL_31:
          v50 = v36;
          goto LABEL_32;
        }

        v45 = sub_1000F24EC(&unk_100AD4BA0);
        v46 = v54;
        (*(*(v45 - 8) + 56))(v54, 1, 2, v45);
      }

      else
      {
        if (v44 != enum case for SidebarPreferences.Brick.places(_:))
        {
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_30;
        }

        v51 = sub_1000F24EC(&unk_100AD4BA0);
        v46 = v54;
        (*(*(v51 - 8) + 56))(v54, 2, 2, v51);
      }

      sub_1002E5234(v46, 0);
      swift_unknownObjectRelease();
      sub_10000D5C8(v46, type metadata accessor for SceneSplitViewController.ContentType);
      goto LABEL_30;
    }
  }
}

uint64_t sub_1001476C8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

void sub_100147874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a1;
  v4 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v4 - 8);
  v70 = (&v60 - v5);
  v6 = type metadata accessor for UICellAccessory.Placement();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for JournalFeatureFlags();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UIListContentConfiguration();
  v71 = *(v17 - 8);
  v72 = v17;
  __chkstk_darwin(v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppNavigationSidebarController.Item(0);
  __chkstk_darwin(v20);
  v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_10001C850(a3, v22, type metadata accessor for AppNavigationSidebarController.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v61 = *v22;
      v25 = v24;
      v26 = [v25 parentViewController];

      v62 = v25;
      if (!v26)
      {
        goto LABEL_10;
      }

      type metadata accessor for SceneSplitViewController(0);
      while (1)
      {
        v27 = swift_dynamicCastClass();
        if (v27)
        {
          break;
        }

        v28 = v26;
        v26 = [v28 parentViewController];

        if (!v26)
        {
          goto LABEL_10;
        }
      }

      v29 = [*(v27 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

      if ((v29 & 1) == 0)
      {
        static UIListContentConfiguration.header()();
      }

      else
      {
LABEL_10:
        static UIListContentConfiguration.prominentInsetGroupedHeader()();
      }

      UIListContentConfiguration.text.setter();
      v30 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
      v31 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.font.setter();
      v31(v74, 0);
      v32 = [objc_opt_self() secondaryLabelColor];
      v33 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v33(v74, 0);
      v34 = v72;
      v74[3] = v72;
      v74[4] = &protocol witness table for UIListContentConfiguration;
      v35 = sub_10001A770(v74);
      v36 = v71;
      (*(v71 + 16))(v35, v19, v34);
      v37 = v73;
      UICollectionViewCell.contentConfiguration.setter();
      (*(v14 + 104))(v16, enum case for JournalFeatureFlags.multipleJournals(_:), v13);
      v38 = JournalFeatureFlags.isEnabled.getter();
      (*(v14 + 8))(v16, v13);
      if (v38)
      {
        sub_1000F24EC(&unk_100AD4410);
        v39 = *(type metadata accessor for UICellAccessory() - 8);
        v61 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        *(swift_allocObject() + 16) = xmmword_100940080;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v60 = v40;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_10014A480(v37, _s18AddToSectionButtonCMa);
        v43 = v42;
        v44 = String._bridgeToObjectiveC()();
        [v43 setToolTip:v44];

        v45 = v43;
        v46 = String._bridgeToObjectiveC()();
        [v45 setAccessibilityLabel:v46];

        sub_1000065A8(0, &qword_100AD4420);
        String._bridgeToObjectiveC()();
        v47 = swift_allocObject();
        *(v47 + 16) = sub_10015E048;
        *(v47 + 24) = v41;

        v48 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v45 addAction:v48 forControlEvents:0x2000];

        v49 = sub_1000F24EC(&qword_100AD4E00);
        v50 = v66;
        v51 = &v66[*(v49 + 48)];
        v52 = enum case for UICellAccessory.DisplayedState.whenNotEditing(_:);
        v53 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v53 - 8) + 104))(v50, v52, v53);
        *v51 = variable initialization expression of RecentSearch.tokens;
        v51[1] = 0;
        (*(v64 + 104))(v50, enum case for UICellAccessory.Placement.trailing(_:), v65);
        v54 = v70;
        *v70 = UICellAccessoryStandardDimensionDisclosure;
        v55 = enum case for UICellAccessory.LayoutDimension.custom(_:);
        v56 = type metadata accessor for UICellAccessory.LayoutDimension();
        v57 = *(v56 - 8);
        (*(v57 + 104))(v54, v55, v56);
        (*(v57 + 56))(v54, 0, 1, v56);
        v58 = v45;
        v59 = v67;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        static UICellAccessory.customView(configuration:)();

        (*(v68 + 8))(v59, v69);

        UICollectionViewListCell.accessories.setter();

        (*(v71 + 8))(v19, v72);
      }

      else
      {
        (*(v36 + 8))(v19, v34);
      }
    }

    else
    {

      sub_10000D5C8(v22, type metadata accessor for AppNavigationSidebarController.Item);
    }
  }
}

uint64_t sub_100148344()
{
  v0 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for UUID();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    sub_100142978(v2);

    return sub_100004F84(v2, &qword_100AD1420);
  }

  return result;
}

uint64_t sub_100148440(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v52 = a1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v10 - 8);
  v54 = (&v46 - v11);
  v12 = type metadata accessor for JournalSidebarViewModel(0);
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  v14 = __chkstk_darwin(v12);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for AppNavigationSidebarController.Item(0);
  __chkstk_darwin(v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20 - 8);
  __chkstk_darwin(v23);
  v25 = &v46 - v24;
  sub_10001C850(v56, v19, type metadata accessor for AppNavigationSidebarController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    v26 = type metadata accessor for AppNavigationSidebarController.Item;
    v27 = v19;
  }

  else
  {
    v47 = v21;
    v48 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = v54;
    v56 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_10001DAC8(v19, v25, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      sub_100521F60(v29);
      v32 = v53;
      if ((*(v53 + 48))(v29, 1, v12) == 1)
      {
        sub_10000D5C8(v25, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);

        return sub_100004F84(v29, &unk_100AD4400);
      }

      v33 = v16;
      sub_10001DAC8(v29, v16, type metadata accessor for JournalSidebarViewModel);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v56;
      sub_10001C850(v33, v56, type metadata accessor for JournalSidebarViewModel);
      v36 = v48;
      sub_10001C850(v25, v48, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v37 = (*(v32 + 80) + 24) & ~*(v32 + 80);
      v38 = (v13 + *(v47 + 80) + v37) & ~*(v47 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = v34;
      sub_10001DAC8(v35, v39 + v37, type metadata accessor for JournalSidebarViewModel);
      sub_10001DAC8(v36, v39 + v38, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);

      v40 = v31;
      v41 = v52;
      UICollectionViewCell.configurationUpdateHandler.setter();

      v42 = String._bridgeToObjectiveC()();
      [v41 setAccessibilityLabel:v42];

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v43);
      v57 = sub_100521CB8();
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v44._countAndFlagsBits = 0x73656972746E6520;
      v44._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v44);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v45 = String._bridgeToObjectiveC()();

      [v41 setAccessibilityValue:v45];

      sub_10000D5C8(v25, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v26 = type metadata accessor for JournalSidebarViewModel;
      v27 = v33;
    }

    else
    {
      v26 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType;
      v27 = v25;
    }
  }

  return sub_10000D5C8(v27, v26);
}

void sub_100148AD8(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v183 = a5;
  v197 = a4;
  v174 = a2;
  v204 = a1;
  v5 = type metadata accessor for UICellAccessory();
  v201 = *(v5 - 8);
  v202 = v5;
  __chkstk_darwin(v5);
  v7 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v173 = *(v172 - 8);
  __chkstk_darwin(v172);
  v9 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for UICellAccessory.ReorderOptions();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for UICellAccessory.LabelOptions();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v176 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for UICellAccessory.DisplayedState();
  countAndFlagsBits = *(v192 - 8);
  v12 = __chkstk_darwin(v192);
  v185 = &v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v177 = &v155 - v14;
  v15 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v15 - 8);
  v195 = &v155 - v16;
  v164 = type metadata accessor for UICellAccessory.Placement();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v165 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v188 = *(v189 - 1);
  __chkstk_darwin(v189);
  v187 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v20 - 8);
  v171 = (&v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_1000F24EC(&qword_100AD4E08);
  v23 = __chkstk_darwin(v22 - 8);
  v168 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v170 = &v155 - v25;
  v26 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v169 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v155 - v30;
  v32 = type metadata accessor for MergeableJournalAttributes.Icon();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = (&v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = type metadata accessor for UIListContentConfiguration();
  v193 = *(v36 - 8);
  v194 = v36;
  v37 = __chkstk_darwin(v36);
  v39 = &v155 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v196 = &v155 - v40;
  v184 = sub_1000F24EC(&qword_100AD4E10);
  v175 = *(v184 - 8);
  v41 = __chkstk_darwin(v184);
  v200 = &v155 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v205 = &v155 - v44;
  v45 = __chkstk_darwin(v43);
  v161 = &v155 - v46;
  __chkstk_darwin(v45);
  v198 = &v155 - v47;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v186 = Strong;
  objc_opt_self();
  v49 = swift_dynamicCastObjCClass();
  if (!v49)
  {

    return;
  }

  v160 = v49;
  v156 = v9;
  v199 = v7;
  v50 = *(v201 + 56);
  v191 = v201 + 56;
  v190 = v50;
  v50(v198, 1, 1, v202);
  v159 = v204;
  static UIListContentConfiguration.cell()();
  v51 = type metadata accessor for UICellConfigurationState();
  v207 = v51;
  v208 = &protocol witness table for UICellConfigurationState;
  v52 = sub_10001A770(v206);
  (*(*(v51 - 8) + 16))(v52, v174, v51);
  UIListContentConfiguration.updated(for:)();
  v53 = *(v193 + 8);
  v158 = v193 + 8;
  v157 = v53;
  v53(v39, v194);
  sub_10000BA7C(v206);
  v54 = v197;

  UIListContentConfiguration.text.setter();
  v55 = sub_10052249C();
  if (v55)
  {
    v56 = v55;
    UIListContentConfiguration.image.setter();
    UIListContentConfiguration.imageProperties.getter();
    v57 = UIListContentConfiguration.ImageProperties.tintColor.getter();
    v58 = *(v27 + 8);
    v59 = v26;
    v58(v31, v26);
    if (v57)
    {

      v60 = v169;
      UIListContentConfiguration.imageProperties.getter();
      v61 = v170;
      UIListContentConfiguration.ImageProperties.tintColorTransformer.getter();
      v58(v60, v59);
      v62 = type metadata accessor for UIConfigurationColorTransformer();
      v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
      sub_100004F84(v61, &qword_100AD4E08);
      if (v63 == 1)
      {

        v64 = v192;
        v65 = countAndFlagsBits;
        goto LABEL_25;
      }
    }

    v66 = v186;
    v67 = [v66 parentViewController];

    v68 = v197;
    v69 = v171;
    if (!v67)
    {
      goto LABEL_17;
    }

    type metadata accessor for SceneSplitViewController(0);
    while (1)
    {
      v70 = swift_dynamicCastClass();
      if (v70)
      {
        break;
      }

      v71 = v67;
      v67 = [v71 parentViewController];

      if (!v67)
      {
        goto LABEL_17;
      }
    }

    v94 = [*(v70 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

    if ((v94 & 1) == 0)
    {
      v95 = 0;
    }

    else
    {
LABEL_17:
      v95 = [objc_opt_self() secondaryLabelColor];
    }

    v96 = type metadata accessor for JournalSidebarViewModel(0);
    sub_10001C850(&v68[*(v96 + 24)], v69, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v97 = sub_1000F24EC(&qword_100AD47A0);
    if ((*(*(v97 - 8) + 48))(v69, 2, v97))
    {
      v65 = countAndFlagsBits;
      if (!v95)
      {

        goto LABEL_24;
      }

      v98 = v56;
      v95 = v95;
      v99 = v95;
    }

    else
    {
      v98 = v56;
      v100 = *(v68 + 2);
      v101 = type metadata accessor for UUID();
      v102 = *(*(v101 - 8) + 8);
      v99 = v100;
      v102(v69, v101);
      v65 = countAndFlagsBits;
    }

    v103 = v99;
    v104 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.tintColor.setter();
    v104(v206, 0);
    v105 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v105 - 8) + 56))(v168, 1, 1, v105);
    v106 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.tintColorTransformer.setter();
    v106(v206, 0);

LABEL_24:
    v64 = v192;
    goto LABEL_25;
  }

  v72 = type metadata accessor for JournalSidebarViewModel(0);
  (*(v33 + 16))(v35, &v54[*(v72 + 28)], v32);
  if ((*(v33 + 88))(v35, v32) == enum case for MergeableJournalAttributes.Icon.emoji(_:))
  {
    (*(v33 + 96))(v35, v32);
    v73 = *v35;
    v74 = v35[1];
    sub_10014A480(v160, type metadata accessor for EmojiLabelView);
    v76 = v75;
    swift_getKeyPath();
    swift_getKeyPath();
    v206[0] = v73;
    v206[1] = v74;
    v77 = v76;
    static UIView.Invalidating.subscript.setter();
    v78 = v187;
    UIListContentConfiguration.textProperties.getter();
    v79 = UIListContentConfiguration.TextProperties.font.getter();
    (*(v188 + 8))(v78, v189);
    swift_getKeyPath();
    swift_getKeyPath();
    v206[0] = v79;
    v80 = v77;
    static UIView.Invalidating.subscript.setter();
    v81 = sub_1000F24EC(&qword_100AD4E00);
    v82 = v162;
    v83 = &v162[*(v81 + 48)];
    v64 = v192;
    v65 = countAndFlagsBits;
    (*(countAndFlagsBits + 104))(v162, enum case for UICellAccessory.DisplayedState.always(_:), v192);
    *v83 = sub_100158920;
    v83[1] = 0;
    (*(v163 + 104))(v82, enum case for UICellAccessory.Placement.leading(_:), v164);
    v84 = enum case for UICellAccessory.LayoutDimension.standard(_:);
    v85 = type metadata accessor for UICellAccessory.LayoutDimension();
    v86 = *(v85 - 8);
    v87 = v195;
    (*(v86 + 104))(v195, v84, v85);
    (*(v86 + 56))(v87, 0, 1, v85);
    v88 = v80;
    v89 = v165;
    UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
    v90 = v161;
    static UICellAccessory.customView(configuration:)();

    (*(v166 + 8))(v89, v167);
    v91 = v198;
    sub_100004F84(v198, &qword_100AD4E10);
    v190(v90, 0, 1, v202);
    sub_100021CEC(v90, v91, &qword_100AD4E10);
  }

  else
  {
    (*(v33 + 8))(v35, v32);
    v92 = String._bridgeToObjectiveC()();
    v93 = [objc_opt_self() _systemImageNamed:v92];

    UIListContentConfiguration.image.setter();
    v64 = v192;
    v65 = countAndFlagsBits;
  }

LABEL_25:
  sub_1000F24EC(&qword_100AD4E18);
  v204 = *(v175 + 9);
  v107 = (v175[80] + 32) & ~v175[80];
  v170 = swift_allocObject();
  v175 = &v170[v107];
  v206[0] = sub_100521CB8();
  sub_1000F6568();
  countAndFlagsBits = BinaryInteger.formatted()()._countAndFlagsBits;
  v108 = v65 + 104;
  v171 = *(v65 + 104);
  v109 = v177;
  LODWORD(v169) = enum case for UICellAccessory.DisplayedState.whenNotEditing(_:);
  v171(v177);
  v110 = type metadata accessor for UICellAccessory.LayoutDimension();
  v111 = *(v110 - 8);
  v197 = *(v111 + 56);
  v174 = v111 + 56;
  v112 = v195;
  (v197)(v195, 1, 1, v110);
  v113 = v65;
  v114 = v187;
  UIListContentConfiguration.secondaryTextProperties.getter();
  UIListContentConfiguration.TextProperties.color.getter();
  (*(v188 + 8))(v114, v189);
  v115 = v176;
  UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)();
  v116 = v175;
  static UICellAccessory.label(text:displayed:options:)();

  (*(v178 + 8))(v115, v179);
  v117 = *(v113 + 8);
  v117(v109, v64);
  v190(v116, 0, 1, v202);
  v118 = v204;
  v119 = v116;
  v120 = sub_1000082B4(v198, v204 + v116, &qword_100AD4E10);
  sub_10052289C(v120);
  v187 = v110;
  (v197)(v112, 1, 1, v110);
  v121 = v180;
  UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
  v122 = v192;
  v183 = v108;
  (v171)(v109, enum case for UICellAccessory.DisplayedState.whenEditing(_:), v192);
  static UICellAccessory.reorder(displayed:options:)();
  v123 = v109;
  v124 = v117;
  v125 = v122;
  countAndFlagsBits = v113 + 8;
  v117(v123, v122);
  (*(v181 + 8))(v121, v182);
  v190(v119 + 2 * v118, 0, 1, v202);
  v188 = 3 * v118;
  v126 = v186;
  v127 = [v126 parentViewController];

  v128 = v185;
  v189 = v126;
  if (!v127)
  {
    goto LABEL_31;
  }

  type metadata accessor for SceneSplitViewController(0);
  while (1)
  {
    v129 = swift_dynamicCastClass();
    if (v129)
    {
      break;
    }

    v130 = v127;
    v127 = [v130 parentViewController];

    if (!v127)
    {
      goto LABEL_31;
    }
  }

  v131 = [*(v129 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];

  if ((v131 & 1) == 0)
  {
    v138 = 1;
    v139 = v199;
    v137 = v188;
  }

  else
  {
LABEL_31:
    (v171)(v128, v169, v125);
    v132 = v126;
    v133 = [v132 parentViewController];

    if (v133)
    {
      type metadata accessor for SceneSplitViewController(0);
      while (1)
      {
        v134 = swift_dynamicCastClass();
        if (v134)
        {
          break;
        }

        v135 = v133;
        v133 = [v135 parentViewController];

        if (!v133)
        {
          goto LABEL_37;
        }
      }

      [*(v134 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed];
    }

LABEL_37:
    (v197)(v195, 1, 1, v187);
    v136 = v156;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    v137 = v188;
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v173 + 8))(v136, v172);
    v124(v128, v125);
    v138 = 0;
    v139 = v199;
  }

  v140 = v202;
  v190(v119 + v137, v138, 1, v202);
  v141 = v200;
  v142 = (v201 + 48);
  countAndFlagsBits = v201 + 32;
  v143 = _swiftEmptyArrayStorage;
  v144 = 4;
  v145 = v119;
  do
  {
    v146 = v205;
    sub_1000082B4(v145, v205, &qword_100AD4E10);
    sub_100021CEC(v146, v141, &qword_100AD4E10);
    if ((*v142)(v141, 1, v140) == 1)
    {
      sub_100004F84(v141, &qword_100AD4E10);
    }

    else
    {
      v147 = v141;
      v148 = *countAndFlagsBits;
      (*countAndFlagsBits)(v139, v147, v140);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_1003E4D18(0, *(v143 + 2) + 1, 1, v143);
      }

      v150 = *(v143 + 2);
      v149 = *(v143 + 3);
      if (v150 >= v149 >> 1)
      {
        v143 = sub_1003E4D18(v149 > 1, v150 + 1, 1, v143);
      }

      *(v143 + 2) = v150 + 1;
      v139 = v199;
      v140 = v202;
      v148(&v143[((*(v201 + 80) + 32) & ~*(v201 + 80)) + *(v201 + 72) * v150], v199);
      v141 = v200;
    }

    v145 += v204;
    --v144;
  }

  while (v144);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v151 = v194;
  v207 = v194;
  v208 = &protocol witness table for UIListContentConfiguration;
  v152 = sub_10001A770(v206);
  v153 = v196;
  (*(v193 + 16))(v152, v196, v151);
  v154 = v159;
  UICollectionViewCell.contentConfiguration.setter();

  UICollectionViewListCell.accessories.setter();
  v157(v153, v151);
  sub_100004F84(v198, &qword_100AD4E10);
}

void sub_10014A480(uint64_t a1, void (*a2)(void))
{
  v19 = a2;
  v2 = type metadata accessor for UICellAccessory.AccessoryType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for UICellAccessory();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = UICollectionViewListCell.accessories.getter();
  v11 = v10;
  v24 = *(v10 + 16);
  if (v24)
  {
    v12 = 0;
    v23 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v21 = v7 + 8;
    v22 = v7 + 16;
    v13 = (v3 + 88);
    v20 = enum case for UICellAccessory.AccessoryType.customView(_:);
    v18 = (v3 + 8);
    v14 = (v3 + 96);
    while (v12 < *(v11 + 16))
    {
      (*(v7 + 16))(v9, v23 + *(v7 + 72) * v12, v6);
      UICellAccessory.accessoryType.getter();
      (*(v7 + 8))(v9, v6);
      v15 = (*v13)(v5, v2);
      if (v15 == v20)
      {
        (*v14)(v5, v2);
        v16 = *v5;
        v19(0);
        if (swift_dynamicCastClass())
        {

          return;
        }
      }

      else
      {
        (*v18)(v5, v2);
      }

      if (v24 == ++v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v19(0);
    [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }
}

void *sub_10014A748(void *a1, uint64_t a2, uint64_t a3)
{
  v110 = a3;
  v108 = type metadata accessor for UICellAccessory.ReorderOptions();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for UICellAccessory.Placement();
  v102 = *(v103 - 8);
  v6 = __chkstk_darwin(v103);
  v97 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = &v90 - v8;
  v9 = sub_1000F24EC(&unk_100ADFBE0);
  __chkstk_darwin(v9 - 8);
  v116 = &v90 - v10;
  v11 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v95 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  v113 = *(v14 - 8);
  v114 = v14;
  __chkstk_darwin(v14);
  v109 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for UICellAccessory();
  v115 = *(v105 - 8);
  v16 = __chkstk_darwin(v105);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v96 = &v90 - v19;
  __chkstk_darwin(v18);
  v21 = &v90 - v20;
  v22 = type metadata accessor for SidebarPreferences.Brick();
  v117 = *(v22 - 8);
  v118 = v22;
  v23 = *(v117 + 64);
  v24 = __chkstk_darwin(v22);
  v25 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v119 = &v90 - v26;
  v27 = type metadata accessor for AppNavigationSidebarController.Item(0);
  __chkstk_darwin(v27);
  v29 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UIListContentConfiguration();
  v111 = *(v30 - 8);
  v112 = v30;
  __chkstk_darwin(v30);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v120 = result;
  if (result)
  {
    static UIListContentConfiguration.cell()();
    v94 = a1;
    v34 = [a1 contentView];
    v35 = [objc_opt_self() labelColor];
    [v34 setTintColor:v35];

    sub_10001C850(v110, v29, type metadata accessor for AppNavigationSidebarController.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v29;
      v37 = *(v117 + 32);
      v37(v119, v36, v118);
      sub_10014B638();
      v110 = v32;
      UIListContentConfiguration.text.setter();
      v38 = [v120 traitCollection];
      v39 = [v38 userInterfaceIdiom];

      if (v39 == 5)
      {
        v40 = sub_10013F728();
        v43 = 1;
        if (v40)
        {
          v41 = v40;
          v42 = AppStorageMO.isHiddenFromSidebar(_:)();

          if (v42)
          {
            v43 = 0;
          }
        }

        v58 = sub_1000F24EC(&qword_100AD4E00);
        v59 = v101;
        v60 = &v101[*(v58 + 48)];
        v61 = *(v113 + 104);
        v92 = (v113 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v93 = v61;
        v61(v101, enum case for UICellAccessory.DisplayedState.always(_:), v114);
        *v60 = sub_100158920;
        v60[1] = 0;
        v62 = v102;
        (*(v102 + 104))(v59, enum case for UICellAccessory.Placement.leading(_:), v103);
        v63 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v64 = v118;
        v65 = v117 + 16;
        (*(v117 + 16))(v25, v119, v118);
        v66 = (*(v65 + 64) + 24) & ~*(v65 + 64);
        v67 = swift_allocObject();
        v95 = v63;
        *(v67 + 16) = v63;
        v37((v67 + v66), v25, v64);

        sub_10014A480(v94, _s16MixedStateSwitchCMa);
        v69 = v68;
        [v68 setPreferredStyle:1];
        [v69 setOn:v43];
        [v69 setEnabled:1];
        *(v69 + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch_isMixed) = 0;
        sub_10051B784();
        sub_1000065A8(0, &qword_100AD4420);
        String._bridgeToObjectiveC()();
        v70 = swift_allocObject();
        *(v70 + 16) = sub_10015DEEC;
        *(v70 + 24) = v67;
        v90 = v67;

        v71 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v69 addAction:v71 forControlEvents:0x2000];
        v72 = v101;
        v73 = v103;
        (*(v62 + 16))(v97, v101, v103);
        v48 = type metadata accessor for UICellAccessory.LayoutDimension();
        v74 = *(*(v48 - 8) + 56);
        v91 = (v48 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v74(v116, 1, 1, v48);
        v75 = v69;
        v76 = v98;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        v77 = v96;
        static UICellAccessory.customView(configuration:)();

        (*(v99 + 8))(v76, v100);
        (*(v102 + 8))(v72, v73);

        v50 = sub_1003E4D18(0, 1, 1, _swiftEmptyArrayStorage);
        v54 = *(v50 + 2);
        v78 = *(v50 + 3);
        if (v54 >= v78 >> 1)
        {
          v50 = sub_1003E4D18(v78 > 1, v54 + 1, 1, v50);
        }

        v56 = v105;
        (*(v117 + 8))(v119, v118);
        *(v50 + 2) = v54 + 1;
        v53 = *(v115 + 32);
        v79 = *(v115 + 80);
        v55 = *(v115 + 72);
        v53(&v50[((v79 + 32) & ~v79) + v55 * v54], v77, v56);
        v57 = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
        LODWORD(v54) = v79;
      }

      else
      {
        v44 = v113;
        v45 = *(v113 + 104);
        v92 = (v113 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
        v46 = v109;
        LODWORD(v103) = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
        v47 = v114;
        v93 = v45;
        (v45)(v109);
        v48 = type metadata accessor for UICellAccessory.LayoutDimension();
        v49 = *(*(v48 - 8) + 56);
        v91 = (v48 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
        v49(v116, 1, 1, v48);
        UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
        static UICellAccessory.multiselect(displayed:options:)();
        (*(v95 + 8))(v13, v11);
        (*(v44 + 8))(v46, v47);
        v50 = sub_1003E4D18(0, 1, 1, _swiftEmptyArrayStorage);
        v52 = *(v50 + 2);
        v51 = *(v50 + 3);
        if (v52 >= v51 >> 1)
        {
          v50 = sub_1003E4D18(v51 > 1, v52 + 1, 1, v50);
        }

        (*(v117 + 8))(v119, v118);
        *(v50 + 2) = v52 + 1;
        v53 = *(v115 + 32);
        v54 = *(v115 + 80);
        v55 = *(v115 + 72);
        v56 = v105;
        v53(&v50[((v54 + 32) & ~v54) + v55 * v52], v21, v105);
        v57 = v103;
      }

      v80 = v109;
      v81 = v114;
      v93(v109, v57, v114);
      type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v48 - 8) + 56))(v116, 1, 1, v48);
      v82 = v106;
      UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
      v83 = v104;
      static UICellAccessory.reorder(displayed:options:)();
      (*(v107 + 8))(v82, v108);
      (*(v113 + 8))(v80, v81);
      v85 = *(v50 + 2);
      v84 = *(v50 + 3);
      if (v85 >= v84 >> 1)
      {
        v50 = sub_1003E4D18(v84 > 1, v85 + 1, 1, v50);
      }

      v86 = v110;
      *(v50 + 2) = v85 + 1;
      v53(&v50[((v54 + 32) & ~v54) + v55 * v85], v83, v56);
      v87 = v112;
      v121[3] = v112;
      v121[4] = &protocol witness table for UIListContentConfiguration;
      v88 = sub_10001A770(v121);
      v89 = v111;
      (*(v111 + 16))(v88, v86, v87);
      UICollectionViewCell.contentConfiguration.setter();
      UICollectionViewListCell.accessories.setter();

      return (*(v89 + 8))(v86, v87);
    }

    else
    {
      (*(v111 + 8))(v32, v112);

      return sub_10000D5C8(v29, type metadata accessor for AppNavigationSidebarController.Item);
    }
  }

  return result;
}

uint64_t sub_10014B638()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for SidebarPreferences.Brick();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v0, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for SidebarPreferences.Brick.insights(_:) || v7 == enum case for SidebarPreferences.Brick.places(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

void sub_10014B870()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100142810();
  }
}

uint64_t sub_10014B8E4()
{
  v0 = sub_1000F24EC(&qword_100AD4DC0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - v2;
  sub_1000F24EC(&qword_100AD4DC8);
  v4 = type metadata accessor for InsightsBrickView(255);
  v5 = type metadata accessor for InsightsDataManager(255);
  v6 = sub_1001588B0(&unk_100AD4DD0, type metadata accessor for InsightsBrickView);
  v7 = sub_1001588B0(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = v6;
  v11 = v7;
  swift_getOpaqueTypeConformance2();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v11 = v0;
  v12 = sub_10000B58C(&qword_100AD4DE0, &qword_100AD4DC0);
  sub_10001A770(v10);
  UIHostingConfiguration.margins(_:_:)();
  (*(v1 + 8))(v3, v0);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10014BB18@<X0>(uint64_t a1@<X8>)
{
  v26[2] = a1;
  v1 = type metadata accessor for Font.TextStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InsightsBrickView(0);
  __chkstk_darwin(v5);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SidebarInsightsBrickViewModel(0);
  swift_allocObject();
  *v7 = sub_1007F8C44(0);
  v8 = v5[5];
  v9 = enum case for DynamicTypeSize.large(_:);
  v10 = type metadata accessor for DynamicTypeSize();
  (*(*(v10 - 8) + 104))(v7 + v8, v9, v10);
  v11 = v7 + v5[6];
  __asm { FMOV            V0.2D, #12.0 }

  *v11 = _Q0;
  *(v11 + 1) = _Q0;
  *(v11 + 2) = xmmword_100943320;
  *(v11 + 6) = 0x4018000000000000;
  v27 = 0x404E000000000000;
  v17 = enum case for Font.TextStyle.headline(_:);
  v18 = v2 + 104;
  v19 = *(v2 + 104);
  v26[1] = v18;
  v19(v4, enum case for Font.TextStyle.headline(_:), v1);
  v20 = type metadata accessor for SidebarBrickLayoutMetrics();
  sub_10015DD78();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v11[v20[9]] = 0xC008000000000000;
  v27 = 0x4041000000000000;
  v19(v4, v17, v1);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v11[v20[11]] = static Font.body.getter();
  *&v11[v20[12]] = static Font.headline.getter();
  *&v11[v20[13]] = static Font.footnote.getter();
  v21 = v7 + v5[7];
  type metadata accessor for InsightsDataManager(0);
  sub_1001588B0(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  *v21 = Environment.init<A>(_:)();
  v21[8] = v22 & 1;
  v23 = v5[8];
  sub_10015DDCC();
  *(v7 + v23) = AppStorage.init<A>(_:store:)();
  v24 = v7 + v5[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  if (qword_100AD00D8 != -1)
  {
    swift_once();
  }

  sub_1001588B0(&unk_100AD4DD0, type metadata accessor for InsightsBrickView);
  View.environment<A>(_:)();
  return sub_10000D5C8(v7, type metadata accessor for InsightsBrickView);
}

uint64_t sub_10014BEFC()
{
  v0 = sub_1000F24EC(&qword_100AD4DA8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-1] - v2;
  type metadata accessor for SidebarPlacesBrickView(0);
  sub_1001588B0(&qword_100AD4DB0, type metadata accessor for SidebarPlacesBrickView);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v6[3] = v0;
  v6[4] = sub_10000B58C(&qword_100AD4DB8, &qword_100AD4DA8);
  sub_10001A770(v6);
  UIHostingConfiguration.margins(_:_:)();
  (*(v1 + 8))(v3, v0);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10014C0A4@<X0>(_OWORD *a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v4;
  type metadata accessor for EntryMapViewLoadingMessenger(0);
  *(swift_allocObject() + 16) = 0;
  ObservationRegistrar.init()();
  State.init(wrappedValue:)();
  a1[1] = v4;
  v2 = type metadata accessor for SidebarPlacesBrickView(0);
  return sub_100740178(a1 + *(v2 + 24));
}

uint64_t sub_10014C154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[1] = a7;
  v29[2] = a8;
  v29[3] = a6;
  v29[4] = a5;
  v29[5] = a2;
  v29[6] = a1;
  v9 = type metadata accessor for SidebarPreferences.Brick();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v29 - v14;
  v16 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v16 - 8);
  v18 = v29 - v17;
  v19 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v24 = Strong;
  sub_10001C850(a3, v22, type metadata accessor for AppNavigationSidebarController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10001C850(a3, v18, type metadata accessor for AppNavigationSidebarController.Item);
    (*(v20 + 56))(v18, 0, 1, v19);
    sub_1000065A8(0, &qword_100AD4D40);
    v26 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    sub_100004F84(v18, &qword_100AD4B90);
    sub_10000D5C8(v22, type metadata accessor for AppNavigationSidebarController.Item);
    return v26;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10000D5C8(v22, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10001C850(a3, v18, type metadata accessor for AppNavigationSidebarController.Item);
    (*(v20 + 56))(v18, 0, 1, v19);
    sub_1000065A8(0, &qword_100AD4D40);
    v26 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    sub_100004F84(v18, &qword_100AD4B90);
    return v26;
  }

  (*(v10 + 32))(v15, v22, v9);
  if ([v24 isEditing])
  {
    sub_10001C850(a3, v18, type metadata accessor for AppNavigationSidebarController.Item);
    (*(v20 + 56))(v18, 0, 1, v19);
    type metadata accessor for SidebarEditingCollectionViewCell();
LABEL_12:
    v26 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

    sub_100004F84(v18, &qword_100AD4B90);
    (*(v10 + 8))(v15, v9);
    return v26;
  }

  (*(v10 + 16))(v13, v15, v9);
  v27 = (*(v10 + 88))(v13, v9);
  if (v27 == enum case for SidebarPreferences.Brick.insights(_:) || v27 == enum case for SidebarPreferences.Brick.places(_:))
  {
    sub_10001C850(a3, v18, type metadata accessor for AppNavigationSidebarController.Item);
    (*(v20 + 56))(v18, 0, 1, v19);
    type metadata accessor for SidebarBrickCollectionViewListCell();
    goto LABEL_12;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10014C6BC(uint64_t a1)
{
  v2 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v2 - 8);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v41 = &v40 - v8;
  v45 = sub_1000F24EC(&qword_100AD4DA0);
  __chkstk_darwin(v45);
  v10 = &v40 - v9;
  v11 = sub_1000F24EC(&qword_100AD4C88);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = sub_1000F24EC(&qword_100AD4B90);
  v15 = __chkstk_darwin(v14 - 8);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v40 - v18;
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  v43 = a1;
  sub_10001C850(a1, &v40 - v20, type metadata accessor for AppNavigationSidebarController.Item);
  v22 = *(v5 + 56);
  v23 = 1;
  v22(v21, 0, 1, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_activeDrag;
    v26 = Strong;
    swift_beginAccess();
    sub_1000082B4(v26 + v25, v13, &qword_100AD4C88);

    v27 = type metadata accessor for AppNavigationSidebarController.DragState(0);
    v23 = 1;
    if (!(*(*(v27 - 8) + 48))(v13, 1, v27))
    {
      sub_10001C850(&v13[*(v27 + 20)], v19, type metadata accessor for AppNavigationSidebarController.Item);
      v23 = 0;
    }

    sub_100004F84(v13, &qword_100AD4C88);
  }

  v22(v19, v23, 1, v4);
  v28 = *(v45 + 48);
  sub_1000082B4(v21, v10, &qword_100AD4B90);
  sub_1000082B4(v19, &v10[v28], &qword_100AD4B90);
  v29 = *(v5 + 48);
  if (v29(v10, 1, v4) != 1)
  {
    v30 = v44;
    sub_1000082B4(v10, v44, &qword_100AD4B90);
    if (v29(&v10[v28], 1, v4) != 1)
    {
      v33 = &v10[v28];
      v34 = v41;
      sub_10001DAC8(v33, v41, type metadata accessor for AppNavigationSidebarController.Item);
      v35 = sub_100029D48(v30, v34);
      sub_10000D5C8(v34, type metadata accessor for AppNavigationSidebarController.Item);
      sub_100004F84(v19, &qword_100AD4B90);
      sub_100004F84(v21, &qword_100AD4B90);
      sub_10000D5C8(v30, type metadata accessor for AppNavigationSidebarController.Item);
      sub_100004F84(v10, &qword_100AD4B90);
      if ((v35 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    sub_100004F84(v19, &qword_100AD4B90);
    sub_100004F84(v21, &qword_100AD4B90);
    sub_10000D5C8(v30, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_10:
    sub_100004F84(v10, &qword_100AD4DA0);
    goto LABEL_11;
  }

  sub_100004F84(v19, &qword_100AD4B90);
  sub_100004F84(v21, &qword_100AD4B90);
  if (v29(&v10[v28], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_100004F84(v10, &qword_100AD4B90);
LABEL_14:
  v36 = v42;
  sub_10001C850(v43, v42, type metadata accessor for AppNavigationSidebarController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v38 = v40;
    v39 = sub_10001DAC8(v36, v40, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v31 = sub_10052289C(v39);
    sub_10000D5C8(v38, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    return v31 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10000D5C8(v36, type metadata accessor for AppNavigationSidebarController.Item);
    v31 = 1;
    return v31 & 1;
  }

  sub_10000D5C8(v36, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_11:
  v31 = 0;
  return v31 & 1;
}

void sub_10014CD3C(uint64_t a1)
{
  v289 = a1;
  v1 = sub_1000F24EC(&qword_100AD1420);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v213 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v213 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v213 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v213 - v16;
  v18 = __chkstk_darwin(v15);
  v236 = &v213 - v19;
  v20 = __chkstk_darwin(v18);
  v238 = &v213 - v21;
  v22 = __chkstk_darwin(v20);
  v247 = &v213 - v23;
  v24 = __chkstk_darwin(v22);
  v258 = &v213 - v25;
  v26 = __chkstk_darwin(v24);
  v242 = &v213 - v27;
  __chkstk_darwin(v26);
  v246 = &v213 - v28;
  v29 = sub_1000F24EC(&qword_100AD4C18);
  v30 = __chkstk_darwin(v29 - 8);
  v273 = &v213 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v272 = &v213 - v32;
  v257 = sub_1000F24EC(&qword_100AD4BD0);
  v278 = *(v257 - 8);
  v33 = __chkstk_darwin(v257);
  v235 = &v213 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v241 = &v213 - v36;
  v37 = __chkstk_darwin(v35);
  v245 = &v213 - v38;
  __chkstk_darwin(v37);
  v254 = &v213 - v39;
  v281 = type metadata accessor for SidebarPreferences.Brick();
  v262 = *(v281 - 8);
  v40 = __chkstk_darwin(v281);
  v271 = &v213 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v249 = &v213 - v43;
  v44 = __chkstk_darwin(v42);
  v256 = &v213 - v45;
  v46 = __chkstk_darwin(v44);
  v253 = &v213 - v47;
  __chkstk_darwin(v46);
  v261 = &v213 - v48;
  v49 = sub_1000F24EC(&qword_100AD4D60);
  v279 = *(v49 - 8);
  v280 = v49;
  v50 = __chkstk_darwin(v49);
  v263 = &v213 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v267 = (&v213 - v52);
  v269 = sub_1000F24EC(&qword_100AD4D68);
  v286 = *(v269 - 8);
  v53 = __chkstk_darwin(v269);
  v277 = &v213 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v276 = &v213 - v55;
  v283 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v255 = *(v283 - 8);
  v56 = __chkstk_darwin(v283);
  v237 = &v213 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v244 = &v213 - v59;
  v60 = __chkstk_darwin(v58);
  v240 = &v213 - v61;
  v62 = __chkstk_darwin(v60);
  v243 = &v213 - v63;
  v64 = __chkstk_darwin(v62);
  v260 = &v213 - v65;
  v66 = __chkstk_darwin(v64);
  v270 = &v213 - v67;
  v68 = __chkstk_darwin(v66);
  v275 = &v213 - v69;
  v70 = __chkstk_darwin(v68);
  v282 = &v213 - v71;
  v72 = __chkstk_darwin(v70);
  v252 = &v213 - v73;
  v74 = __chkstk_darwin(v72);
  v251 = &v213 - v75;
  v76 = __chkstk_darwin(v74);
  v259 = &v213 - v77;
  __chkstk_darwin(v76);
  v274 = &v213 - v78;
  v79 = sub_1000F24EC(&qword_100AD4D70);
  v290 = *(v79 - 8);
  __chkstk_darwin(v79);
  v81 = &v213 - v80;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v248 = Strong;
  if (!sub_10013F728())
  {
    v212 = &v280;
    goto LABEL_87;
  }

  sub_1000F24EC(&qword_100AD4D78);
  v83 = NSDiffableDataSourceTransaction.sectionTransactions.getter();
  v289 = *(v83 + 16);
  if (!v289)
  {
LABEL_85:

    v211 = v248;
    sub_10014EDC4();

    v212 = &v282;
LABEL_87:

    return;
  }

  v223 = v17;
  v227 = v14;
  v222 = v11;
  v233 = v7;
  v228 = v6;
  v229 = v4;
  v84 = 0;
  v288 = v83 + ((*(v290 + 80) + 32) & ~*(v290 + 80));
  ++v286;
  v287 = v290 + 16;
  v284 = (v290 + 8);
  v232 = (v8 + 32);
  v231 = (v8 + 8);
  v239 = (v278 + 1);
  v226 = (v8 + 56);
  v224 = v8;
  v225 = (v8 + 48);
  v278 = (v262 + 32);
  v234 = (v262 + 8);
  v266 = (v262 + 56);
  v265 = (v262 + 48);
  v85 = v258;
  v86 = v263;
  v87 = v269;
  v264 = v79;
  v285 = v83;
  while (v84 < *(v83 + 16))
  {
    (*(v290 + 16))(v81, v288 + *(v290 + 72) * v84, v79);
    NSDiffableDataSourceSectionTransaction.sectionIdentifier.getter();
    if (v292)
    {
      v88 = v276;
      NSDiffableDataSourceSectionTransaction.difference.getter();
      v89 = CollectionDifference.insertions.getter();
      (*v286)(v88, v87);
      if (!*(v89 + 16))
      {
        goto LABEL_5;
      }

      v90 = v85;
      v91 = v267;
      sub_1000082B4(v89 + ((*(v279 + 80) + 32) & ~*(v279 + 80)), v267, &qword_100AD4D60);

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v93 = v274;
      if (EnumCaseMultiPayload == 1)
      {
        (*v284)(v81, v79);
        sub_100004F84(v91, &qword_100AD4D60);
      }

      else
      {
        v98 = *v91;
        v99 = sub_1000F24EC(&unk_100AD4D80);
        sub_10001DAC8(v91 + *(v99 + 48), v93, type metadata accessor for AppNavigationSidebarController.Item);
        v100 = v259;
        sub_10001C850(v93, v259, type metadata accessor for AppNavigationSidebarController.Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v101 = *v278;
          v102 = v253;
          v103 = v100;
          v104 = v281;
          (*v278)(v253, v103, v281);
          v101(v261, v102, v104);
          v105 = v254;
          NSDiffableDataSourceSectionTransaction.initialSnapshot.getter();
          v106 = v257;
          v107 = NSDiffableDataSourceSectionSnapshot.items.getter();
          v108 = *v239;
          (*v239)(v105, v106);
          if ((v98 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          v109 = v256;
          if (v98 >= *(v107 + 16))
          {
            goto LABEL_91;
          }

          v110 = (*(v255 + 80) + 32) & ~*(v255 + 80);
          v268 = *(v255 + 72);
          v111 = v251;
          sub_10001C850(v107 + v110 + v268 * v98, v251, type metadata accessor for AppNavigationSidebarController.Item);

          v112 = v252;
          sub_10001DAC8(v111, v252, type metadata accessor for AppNavigationSidebarController.Item);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            (*v234)(v261, v281);
            sub_10000D5C8(v274, type metadata accessor for AppNavigationSidebarController.Item);
            (*v284)(v81, v79);
            v126 = v112;
            goto LABEL_28;
          }

          v113 = v249;
          v114 = v112;
          v115 = v281;
          v101(v249, v114, v281);
          v101(v109, v113, v115);
          v116 = v261;
          if (AppStorageMO.moveSidebarBrick(_:after:)())
          {
            v117 = *v234;
            (*v234)(v109, v115);
            v117(v116, v115);
          }

          else
          {
            v134 = v245;
            NSDiffableDataSourceSectionTransaction.finalSnapshot.getter();
            v135 = v257;
            v136 = NSDiffableDataSourceSectionSnapshot.items.getter();
            v108(v134, v135);
            v137 = *(v136 + 16);
            if (v137)
            {
              v230 = v136;
              v138 = v136 + v110;
              v139 = _swiftEmptyArrayStorage;
              v140 = v275;
              do
              {
                v141 = v282;
                sub_10001C850(v138, v282, type metadata accessor for AppNavigationSidebarController.Item);
                sub_10001C850(v141, v140, type metadata accessor for AppNavigationSidebarController.Item);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v142 = v273;
                  v143 = v140;
                  v144 = v281;
                  v101(v273, v143, v281);
                  v145 = 0;
                  v146 = v272;
                }

                else
                {
                  sub_10000D5C8(v140, type metadata accessor for AppNavigationSidebarController.Item);
                  v145 = 1;
                  v146 = v272;
                  v144 = v281;
                  v142 = v273;
                }

                (*v266)(v142, v145, 1, v144);
                sub_100021CEC(v142, v146, &qword_100AD4C18);
                sub_10000D5C8(v282, type metadata accessor for AppNavigationSidebarController.Item);
                if ((*v265)(v146, 1, v144) == 1)
                {
                  sub_100004F84(v146, &qword_100AD4C18);
                  v79 = v264;
                }

                else
                {
                  v101(v271, v146, v144);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v139 = sub_1003E4D40(0, *(v139 + 2) + 1, 1, v139);
                  }

                  v79 = v264;
                  v148 = *(v139 + 2);
                  v147 = *(v139 + 3);
                  if (v148 >= v147 >> 1)
                  {
                    v139 = sub_1003E4D40(v147 > 1, v148 + 1, 1, v139);
                  }

                  *(v139 + 2) = v148 + 1;
                  v101(&v139[((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v148], v271, v281);
                }

                v138 += v268;
                --v137;
                v140 = v275;
              }

              while (v137);
            }

            else
            {

              v139 = _swiftEmptyArrayStorage;
            }

            v291 = v139;
            sub_1000F24EC(&qword_100AD4BE0);
            sub_10000B58C(&qword_100AD4BE8, &qword_100AD4BE0);
            AppStorageMO.mergeSidebarBrickOrder<A>(_:)();

            v161 = *v234;
            v162 = v281;
            (*v234)(v256, v281);
            v161(v261, v162);
          }

          v163 = &v294;
          goto LABEL_53;
        }

        sub_10000D5C8(v93, type metadata accessor for AppNavigationSidebarController.Item);
        (*v284)(v81, v79);
        sub_10000D5C8(v100, type metadata accessor for AppNavigationSidebarController.Item);
      }

      v87 = v269;
      v85 = v90;
    }

    else
    {
      v94 = v277;
      NSDiffableDataSourceSectionTransaction.difference.getter();
      v95 = CollectionDifference.insertions.getter();
      (*v286)(v94, v87);
      if (!*(v95 + 16))
      {
LABEL_5:

        (*v284)(v81, v79);
        goto LABEL_6;
      }

      sub_1000082B4(v95 + ((*(v279 + 80) + 32) & ~*(v279 + 80)), v86, &qword_100AD4D60);

      v96 = swift_getEnumCaseMultiPayload();
      v97 = v270;
      if (v96 == 1)
      {
        (*v284)(v81, v79);
        sub_100004F84(v86, &qword_100AD4D60);
      }

      else
      {
        v118 = v86;
        v119 = *v86;
        v120 = sub_1000F24EC(&unk_100AD4D80);
        sub_10001DAC8(v118 + *(v120 + 48), v97, type metadata accessor for AppNavigationSidebarController.Item);
        v121 = v260;
        sub_10001C850(v97, v260, type metadata accessor for AppNavigationSidebarController.Item);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_10000D5C8(v97, type metadata accessor for AppNavigationSidebarController.Item);
          (*v284)(v81, v79);
          sub_10000D5C8(v121, type metadata accessor for AppNavigationSidebarController.Item);
          v86 = v263;
        }

        else
        {
          v268 = v119;
          v122 = sub_1000F24EC(&qword_100AD47A0);
          v123 = *(v122 - 8);
          v124 = *(v123 + 48);
          v125 = v123 + 48;
          if (v124(v121, 2, v122))
          {
            sub_10000D5C8(v270, type metadata accessor for AppNavigationSidebarController.Item);
            (*v284)(v81, v79);
            sub_10000D5C8(v121, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          }

          else
          {
            v220 = v125;
            v230 = v124;
            v221 = v122;
            v127 = *v232;
            v128 = v233;
            (*v232)(v85, v121, v233);
            v129 = type metadata accessor for JournalMO();
            v130 = v247;
            v219 = v129;
            static JournalMO.defaultJournalID.getter();
            v218 = sub_1001588B0(&qword_100AD9220, &type metadata accessor for UUID);
            v131 = dispatch thunk of static Equatable.== infix(_:_:)();
            v132 = v130;
            v133 = *v231;
            (*v231)(v132, v128);
            if ((v131 & 1) == 0)
            {
              v217 = v133;
              v149 = v242;
              v127(v242, v85, v128);
              v127(v246, v149, v128);
              v150 = v241;
              NSDiffableDataSourceSectionTransaction.initialSnapshot.getter();
              v151 = v257;
              v152 = NSDiffableDataSourceSectionSnapshot.items.getter();
              v153 = *v239;
              (*v239)(v150, v151);
              if ((v268 & 0x8000000000000000) != 0)
              {
                goto LABEL_92;
              }

              v216 = v127;
              v154 = v230;
              if (v268 >= *(v152 + 16))
              {
                goto LABEL_93;
              }

              v155 = (*(v255 + 80) + 32) & ~*(v255 + 80);
              v156 = *(v255 + 72);
              v157 = v243;
              sub_10001C850(v152 + v155 + v156 * v268, v243, type metadata accessor for AppNavigationSidebarController.Item);
              v158 = v157;

              v159 = v157;
              v160 = v240;
              sub_10001C850(v159, v240, type metadata accessor for AppNavigationSidebarController.Item);
              if (swift_getEnumCaseMultiPayload())
              {
                sub_10000D5C8(v158, type metadata accessor for AppNavigationSidebarController.Item);
                v217(v246, v233);
                sub_10000D5C8(v270, type metadata accessor for AppNavigationSidebarController.Item);
                (*v284)(v81, v79);
                v126 = v160;
LABEL_28:
                sub_10000D5C8(v126, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_54:
                v85 = v258;
                v86 = v263;
LABEL_55:
                v87 = v269;
                goto LABEL_6;
              }

              v164 = v154(v160, 2, v221);
              v165 = v160;
              v86 = v263;
              if (v164)
              {
                sub_10000D5C8(v243, type metadata accessor for AppNavigationSidebarController.Item);
                v217(v246, v233);
                sub_10000D5C8(v270, type metadata accessor for AppNavigationSidebarController.Item);
                (*v284)(v81, v79);
                sub_10000D5C8(v165, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
                v85 = v258;
                goto LABEL_55;
              }

              v214 = v156;
              v166 = v223;
              v167 = v165;
              v168 = v233;
              v216(v223, v167, v233);
              v169 = v247;
              static JournalMO.defaultJournalID.getter();
              v170 = dispatch thunk of static Equatable.== infix(_:_:)();
              v171 = v217;
              v217(v169, v168);
              sub_10000D5C8(v243, type metadata accessor for AppNavigationSidebarController.Item);
              if (v170)
              {
                v171(v166, v168);
                v171(v246, v168);
              }

              else
              {
                v172 = v236;
                v173 = v216;
                v216(v236, v166, v168);
                v174 = v238;
                v173(v238, v172, v168);
                v175 = v246;
                if ((AppStorageMO.moveCustomJournalInSidebar(_:after:)() & 1) == 0)
                {
                  v178 = v235;
                  NSDiffableDataSourceSectionTransaction.finalSnapshot.getter();
                  v179 = v257;
                  v180 = NSDiffableDataSourceSectionSnapshot.items.getter();
                  v153(v178, v179);
                  v181 = *(v180 + 16);
                  if (!v181)
                  {

                    v207 = _swiftEmptyArrayStorage;
                    v184 = v238;
                    v86 = v263;
                    v87 = v269;
LABEL_84:
                    v291 = v207;
                    sub_1000F24EC(&qword_100AD4D90);
                    sub_10000B58C(&qword_100AD4D98, &qword_100AD4D90);
                    AppStorageMO.mergeCustomJournalsSidebarOrder<A>(_:)();

                    v208 = v184;
                    v209 = v233;
                    v210 = v217;
                    v217(v208, v233);
                    v210(v246, v209);
                    sub_10000D5C8(v270, type metadata accessor for AppNavigationSidebarController.Item);
                    (*v284)(v81, v79);
                    v85 = v258;
                    goto LABEL_6;
                  }

                  v213 = v180;
                  v182 = v180 + v155;
                  v215 = _swiftEmptyArrayStorage;
                  v86 = v263;
                  v87 = v269;
                  v183 = v230;
                  while (2)
                  {
                    v186 = v244;
                    sub_10001C850(v182, v244, type metadata accessor for AppNavigationSidebarController.Item);
                    v187 = v186;
                    v188 = v237;
                    sub_10001C850(v187, v237, type metadata accessor for AppNavigationSidebarController.Item);
                    v189 = swift_getEnumCaseMultiPayload();
                    v268 = v182;
                    if (v189)
                    {
                      v190 = type metadata accessor for AppNavigationSidebarController.Item;
                      goto LABEL_71;
                    }

                    if (v183(v188, 2, v221))
                    {
                      v190 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType;
LABEL_71:
                      sub_10000D5C8(v188, v190);
                      v191 = 1;
                    }

                    else
                    {
                      v200 = v222;
                      v201 = v188;
                      v202 = v233;
                      v203 = v216;
                      v216(v222, v201, v233);
                      v204 = v247;
                      static JournalMO.defaultJournalID.getter();
                      v205 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v206 = v217;
                      v217(v204, v202);
                      if (v205)
                      {
                        v206(v200, v202);
                        v191 = 1;
                      }

                      else
                      {
                        v203(v229, v200, v202);
                        v191 = 0;
                      }

                      v86 = v263;
                      v87 = v269;
                    }

                    v192 = v229;
                    v193 = v233;
                    (*v226)(v229, v191, 1, v233);
                    v194 = v192;
                    v195 = v228;
                    sub_100021CEC(v194, v228, &qword_100AD1420);
                    sub_10000D5C8(v244, type metadata accessor for AppNavigationSidebarController.Item);
                    if ((*v225)(v195, 1, v193) == 1)
                    {
                      sub_100004F84(v195, &qword_100AD1420);
                      v184 = v238;
                      v183 = v230;
                      v185 = v214;
                    }

                    else
                    {
                      v216(v227, v195, v193);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v215 = sub_100055CEC(0, v215[2] + 1, 1, v215);
                      }

                      v184 = v238;
                      v183 = v230;
                      v185 = v214;
                      v196 = v215;
                      v198 = v215[2];
                      v197 = v215[3];
                      if (v198 >= v197 >> 1)
                      {
                        v196 = sub_100055CEC(v197 > 1, v198 + 1, 1, v215);
                      }

                      v196[2] = v198 + 1;
                      v199 = (*(v224 + 80) + 32) & ~*(v224 + 80);
                      v215 = v196;
                      v216(v196 + v199 + *(v224 + 72) * v198, v227, v233);
                      v86 = v263;
                    }

                    v182 = v268 + v185;
                    if (!--v181)
                    {

                      v207 = v215;
                      goto LABEL_84;
                    }

                    continue;
                  }
                }

                v176 = v174;
                v177 = v217;
                v217(v176, v168);
                v177(v175, v168);
              }

              v163 = &v293;
LABEL_53:
              sub_10000D5C8(*(v163 - 32), type metadata accessor for AppNavigationSidebarController.Item);
              (*v284)(v81, v79);
              goto LABEL_54;
            }

            v133(v85, v128);
            sub_10000D5C8(v270, type metadata accessor for AppNavigationSidebarController.Item);
            (*v284)(v81, v79);
          }

          v86 = v263;
        }
      }
    }

LABEL_6:
    ++v84;
    v83 = v285;
    if (v84 == v289)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

void sub_10014EDC4()
{
  if (([v0 isEditing] & 1) == 0)
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v1 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_10015CFD0;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100006C7C;
    v6[3] = &unk_100A5E2F8;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 performBlock:v3];
    _Block_release(v3);
  }
}

uint64_t sub_10014EF04()
{
  v0 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v68 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v3 - 8);
  v58 = &v54 - v4;
  v5 = sub_1000F24EC(&qword_100AD4BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v61 = sub_1000F24EC(&qword_100AD4BC8);
  __chkstk_darwin(v61);
  v60 = (&v54 - v8);
  v9 = type metadata accessor for SidebarPreferences.Brick();
  v72 = *(v9 - 8);
  v73 = v9;
  v10 = __chkstk_darwin(v9);
  v65 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v71 = &v54 - v13;
  __chkstk_darwin(v12);
  v63 = &v54 - v14;
  v15 = sub_1000F24EC(&qword_100AD4BD0);
  v56 = *(v15 - 8);
  v57 = v15;
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  sub_1001588B0(&qword_100AD4B80, type metadata accessor for AppNavigationSidebarController.Item);
  v55 = v17;
  v69 = v0;
  NSDiffableDataSourceSectionSnapshot.init()();
  if (qword_100ACF998 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v59 = v7;
    v18 = off_100AD4808;
    v19 = *(off_100AD4808 + 2);
    v20 = _swiftEmptyArrayStorage;
    v66 = v2;
    v67 = v19;
    if (v19)
    {
      v21 = 0;
      v64 = v72 + 16;
      v62 = (v72 + 8);
      v22 = (v72 + 32);
      v23 = v63;
      while (v21 < v18[2])
      {
        v24 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v25 = v18;
        v26 = *(v72 + 72);
        (*(v72 + 16))(v23, v18 + v24 + v26 * v21, v73);
        if ([v70 isEditing] & 1) == 0 && (v27 = sub_10013F728()) != 0 && (v28 = v27, v7 = AppStorageMO.isHiddenFromSidebar(_:)(), v28, (v7))
        {
          (*v62)(v23, v73);
        }

        else
        {
          v29 = v23;
          v30 = *v22;
          (*v22)(v71, v29, v73);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v20;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100199A84(0, v20[2] + 1, 1);
            v20 = v74;
          }

          v2 = v20[2];
          v32 = v20[3];
          v7 = v2 + 1;
          if (v2 >= v32 >> 1)
          {
            sub_100199A84(v32 > 1, v2 + 1, 1);
            v20 = v74;
          }

          v20[2] = v7;
          v30(v20 + v24 + v2 * v26, v71, v73);
          v23 = v63;
        }

        ++v21;
        v18 = v25;
        if (v67 == v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_26;
    }

LABEL_15:
    v74 = v20;
    v33 = sub_10013F728();
    if (v33)
    {
      v34 = v33;
      v35 = v59;
      AppStorageMO.sidebarBrickOrder.getter();

      v36 = 0;
    }

    else
    {
      v36 = 1;
      v35 = v59;
    }

    v37 = sub_1000F24EC(&qword_100AD4BD8);
    (*(*(v37 - 8) + 56))(v35, v36, 1, v37);
    v38 = v60;
    sub_100150328(v35, v60);
    sub_1000F24EC(&qword_100AD4BE0);
    sub_10000B58C(&qword_100AD4BE8, &qword_100AD4BE0);
    sub_10000B58C(&qword_100AD4BF0, &qword_100AD4BC8);
    v7 = Sequence.sorted<A>(using:)();
    sub_100004F84(v38, &qword_100AD4BC8);

    v39 = *(v7 + 16);
    if (!v39)
    {
      break;
    }

    v74 = _swiftEmptyArrayStorage;
    sub_10002CAF0(0, v39, 0);
    v40 = 0;
    v41 = v74;
    v71 = (v7 + ((*(v72 + 80) + 32) & ~*(v72 + 80)));
    v67 = v72 + 8;
    v42 = v72;
    while (v40 < *(v7 + 16))
    {
      v2 = v7;
      v43 = *(v42 + 16);
      v44 = v65;
      v45 = v73;
      v43(v65, &v71[*(v42 + 72) * v40], v73);
      v46 = v66;
      v43(v66, v44, v45);
      swift_storeEnumTagMultiPayload();
      (*(v42 + 8))(v44, v45);
      v74 = v41;
      v48 = v41[2];
      v47 = v41[3];
      if (v48 >= v47 >> 1)
      {
        sub_10002CAF0(v47 > 1, v48 + 1, 1);
        v41 = v74;
      }

      ++v40;
      v41[2] = v48 + 1;
      sub_10001DAC8(v46, v41 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v48, type metadata accessor for AppNavigationSidebarController.Item);
      v7 = v2;
      if (v39 == v40)
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

LABEL_24:

  v49 = v58;
  (*(v68 + 56))(v58, 1, 1, v69);
  v50 = v57;
  v51 = v55;
  NSDiffableDataSourceSectionSnapshot.append(_:to:)();

  sub_100004F84(v49, &qword_100AD4B90);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v52 = v74;
  LOBYTE(v74) = 1;
  UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

  return (*(v56 + 8))(v51, v50);
}

BOOL sub_10014F7B4()
{
  v0 = type metadata accessor for AppNavigationSidebarController.Item(0);
  __chkstk_darwin(v0);
  v2 = v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v3 - 8);
  v5 = v11 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v6 = v11[1];
  v7 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v7 - 8) + 56))(v2, 2, 2, v7);
  swift_storeEnumTagMultiPayload();
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  sub_10000D5C8(v2, type metadata accessor for AppNavigationSidebarController.Item);
  v8 = type metadata accessor for IndexPath();
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_100004F84(v5, &unk_100ADFB90);
  return v9;
}

void *sub_10014F9C0()
{
  v1 = sub_1000F24EC(&unk_100ADFB90);
  __chkstk_darwin(v1 - 8);
  v47 = &v37 - v2;
  v46 = type metadata accessor for IndexPath();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SidebarPreferences.Brick();
  v49 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v48 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_1000F24EC(&qword_100AD4BD0);
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  result = [v0 isEditing];
  if (result)
  {
    v43 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    v52 = v0;
    static UIViewController.ViewLoading.subscript.getter();

    v18 = v54;
    LOBYTE(v54) = 1;
    UICollectionViewDiffableDataSource.snapshot(for:)();

    v39 = v14;
    result = NSDiffableDataSourceSectionSnapshot.items.getter();
    v19 = result;
    v20 = result[2];
    v21 = v48;
    v38 = v16;
    v53 = v20;
    if (v20)
    {
      v22 = 0;
      v23 = result + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v50 = result;
      v51 = (v49 + 4);
      ++v49;
      v24 = v41;
      v44 = v8;
      v45 = (v41 + 6);
      ++v41;
      v42 = (v24 + 4);
      while (v22 < v19[2])
      {
        sub_10001C850(&v23[*(v21 + 72) * v22], v13, type metadata accessor for AppNavigationSidebarController.Item);
        sub_10001C850(v13, v11, type metadata accessor for AppNavigationSidebarController.Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v51)(v7, v11, v5);
          v25 = sub_10013F728();
          if (v25 && (v26 = v25, v27 = AppStorageMO.isHiddenFromSidebar(_:)(), v26, (v27 & 1) != 0))
          {
            (*v49)(v7, v5);
            result = sub_10000D5C8(v13, type metadata accessor for AppNavigationSidebarController.Item);
          }

          else
          {
            v28 = v7;
            v29 = v5;
            swift_getKeyPath();
            swift_getKeyPath();
            v30 = v52;
            static UIViewController.ViewLoading.subscript.getter();

            v31 = v54;
            v32 = v47;
            dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

            v33 = v46;
            if ((*v45)(v32, 1, v46) == 1)
            {
              v7 = v28;
              v5 = v29;
              (*v49)(v28, v29);
              sub_10000D5C8(v13, type metadata accessor for AppNavigationSidebarController.Item);
              result = sub_100004F84(v32, &unk_100ADFB90);
            }

            else
            {
              v34 = v43;
              (*v42)(v43, v32, v33);
              result = [v30 collectionView];
              if (!result)
              {
                goto LABEL_20;
              }

              v35 = result;
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              [v35 selectItemAtIndexPath:isa animated:1 scrollPosition:1];

              (*v41)(v34, v33);
              v7 = v28;
              v5 = v29;
              (*v49)(v28, v29);
              result = sub_10000D5C8(v13, type metadata accessor for AppNavigationSidebarController.Item);
            }

            v21 = v48;
          }

          v19 = v50;
        }

        else
        {
          sub_10000D5C8(v13, type metadata accessor for AppNavigationSidebarController.Item);
          result = sub_10000D5C8(v11, type metadata accessor for AppNavigationSidebarController.Item);
        }

        if (v53 == ++v22)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    else
    {
LABEL_17:

      return (*(v40 + 8))(v38, v39);
    }
  }

  return result;
}

uint64_t sub_100150174(uint64_t a1, void (*a2)(uint64_t, uint64_t), int a3)
{
  v12[1] = a3;
  v5 = sub_1000F24EC(&qword_100AD4B88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = v13;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  a2(a1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v10 = v13;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100150328@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = a1;
  v3 = sub_1000F24EC(&qword_100AD4BF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1000F24EC(&qword_100AD4C00);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v22 = sub_1000F24EC(&qword_100AD4C08);
  __chkstk_darwin(v22);
  v10 = &v21 - v9;
  v11 = sub_1000F24EC(&qword_100AD4BC0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_1000F24EC(&qword_100AD4BD8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  *a2 = &_swiftEmptyDictionarySingleton;
  sub_1000F24EC(&qword_100AD4BC8);
  v23 = a2;
  v18 = v24;
  ComparableComparator.init(order:)();
  sub_1000082B4(v18, v13, &qword_100AD4BC0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100004F84(v18, &qword_100AD4BC0);
    return sub_100004F84(v13, &qword_100AD4BC0);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v8, v17, v14);
    sub_1000BCC7C(v8, v5);
    sub_1000BCC7C(v5, v10);
    v20 = &v10[*(v22 + 44)];
    *v20 = sub_100158808;
    v20[1] = 0;
    v25 = &_swiftEmptyDictionarySingleton;
    sub_100158928(v10, 1, &v25);
    sub_100004F84(v18, &qword_100AD4BC0);
    result = (*(v15 + 8))(v17, v14);
    *v23 = v25;
  }

  return result;
}

uint64_t sub_1001506D0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  result = sub_10018B14C(v0);
  if (result)
  {
    v6 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsTask;
    if (*&v0[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsTask])
    {

      sub_1000F24EC(&qword_100AD5BC0);
      Task.cancel()();
    }

    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v0;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    *&v1[v6] = sub_1004EC158(0, 0, v4, &unk_1009436B0, v10);
  }

  return result;
}

uint64_t sub_100150868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a4;
  v5 = type metadata accessor for UICellAccessory.AccessoryType();
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  v6 = type metadata accessor for UICellAccessory();
  v4[28] = v6;
  v4[29] = *(v6 - 8);
  v4[30] = swift_task_alloc();
  sub_1000F24EC(&unk_100ADFB90);
  v4[31] = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = sub_1000F24EC(&unk_100AD4CB0);
  v4[36] = swift_task_alloc();
  v8 = sub_1000F24EC(&unk_100AEBE30);
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  v9 = type metadata accessor for TipGroup.Priority();
  v4[40] = v9;
  v4[41] = *(v9 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = type metadata accessor for MainActor();
  v4[44] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[45] = v11;
  v4[46] = v10;

  return _swift_task_switch(sub_100150B50, v11, v10);
}

uint64_t sub_100150B50()
{
  (*(*(v0 + 328) + 104))(*(v0 + 336), enum case for TipGroup.Priority.firstAvailable(_:), *(v0 + 320));
  type metadata accessor for TipGroup();
  swift_allocObject();
  *(v0 + 376) = TipGroup.init(_:_:)();
  TipGroup.currentTipUpdates.getter();
  *(v0 + 384) = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsPopoverController;
  *(v0 + 392) = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsTask;
  *(v0 + 400) = v1;
  *(v0 + 408) = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_headerItem;
  *(v0 + 432) = enum case for UICellAccessory.AccessoryType.customView(_:);
  v2 = static MainActor.shared.getter();
  *(v0 + 416) = v2;
  swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 424) = v3;
  *v3 = v0;
  v3[1] = sub_100150D2C;

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 16, v2, &protocol witness table for MainActor);
}

uint64_t sub_100150D2C()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 360);
    v5 = *(v2 + 368);

    return _swift_task_switch(sub_100150E40, v4, v5);
  }

  return result;
}

uint64_t sub_100150E40()
{
  if (!*(v0 + 40))
  {
    (*(*(v0 + 304) + 8))(*(v0 + 312), *(v0 + 296));

    v5 = *(v0 + 8);

    return v5();
  }

  v1 = *(v0 + 192);
  sub_100018480((v0 + 16), v0 + 56);
  v2 = [v1 presentingViewController];
  v3 = *(v0 + 192);
  if (v2)
  {
    do
    {
      v4 = v2;

      v2 = [v4 presentingViewController];
      v3 = v4;
    }

    while (v2);
  }

  else
  {
    v4 = *(v0 + 192);
  }

  v7 = [v4 viewIfLoaded];
  v8 = [v7 window];

  v9 = [v8 windowScene];
  if (!v9)
  {
    goto LABEL_13;
  }

  if ([v9 activationState])
  {

    goto LABEL_13;
  }

  sub_10018AEBC(v9);
  v11 = v10;

  if (v11)
  {
LABEL_13:
    v12 = *(v0 + 392);
    v13 = *(v0 + 192);
    if (*(v13 + v12))
    {

      sub_1000F24EC(&qword_100AD5BC0);
      Task.cancel()();

      v12 = *(v0 + 392);
      v13 = *(v0 + 192);
    }

    v14 = *(v0 + 400);
    *(v13 + v12) = 0;

    v15 = *(v13 + v14);
    if (v15)
    {
      v16 = *(v0 + 400);
      v17 = *(v0 + 192);
      [v15 dismissViewControllerAnimated:1 completion:0];
      sub_10000BA7C(v0 + 56);
      v18 = *(v17 + v16);
      *(v17 + v16) = 0;

      goto LABEL_20;
    }

LABEL_18:
    v19 = v0 + 56;
    goto LABEL_19;
  }

  if (*(*(v0 + 192) + *(v0 + 400)))
  {
    goto LABEL_18;
  }

  sub_100086C04(v0 + 56, v0 + 96);
  sub_1000F24EC(&qword_100AD4CC0);
  if (swift_dynamicCast())
  {
    v25 = *(v0 + 400);
    v26 = *(v0 + 192);
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v27 = sub_100159268(1, *(v0 + 184), DebugData.init(name:), 0, &type metadata for MindfulMinutesTip, sub_10009F12C, &unk_100A5E290, &unk_100943720);
    v28 = static Color.gray.getter();
    *(v0 + 160) = &type metadata for Color;
    *(v0 + 168) = &protocol witness table for Color;
    *(v0 + 136) = v28;
    TipUIPopoverViewController.imageStyle.setter();
    [v26 presentViewController:v27 animated:1 completion:0];
    sub_10000BA7C(v0 + 56);
    v29 = *&v26[v25];
    *&v26[v25] = v27;
    goto LABEL_43;
  }

  if (!swift_dynamicCast())
  {
    v35 = *(v0 + 392);
    v36 = *(v0 + 192);
    if (*(v36 + v35))
    {

      sub_1000F24EC(&qword_100AD5BC0);
      Task.cancel()();

      v35 = *(v0 + 392);
      v36 = *(v0 + 192);
    }

    v57 = *(v0 + 400);
    *(v36 + v35) = 0;

    v58 = *(v36 + v57);
    if (v58)
    {
      v59 = *(v0 + 400);
      v60 = *(v0 + 192);
      [v58 dismissViewControllerAnimated:1 completion:0];
      sub_10000BA7C(v0 + 56);
      v29 = *(v60 + v59);
      *(v60 + v59) = 0;
      goto LABEL_43;
    }

    goto LABEL_47;
  }

  v30 = *(v0 + 256);
  v31 = *(v0 + 264);
  v32 = *(v0 + 248);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v33 = *(v0 + 176);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    v34 = *(v0 + 248);
    sub_10000BA7C(v0 + 56);
    sub_100004F84(v34, &unk_100ADFB90);
    v19 = v0 + 96;
    goto LABEL_19;
  }

  v37 = *(v0 + 192);
  (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 248), *(v0 + 256));
  v23 = [v37 collectionView];
  if (!v23)
  {
LABEL_55:
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v23, v24, v22);
  }

  v38 = v23;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v40 = [v38 cellForItemAtIndexPath:isa];

  if (!v40)
  {
    goto LABEL_46;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_46:
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    goto LABEL_47;
  }

  v77 = v40;
  v23 = UICollectionViewListCell.accessories.getter();
  v41 = v23;
  v80 = *(v23 + 2);
  if (!v80)
  {
LABEL_44:
    v61 = *(v0 + 264);
    v62 = *(v0 + 272);
    v63 = *(v0 + 256);

    (*(v61 + 8))(v62, v63);
LABEL_47:
    sub_10000BA7C(v0 + 56);
    v19 = v0 + 96;
    goto LABEL_19;
  }

  v42 = 0;
  v43 = *(*(v0 + 232) + 80);
  v79 = &v23[(v43 + 32) & ~v43];
  while (1)
  {
    if (v42 >= *(v41 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v44 = *(v0 + 432);
    v46 = *(v0 + 232);
    v45 = *(v0 + 240);
    v48 = *(v0 + 216);
    v47 = *(v0 + 224);
    v49 = *(v0 + 200);
    v50 = *(v0 + 208);
    (*(v46 + 16))(v45, &v79[*(v46 + 72) * v42], v47);
    UICellAccessory.accessoryType.getter();
    (*(v46 + 8))(v45, v47);
    v51 = (*(v50 + 88))(v48, v49);
    v52 = *(v0 + 208);
    v53 = *(v0 + 216);
    v54 = *(v0 + 200);
    if (v51 == v44)
    {
      break;
    }

    v23 = (*(v52 + 8))(*(v0 + 216), v54);
LABEL_36:
    if (v80 == ++v42)
    {
      goto LABEL_44;
    }
  }

  (*(v52 + 96))(*(v0 + 216), v54);
  v55 = *v53;
  objc_opt_self();
  v56 = swift_dynamicCastObjCClass();
  if (!v56)
  {

    goto LABEL_36;
  }

  v64 = v56;

  v65 = v55;
  v66 = sub_100159268(1, v64, DebugData.init(name:), 0, &type metadata for MultipleJournalsTip, sub_10015CEB4, &unk_100A5E2B8, &unk_100943750);
  v67 = TipUIPopoverViewController.popoverPresentationController.getter();
  if (v67)
  {
    v68 = v67;
    v69 = [v66 traitCollection];
    v70 = [v69 userInterfaceIdiom];

    if (v70)
    {
      v71 = 15;
    }

    else
    {
      v71 = 2;
    }

    [v68 setPermittedArrowDirections:v71];
  }

  v72 = *(v0 + 400);
  v74 = *(v0 + 264);
  v73 = *(v0 + 272);
  v75 = *(v0 + 256);
  v76 = *(v0 + 192);
  [v76 presentViewController:v66 animated:1 completion:{0, v77}];

  (*(v74 + 8))(v73, v75);
  sub_10000BA7C(v0 + 56);
  v29 = *&v76[v72];
  *&v76[v72] = v66;
LABEL_43:

  v19 = v0 + 96;
LABEL_19:
  sub_10000BA7C(v19);
LABEL_20:
  v20 = static MainActor.shared.getter();
  *(v0 + 416) = v20;
  swift_getAssociatedConformanceWitness();
  v21 = swift_task_alloc();
  *(v0 + 424) = v21;
  *v21 = v0;
  v21[1] = sub_100150D2C;
  v22 = &protocol witness table for MainActor;
  v23 = (v0 + 16);
  v24 = v20;

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v23, v24, v22);
}

uint64_t sub_1001517F4()
{
  if (qword_100ACF988 != -1)
  {
    swift_once();
  }

  if ([objc_opt_self() isHealthDataAvailable])
  {
    v3 = &type metadata for MindfulMinutesTip;
    v4 = sub_10009F12C();
    static Tips.GroupBuilder.buildPartialBlock(first:)();
    sub_10000BA7C(v2);
    static Tips.GroupBuilder.buildIf(_:)();
  }

  else
  {
    static Tips.GroupBuilder.buildIf(_:)();
  }

  v3 = &type metadata for MultipleJournalsTip;
  v4 = sub_10015CEB4();
  static Tips.GroupBuilder.buildPartialBlock(first:)();
  sub_10000BA7C(v2);
  v0 = static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();

  return v0;
}

uint64_t sub_10015194C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a1;
  v132 = a2;
  v121 = type metadata accessor for ColorResource();
  v130 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v111[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = type metadata accessor for UUID();
  v3 = *(v142 - 8);
  v4 = __chkstk_darwin(v142);
  v125 = &v111[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v4);
  v133 = &v111[-v7];
  __chkstk_darwin(v6);
  v114 = &v111[-v8];
  v129 = sub_1000F24EC(&qword_100AD4C60);
  __chkstk_darwin(v129);
  v128 = &v111[-v9];
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v136 = &v111[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v135 = &v111[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v14 = __chkstk_darwin(v127);
  v122 = &v111[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v134 = &v111[-v17];
  v18 = __chkstk_darwin(v16);
  v140 = &v111[-v19];
  v20 = __chkstk_darwin(v18);
  v139 = &v111[-v21];
  __chkstk_darwin(v20);
  v23 = &v111[-v22];
  v24 = sub_1000F24EC(&unk_100AD4400);
  v25 = __chkstk_darwin(v24 - 8);
  v115 = &v111[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v148 = &v111[-v27];
  v146 = type metadata accessor for JournalSidebarViewModel(0);
  v28 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = &v111[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v152 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v30 = *(v152 - 8);
  v31 = __chkstk_darwin(v152);
  v151 = &v111[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v34 = &v111[-v33];
  v35 = sub_1000F24EC(&qword_100AD4B88);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v111[-v37];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v39 = v153;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  LOBYTE(v153) = 0;
  v40 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  (*(v36 + 8))(v38, v35);
  v41 = *(v40 + 16);
  v143 = v28;
  if (v41)
  {
    v124 = 0;
    v42 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v117 = v40;
    v43 = v40 + v42;
    v44 = *(v30 + 72);
    v149 = (v28 + 56);
    v150 = v44;
    v141 = (v3 + 8);
    v123 = "AppNavSidebarController";
    v126 = enum case for MergeableJournalAttributes.Icon.sfSymbol(_:);
    v119 = (v3 + 32);
    v116 = (v3 + 16);
    v144 = (v28 + 48);
    v147 = _swiftEmptyArrayStorage;
    v113 = (v130 + 16);
    v45 = v142;
    v46 = v146;
    v47 = v139;
    v48 = v148;
    v137 = v23;
    v138 = v34;
    while (1)
    {
      sub_10001C850(v43, v34, type metadata accessor for AppNavigationSidebarController.Item);
      v49 = v151;
      sub_10001C850(v34, v151, type metadata accessor for AppNavigationSidebarController.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10000D5C8(v34, type metadata accessor for AppNavigationSidebarController.Item);
        sub_10000D5C8(v49, type metadata accessor for AppNavigationSidebarController.Item);
        (*v149)(v48, 1, 1, v46);
        goto LABEL_4;
      }

      sub_10001DAC8(v49, v23, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10001C850(v23, v47, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v50 = sub_1000F24EC(&qword_100AD47A0);
      v51 = *(v50 - 8);
      v52 = *(v51 + 48);
      if (v52(v47, 2, v50))
      {
        sub_10000D5C8(v23, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        sub_10000D5C8(v34, type metadata accessor for AppNavigationSidebarController.Item);
        sub_10000D5C8(v47, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        v48 = v148;
        v46 = v146;
        (*v149)(v148, 1, 1, v146);
        goto LABEL_42;
      }

      v53 = *v141;
      (*v141)(v47, v45);
      v54 = v140;
      sub_10001C850(v23, v140, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v55 = v52(v54, 2, v50);
      if (v55)
      {
        if (v55 == 1)
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v56 = String.init(localized:table:bundle:locale:comment:)();
          v58 = v57;
          v59 = [objc_opt_self() quaternarySystemFillColor];
          v46 = v146;
          v60 = v148;
          v61 = (v148 + *(v146 + 28));
          *v61 = 0x69662E6873617274;
          v61[1] = 0xEA00000000006C6CLL;
          v62 = type metadata accessor for MergeableJournalAttributes.Icon();
          (*(*(v62 - 8) + 104))(v61, v126, v62);
          (*(v51 + 56))(v60 + *(v46 + 24), 1, 2, v50);
          v48 = v60;
          *v60 = v56;
          v60[1] = v58;
        }

        else
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v68 = String.init(localized:table:bundle:locale:comment:)();
          v70 = v69;
          v59 = [objc_opt_self() quaternarySystemFillColor];
          v46 = v146;
          v60 = v148;
          static MergeableJournalAttributes.Icon.defaultIcon.getter();
          (*(v51 + 56))(v60 + *(v46 + 24), 2, 2, v50);
          v48 = v60;
          *v60 = v68;
          v60[1] = v70;
        }

        v60[2] = v59;
        (*v149)(v60, 0, 1, v46);
        v45 = v142;
        v34 = v138;
        v47 = v139;
        v23 = v137;
      }

      else
      {
        v130 = v53;
        v63 = v134;
        sub_10001C850(v54, v134, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        if (qword_100ACFF20 != -1)
        {
          swift_once();
        }

        v64 = sub_10000617C(v127, qword_100B2FAE0);
        v65 = *(v129 + 48);
        v118 = v64;
        v66 = v128;
        sub_10001C850(v64, v128, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        sub_10001C850(v63, &v66[v65], type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        v67 = v52(v66, 2, v50);
        v34 = v138;
        if (v67)
        {
          if (v67 == 1)
          {
            if (v52(&v66[v65], 2, v50) != 1)
            {
              goto LABEL_23;
            }
          }

          else if (v52(&v66[v65], 2, v50) != 2)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v71 = v122;
          sub_10001C850(v66, v122, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          v72 = v52(&v66[v65], 2, v50);
          v73 = v66;
          v74 = v142;
          if (v72)
          {
            v66 = v73;
            (v130)(v71, v142);
LABEL_23:
            sub_100004F84(v66, &qword_100AD4C60);
LABEL_24:
            sub_10000D5C8(v134, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
            v75 = v140;
            v76 = v52(v140, 2, v50);
            v77 = v142;
            v78 = v125;
            if (v76)
            {
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }

            v79 = v133;
            (*v119)(v133, v75, v142);
            (*v116)(v78, v79, v77);
            v23 = v137;
            if (qword_100ACFE28 != -1)
            {
              swift_once();
            }

            v80 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
            type metadata accessor for JournalMO();
            sub_1001588B0(&qword_100AD4C68, &type metadata accessor for JournalMO);
            v81 = v80;
            v82 = v124;
            v83 = static Identifiable<>.fetch(id:context:)();
            if (v82)
            {

              v45 = v142;
              v84 = v130;
              (v130)(v78, v142);
              v124 = 0;
              v85 = 1;
              v46 = v146;
              v47 = v139;
              v48 = v148;
            }

            else
            {
              v124 = 0;
              v46 = v146;
              v48 = v148;
              if (v83)
              {
                v86 = v115;
                sub_1005208D8(v83, v115);

                v45 = v142;
                (v130)(v125);
                v87 = (*v144)(v86, 1, v46);
                v47 = v139;
                if (v87)
                {
                  sub_100004F84(v86, &unk_100AD4400);
                  v85 = 1;
                }

                else
                {
                  sub_10001DAC8(v86, v48, type metadata accessor for JournalSidebarViewModel);
                  v85 = 0;
                }

                v84 = v130;
              }

              else
              {
                v100 = v142;
                v84 = v130;
                (v130)(v125, v142);

                v34 = v138;
                v47 = v139;
                v45 = v100;
                v48 = v148;
                v85 = 1;
              }
            }

            (*v149)(v48, v85, 1, v46);
            v84(v133, v45);
            goto LABEL_41;
          }

          v88 = v114;
          v89 = v73;
          (*v119)(v114, &v73[v65], v142);
          v112 = static UUID.== infix(_:_:)();
          v90 = v88;
          v91 = v130;
          (v130)(v90, v74);
          v91(v122, v74);
          v66 = v89;
          if ((v112 & 1) == 0)
          {
            sub_10000D5C8(v89, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
            goto LABEL_24;
          }
        }

        sub_10000D5C8(v66, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        sub_10000D5C8(v134, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v92 = String.init(localized:table:bundle:locale:comment:)();
        v94 = v93;
        sub_1000065A8(0, &qword_100AD4C70);
        if (qword_100AD0BE0 != -1)
        {
          swift_once();
        }

        v95 = v121;
        v96 = sub_10000617C(v121, qword_100B312B0);
        (*v113)(v120, v96, v95);
        v97 = UIColor.init(resource:)();
        v46 = v146;
        v48 = v148;
        v98 = v148 + *(v146 + 28);
        strcpy(v98, "apple.journal");
        *(v98 + 7) = -4864;
        v99 = type metadata accessor for MergeableJournalAttributes.Icon();
        (*(*(v99 - 8) + 104))(v98, v126, v99);
        sub_10001C850(v118, v48 + *(v46 + 24), type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        *v48 = v92;
        v48[1] = v94;
        v48[2] = v97;
        (*v149)(v48, 0, 1, v46);
        sub_10000D5C8(v140, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        v45 = v142;
        v47 = v139;
        v23 = v137;
      }

LABEL_41:
      sub_10000D5C8(v23, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10000D5C8(v34, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_42:
      if ((*v144)(v48, 1, v46) != 1)
      {
        sub_10001DAC8(v48, v145, type metadata accessor for JournalSidebarViewModel);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v101 = v147;
        }

        else
        {
          v101 = sub_1003E4CB4(0, v147[2] + 1, 1, v147);
        }

        v103 = v101[2];
        v102 = v101[3];
        if (v103 >= v102 >> 1)
        {
          v101 = sub_1003E4CB4(v102 > 1, v103 + 1, 1, v101);
        }

        v101[2] = v103 + 1;
        v104 = (*(v143 + 80) + 32) & ~*(v143 + 80);
        v147 = v101;
        sub_10001DAC8(v145, v101 + v104 + *(v143 + 72) * v103, type metadata accessor for JournalSidebarViewModel);
        v48 = v148;
        goto LABEL_5;
      }

LABEL_4:
      sub_100004F84(v48, &unk_100AD4400);
LABEL_5:
      v43 += v150;
      if (!--v41)
      {

        v105 = v131;
        v106 = v147;
        if (v131 < 0)
        {
          goto LABEL_53;
        }

LABEL_50:
        v107 = v132;
        v108 = v143;
        if (v106[2] <= v105)
        {

          v109 = 1;
        }

        else
        {
          sub_10001C850(v106 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v105, v132, type metadata accessor for JournalSidebarViewModel);

          v109 = 0;
        }

        return (*(v108 + 56))(v107, v109, 1, v46);
      }
    }
  }

  v106 = _swiftEmptyArrayStorage;
  v105 = v131;
  v46 = v146;
  if ((v131 & 0x8000000000000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_53:

  v109 = 1;
  v107 = v132;
  v108 = v143;
  return (*(v108 + 56))(v107, v109, 1, v46);
}

uint64_t sub_100152DFC()
{
  v90 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v1 = *(v90 - 8);
  __chkstk_darwin(v90);
  v3 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JournalSidebarViewModel(0);
  v94 = *(v4 - 8);
  __chkstk_darwin(v4);
  v95 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v93 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v87 = &v79 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v79 - v13;
  v15 = __chkstk_darwin(v12);
  v91 = &v79 - v16;
  __chkstk_darwin(v15);
  v82 = &v79 - v17;
  v88 = sub_1000F24EC(&qword_100AD4B60);
  __chkstk_darwin(v88);
  v89 = &v79 - v18;
  v19 = sub_1000F24EC(&qword_100AD4B68);
  v20 = __chkstk_darwin(v19 - 8);
  v85 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v79 - v23;
  __chkstk_darwin(v22);
  v26 = &v79 - v25;
  v27 = sub_10002B504();
  v28 = v27[2];
  v92 = v0;
  if (!v28)
  {

    v43 = v93;
    goto LABEL_21;
  }

  v80 = v14;
  v81 = v4;
  v84 = v9;
  v29 = *(v94 + 80);
  v86 = v27;
  v30 = v6;
  v31 = v27 + ((v29 + 32) & ~v29);
  v94 = *(v94 + 72);
  sub_10001C850(v31 + v94 * (v28 - 1) + *(v4 + 24), v26, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v32 = v93;
  v33 = *(v93 + 56);
  v33(v26, 0, 1, v30);
  v34 = v32;
  v35 = v26;
  if (qword_100ACFF20 != -1)
  {
    swift_once();
  }

  v36 = sub_10000617C(v30, qword_100B2FAE0);
  sub_10001C850(v36, v24, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v33(v24, 0, 1, v30);
  v37 = *(v88 + 48);
  v38 = v35;
  v83 = v35;
  v39 = v89;
  sub_1000082B4(v38, v89, &qword_100AD4B68);
  v88 = v37;
  sub_1000082B4(v24, v39 + v37, &qword_100AD4B68);
  v40 = *(v34 + 48);
  v41 = v40(v39, 1, v30);
  v79 = v30;
  if (v41 == 1)
  {
    sub_100004F84(v24, &qword_100AD4B68);
    sub_100004F84(v83, &qword_100AD4B68);
    v42 = v40(v39 + v88, 1, v30);
    v43 = v93;
    if (v42 == 1)
    {
      sub_100004F84(v39, &qword_100AD4B68);
LABEL_20:

      v9 = v84;
      v6 = v79;
LABEL_21:
      v60 = v87;
      if (qword_100ACFF20 != -1)
      {
        swift_once();
      }

      v61 = sub_10000617C(v6, qword_100B2FAE0);
      sub_10001C850(v61, v60, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v62 = sub_1003E4CDC(0, 1, 1, _swiftEmptyArrayStorage);
      v64 = v62[2];
      v63 = v62[3];
      v65 = v1;
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1003E4CDC(v63 > 1, v64 + 1, 1, v62);
      }

      v62[2] = v64 + 1;
      v66 = *(v43 + 80);
      v51 = *(v43 + 72);
      sub_10001DAC8(v60, v62 + ((v66 + 32) & ~v66) + v51 * v64, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v97 = v62;
      v67 = v66;
      v1 = v65;
      if (sub_10002BA54())
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    }

    goto LABEL_10;
  }

  v44 = v83;
  v45 = v85;
  sub_1000082B4(v39, v85, &qword_100AD4B68);
  if (v40(v39 + v88, 1, v30) == 1)
  {
    sub_100004F84(v24, &qword_100AD4B68);
    sub_100004F84(v44, &qword_100AD4B68);
    sub_10000D5C8(v45, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v43 = v93;
LABEL_10:
    sub_100004F84(v39, &qword_100AD4B60);
    goto LABEL_11;
  }

  v59 = v82;
  sub_10001DAC8(v39 + v88, v82, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  LODWORD(v88) = sub_100524B84(v45, v59);
  sub_10000D5C8(v59, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_100004F84(v24, &qword_100AD4B68);
  sub_100004F84(v44, &qword_100AD4B68);
  sub_10000D5C8(v45, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  sub_100004F84(v39, &qword_100AD4B68);
  v43 = v93;
  if (v88)
  {
    goto LABEL_20;
  }

LABEL_11:
  v46 = sub_1000F24EC(&qword_100AD47A0);
  (*(*(v46 - 8) + 56))(v91, 2, 2, v46);
  v47 = sub_1003E4CDC(0, 1, 1, _swiftEmptyArrayStorage);
  v49 = v47[2];
  v48 = v47[3];
  if (v49 >= v48 >> 1)
  {
    v47 = sub_1003E4CDC(v48 > 1, v49 + 1, 1, v47);
  }

  v47[2] = v49 + 1;
  v93 = *(v43 + 80);
  v50 = (v93 + 32) & ~v93;
  v51 = *(v43 + 72);
  sub_10001DAC8(v91, v47 + v50 + v51 * v49, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v97 = v47;
  v52 = v86[2];
  if (v52)
  {
    v91 = v1;
    v96 = _swiftEmptyArrayStorage;
    sub_100199AC8(0, v52, 0);
    v53 = v96;
    v55 = v80;
    v54 = v81;
    do
    {
      v56 = v95;
      sub_10001C850(v31, v95, type metadata accessor for JournalSidebarViewModel);
      sub_10001C850(v56 + *(v54 + 24), v55, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10000D5C8(v56, type metadata accessor for JournalSidebarViewModel);
      v96 = v53;
      v58 = v53[2];
      v57 = v53[3];
      if (v58 >= v57 >> 1)
      {
        sub_100199AC8(v57 > 1, v58 + 1, 1);
        v54 = v81;
        v53 = v96;
      }

      v53[2] = v58 + 1;
      sub_10001DAC8(v55, v53 + v50 + v58 * v51, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v31 += v94;
      --v52;
    }

    while (v52);

    v1 = v91;
  }

  else
  {

    v53 = _swiftEmptyArrayStorage;
  }

  sub_1006AD7BC(v53);
  v67 = v93;
  v9 = v84;
  if (sub_10002BA54())
  {
LABEL_26:
    v68 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v68 - 8) + 56))(v9, 1, 2, v68);
    v69 = v97;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_1003E4CDC(0, v69[2] + 1, 1, v69);
    }

    v71 = v69[2];
    v70 = v69[3];
    if (v71 >= v70 >> 1)
    {
      v69 = sub_1003E4CDC(v70 > 1, v71 + 1, 1, v69);
    }

    v69[2] = v71 + 1;
    sub_10001DAC8(v9, v69 + ((v67 + 32) & ~v67) + v51 * v71, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v97 = v69;
    v72 = v69[2];
    if (v72)
    {
      goto LABEL_31;
    }

LABEL_39:

    v73 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

LABEL_38:
  sub_10002BD00();
  v69 = v97;
  v72 = v97[2];
  if (!v72)
  {
    goto LABEL_39;
  }

LABEL_31:
  v96 = _swiftEmptyArrayStorage;
  sub_10002CAF0(0, v72, 0);
  v73 = v96;
  v74 = v69 + ((v67 + 32) & ~v67);
  do
  {
    sub_10001C850(v74, v3, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    swift_storeEnumTagMultiPayload();
    v96 = v73;
    v76 = v73[2];
    v75 = v73[3];
    if (v76 >= v75 >> 1)
    {
      sub_10002CAF0(v75 > 1, v76 + 1, 1);
      v73 = v96;
    }

    v73[2] = v76 + 1;
    sub_10001DAC8(v3, v73 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v76, type metadata accessor for AppNavigationSidebarController.Item);
    v74 += v51;
    --v72;
  }

  while (v72);

LABEL_40:
  v96 = v73;
  sub_1000F24EC(&qword_100AD4B70);
  sub_10000B58C(&qword_100AD4B78, &qword_100AD4B70);
  sub_1001588B0(&qword_100AD4B80, type metadata accessor for AppNavigationSidebarController.Item);
  v77 = Collection<>.uniqued()();

  return v77;
}

void sub_100153A60()
{
  v0 = sub_10013F728();
  if (v0)
  {
    v1 = v0;
    AppStorageMO.cacheCustomJournalsSidebarOrder()();
    if (v2)
    {

LABEL_12:
      if (qword_100ACF990 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000617C(v8, qword_100AD47F0);
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "Error saving after changing sidebar order: %@", v11, 0xCu);
        sub_100004F84(v12, &unk_100AD4BB0);
      }

      else
      {
      }

      return;
    }
  }

  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v3 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v14[0] = 0;
  v4 = [v3 save:v14];
  v5 = v14[0];
  if (!v4)
  {
    v7 = v14[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_12;
  }

  v6 = v5;
}

void *sub_100153CF0(void *a1, void *a2)
{
  v3 = v2;
  v33[0] = a2;
  v5 = sub_1000F24EC(&qword_100AD4C88);
  __chkstk_darwin(v5 - 8);
  v7 = (v33 - v6);
  v8 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v8 - 8);
  v10 = v33 - v9;
  v11 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v15 = v33[1];
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &qword_100AD4B90);
  }

  else
  {
    sub_10001DAC8(v10, v14, type metadata accessor for AppNavigationSidebarController.Item);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [a1 cellForItemAtIndexPath:isa];

    if (v17 && ([v17 bounds], v19 = v18, v21 = v20, v23 = v22, v25 = v24, v26 = v33[0], objc_msgSend(v33[0], "locationInView:", v17), v34.x = v27, v34.y = v28, v35.origin.x = v19, v35.origin.y = v21, v35.size.width = v23, v35.size.height = v25, v29 = CGRectContainsPoint(v35, v34), v17, v29))
    {
      v30 = type metadata accessor for AppNavigationSidebarController.DragState(0);
      sub_10001DAC8(v14, v7 + *(v30 + 20), type metadata accessor for AppNavigationSidebarController.Item);
      *v7 = v26;
      (*(*(v30 - 8) + 56))(v7, 0, 1, v30);
      v31 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_activeDrag;
      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_10015CCC8(v7, v3 + v31);
      swift_endAccess();
    }

    else
    {
      sub_10000D5C8(v14, type metadata accessor for AppNavigationSidebarController.Item);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001542F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v6;
  v5[8] = v7;

  return _swift_task_switch(sub_1001543C0, v6, v7);
}

uint64_t sub_1001543C0()
{
  v0[9] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[10] = v1;
  v0[11] = v2;

  return _swift_task_switch(sub_100154480, v1, v2);
}

uint64_t sub_100154480()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {

    v4 = *(v0 + 56);
    v5 = *(v0 + 64);

    return _swift_task_switch(sub_100154694, v4, v5);
  }

  else
  {
    v10 = *(v0 + 24);
    v6 = static MainActor.shared.getter();
    *(v0 + 96) = v6;
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *(v7 + 16) = v10;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1001549AC;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 120, v6, &protocol witness table for MainActor, 0xD000000000000052, 0x80000001008E0D50, sub_10015CCBC, v7, &type metadata for Bool);
  }
}

uint64_t sub_100154694()
{

  v1 = v0[3];
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[3] + 32;
    while (v4)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v1 = *(v7 + 32);
      JournalEntryMO.markAsRecentlyDeleted()();

      ++v3;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    if (v3 >= *(v5 + 16))
    {
      goto LABEL_12;
    }

    v7 = *(v6 + 8 * v3);

    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v9 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  v0[2] = 0;
  v10 = [v9 save:v0 + 2];
  v11 = v0[2];
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v13 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100ACF990 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AD47F0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error saving after marking entries as recently deleted on drop: %@", v17, 0xCu);
      sub_100004F84(v18, &unk_100AD4BB0);
    }

    else
    {
    }
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1001549AC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_100154B40, v3, v2);
}

uint64_t sub_100154B40()
{

  *(v0 + 121) = *(v0 + 120);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_100154BD8, v1, v2);
}

uint64_t sub_100154BD8()
{
  v1 = *(v0 + 121);

  if (v1 == 1)
  {
    v2 = *(v0 + 24);
    if (v2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = *(v0 + 24) + 32;
      while (v5)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v2 = *(v8 + 32);
        JournalEntryMO.markAsRecentlyDeleted()();

        ++v4;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      if (v4 >= *(v6 + 16))
      {
        goto LABEL_13;
      }

      v8 = *(v7 + 8 * v4);

      v9 = v4 + 1;
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
    if (qword_100ACFCA8 != -1)
    {
      swift_once();
    }

    v10 = *(*(qword_100B2F840 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    *(v0 + 16) = 0;
    v11 = [v10 save:v0 + 16];
    v12 = *(v0 + 16);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v14 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_100ACF990 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000617C(v15, qword_100AD47F0);
      swift_errorRetain();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 4) = v20;
        *v19 = v20;
        _os_log_impl(&_mh_execute_header, v16, v17, "Error saving after marking entries as recently deleted on drop: %@", v18, 0xCu);
        sub_100004F84(v19, &unk_100AD4BB0);
      }

      else
      {
      }
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

id sub_100154F78(void *a1, void *a2, uint64_t a3)
{
  v106 = a2;
  v98 = a1;
  v4 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v5 = __chkstk_darwin(v4 - 8);
  v102 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v105 = &v93 - v8;
  __chkstk_darwin(v7);
  v95 = &v93 - v9;
  v10 = sub_1000F24EC(&qword_100AD4B90);
  v11 = __chkstk_darwin(v10 - 8);
  v107 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v93 - v13;
  v14 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = __chkstk_darwin(v14);
  v103 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v111 = &v93 - v18;
  v19 = __chkstk_darwin(v17);
  v96 = &v93 - v20;
  __chkstk_darwin(v19);
  v97 = (&v93 - v21);
  v22 = sub_1000F24EC(&qword_100AD4C88);
  __chkstk_darwin(v22 - 8);
  v24 = (&v93 - v23);
  v25 = type metadata accessor for AppNavigationSidebarController.DragState(0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v104 = (&v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1000F24EC(&unk_100ADFB90);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v93 - v32;
  v34 = type metadata accessor for IndexPath();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v100 = &v93 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v93 - v38;
  v40 = a3;
  v42 = v41;
  sub_1000082B4(v40, v33, &unk_100ADFB90);
  v43 = *(v35 + 48);
  if (v43(v33, 1, v42) == 1)
  {
    sub_100004F84(v33, &unk_100ADFB90);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
  }

  v94 = v35;
  v45 = *(v35 + 32);
  v101 = v39;
  v93 = v45;
  v45(v39, v33, v42);
  v46 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_activeDrag;
  v47 = v110;
  swift_beginAccess();
  sub_1000082B4(v47 + v46, v24, &qword_100AD4C88);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_100004F84(v24, &qword_100AD4C88);
    goto LABEL_12;
  }

  v48 = v24;
  v24 = v104;
  sub_10001DAC8(v48, v104, type metadata accessor for AppNavigationSidebarController.DragState);
  v49 = *v24;
  swift_unknownObjectRetain();
  v50 = [v106 localDragSession];
  if (v50)
  {
    v51 = v42;
    v52 = v50;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v53 = v49 == v52;
    v42 = v51;
    if (!v53)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v42 = v51;

    v54 = *&v114[0];
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    if (v43(v31, 1, v42) == 1)
    {
      sub_10000D5C8(v24, type metadata accessor for AppNavigationSidebarController.DragState);
      sub_100004F84(v31, &unk_100ADFB90);
      goto LABEL_12;
    }

    v64 = v100;
    v93(v100, v31, v42);
    v69 = IndexPath.section.getter();
    v63 = v101;
    if (v69 == IndexPath.section.getter())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v70 = *&v114[0];
      IndexPath.section.getter();
      dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

      if (v112 == 2 || (v112 & 1) != 0)
      {
        goto LABEL_57;
      }

      if (IndexPath.item.getter() >= 1)
      {
        if (!sub_10002BA54())
        {
          goto LABEL_47;
        }

        v71 = IndexPath.item.getter();
        result = [v98 numberOfItemsInSection:IndexPath.section.getter()];
        if (__OFSUB__(result, 1))
        {
          __break(1u);
          return result;
        }

        if (v71 < result - 1)
        {
LABEL_47:
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          v72 = *&v114[0];
          v73 = v99;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          if ((*(v108 + 48))(v73, 1, v109) == 1)
          {
            sub_100004F84(v73, &qword_100AD4B90);
            v74 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
LABEL_58:
            v61 = v74;
LABEL_59:
            v80 = *(v94 + 8);
            v80(v64, v42);
            sub_10000D5C8(v24, type metadata accessor for AppNavigationSidebarController.DragState);
            v80(v63, v42);
            return v61;
          }

          v75 = v73;
          v66 = v97;
          sub_10001DAC8(v75, v97, type metadata accessor for AppNavigationSidebarController.Item);
          v67 = v96;
          sub_10001C850(v66, v96, type metadata accessor for AppNavigationSidebarController.Item);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_10000D5C8(v66, type metadata accessor for AppNavigationSidebarController.Item);
            v76 = v67;
          }

          else
          {
LABEL_54:
            v77 = v67;
            v78 = v95;
            v79 = sub_10001DAC8(v77, v95, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
            if ((sub_10052289C(v79) & 1) == 0)
            {
              v61 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
              sub_10000D5C8(v78, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
              sub_10000D5C8(v66, type metadata accessor for AppNavigationSidebarController.Item);
              goto LABEL_59;
            }

            sub_10000D5C8(v78, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
            v76 = v66;
          }

          sub_10000D5C8(v76, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_57:
          v74 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:3 intent:1];
          goto LABEL_58;
        }
      }
    }

    v74 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
    goto LABEL_58;
  }

  swift_unknownObjectRelease();
LABEL_11:
  sub_10000D5C8(v24, type metadata accessor for AppNavigationSidebarController.DragState);
LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v55 = *&v114[0];
  v56 = v107;
  v57 = v101;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v58 = (*(v108 + 48))(v56, 1, v109);
  v59 = v111;
  if (v58 == 1)
  {
    sub_100004F84(v56, &qword_100AD4B90);
LABEL_16:
    v61 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
    (*(v94 + 8))(v57, v42);
    return v61;
  }

  sub_10001DAC8(v56, v111, type metadata accessor for AppNavigationSidebarController.Item);
  v60 = v103;
  sub_10001C850(v59, v103, type metadata accessor for AppNavigationSidebarController.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10000D5C8(v59, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10000D5C8(v60, type metadata accessor for AppNavigationSidebarController.Item);
    goto LABEL_16;
  }

  v110 = v42;
  sub_10001DAC8(v60, v105, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v62 = [v106 items];
  sub_1000065A8(0, &unk_100AD4C90);
  v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v116 = _swiftEmptyArrayStorage;
  if (v63 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (v42)
    {
      goto LABEL_20;
    }

LABEL_62:
    v65 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v42 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
    goto LABEL_62;
  }

LABEL_20:
  v64 = 0;
  v65 = _swiftEmptyArrayStorage;
  v66 = &selRef_setRegion_;
  do
  {
    v67 = v64;
    while (1)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v67 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v68 = *(v63 + 8 * v67 + 32);
      }

      v24 = v68;
      v64 = (v67 + 1);
      if (__OFADD__(v67, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      if ([v68 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v112 = 0u;
        v113 = 0u;
      }

      v114[0] = v112;
      v114[1] = v113;
      if (*(&v113 + 1))
      {
        break;
      }

      sub_100004F84(v114, &qword_100AD13D0);
LABEL_23:
      ++v67;
      if (v64 == v42)
      {
        goto LABEL_63;
      }
    }

    type metadata accessor for EntryViewModel();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v24 = v115;
    if (!v115)
    {
      goto LABEL_23;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v65 = v116;
  }

  while (v64 != v42);
LABEL_63:

  if (v65 >> 62)
  {
LABEL_76:
    v81 = _CocoaArrayWrapper.endIndex.getter();
    if (v81)
    {
      goto LABEL_65;
    }

    goto LABEL_77;
  }

  v81 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v81)
  {
LABEL_77:
    v83 = 0;
    goto LABEL_78;
  }

LABEL_65:
  v82 = 0;
  do
  {
    v83 = v81 == v82;
    if (v81 == v82)
    {
      break;
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v82, 1))
      {
        goto LABEL_74;
      }
    }

    else
    {
      if (v82 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      if (__OFADD__(v82, 1))
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }
    }

    NSManagedObjectContext.performAndWait<A>(_:)();

    ++v82;
  }

  while ((v114[0] & 1) != 0);
LABEL_78:

  v84 = sub_1000F24EC(&qword_100AD47A0);
  v85 = *(*(v84 - 8) + 56);
  v86 = v102;
  v85(v102, 1, 2, v84);
  v87 = sub_100524B84(v105, v86);
  sub_10000D5C8(v86, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  if (v83 && (v87 & 1) != 0)
  {
    v61 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1];
    sub_10000D5C8(v105, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    sub_10000D5C8(v111, type metadata accessor for AppNavigationSidebarController.Item);
    (*(v94 + 8))(v101, v110);
  }

  else
  {
    v85(v86, 2, 2, v84);
    v88 = v105;
    v89 = sub_100524B84(v105, v86);
    sub_10000D5C8(v86, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    v90 = objc_allocWithZone(UICollectionViewDropProposal);
    v91 = (v94 + 8);
    if (v89)
    {
      v92 = [v90 initWithDropOperation:1];
    }

    else
    {
      v92 = [v90 initWithDropOperation:2 intent:2];
    }

    v61 = v92;
    sub_10000D5C8(v88, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    sub_10000D5C8(v111, type metadata accessor for AppNavigationSidebarController.Item);
    (*v91)(v101, v110);
  }

  return v61;
}

id sub_1001561B8(void *a1, uint64_t a2, SEL *a3)
{
  if ([v3 isEditing])
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v22 == 2)
  {
    return 0;
  }

  if ((v22 & 1) == 0)
  {
    return 0;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v7 = [a1 cellForItemAtIndexPath:isa];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_allocWithZone(UIDragPreviewParameters) init];
  v9 = [v7 contentView];
  [v9 *a3];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [objc_opt_self() bezierPathWithRoundedRect:v11 cornerRadius:{v13, v15, v17, 16.0}];
  [v8 setVisiblePath:v18];

  v19 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor:v19];

  return v8;
}

id sub_1001563C8(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = sub_1001561B8(v12, v11, a5);

  (*(v9 + 8))(v11, v8);

  return v14;
}

BOOL sub_1001564EC(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {

    return sub_10002BA54();
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = UIViewController.forPresenting.getter();
        sub_1000065A8(0, &qword_100AD4C80);
        v9 = static NSObject.== infix(_:_:)();

        v10 = v9 ^ 1;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      sub_1000082B4(a2, v19, &qword_100AD13D0);
      v11 = v20;
      if (v20)
      {
        v12 = sub_10000CA14(v19, v20);
        v13 = *(v11 - 8);
        __chkstk_darwin(v12);
        v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v15);
        v16 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v13 + 8))(v15, v11);
        sub_10000BA7C(v19);
      }

      else
      {
        v16 = 0;
      }

      v17 = type metadata accessor for AppNavigationSidebarController(0);
      v18.receiver = v2;
      v18.super_class = v17;
      v10 = objc_msgSendSuper2(&v18, "canPerformAction:withSender:", a1, v16);
      swift_unknownObjectRelease();
    }

    return v10 & 1;
  }
}

uint64_t sub_1001567B0(void *a1)
{
  v3 = type metadata accessor for Font.TextStyle();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MergeableJournalAttributes.Icon();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = type metadata accessor for JournalMembershipBadge();
  __chkstk_darwin(v37);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for JournalSidebarViewModel(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    v36 = v17;
    [a1 setAttributes:5];
    if ([a1 propertyList])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v44[0] = v42;
    v44[1] = v43;
    if (*(&v43 + 1))
    {
      result = swift_dynamicCast();
      if (result)
      {
        sub_10015194C(v41, v13);
        if ((*(v15 + 48))(v13, 1, v14) == 1)
        {
          return sub_100004F84(v13, &unk_100AD4400);
        }

        else
        {
          v20 = v36;
          sub_10001DAC8(v13, v36, type metadata accessor for JournalSidebarViewModel);
          v21 = *(v20 + 16);
          v22 = sub_1005215F4();
          v24 = v23;
          (*(v6 + 16))(v8, v20 + *(v14 + 28), v5);
          if ((*(v6 + 88))(v8, v5) == enum case for MergeableJournalAttributes.Icon.emoji(_:))
          {
            (*(v6 + 96))(v8, v5);
            v25 = *v8;
            v26 = v8[1];
          }

          else
          {
            (*(v6 + 8))(v8, v5);
            v25 = 0;
            v26 = 0;
          }

          *v10 = v21;
          *(v10 + 1) = v22;
          *(v10 + 2) = v24;
          *(v10 + 3) = v25;
          *(v10 + 4) = v26;
          v10[40] = 1;
          v28 = v37;
          v27 = v38;
          *&v44[0] = 0x4030000000000000;
          v29 = enum case for Font.TextStyle.footnote(_:);
          v30 = v40;
          v31 = *(v39 + 104);
          v31(v38, enum case for Font.TextStyle.footnote(_:), v40);
          sub_10009BA68();
          ScaledMetric.init(wrappedValue:relativeTo:)();
          v39 = *(v28 + 36);
          *&v44[0] = 0x4038000000000000;
          v31(v27, v29, v30);
          ScaledMetric.init(wrappedValue:relativeTo:)();
          *&v44[0] = 0x4040000000000000;
          v31(v27, v29, v30);
          ScaledMetric.init(wrappedValue:relativeTo:)();
          v32 = [objc_opt_self() currentTraitCollection];
          v33 = sub_1003AC4EC(v32);

          sub_10000D5C8(v10, type metadata accessor for JournalMembershipBadge);
          [a1 setImage:v33];

          v34 = v36;
          v35 = String._bridgeToObjectiveC()();
          [a1 setTitle:v35];

          [a1 setAttributes:0];
          return sub_10000D5C8(v34, type metadata accessor for JournalSidebarViewModel);
        }
      }
    }

    else
    {
      return sub_100004F84(v44, &qword_100AD13D0);
    }
  }

  else
  {
    v18 = type metadata accessor for AppNavigationSidebarController(0);
    v45.receiver = v1;
    v45.super_class = v18;
    return objc_msgSendSuper2(&v45, "validateCommand:", a1);
  }

  return result;
}

void sub_100156E40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = sub_1000F24EC(&unk_100AD4BA0);
    (*(*(v9 - 8) + 56))(v8, a4, 2, v9);
    v10 = a1;
    sub_1002E5234(v8, 0);
    swift_unknownObjectRelease();
    sub_10000D5C8(v8, type metadata accessor for SceneSplitViewController.ContentType);
  }

  else
  {
    v11 = a1;
  }

  sub_10002CCF8(0);
}

void sub_100156F78(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v10 - 8) + 56))(v9, a4, 2, v10);
    v11 = sub_1000F24EC(&unk_100AD4BA0);
    (*(*(v11 - 8) + 56))(v9, 0, 2, v11);
    v12 = a3;
    v13 = a1;
    sub_1002E5234(v9, 0);
    swift_unknownObjectRelease();
    sub_10000D5C8(v9, type metadata accessor for SceneSplitViewController.ContentType);
  }

  else
  {
    v14 = a3;
    v15 = a1;
  }

  sub_10002CCF8(0);
}

uint64_t sub_100157100(void *a1)
{
  v2 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v2 - 8);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v29[0] = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AD4400);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for JournalSidebarViewModel(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 propertyList])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (!*(&v31 + 1))
  {
    v19 = &qword_100AD13D0;
    v20 = v32;
    return sub_100004F84(v20, v19);
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  sub_10015194C(v29[1], v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = &unk_100AD4400;
    v20 = v13;
    return sub_100004F84(v20, v19);
  }

  sub_10001DAC8(v13, v17, type metadata accessor for JournalSidebarViewModel);
  sub_10001C850(&v17[*(v14 + 24)], v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v21 = sub_1000F24EC(&qword_100AD47A0);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v7, 2, v21))
  {
    sub_10000D5C8(v7, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    if (qword_100ACF990 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100AD47F0);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Trying to display a custom journal, but found an invalid membership type!", v26, 2u);
    }
  }

  else
  {
    v27 = v29[0];
    (*(v29[0] + 32))(v10, v7, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      (*(v27 + 16))(v4, v10, v8);
      (*(v22 + 56))(v4, 0, 2, v21);
      v28 = sub_1000F24EC(&unk_100AD4BA0);
      (*(*(v28 - 8) + 56))(v4, 0, 2, v28);
      sub_1002E5234(v4, 0);
      swift_unknownObjectRelease();
      sub_10000D5C8(v4, type metadata accessor for SceneSplitViewController.ContentType);
    }

    sub_10002CCF8(0);
    (*(v27 + 8))(v10, v8);
  }

  return sub_10000D5C8(v17, type metadata accessor for JournalSidebarViewModel);
}

unint64_t sub_100157734()
{
  result = sub_1001577B8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppNavigationSidebarController.Item(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001577B8()
{
  result = qword_100AD49D8;
  if (!qword_100AD49D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AD49D8);
  }

  return result;
}

uint64_t sub_1001578A8()
{
  sub_1000F24EC(&unk_100AD4C50);
  v0 = type metadata accessor for SidebarPreferences.Brick();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100940050;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for SidebarPreferences.Brick.insights(_:), v0);
  result = (v6)(v5 + v2, enum case for SidebarPreferences.Brick.places(_:), v0);
  off_100AD4808 = v4;
  return result;
}

uint64_t sub_1001579B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Tips.Status();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD4CD0);
  v4[7] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AD4CD8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AD4CE0);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v9;
  v4[17] = v8;

  return _swift_task_switch(sub_100157BC4, v9, v8);
}

uint64_t sub_100157BC4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_10015CEB4();
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 160) = enum case for Tips.Status.available(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 144) = v4;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_100157CE4;
  v6 = *(v0 + 88);
  v7 = *(v0 + 56);

  return AsyncStream.Iterator.next(isolation:)(v7, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_100157CE4()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100157E28, v3, v2);
}

uint64_t sub_100157E28()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_2:
    v4 = *(v0 + 16);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 160);
  v8 = *(v0 + 40);
  (*(v3 + 32))(*(v0 + 48), v1, v2);
  (*(v3 + 104))(v8, v7, v2);
  sub_1001588B0(&qword_100AD4CE8, &type metadata accessor for Tips.Status);
  LOBYTE(v7) = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);
  if (v7)
  {
    v9(*(v0 + 48), *(v0 + 24));
  }

  else
  {
    v12 = [*(v0 + 16) isBeingDismissed];
    v9(v10, v11);
    if ((v12 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v13 = static MainActor.shared.getter();
  *(v0 + 144) = v13;
  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  *v14 = v0;
  v14[1] = sub_100157CE4;
  v15 = *(v0 + 88);
  v16 = *(v0 + 56);

  return AsyncStream.Iterator.next(isolation:)(v16, v13, &protocol witness table for MainActor, v15);
}

uint64_t sub_1001580E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Tips.Status();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD4CD0);
  v4[7] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AD4CD8);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AD4CE0);
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v9;
  v4[17] = v8;

  return _swift_task_switch(sub_1001582EC, v9, v8);
}

uint64_t sub_1001582EC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_10009F12C();
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 160) = enum case for Tips.Status.available(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 144) = v4;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_10015840C;
  v6 = *(v0 + 88);
  v7 = *(v0 + 56);

  return AsyncStream.Iterator.next(isolation:)(v7, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_10015840C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100158550, v3, v2);
}

uint64_t sub_100158550()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_2:
    v4 = *(v0 + 16);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 160);
  v8 = *(v0 + 40);
  (*(v3 + 32))(*(v0 + 48), v1, v2);
  (*(v3 + 104))(v8, v7, v2);
  sub_1001588B0(&qword_100AD4CE8, &type metadata accessor for Tips.Status);
  LOBYTE(v7) = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = *(v0 + 48);
  v11 = *(v0 + 24);
  if (v7)
  {
    v9(*(v0 + 48), *(v0 + 24));
  }

  else
  {
    v12 = [*(v0 + 16) isBeingDismissed];
    v9(v10, v11);
    if ((v12 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v13 = static MainActor.shared.getter();
  *(v0 + 144) = v13;
  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  *v14 = v0;
  v14[1] = sub_10015840C;
  v15 = *(v0 + 88);
  v16 = *(v0 + 56);

  return AsyncStream.Iterator.next(isolation:)(v16, v13, &protocol witness table for MainActor, v15);
}

uint64_t sub_100158808@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(sub_1000F24EC(&qword_100AD4C10) + 48);
  v6 = *(sub_1000F24EC(&qword_100AD4C48) + 48);
  v7 = type metadata accessor for SidebarPreferences.Brick();
  result = (*(*(v7 - 8) + 16))(a2, &a1[v5], v7);
  *(a2 + v6) = v4;
  return result;
}

uint64_t sub_1001588B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100158928(uint64_t a1, int a2, void *a3)
{
  v95 = a3;
  v92 = a2;
  v75 = a1;
  v3 = sub_1000F24EC(&qword_100AD4C10);
  v82 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v73[-v4];
  v6 = sub_1000F24EC(&qword_100AD4C18);
  __chkstk_darwin(v6 - 8);
  v8 = &v73[-v7];
  v74 = type metadata accessor for SidebarPreferences.Brick();
  v81 = *(v74 - 8);
  v9 = __chkstk_darwin(v74);
  v94 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v80 = &v73[-v11];
  v12 = sub_1000F24EC(&qword_100AD4C20);
  v13 = __chkstk_darwin(v12 - 8);
  v90 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v88 = &v73[-v15];
  v16 = sub_1000F24EC(&qword_100AD4C28);
  __chkstk_darwin(v16 - 8);
  v87 = &v73[-v17];
  v89 = sub_1000F24EC(&qword_100AD4BD8);
  v18 = *(v89 - 8);
  __chkstk_darwin(v89);
  v91 = &v73[-v19];
  v20 = sub_1000F24EC(&qword_100AD4C00);
  __chkstk_darwin(v20 - 8);
  v22 = &v73[-v21];
  v93 = sub_1000F24EC(&qword_100AD4C08) - 8;
  __chkstk_darwin(v93);
  v24 = &v73[-v23];
  v25 = sub_1000F24EC(&qword_100AD4C30);
  v26 = v25 - 8;
  __chkstk_darwin(v25);
  v28 = &v73[-v27];
  v29 = v74;
  sub_1000082B4(v75, v24, &qword_100AD4C08);
  sub_1000BCC7C(v24, v22);
  (*(v18 + 32))(v91, v22, v89);
  v86 = *(swift_getOpaqueTypeConformance2() + 8);
  dispatch thunk of Sequence.makeIterator()();
  v77 = *(sub_1000F24EC(&qword_100AD4C38) + 36);
  *&v28[v77] = 0;
  v30 = &v24[*(v93 + 52)];
  v31 = *v30;
  v32 = v30[1];
  v33 = *(v26 + 52);
  v91 = v28;
  v34 = &v28[v33];
  v78 = v32;
  v79 = v31;
  *v34 = v31;
  v34[1] = v32;
  v35 = v82;
  v84 = 0;
  v85 = (v81 + 48);
  v93 = v81 + 32;
  v82 += 6;
  v83 = (v35 + 7);
  v76 = (v81 + 8);
  while (1)
  {
    sub_1000F24EC(&qword_100AD4C40);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of IteratorProtocol.next()();
    if ((*v85)(v8, 1, v29) == 1)
    {
      sub_100004F84(v8, &qword_100AD4C18);
      v37 = v88;
      (*v83)(v88, 1, 1, v3);
      v38 = v87;
    }

    else
    {
      v39 = *v93;
      v40 = v80;
      (*v93)(v80, v8, v29);
      v41 = *(v3 + 48);
      v42 = v84;
      *v5 = v84;
      v39(v5 + v41, v40, v29);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      v38 = v87;
      v37 = v88;
      if (v43)
      {
        goto LABEL_22;
      }

      v84 = v44;
      *&v91[v77] = v44;
      sub_100021CEC(v5, v37, &qword_100AD4C10);
      (*v83)(v37, 0, 1, v3);
    }

    v45 = v37;
    v46 = v90;
    sub_100021CEC(v45, v90, &qword_100AD4C20);
    v47 = 1;
    if ((*v82)(v46, 1, v3) != 1)
    {
      sub_100021CEC(v90, v5, &qword_100AD4C10);
      v79(v5);
      sub_100004F84(v5, &qword_100AD4C10);
      v47 = 0;
    }

    v48 = sub_1000F24EC(&qword_100AD4C48);
    (*(*(v48 - 8) + 56))(v38, v47, 1, v48);
    v49 = sub_1000F24EC(&qword_100AD4C48);
    if ((*(*(v49 - 8) + 48))(v38, 1, v49) == 1)
    {
      sub_100004F84(v75, &qword_100AD4C08);
      return sub_100004F84(v91, &qword_100AD4C30);
    }

    v50 = v8;
    v51 = v5;
    v52 = v3;
    v53 = *(v49 + 48);
    v54 = v94;
    v55 = *v93;
    v56 = v38;
    v57 = v38;
    v58 = v29;
    (*v93)(v94, v56, v29);
    v59 = *&v57[v53];
    v60 = *v95;
    v62 = sub_100361F70(v54);
    v63 = v60[2];
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      break;
    }

    v66 = v61;
    if (v60[3] >= v65)
    {
      if ((v92 & 1) == 0)
      {
        sub_100821D9C();
      }
    }

    else
    {
      sub_10081CD58(v65, v92 & 1);
      v67 = sub_100361F70(v94);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_24;
      }

      v62 = v67;
    }

    v69 = *v95;
    if (v66)
    {
      v36 = *(v69[7] + 8 * v62);
      v29 = v58;
      (*v76)(v94, v58);
      *(v69[7] + 8 * v62) = v36;
    }

    else
    {
      v69[(v62 >> 6) + 8] |= 1 << v62;
      v29 = v58;
      v55(v69[6] + *(v81 + 72) * v62, v94, v58);
      *(v69[7] + 8 * v62) = v59;
      v70 = v69[2];
      v43 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v43)
      {
        goto LABEL_23;
      }

      v69[2] = v71;
    }

    v92 = 1;
    v3 = v52;
    v5 = v51;
    v8 = v50;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100159268(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v12 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v12 - 8);
  v14 = &v21[-v13];
  type metadata accessor for TipUIPopoverViewController();
  v23 = a5;
  v24 = a6();
  sub_100086C04(v22, v21);

  v15 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
  if (a1)
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = v15;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v17;
    sub_1003E9628(0, 0, v14, a8, v19);
  }

  sub_10000BA7C(v22);
  return v15;
}

uint64_t sub_100159428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100032EC8;

  return sub_1001579B8(a1, a2, a3, a5);
}

uint64_t sub_1001594E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_100032ECC;

  return sub_1001580E0(a1, a2, a3, a5);
}

id sub_1001595B4(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsPopoverController] = 0;
  *&v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_tipsTask] = 0;
  *&v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1000F24EC(&qword_100AD48A0);
  UIViewController.ViewLoading.init()();
  sub_1000065A8(0, &qword_100AD43B0);
  UIViewController.ViewLoading.init()();
  v5 = &v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_headerItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v5 = String.init(localized:table:bundle:locale:comment:)();
  v5[1] = v6;
  type metadata accessor for AppNavigationSidebarController.Item(0);
  swift_storeEnumTagMultiPayload();
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC7Journal30AppNavigationSidebarController____lazy_storage___appStorage] = 1;
  v7 = OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_activeDrag;
  v8 = type metadata accessor for AppNavigationSidebarController.DragState(0);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AppNavigationSidebarController(0);
  return objc_msgSendSuper2(&v10, "initWithCollectionViewLayout:", a1);
}

id sub_100159808(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v3 = v2;
  v117 = a1;
  v105 = type metadata accessor for SidebarPreferences.Brick();
  v111 = *(v105 - 1);
  v5 = __chkstk_darwin(v105);
  v103 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = v6;
  __chkstk_darwin(v5);
  v110 = &v97 - v7;
  v8 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v100 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v104 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v10;
  __chkstk_darwin(v9);
  v106 = &v97 - v11;
  v12 = sub_1000F24EC(&qword_100AD4B90);
  __chkstk_darwin(v12 - 8);
  v14 = &v97 - v13;
  v15 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v16 = *(v15 - 8);
  v115 = v15;
  v116 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v99 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v113 = &v97 - v20;
  __chkstk_darwin(v19);
  v114 = &v97 - v21;
  v22 = type metadata accessor for Locale();
  __chkstk_darwin(v22 - 8);
  v24 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v25 - 8);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000065A8(0, &qword_100AD4420);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v107 = v27;
  v108 = v24;
  String.init(localized:table:bundle:locale:comment:)();
  v29 = String._bridgeToObjectiveC()();
  v112 = objc_opt_self();
  v30 = [v112 systemImageNamed:v29];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = v28;
  v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if (!*(a2 + 16))
  {
    v34 = [v117 traitCollection];
    v35 = [v34 userInterfaceIdiom];

    if (v35 == 5)
    {
      v36 = swift_allocObject();
      *(v36 + 16) = v31;
      v37 = objc_opt_self();
      v122 = sub_10015D1C8;
      v123 = v36;
      aBlock = _NSConcreteStackBlock;
      v119 = 1107296256;
      v120 = sub_1002D1F68;
      v121 = &unk_100A5E488;
      v38 = _Block_copy(&aBlock);

      v39 = [v37 configurationWithIdentifier:0 previewProvider:0 actionProvider:v38];

      _Block_release(v38);
      return v39;
    }

    return 0;
  }

  v32 = v117;
  type metadata accessor for IndexPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v98 = v3;
  static UIViewController.ViewLoading.subscript.getter();

  v33 = aBlock;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v116 + 48))(v14, 1, v115) != 1)
  {
    v97 = v31;
    v41 = v114;
    sub_10001DAC8(v14, v114, type metadata accessor for AppNavigationSidebarController.Item);
    v42 = v113;
    sub_10001C850(v41, v113, type metadata accessor for AppNavigationSidebarController.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {

        sub_10000D5C8(v41, type metadata accessor for AppNavigationSidebarController.Item);
        v76 = v42;
LABEL_17:
        sub_10000D5C8(v76, type metadata accessor for AppNavigationSidebarController.Item);
        return 0;
      }

      v44 = v110;
      v45 = v111;
      v46 = *(v111 + 32);
      v47 = v105;
      v46(v110, v42, v105);
      if (([v98 isEditing] & 1) == 0)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v77 = String.init(localized:table:bundle:locale:comment:)();
        v115 = v78;
        v116 = v77;
        v79 = v44;
        v80 = String._bridgeToObjectiveC()();
        v113 = [v112 systemImageNamed:v80];

        v81 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v82 = v103;
        (*(v45 + 16))(v103, v79, v47);
        v83 = (*(v45 + 80) + 24) & ~*(v45 + 80);
        v84 = swift_allocObject();
        *(v84 + 16) = v81;
        v46((v84 + v83), v82, v47);
        v85 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_1000065A8(0, &unk_100AD4D00);
        sub_1000F24EC(&unk_100AD4780);
        v86 = swift_allocObject();
        *(v86 + 16) = xmmword_100941D50;
        *(v86 + 32) = v85;
        v87 = v85;
        v88._countAndFlagsBits = 0;
        v88._object = 0xE000000000000000;
        v125.value.super.isa = 0;
        v125.is_nil = 0;
        isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v88, 0, v125, 1, 0xFFFFFFFFFFFFFFFFLL, v86, v96).super.super.isa;
        v90 = swift_allocObject();
        v91 = v97;
        v90[2] = v32;
        v90[3] = v91;
        v90[4] = isa;
        v90[5] = v87;
        v92 = objc_opt_self();
        v122 = sub_10015D024;
        v123 = v90;
        aBlock = _NSConcreteStackBlock;
        v119 = 1107296256;
        v120 = sub_1002D1F68;
        v121 = &unk_100A5E398;
        v93 = _Block_copy(&aBlock);
        v94 = v32;

        v95 = [v92 configurationWithIdentifier:0 previewProvider:0 actionProvider:v93];

        _Block_release(v93);
        (*(v111 + 8))(v110, v47);
        sub_10000D5C8(v41, type metadata accessor for AppNavigationSidebarController.Item);
        return v95;
      }

      (*(v45 + 8))(v44, v47);
    }

    else
    {
      v48 = v42;
      v49 = v106;
      v50 = sub_10001DAC8(v48, v106, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      if (sub_1005251D0(v50))
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v51 = String.init(localized:table:bundle:locale:comment:)();
        v110 = v52;
        v111 = v51;
        v53 = String._bridgeToObjectiveC()();
        v105 = [v112 systemImageNamed:v53];

        v54 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v117 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType;
        v55 = v104;
        sub_10001C850(v49, v104, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        v56 = v99;
        sub_10001C850(v41, v99, type metadata accessor for AppNavigationSidebarController.Item);
        v57 = *(v100 + 80);
        v58 = v49;
        v59 = (v57 + 24) & ~v57;
        v115 = v59 + v101;
        v113 = (v57 | 7);
        v60 = (v59 + v101 + *(v116 + 80)) & ~*(v116 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = v54;
        sub_10001DAC8(v55, v61 + v59, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        sub_10001DAC8(v56, v61 + v60, type metadata accessor for AppNavigationSidebarController.Item);
        v116 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v62 = String._bridgeToObjectiveC()();
        v63 = [v112 systemImageNamed:v62];

        v64 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_10001C850(v58, v55, v117);
        v65 = swift_allocObject();
        *(v65 + 16) = v64;
        sub_10001DAC8(v55, v65 + v59, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        v66 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_1000065A8(0, &unk_100AD4D00);
        sub_1000F24EC(&unk_100AD4780);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_100941D50;
        v68 = v116;
        *(v67 + 32) = v116;
        v69 = v68;
        v70._countAndFlagsBits = 0;
        v70._object = 0xE000000000000000;
        v124.value.super.isa = 0;
        v124.is_nil = 0;
        v71 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v70, 0, v124, 1, 0xFFFFFFFFFFFFFFFFLL, v67, v96).super.super.isa;
        v72 = swift_allocObject();
        *(v72 + 16) = v66;
        *(v72 + 24) = v71;
        v73 = objc_opt_self();
        v122 = sub_10015D1C0;
        v123 = v72;
        aBlock = _NSConcreteStackBlock;
        v119 = 1107296256;
        v120 = sub_1002D1F68;
        v121 = &unk_100A5E438;
        v74 = _Block_copy(&aBlock);

        v75 = [v73 configurationWithIdentifier:0 previewProvider:0 actionProvider:v74];

        _Block_release(v74);

        sub_10000D5C8(v58, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        sub_10000D5C8(v114, type metadata accessor for AppNavigationSidebarController.Item);
        return v75;
      }

      sub_10000D5C8(v49, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    }

    v76 = v41;
    goto LABEL_17;
  }

  sub_100004F84(v14, &qword_100AD4B90);
  return 0;
}