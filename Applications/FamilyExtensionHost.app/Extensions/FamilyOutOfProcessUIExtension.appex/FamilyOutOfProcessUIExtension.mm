void sub_100001BD8()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ConfirmChildAgeViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView:v1];

  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [v0 tableView];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 setRowHeight:UITableViewAutomaticDimension];

  v6 = [v0 tableView];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  [v7 setBackgroundColor:v8];

  v9 = [v0 tableView];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  sub_1000065A8(0, &qword_10002E5E0, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_10001BD00();
  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  v13 = [v0 tableView];
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v13;
  [v13 setDelegate:v0];

  v15 = [v0 tableView];
  if (v15)
  {
    v16 = v15;
    [v15 setDataSource:v0];

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_100001E70()
{
  v1 = sub_10001B3D0();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10001BCF0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = [objc_opt_self() accessoryButton];
  v6 = sub_10001BD00();
  v7 = [objc_opt_self() bundleWithIdentifier:v6];

  v8 = [objc_opt_self() flowWithBundle:v7];
  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  v9 = sub_10001BD00();

  [v5 setTitle:v9 forState:0];

  [v5 addTarget:v0 action:"showUpdateChildBdayLink" forControlEvents:64];
  return v5;
}

uint64_t sub_100002070(char a1)
{
  v3 = (*(*(sub_100003C14(&qword_10002EE00, &qword_10001CE00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = type metadata accessor for ConfirmChildAgeViewController();
  v12.receiver = v1;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  v7 = sub_10001BE20();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BDF0();

  v9 = sub_10001BDE0();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;

  sub_100016744(0, 0, v5, &unk_10001CE10, v10);
}

uint64_t sub_1000021E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_10001B820();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_10001BDF0();
  v4[9] = sub_10001BDE0();
  v9 = sub_10001BDD0();
  v4[10] = v9;
  v4[11] = v8;

  return _swift_task_switch(sub_1000022DC, v9, v8);
}

uint64_t sub_1000022DC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_ageRangeContext;
    (*(v0[7] + 104))(v0[8], enum case for AgeRangeAnalyticsOnboardingView.chooseHowToShareChildTeenVersion(_:), v0[6]);
    v5 = async function pointer to static OnboardingAnalyticsLogger.logNavigationEvent(ageRangeContext:view:)[1];
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_100002410;
    v7 = v0[8];

    return static OnboardingAnalyticsLogger.logNavigationEvent(ageRangeContext:view:)(v3 + v4, v7);
  }

  else
  {
    v8 = v0[9];

    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100002410()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 88);
  v7 = *(v1 + 80);

  return _swift_task_switch(sub_100002594, v7, v6);
}

uint64_t sub_100002594()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

id sub_100002718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConfirmChildAgeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConfirmChildAgeViewController()
{
  result = qword_10002E4B0;
  if (!qword_10002E4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002840()
{
  result = sub_10001B6A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000028F4()
{
  v0 = sub_10001B6A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_viewModel);
    v8 = *(Strong + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_flowStore);

    v9 = sub_10001B720();

    (*(v1 + 16))(v4, &v6[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_ageRangeContext], v0);
    v10 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_sharedState;
    v11 = *&v6[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_sharedState];
    v12 = objc_allocWithZone(type metadata accessor for ShareAgeRangeViewController());

    sub_1000196B4(v8, v9, v4, v11);
    v14 = v13;

    v15 = *&v14[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_sharedState];
    *&v14[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_sharedState] = *&v6[v10];

    v16 = [v6 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v14 animated:1];

      v18 = v14;
    }

    else
    {
      v18 = v6;
      v6 = v14;
    }
  }
}

uint64_t sub_100002AE8()
{
  v0 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_flowStore);
    v6 = result;
    sub_10001B580();
    v7 = v5;
    v8 = sub_10001B570();
    sub_10001B640();

    v9 = sub_10001BE20();
    (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
    sub_10001BDF0();
    v10 = v6;
    v11 = sub_10001BDE0();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    sub_100016744(0, 0, v3, &unk_10001D288, v12);
  }

  return result;
}

uint64_t sub_100002C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10001B780();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_10001BDF0();
  v4[6] = sub_10001BDE0();
  v9 = sub_10001BDD0();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_100002D78, v9, v8);
}

uint64_t sub_100002D78()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_ageRangeContext;
  (*(v0[4] + 104))(v0[5], enum case for OnboardingAnalyticsLogger.AnalyticEventType.close(_:), v0[3]);
  v3 = async function pointer to static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100002E40;
  v5 = v0[5];

  return static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(v1 + v2, v5);
}

uint64_t sub_100002E40()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 64);
  v7 = *(v1 + 56);

  return _swift_task_switch(sub_100002FC4, v7, v6);
}

uint64_t sub_100002FC4()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100003034(void *a1)
{
  v3 = *(*(sub_100003C14(&qword_10002E580, &qword_10001CDC0) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v64 - v7;
  v9 = sub_10001B9C0();
  v68 = *(v9 - 8);
  v10 = *(v68 + 64);
  __chkstk_darwin(v9);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_10001B880();
  v72 = *(v73 - 8);
  v13 = *(v72 + 64);
  __chkstk_darwin(v73);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001BD00();
  isa = sub_10001B3E0().super.isa;
  v71 = [a1 dequeueReusableCellWithIdentifier:v16 forIndexPath:isa];

  v18 = *(v1 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_viewModel);

  v19 = sub_10001B400();
  v20 = sub_10001B720();

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *(v20 + 16))
  {
    v67 = v9;
    (*(v72 + 16))(v15, v20 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v19, v73);

    sub_10001BEB0();
    v22 = sub_10001B870();
    v70 = v15;
    if (v23 >> 60 == 15)
    {
      sub_10001B840();
      v24 = sub_10001B500();
      v25 = *(v24 - 8);
      v26 = *(v25 + 48);
      v27 = v26(v8, 1, v24);
      sub_100005DE8(v8, &qword_10002E580, &qword_10001CDC0);
      if (v27 != 1)
      {
        sub_10001B840();
        if (v26(v6, 1, v24) == 1)
        {
          sub_100005DE8(v6, &qword_10002E580, &qword_10001CDC0);
        }

        else
        {
          sub_10001B4F0();
          (*(v25 + 8))(v6, v24);
        }

        goto LABEL_9;
      }
    }

    else
    {
      sub_100003C5C(v22, v23);
    }

    v28 = sub_10001B870();
    v30 = v29;
    sub_10001B890();
    sub_100003C5C(v28, v30);
LABEL_9:
    sub_10001B9B0();
    v31 = sub_10001B980();
    sub_10001B970();
    v31(v74, 0);
    v32 = sub_10001B980();
    sub_10001B960();
    v32(v74, 0);
    v33 = objc_opt_self();
    v34 = [v33 preferredFontForTextStyle:UIFontTextStyleHeadline];
    sub_100003C14(&qword_10002E588, &qword_10001CDC8);
    inited = swift_initStackObject();
    v69 = xmmword_10001CD60;
    *(inited + 16) = xmmword_10001CD60;
    *(inited + 32) = NSFontAttributeName;
    v36 = sub_1000065A8(0, &qword_10002E590, UIFont_ptr);
    *(inited + 64) = v36;
    *(inited + 40) = v34;
    v37 = NSFontAttributeName;
    v66 = v34;
    sub_100005C38(inited);
    swift_setDeallocating();
    sub_100005DE8(inited + 32, &qword_10002E598, &qword_10001CDD0);
    sub_10001B850();
    v38 = objc_allocWithZone(NSAttributedString);
    v39 = sub_10001BD00();

    type metadata accessor for Key(0);
    v64[1] = v40;
    sub_100005E94(&qword_10002E5A0, type metadata accessor for Key);
    v41 = sub_10001BCB0().super.isa;

    v42 = [v38 initWithString:v39 attributes:v41];

    v65 = v42;
    sub_10001B950();
    v43 = [v33 preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v44 = swift_initStackObject();
    *(v44 + 16) = v69;
    *(v44 + 32) = v37;
    *(v44 + 64) = v36;
    *(v44 + 40) = v43;
    v45 = v43;
    sub_100005C38(v44);
    swift_setDeallocating();
    sub_100005DE8(v44 + 32, &qword_10002E598, &qword_10001CDD0);
    v46 = [objc_opt_self() mainBundle];
    v63._countAndFlagsBits = 0xE000000000000000;
    v75._object = 0x800000010001DB60;
    v75._countAndFlagsBits = 0xD00000000000001BLL;
    v76.value._countAndFlagsBits = 0;
    v76.value._object = 0;
    v47.super.isa = v46;
    v77._countAndFlagsBits = 0;
    v77._object = 0xE000000000000000;
    sub_10001B300(v75, v76, v47, v77, v63);

    sub_100003C14(&qword_10002E5A8, &qword_10001CDD8);
    v48 = swift_allocObject();
    *(v48 + 16) = v69;
    v49 = v70;
    v50 = sub_10001B860();
    *(v48 + 56) = &type metadata for Int;
    *(v48 + 64) = &protocol witness table for Int;
    *(v48 + 32) = v50;
    sub_10001BD40();

    v51 = objc_allocWithZone(NSAttributedString);
    v52 = sub_10001BD00();

    v53 = sub_10001BCB0().super.isa;

    v54 = [v51 initWithString:v52 attributes:v53];

    v55 = v54;
    sub_10001B9A0();
    sub_10001B940();
    sub_10001B990();
    v56 = v67;
    v74[3] = v67;
    v74[4] = &protocol witness table for UIListContentConfiguration;
    v57 = sub_100005D74(v74);
    v58 = v68;
    (*(v68 + 16))(v57, v12, v56);
    v59 = v71;
    sub_10001BEA0();
    v60 = objc_opt_self();
    v61 = v59;
    v62 = [v60 secondarySystemBackgroundColor];
    [v61 setBackgroundColor:v62];

    (*(v58 + 8))(v12, v56);
    (*(v72 + 8))(v49, v73);
    return v61;
  }

  __break(1u);
  return result;
}

uint64_t sub_100003C14(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003C5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100003C70(a1, a2);
  }

  return a1;
}

uint64_t sub_100003C70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100003CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v10 = sub_10001BC80();
  v8[13] = v10;
  v11 = *(v10 - 8);
  v8[14] = v11;
  v12 = *(v11 + 64) + 15;
  v8[15] = swift_task_alloc();
  v13 = sub_10001BCA0();
  v8[16] = v13;
  v14 = *(v13 - 8);
  v8[17] = v14;
  v15 = *(v14 + 64) + 15;
  v8[18] = swift_task_alloc();
  v16 = sub_10001B6A0();
  v8[19] = v16;
  v17 = *(v16 - 8);
  v8[20] = v17;
  v18 = *(v17 + 64) + 15;
  v8[21] = swift_task_alloc();
  v8[22] = sub_10001BDF0();
  v8[23] = sub_10001BDE0();
  sub_10001B730();
  v19 = async function pointer to static ConfirmChildAgeViewModel.create(childInfoService:)[1];
  v20 = swift_task_alloc();
  v8[24] = v20;
  *v20 = v8;
  v20[1] = sub_100003E9C;

  return static ConfirmChildAgeViewModel.create(childInfoService:)(a4);
}

uint64_t sub_100003E9C(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v8 = *v1;
  *(*v1 + 200) = a1;

  v6 = sub_10001BDD0();

  return _swift_task_switch(sub_100003FE0, v6, v5);
}

uint64_t sub_100003FE0()
{
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v25 = v0[17];
  v26 = v0[16];
  v21 = v0[18];
  v22 = v0[15];
  v24 = v0[14];
  v6 = v0[12];
  v23 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[9];

  (*(v4 + 16))(v3, v7, v5);
  v10 = objc_allocWithZone(type metadata accessor for ConfirmChildAgeViewController());

  v11 = v9;

  v12 = sub_100004FE0(v11, v1, v8, v3);

  sub_1000065A8(0, &qword_10002E668, OS_dispatch_queue_ptr);
  v13 = sub_10001BEC0();
  v14 = swift_allocObject();
  *(v14 + 16) = v6;
  *(v14 + 24) = v12;
  v0[6] = sub_1000064DC;
  v0[7] = v14;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100004458;
  v0[5] = &unk_1000292B0;
  v15 = _Block_copy(v0 + 2);
  v16 = v6;
  v17 = v12;
  sub_10001BC90();
  v0[8] = &_swiftEmptyArrayStorage;
  sub_100005E94(&qword_10002E670, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003C14(&qword_10002E678, &qword_10001D278);
  sub_1000064FC();
  sub_10001BF30();
  sub_10001BED0();
  _Block_release(v15);

  (*(v24 + 8))(v22, v23);
  (*(v25 + 8))(v21, v26);
  v18 = v0[7];

  v19 = v0[1];

  return v19();
}

id sub_1000042CC(void *a1, void *a2)
{
  [a1 addChildViewController:a2];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  result = [a2 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  [v5 addSubview:result];

  result = [a2 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v7 setFrame:{v10, v12, v14, v16}];
  result = [a2 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v17 = result;
  [result setAutoresizingMask:18];

  return [a2 didMoveToParentViewController:a1];
}

uint64_t sub_100004458(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10000449C(uint64_t a1, id *a2)
{
  result = sub_10001BD10();
  *a2 = 0;
  return result;
}

uint64_t sub_100004514(uint64_t a1, id *a2)
{
  v3 = sub_10001BD20();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004594@<X0>(void *a1@<X8>)
{
  sub_10001BD30();
  v2 = sub_10001BD00();

  *a1 = v2;
  return result;
}

uint64_t sub_1000045D8()
{
  v1 = *v0;
  sub_10001BD30();
  v2 = sub_10001BD90();

  return v2;
}

uint64_t sub_100004614()
{
  v1 = *v0;
  sub_10001BD30();
  sub_10001BD70();
}

Swift::Int sub_100004668()
{
  v1 = *v0;
  sub_10001BD30();
  sub_10001C020();
  sub_10001BD70();
  v2 = sub_10001C040();

  return v2;
}

uint64_t sub_1000046DC(uint64_t a1)
{
  v2 = sub_100005E94(&qword_10002E628, type metadata accessor for AgeRangeError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100004748(uint64_t a1)
{
  v2 = sub_100005E94(&qword_10002E628, type metadata accessor for AgeRangeError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000047B8(uint64_t a1)
{
  v2 = sub_100005E94(&qword_10002E660, type metadata accessor for AgeRangeError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100004854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10001BD30();
  v6 = v5;
  if (v4 == sub_10001BD30() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10001BFD0();
  }

  return v9 & 1;
}

uint64_t sub_1000048EC(uint64_t a1)
{
  v2 = sub_100005E94(&qword_10002E660, type metadata accessor for AgeRangeError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100004958(uint64_t a1)
{
  v2 = sub_100005E94(&qword_10002E660, type metadata accessor for AgeRangeError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000049C4(void *a1, uint64_t a2)
{
  v4 = sub_100005E94(&qword_10002E660, type metadata accessor for AgeRangeError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100004A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005E94(&qword_10002E660, type metadata accessor for AgeRangeError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100004AF4()
{
  v2 = *v0;
  sub_10001C020();
  sub_10001BCC0();
  return sub_10001C040();
}

void *sub_100004B54@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004B64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10001BD00();

  *a2 = v5;
  return result;
}

uint64_t sub_100004BAC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001BD30();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100004BD8(uint64_t a1)
{
  v2 = sub_100005E94(&qword_10002E5A0, type metadata accessor for Key);
  v3 = sub_100005E94(&qword_10002E608, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100004C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005E94(&qword_10002E660, type metadata accessor for AgeRangeError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

unint64_t sub_100004D18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001C020();
  sub_10001BD70();
  v6 = sub_10001C040();

  return sub_100004E24(a1, a2, v6);
}

unint64_t sub_100004D90(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10001BD30();
  sub_10001C020();
  sub_10001BD70();
  v4 = sub_10001C040();

  return sub_100004EDC(a1, v4);
}

unint64_t sub_100004E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10001BFD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100004EDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10001BD30();
      v9 = v8;
      if (v7 == sub_10001BD30() && v9 == v10)
      {
        break;
      }

      v12 = sub_10001BFD0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_100004FE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10001B3B0();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_flowStore] = a1;
  *&v5[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_viewModel] = a2;
  v14 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_ageRangeContext;
  v15 = sub_10001B6A0();
  v39 = *(v15 - 8);
  v40 = v15;
  v16 = *(v39 + 16);
  v43 = a4;
  v16(&v5[v14], a4);
  *&v5[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29ConfirmChildAgeViewController_sharedState] = a3;
  v17 = a1;

  sub_10001B700();
  sub_10001B6C0();
  sub_10001B6D0();
  v18 = [objc_opt_self() systemBlueColor];
  v44 = [objc_opt_self() configurationWithHierarchicalColor:v18];

  v19 = sub_10001BD00();

  v20 = [objc_opt_self() systemImageNamed:v19];

  if (v20)
  {
    v21 = [v20 imageWithConfiguration:v44];
  }

  else
  {
    v21 = 0;
  }

  v38 = v21;
  sub_10001B6B0();
  v22 = sub_10001BD00();

  v23 = sub_10001BD00();

  v24 = type metadata accessor for ConfirmChildAgeViewController();
  v45.receiver = v5;
  v45.super_class = v24;
  v25 = objc_msgSendSuper2(&v45, "initWithTitle:detailText:icon:adoptTableViewScrollView:", v22, v23, v21, 1);

  v26 = v25;
  v27 = [v26 buttonTray];
  v28 = [objc_opt_self() boldButton];
  sub_10001B6E0();
  v29 = sub_10001BD00();

  [v28 setTitle:v29 forState:0];

  sub_1000065A8(0, &qword_10002EE10, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = sub_10001BF10();
  [v28 addAction:v30 forControlEvents:64];

  [v27 addButton:v28];
  v31 = [v26 buttonTray];

  v32 = [objc_opt_self() linkButton];
  sub_10001B6F0();
  v33 = sub_10001BD00();

  [v32 setTitle:v33 forState:0];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_10001BF10();
  [v32 addAction:v34 forControlEvents:64];

  [v31 addButton:v32];
  v35 = sub_100001E70();
  [v26 setTableFooterView:v35];

  (*(v39 + 8))(v43, v40);
  (*(v41 + 8))(v13, v42);
  return v26;
}

unint64_t sub_100005574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003C14(&qword_10002E5C8, &qword_10001CDF0);
    v3 = sub_10001BF90();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005EDC(v4, &v13, &unk_10002E5D0, &qword_10001CDF8);
      v5 = v13;
      v6 = v14;
      result = sub_100004D18(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005DD8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100005C38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003C14(&qword_10002E5B0, &qword_10001CDE0);
    v3 = sub_10001BF90();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005EDC(v4, &v11, &qword_10002E598, &qword_10001CDD0);
      v5 = v11;
      result = sub_100004D90(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100005DD8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t *sub_100005D74(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_100005DD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100005DE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003C14(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005E48(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100005E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003C14(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100005F44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005F7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100005FBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000067E8;

  return sub_1000021E8(a1, v4, v5, v6);
}

void sub_100006320(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1000063B8()
{
  result = qword_10002E650;
  if (!qword_10002E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E650);
  }

  return result;
}

uint64_t sub_10000649C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000064E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000064FC()
{
  result = qword_10002E680;
  if (!qword_10002E680)
  {
    sub_100006560(&qword_10002E678, &qword_10001D278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E680);
  }

  return result;
}

uint64_t sub_100006560(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000065A8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100006600()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000066F4;

  return sub_100002C84(a1, v4, v5, v6);
}

uint64_t sub_1000066F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000067FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003C14(&qword_10002E828, &qword_10001D370);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  v11 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v25 = 0;
  v13 = v11;
  sub_10001BC00();
  v14 = v27;
  *a2 = v26;
  *(a2 + 8) = v14;
  v25 = 0;
  sub_10001BC00();
  v15 = v27;
  *(a2 + 16) = v26;
  *(a2 + 24) = v15;
  v25 = 0;
  sub_10001BC00();
  v16 = v27;
  *(a2 + 32) = v26;
  *(a2 + 40) = v16;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  *(a2 + 64) = sub_100006D6C;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = v13;
  v17 = sub_10001B6A0();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_100005EDC(v10, v8, &qword_10002E828, &qword_10001D370);
  v18 = sub_100003C14(&qword_10002E830, &qword_10001D3A8);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_10001B8C0();
  sub_100005DE8(v10, &qword_10002E828, &qword_10001D370);
  *(a2 + 96) = v21;
  v22 = *(type metadata accessor for EntryView() + 44);
  *(a2 + v22) = swift_getKeyPath();
  sub_100003C14(&qword_10002E838, &qword_10001D3E0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100006A44()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100006A7C()
{
  v1 = *v0;
  v2 = type metadata accessor for EntryView();
  v3 = sub_10000DA4C(&qword_10002E820, 255, type metadata accessor for EntryView);

  return FamilyOutofProcessUIScene.init(content:)(sub_10000C998, v1, v2, v3);
}

uint64_t sub_100006B2C()
{
  v0 = type metadata accessor for FamilyOutOfProcessUIExtension();
  v2 = sub_10000DA4C(&qword_10002E818, v1, type metadata accessor for FamilyOutOfProcessUIExtension);

  return FamilyOutofProcessUIExtension.configuration.getter(v0, v2);
}

id sub_100006BAC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FamilyOutOfProcessUIExtension();
  v2 = swift_allocObject();
  result = [objc_allocWithZone(FAAgeRangeController) init];
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

id sub_100006C00()
{
  v1 = sub_10001BAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *(v0 + 48);

    sub_10001BE60();
    v8 = sub_10001BB60();
    sub_10001B910();

    sub_10001BAA0();
    swift_getAtKeyPath();
    sub_10000D19C(v9[0], 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }
}

uint64_t sub_100006D6C()
{
  v0 = sub_10001B760();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10001B750();
}

uint64_t sub_100006DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = type metadata accessor for EntryView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003C14(&qword_10002E938, &qword_10001D458);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (v51 - v9);
  v62 = sub_100003C14(&qword_10002E940, &qword_10001D460);
  v61 = *(v62 - 8);
  v11 = *(v61 + 64);
  __chkstk_darwin(v62);
  v13 = v51 - v12;
  v66 = sub_100003C14(&qword_10002E948, &qword_10001D468);
  v64 = *(v66 - 8);
  v14 = *(v64 + 64);
  __chkstk_darwin(v66);
  v63 = v51 - v15;
  v16 = sub_100003C14(&qword_10002E950, &qword_10001D470);
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = *(v67 + 64);
  __chkstk_darwin(v16);
  v65 = v51 - v18;
  sub_10000D134(v2, v6);
  v19 = *(v4 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  sub_10000D1B0(v6, v21 + v20);
  v22 = v10 + *(sub_10001BA10() + 20);
  sub_10001BE00();
  *v10 = &unk_10001D480;
  v10[1] = v21;
  v23 = *(v2 + 40);
  LOBYTE(v75) = *(v2 + 32);
  v76 = v23;
  v71 = sub_100003C14(&qword_10002E958, &qword_10001D488);
  sub_10001BC10();
  LOBYTE(v75) = v85;
  sub_10000D134(v2, v6);
  v72 = v20 + v5;
  v73 = v19;
  v24 = swift_allocObject();
  v74 = v20;
  v69 = v6;
  sub_10000D1B0(v6, v24 + v20);
  v25 = sub_10000D2F8();
  v60 = v13;
  v59 = v7;
  v26 = v25;
  sub_10001BBF0();

  sub_100005DE8(v10, &qword_10002E938, &qword_10001D458);
  v27 = sub_100006C00();
  v28 = sub_10001B5B0();

  if (!v28)
  {
    goto LABEL_5;
  }

  v29 = [v28 title];

  if (!v29)
  {
    v28 = 0;
LABEL_5:
    v31 = 0xE000000000000000;
    goto LABEL_6;
  }

  v28 = sub_10001BD30();
  v31 = v30;

LABEL_6:
  v51[1] = v31;
  v85 = v28;
  v86 = v31;
  v32 = *(v2 + 8);
  v83 = *v2;
  v84 = v32;
  v33 = sub_10001BC30();
  v58 = v51;
  v56 = v75;
  v55 = v76;
  v57 = v77;
  v34 = __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  v52 = sub_100003C14(&qword_10002E970, &qword_10001D490);
  v53 = sub_100003C14(&qword_10002E978, &qword_10001D498);
  v75 = v59;
  v76 = &type metadata for Bool;
  v77 = v26;
  v78 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = sub_10000D3C8();
  v35 = sub_10000D824(&qword_10002E988, &qword_10002E970, &qword_10001D490);
  v50 = sub_10000D41C();
  v36 = v62;
  v37 = v63;
  v38 = v60;
  sub_10001BBD0();

  (*(v61 + 8))(v38, v36);
  v39 = *(v2 + 24);
  LOBYTE(v85) = *(v2 + 16);
  v86 = v39;
  sub_10001BC30();
  LODWORD(v60) = v77;
  v40 = v69;
  sub_10000D134(v2, v69);
  v41 = swift_allocObject();
  sub_10000D1B0(v40, v41 + v74);
  v61 = sub_100003C14(&qword_10002E998, &qword_10001D4A0);
  v75 = v36;
  v76 = &type metadata for String;
  v77 = v52;
  v78 = v53;
  v79 = OpaqueTypeConformance2;
  v80 = v59;
  v81 = v35;
  v82 = v50;
  v62 = swift_getOpaqueTypeConformance2();
  v71 = sub_10000D510();
  v42 = v65;
  v43 = v66;
  sub_10001BBE0();

  (*(v64 + 8))(v37, v43);
  v44 = *(v2 + 64);
  v45 = *(v2 + 72);
  v46 = *(v2 + 80);
  sub_10001B760();
  sub_10000DA4C(&qword_10002E8C8, 255, &type metadata accessor for AgeRangeGlobalSharedState);
  sub_10001B9E0();
  LOBYTE(v44) = sub_10001B740();

  LOBYTE(v85) = v44 & 1;
  sub_10000D134(v2, v40);
  v47 = swift_allocObject();
  sub_10000D1B0(v40, v47 + v74);
  v75 = v43;
  v76 = v61;
  v77 = v62;
  v78 = v71;
  swift_getOpaqueTypeConformance2();
  v48 = v68;
  sub_10001BBF0();

  return (*(v67 + 8))(v42, v48);
}

uint64_t sub_100007750(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001B460();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_10001BDF0();
  v1[6] = sub_10001BDE0();
  v6 = sub_10001BDD0();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_100007844, v6, v5);
}

uint64_t sub_100007844()
{
  v1 = v0[2];
  sub_100007BF4(v0[5]);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_10000796C;
  v3 = v0[5];
  v4 = v0[2];

  return sub_100007D84(v3);
}

uint64_t sub_10000796C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_100007B34;
  }

  else
  {
    v7 = sub_100007AA8;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100007AA8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 8))(v2, v3);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100007B34()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 8))(v2, v3);
  v5 = v0[10];
  v6 = v0[2];
  v7 = sub_100006C00();
  v8 = sub_10001B380();
  sub_10001B640();

  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100007BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003C14(&qword_10002EA18, &unk_10001D530);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_100006C00();
  sub_10001B5D0();

  v7 = sub_10001B460();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_100005DE8(v5, &qword_10002EA18, &unk_10001D530);
    sub_10001B580();
    sub_10001B560();
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(a1, v5, v7);
    result = sub_10001B430();
    if ((result & 1) == 0)
    {
      sub_10001B580();
      sub_10001B550();
      swift_willThrow();
      return (*(v8 + 8))(a1, v7);
    }
  }

  return result;
}

uint64_t sub_100007D84(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_10001B4E0();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_10001B6A0();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v9 = *(type metadata accessor for EntryView() - 8);
  v2[24] = v9;
  v2[25] = *(v9 + 64);
  v2[26] = swift_task_alloc();
  v10 = *(*(sub_100003C14(&qword_10002EE00, &qword_10001CE00) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v11 = sub_10001B930();
  v2[28] = v11;
  v12 = *(v11 - 8);
  v2[29] = v12;
  v13 = *(v12 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v14 = *(*(sub_100003C14(&qword_10002E828, &qword_10001D370) - 8) + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = sub_10001BDF0();
  v2[37] = sub_10001BDE0();
  v16 = sub_10001BDD0();
  v2[38] = v16;
  v2[39] = v15;

  return _swift_task_switch(sub_100008034, v16, v15);
}

uint64_t sub_100008034()
{
  v1 = v0[17];
  v2 = sub_100006C00();
  v3 = sub_10001B5A0();
  v0[40] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[41] = v4;
    *v4 = v0;
    v4[1] = sub_100008248;
    v5 = v0[35];
    v6 = v0[17];

    return sub_10000A8EC(v5, v3);
  }

  else
  {
    v8 = v0[37];

    type metadata accessor for AgeRangeError(0);
    v0[13] = -4019;
    sub_100005574(&_swiftEmptyArrayStorage);
    sub_10000DA4C(&qword_10002E660, 255, type metadata accessor for AgeRangeError);
    sub_10001B370();
    v9 = v0[12];
    swift_willThrow();
    v11 = v0[34];
    v10 = v0[35];
    v13 = v0[32];
    v12 = v0[33];
    v15 = v0[30];
    v14 = v0[31];
    v17 = v0[26];
    v16 = v0[27];
    v18 = v0[23];
    v20 = v0[20];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_100008248()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 312);
  v6 = *(v2 + 304);
  if (v0)
  {
    v7 = sub_1000098A0;
  }

  else
  {
    v7 = sub_100008384;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100008384()
{
  v87 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 136);
  (*(*(v0 + 176) + 56))(v2, 0, 1, *(v0 + 168));
  v4 = *(v3 + 96);
  sub_100005EDC(v2, v1, &qword_10002E828, &qword_10001D370);
  sub_10001B8E0();
  sub_100005DE8(v2, &qword_10002E828, &qword_10001D370);
  sub_10001B470();
  v5 = sub_10001BD00();

  v6 = [objc_opt_self() bundleWithIdentifier:v5];

  v7 = [objc_opt_self() flowWithBundle:v6];
  if (v7)
  {
    v8 = *(v0 + 256);
    v9 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:{objc_msgSend(v7, "contentVersion")}];
    sub_10001B420();
    v10 = v9;
    v11 = sub_10001B920();
    v12 = sub_10001BE40();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 256);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    if (v13)
    {
      v17 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v86 = v83;
      *v17 = 136315138;
      v84 = v14;
      v18 = v10;
      v81 = v12;
      v19 = [v18 description];
      v82 = v16;
      v20 = v7;
      v21 = sub_10001BD30();
      v23 = v22;

      v24 = v21;
      v7 = v20;
      v25 = sub_100012460(v24, v23, &v86);

      *(v17 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v81, "Privacy version for onboarding: %s", v17, 0xCu);
      sub_100005E48(v83);

      v26 = *(v15 + 8);
      v26(v84, v82);
    }

    else
    {

      v26 = *(v15 + 8);
      v26(v14, v16);
    }

    v35 = *(v0 + 136);
    v36 = sub_100006C00();
    v37 = v10;
    sub_10001B600();
  }

  else
  {
    v27 = *(v0 + 248);
    sub_10001B420();
    v28 = sub_10001B920();
    v29 = sub_10001BE50();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 248);
    v32 = *(v0 + 224);
    v33 = *(v0 + 232);
    if (v30)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to get privacy version from onboarding", v34, 2u);
    }

    v26 = *(v33 + 8);
    v26(v31, v32);
  }

  *(v0 + 344) = v26;
  if ([*(v0 + 320) requestType])
  {
    if ([*(v0 + 320) requestType] != 1)
    {
      v52 = *(v0 + 320);
      v53 = *(v0 + 296);

      goto LABEL_18;
    }

    v38 = *(v0 + 264);
    v39 = *(v0 + 168);
    v40 = *(v0 + 176);
    sub_10001B8D0();
    if ((*(v40 + 48))(v38, 1, v39) == 1)
    {
      v41 = *(v0 + 320);
      v42 = *(v0 + 296);
      v43 = *(v0 + 264);
      v44 = *(v0 + 136);

      sub_100005DE8(v43, &qword_10002E828, &qword_10001D370);
      v45 = *v44;
      v46 = *(v44 + 1);
      *(v0 + 16) = v45;
      *(v0 + 24) = v46;
      *(v0 + 408) = 1;

      sub_100003C14(&qword_10002E958, &qword_10001D488);
      sub_10001BC20();

LABEL_18:
      v55 = *(v0 + 272);
      v54 = *(v0 + 280);
      v57 = *(v0 + 256);
      v56 = *(v0 + 264);
      v59 = *(v0 + 240);
      v58 = *(v0 + 248);
      v61 = *(v0 + 208);
      v60 = *(v0 + 216);
      v62 = *(v0 + 184);
      v63 = *(v0 + 160);

      v64 = *(v0 + 8);
LABEL_23:

      return v64();
    }

    v65 = *(v0 + 136);
    (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 264), *(v0 + 168));
    v66 = *(v65 + 88);
    *(v0 + 384) = v66;
    v67 = swift_task_alloc();
    *(v0 + 392) = v67;
    *v67 = v0;
    v67[1] = sub_1000092C0;
    v68 = *(v0 + 184);

    return sub_10000E19C(v66);
  }

  else
  {
    v47 = *(v0 + 128);
    sub_10001B440();
    *(v0 + 352) = v48;
    if (!v48)
    {
      v69 = *(v0 + 320);
      v70 = *(v0 + 296);

      type metadata accessor for AgeRangeError(0);
      *(v0 + 120) = -4014;
      sub_100005574(&_swiftEmptyArrayStorage);
      sub_10000DA4C(&qword_10002E660, 255, type metadata accessor for AgeRangeError);
      sub_10001B370();
      v71 = *(v0 + 112);
      swift_willThrow();

      v73 = *(v0 + 272);
      v72 = *(v0 + 280);
      v75 = *(v0 + 256);
      v74 = *(v0 + 264);
      v77 = *(v0 + 240);
      v76 = *(v0 + 248);
      v79 = *(v0 + 208);
      v78 = *(v0 + 216);
      v80 = *(v0 + 184);
      v85 = *(v0 + 160);

      v64 = *(v0 + 8);
      goto LABEL_23;
    }

    v49 = swift_task_alloc();
    *(v0 + 360) = v49;
    *v49 = v0;
    v49[1] = sub_100008ADC;
    v50 = *(v0 + 136);

    return sub_10000DA94();
  }
}

uint64_t sub_100008ADC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v10 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v5 = v3[38];
    v6 = v3[39];
    v7 = sub_1000091BC;
  }

  else
  {
    v8 = v3[44];

    v5 = v3[38];
    v6 = v3[39];
    v7 = sub_100008BF8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100008BF8()
{
  v74 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 296);
  v3 = *(v0 + 136);

  v4 = sub_100006C00();
  v5 = v1;
  sub_10001B5C0();

  v6 = [v5 shouldPrompt];
  v7 = *(v0 + 368);
  if (!v6)
  {
    v16 = [v7 ageRangeResponse];
    v17 = *(v0 + 368);
    v18 = *(v0 + 320);
    v19 = *(v0 + 136);
    if (v16)
    {
      v20 = v16;
      v21 = sub_100006C00();
      v22 = v20;
      sub_10001B640();
    }

    else
    {
      v21 = sub_100006C00();
      sub_10001B640();
    }

    goto LABEL_18;
  }

  v8 = *(v0 + 240);
  v9 = [v7 flowType];
  sub_10001B420();
  v10 = sub_10001B920();
  v11 = sub_10001BE40();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v73 = v13;
    *v12 = 136315138;
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        if (v9 == 3)
        {
          v14 = 0x800000010001DE50;
          v15 = 0xD000000000000011;
          goto LABEL_23;
        }

        goto LABEL_20;
      }

      v14 = 0xEA0000000000676ELL;
      v15 = 0x696472616F626E6FLL;
    }

    else
    {
      if (v9)
      {
        if (v9 == 1)
        {
          v14 = 0xEC0000007472656CLL;
          v15 = 0x4174736575716572;
          goto LABEL_23;
        }

LABEL_20:
        v14 = 0xE700000000000000;
        v15 = 0x6E776F6E6B6E75;
        goto LABEL_23;
      }

      v14 = 0xE400000000000000;
      v15 = 1701736302;
    }

LABEL_23:
    v52 = *(v0 + 232);
    v70 = *(v0 + 240);
    v72 = *(v0 + 344);
    v53 = *(v0 + 224);
    v54 = sub_100012460(v15, v14, &v73);

    *(v12 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v10, v11, "Flow type is: %s", v12, 0xCu);
    sub_100005E48(v13);

    v72(v70, v53);
    if (v9 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v23 = *(v0 + 344);
  v25 = *(v0 + 232);
  v24 = *(v0 + 240);
  v26 = *(v0 + 224);

  v23(v24, v26);
  if (v9 == 2)
  {
LABEL_24:
    v55 = *(v0 + 368);
    v56 = *(v0 + 320);
    v57 = *(v0 + 136);
    v58 = *(v57 + 24);
    *(v0 + 80) = *(v57 + 16);
    *(v0 + 88) = v58;
    *(v0 + 412) = 1;

    sub_100003C14(&qword_10002E958, &qword_10001D488);
    sub_10001BC20();

    goto LABEL_25;
  }

LABEL_10:
  if ((v9 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v21 = *(v0 + 320);

LABEL_18:
    goto LABEL_25;
  }

  v27 = *(v0 + 128);
  v28 = sub_10001B450();
  v29 = *(v0 + 368);
  v30 = *(v0 + 320);
  if ((v28 & 1) == 0)
  {
    sub_10001B580();
    sub_10001B540();
    swift_willThrow();

    v43 = *(v0 + 272);
    v42 = *(v0 + 280);
    v45 = *(v0 + 256);
    v44 = *(v0 + 264);
    v47 = *(v0 + 240);
    v46 = *(v0 + 248);
    v49 = *(v0 + 208);
    v48 = *(v0 + 216);
    v50 = *(v0 + 184);
    v71 = *(v0 + 160);

    v51 = *(v0 + 8);
    goto LABEL_26;
  }

  v31 = *(v0 + 288);
  v33 = *(v0 + 208);
  v32 = *(v0 + 216);
  v35 = *(v0 + 192);
  v34 = *(v0 + 200);
  v36 = *(v0 + 136);
  v37 = *(v36 + 8);
  *(v0 + 64) = *v36;
  *(v0 + 72) = v37;
  *(v0 + 411) = 1;
  sub_100003C14(&qword_10002E958, &qword_10001D488);
  sub_10001BC20();
  v38 = sub_10001BE20();
  (*(*(v38 - 8) + 56))(v32, 1, 1, v38);
  sub_10000D134(v36, v33);
  v39 = sub_10001BDE0();
  v40 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = &protocol witness table for MainActor;
  sub_10000D1B0(v33, v41 + v40);
  sub_100016744(0, 0, v32, &unk_10001D500, v41);

LABEL_25:
  v60 = *(v0 + 272);
  v59 = *(v0 + 280);
  v62 = *(v0 + 256);
  v61 = *(v0 + 264);
  v64 = *(v0 + 240);
  v63 = *(v0 + 248);
  v66 = *(v0 + 208);
  v65 = *(v0 + 216);
  v67 = *(v0 + 184);
  v68 = *(v0 + 160);

  v51 = *(v0 + 8);
LABEL_26:

  return v51();
}

uint64_t sub_1000091BC()
{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[37];

  v16 = v0[47];
  v5 = v0[34];
  v4 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[30];
  v8 = v0[31];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[23];
  v13 = v0[20];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000092C0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 413) = a1;

  v4 = *(v2 + 312);
  v5 = *(v2 + 304);

  return _swift_task_switch(sub_1000093E8, v5, v4);
}

uint64_t sub_1000093E8()
{
  if (*(v0 + 413) == 1)
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 136);
    v3 = sub_100006C00();
    sub_10000C054(3);
    sub_10001B5C0();

    v4 = *(v2 + 8);
    *(v0 + 48) = *v2;
    *(v0 + 56) = v4;
    *(v0 + 410) = 1;
    sub_100003C14(&qword_10002E958, &qword_10001D488);
    sub_10001BC20();
    v5 = async function pointer to FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)[1];
    v6 = v1;
    v7 = swift_task_alloc();
    *(v0 + 400) = v7;
    *v7 = v0;
    v7[1] = sub_100009640;
    v8 = *(v0 + 384);
    v9 = *(v0 + 160);

    return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v9, v8);
  }

  else
  {
    v10 = *(v0 + 320);
    v11 = *(v0 + 296);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 168);
    v15 = *(v0 + 136);

    v16 = *(v15 + 24);
    *(v0 + 32) = *(v15 + 16);
    *(v0 + 40) = v16;
    *(v0 + 409) = 1;

    sub_100003C14(&qword_10002E958, &qword_10001D488);
    sub_10001BC20();

    (*(v13 + 8))(v12, v14);
    v18 = *(v0 + 272);
    v17 = *(v0 + 280);
    v20 = *(v0 + 256);
    v19 = *(v0 + 264);
    v22 = *(v0 + 240);
    v21 = *(v0 + 248);
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v25 = *(v0 + 184);
    v26 = *(v0 + 160);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100009640()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v6 = *v0;

  v3 = *(v1 + 312);
  v4 = *(v1 + 304);

  return _swift_task_switch(sub_100009760, v4, v3);
}

uint64_t sub_100009760()
{
  v1 = v0[40];
  v2 = v0[37];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[18];
  v8 = v0[19];

  sub_10001B4C0();
  sub_10001B4A0();

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);
  v10 = v0[34];
  v9 = v0[35];
  v12 = v0[32];
  v11 = v0[33];
  v14 = v0[30];
  v13 = v0[31];
  v16 = v0[26];
  v15 = v0[27];
  v17 = v0[23];
  v18 = v0[20];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000098A0()
{
  v1 = v0[40];
  v2 = v0[37];

  v15 = v0[42];
  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[23];
  v12 = v0[20];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100009998(uint64_t a1, _BYTE *a2, char *a3)
{
  if (*a2 == 1)
  {
    v5 = a3[16];
    v7 = *(a3 + 3);
    sub_100003C14(&qword_10002E958, &qword_10001D488);
    sub_10001BC20();
    v6 = *a3;
    v8 = *(a3 + 1);
    sub_10001BC20();
    return sub_10001B8B0();
  }

  return result;
}

uint64_t sub_100009A3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v58 = a2;
  v56 = sub_10001BA50();
  v52 = *(v56 - 8);
  v3 = *(v52 + 64);
  __chkstk_darwin(v56);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EntryView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100003C14(&qword_10002E9B8, &qword_10001D4B0);
  v10 = *(v59 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v59);
  v57 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v60 = v50 - v15;
  __chkstk_darwin(v14);
  v17 = v50 - v16;
  v18 = sub_100003C14(&qword_10002E9C0, &qword_10001D4B8);
  v54 = *(v18 - 8);
  v55 = v18;
  v19 = *(v54 + 64);
  v20 = __chkstk_darwin(v18);
  v53 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v61 = a1;
  v62 = v50 - v22;
  v23 = sub_100006C00();
  v24 = sub_10001B5B0();

  if (v24)
  {
    v25 = [v24 primaryButtonText];

    if (v25)
    {
      v24 = sub_10001BD30();
      v27 = v26;
    }

    else
    {
      v24 = 0;
      v27 = 0xE000000000000000;
    }
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v63 = v24;
  v64 = v27;
  sub_10000D134(v61, v9);
  v28 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v29 = swift_allocObject();
  sub_10000D1B0(v9, v29 + v28);
  v50[1] = sub_10000D3C8();
  sub_10001BC50();
  sub_10001BA40();
  sub_10000D824(&qword_10002E9C8, &qword_10002E9B8, &qword_10001D4B0);
  v30 = v59;
  sub_10001BBB0();
  (*(v52 + 8))(v5, v56);
  v56 = v10;
  v51 = *(v10 + 8);
  v52 = v10 + 8;
  v51(v17, v30);
  v31 = sub_100006C00();
  v32 = sub_10001B5B0();

  if (!v32)
  {
    goto LABEL_10;
  }

  v33 = [v32 secondaryButtonText];

  if (!v33)
  {
    v32 = 0;
LABEL_10:
    v35 = 0xE000000000000000;
    goto LABEL_11;
  }

  v32 = sub_10001BD30();
  v35 = v34;

LABEL_11:
  v63 = v32;
  v64 = v35;
  sub_10000D134(v61, v9);
  v36 = swift_allocObject();
  sub_10000D1B0(v9, v36 + v28);
  v37 = v60;
  sub_10001BC50();
  v39 = v53;
  v38 = v54;
  v40 = *(v54 + 16);
  v41 = v55;
  v40(v53, v62, v55);
  v42 = v57;
  v43 = *(v56 + 16);
  v44 = v59;
  v43(v57, v37, v59);
  v45 = v58;
  v40(v58, v39, v41);
  v46 = sub_100003C14(&qword_10002E9D0, &qword_10001D4C0);
  v43(&v45[*(v46 + 48)], v42, v44);
  v47 = v51;
  v51(v60, v44);
  v48 = *(v38 + 8);
  v48(v62, v41);
  v47(v42, v44);
  return (v48)(v39, v41);
}

uint64_t sub_10000A01C(uint64_t a1)
{
  v2 = sub_100003C14(&qword_10002E828, &qword_10001D370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v13[-1] - v4;
  v6 = sub_100006C00();
  v7 = *(a1 + 96);
  sub_10001B8D0();
  v8 = *(a1 + 88);
  v13[3] = sub_10001BA00();
  v13[4] = &protocol witness table for OpenURLAction;
  v9 = sub_100005D74(v13);
  v10 = a1 + *(type metadata accessor for EntryView() + 44);
  sub_10000C9EC(v9);
  sub_10001B620();

  sub_100005DE8(v5, &qword_10002E828, &qword_10001D370);
  return sub_100005DE8(v13, &qword_10002E9D8, &qword_10001D4C8);
}

uint64_t sub_10000A144(uint64_t a1)
{
  v2 = sub_100003C14(&qword_10002E828, &qword_10001D370);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_100006C00();
  v7 = *(a1 + 96);
  sub_10001B8D0();
  v8 = *(a1 + 88);
  sub_10001B630();

  return sub_100005DE8(v5, &qword_10002E828, &qword_10001D370);
}

double sub_10000A208@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100006C00();
  v3 = sub_10001B5B0();

  if (v3)
  {
    v4 = [v3 message];

    if (v4)
    {
      v5 = sub_10001BD30();
      v7 = v6;

      *&v9 = v5;
      *(&v9 + 1) = v7;
      sub_10000D3C8();
      sub_10001BB70();
    }
  }

  sub_10001BAC0();
  result = *&v9;
  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  return result;
}

uint64_t sub_10000A30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = type metadata accessor for IntroViewControllerWrapper(0);
  v4 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100003C14(&qword_10002E9B0, &qword_10001D4A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v37 = &v31[-v10];
  v11 = sub_100003C14(&qword_10002E828, &qword_10001D370);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31[-v13];
  v15 = sub_10001B6A0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v31[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(a1 + 96);
  sub_10001B8D0();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100005DE8(v14, &qword_10002E828, &qword_10001D370);
    v21 = 1;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    v22 = *(a1 + 40);
    v42 = *(a1 + 32);
    v43 = v22;
    sub_100003C14(&qword_10002E958, &qword_10001D488);
    sub_10001BC30();
    v33 = v40;
    v34 = v39;
    v32 = v41;
    v23 = *(a1 + 64);
    v24 = *(a1 + 72);
    v25 = *(a1 + 80);
    sub_10001B760();
    v36 = a2;
    sub_10000DA4C(&qword_10002E8C8, 255, &type metadata accessor for AgeRangeGlobalSharedState);
    v35 = v8;
    sub_10001B9E0();
    (*(v16 + 16))(&v6[*(v38 + 28)], v19, v15);
    KeyPath = swift_getKeyPath();
    v27 = v33;
    *v6 = v34;
    *(v6 + 1) = v27;
    v6[16] = v32;
    *(v6 + 3) = KeyPath;
    v6[32] = 0;
    v8 = v35;
    a2 = v36;
    *(v6 + 5) = sub_10001BA20();
    *(v6 + 6) = v28;
    sub_10000DA4C(&qword_10002E9A8, 255, type metadata accessor for IntroViewControllerWrapper);
    v29 = v37;
    sub_10001BBC0();
    sub_10000D7B0(v6);
    (*(v16 + 8))(v19, v15);
    (*(v8 + 32))(a2, v29, v7);
    v21 = 0;
  }

  return (*(v8 + 56))(a2, v21, 1, v7);
}

uint64_t sub_10000A734(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  v5 = sub_10001B930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  sub_10001B420();
  v11 = sub_10001B920();
  v12 = sub_10001BE40();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "shared state updated to: %{BOOL}d", v13, 8u);
  }

  (*(v6 + 8))(v9, v5);
  v14 = *(a3 + 3);
  v19 = a3[16];
  v20 = v14;
  v18 = 0;
  sub_100003C14(&qword_10002E958, &qword_10001D488);
  sub_10001BC20();
  v15 = *(a3 + 1);
  v19 = *a3;
  v20 = v15;
  v18 = 1;
  return sub_10001BC20();
}

uint64_t sub_10000A8EC(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  v4 = sub_10001B930();
  v3[42] = v4;
  v5 = *(v4 - 8);
  v3[43] = v5;
  v6 = *(v5 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  sub_10001BDF0();
  v3[49] = sub_10001BDE0();
  v8 = sub_10001BDD0();
  v3[50] = v8;
  v3[51] = v7;

  return _swift_task_switch(sub_10000AA14, v8, v7);
}

uint64_t sub_10000AA14()
{
  v47 = v0;
  v1 = v0[48];
  v2 = v0[40];
  sub_10001B420();
  v3 = v2;
  v4 = sub_10001B920();
  v5 = sub_10001BE40();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[40];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v46 = v8;
    *v7 = 136315138;
    v9 = [v6 requestType];
    v10 = 0xE800000000000000;
    v11 = 0x65676E6152656761;
    if (v9)
    {
      v11 = 0x6E776F6E6B6E75;
      v10 = 0xE700000000000000;
    }

    v12 = v9 == 1;
    if (v9 == 1)
    {
      v13 = 0xD00000000000001DLL;
    }

    else
    {
      v13 = v11;
    }

    if (v12)
    {
      v14 = 0x800000010001DFB0;
    }

    else
    {
      v14 = v10;
    }

    v44 = v0[48];
    v16 = v0[42];
    v15 = v0[43];
    v17 = sub_100012460(v13, v14, &v46);

    *(v7 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Request type is: %s", v7, 0xCu);
    sub_100005E48(v8);

    v18 = *(v15 + 8);
    v18(v44, v16);
  }

  else
  {
    v19 = v0[48];
    v20 = v0[42];
    v21 = v0[43];

    v18 = *(v21 + 8);
    v18(v19, v20);
  }

  v0[52] = v18;
  v22 = v0[47];
  v23 = v0[40];
  sub_10001B420();
  v24 = v23;
  v25 = sub_10001B920();
  v26 = sub_10001BE40();

  if (!os_log_type_enabled(v25, v26))
  {
    v33 = v0[47];
    v34 = v0[42];
    v35 = v0[43];

    v36 = v33;
    v37 = v34;
    goto LABEL_25;
  }

  v27 = v0[40];
  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v46 = v29;
  *v28 = 136315138;
  v30 = [v27 entryPoint];
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v32 = 0xEE0073676E697474;
      v31 = 0x6553796C696D6166;
      goto LABEL_24;
    }

    if (v30 == 3)
    {
      v32 = 0xE900000000000055;
      v31 = 0x4643746E65726170;
      goto LABEL_24;
    }

LABEL_21:
    v32 = 0xE700000000000000;
    v31 = 0x6E776F6E6B6E75;
    goto LABEL_24;
  }

  if (!v30)
  {
    v32 = 0xED00007070417974;
    v31 = 0x7261506472696874;
    goto LABEL_24;
  }

  if (v30 != 1)
  {
    goto LABEL_21;
  }

  v31 = 0xD000000000000014;
  v32 = 0x800000010001DFD0;
LABEL_24:
  v45 = v0[47];
  v39 = v0[42];
  v38 = v0[43];
  v40 = sub_100012460(v31, v32, &v46);

  *(v28 + 4) = v40;
  _os_log_impl(&_mh_execute_header, v25, v26, "Entry type is: %s", v28, 0xCu);
  sub_100005E48(v29);

  v36 = v45;
  v37 = v39;
LABEL_25:
  v18(v36, v37);
  v41 = *(v0[41] + 88);
  v0[53] = v41;
  v0[2] = v0;
  v0[7] = v0 + 36;
  v0[3] = sub_10000AECC;
  v42 = swift_continuation_init();
  v0[25] = sub_100003C14(&qword_10002E9F8, &qword_10001D518);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10000F2AC;
  v0[21] = &unk_1000294B0;
  v0[22] = v42;
  [v41 fetchFamilyCircleWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000AECC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 432) = v3;
  v4 = *(v1 + 408);
  v5 = *(v1 + 400);
  if (v3)
  {
    v6 = sub_10000BAF0;
  }

  else
  {
    v6 = sub_10000AFFC;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000AFFC()
{
  v72 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  *(v0 + 440) = v2;
  if ([v1 entryPoint] == 2 || objc_msgSend(*(v0 + 320), "entryPoint") == 1)
  {
    v3 = [*(v0 + 320) altDSID];
    if (v3)
    {
      v4 = v3;
      v5 = *(v0 + 392);
      v6 = *(v0 + 368);

      v7 = sub_10001BD30();
      v9 = v8;

      sub_10001B420();

      v10 = sub_10001B920();
      v11 = sub_10001BE40();

      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 416);
      v14 = *(v0 + 368);
      v16 = *(v0 + 336);
      v15 = *(v0 + 344);
      if (v12)
      {
        v69 = v2;
        v17 = swift_slowAlloc();
        v68 = v14;
        v18 = swift_slowAlloc();
        v71 = v18;
        *v17 = 136315138;

        v67 = v13;
        v19 = v7;
        v20 = sub_100012460(v7, v9, &v71);

        *(v17 + 4) = v20;
        v7 = v19;
        _os_log_impl(&_mh_execute_header, v10, v11, "Using altDSID: %s from model", v17, 0xCu);
        sub_100005E48(v18);

        v2 = v69;

        v67(v68, v16);
      }

      else
      {

        v13(v14, v16);
      }

      v47 = *(v0 + 328);
      sub_10000C4DC(v2, v7, v9);
      sub_100003C14(&qword_10002EA10, &qword_10001D7F0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10001CD60;
      *(v50 + 32) = v7;
      *(v50 + 40) = v9;
      goto LABEL_39;
    }
  }

  if ([*(v0 + 320) entryPoint])
  {
    v21 = *(v0 + 392);
    v22 = *(v0 + 320);

    if ([v22 entryPoint] != 3)
    {
      type metadata accessor for AgeRangeError(0);
      *(v0 + 304) = -4019;
      sub_100005574(&_swiftEmptyArrayStorage);
      sub_10000DA4C(&qword_10002E660, 255, type metadata accessor for AgeRangeError);
      sub_10001B370();
      v51 = *(v0 + 296);
      swift_willThrow();

      v53 = *(v0 + 376);
      v52 = *(v0 + 384);
      v55 = *(v0 + 360);
      v54 = *(v0 + 368);
      v56 = *(v0 + 352);

      v57 = *(v0 + 8);
LABEL_40:

      return v57();
    }

    v23 = *(v0 + 352);
    sub_10001B420();
    v24 = sub_10001B920();
    v25 = sub_10001BE40();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Getting altDSID list for child/teen in family", v26, 2u);
    }

    v27 = *(v0 + 416);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);
    v30 = *(v0 + 336);

    v27(v28, v30);
    v31 = [v2 members];
    sub_1000065A8(0, &qword_10002EA08, FAFamilyMember_ptr);
    v32 = sub_10001BDB0();

    if (v32 >> 62)
    {
LABEL_37:
      v33 = sub_10001BF80();
      if (v33)
      {
LABEL_12:
        v34 = 0;
        v35 = &_swiftEmptyArrayStorage;
        do
        {
          v36 = v34;
          while (1)
          {
            if ((v32 & 0xC000000000000001) != 0)
            {
              v37 = sub_10001BF50();
            }

            else
            {
              if (v36 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_36;
              }

              v37 = *(v32 + 8 * v36 + 32);
            }

            v38 = v37;
            v34 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            if (sub_10001BE90())
            {
              v39 = [v38 altDSID];
              if (v39)
              {
                break;
              }
            }

            ++v36;
            if (v34 == v33)
            {
              goto LABEL_38;
            }
          }

          v40 = v39;
          v70 = sub_10001BD30();
          v42 = v41;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = sub_10000D6A4(0, *(v35 + 2) + 1, 1, v35);
          }

          v45 = *(v35 + 2);
          v44 = *(v35 + 3);
          if (v45 >= v44 >> 1)
          {
            v35 = sub_10000D6A4((v44 > 1), v45 + 1, 1, v35);
          }

          *(v35 + 2) = v45 + 1;
          v46 = &v35[16 * v45];
          *(v46 + 4) = v70;
          *(v46 + 5) = v42;
        }

        while (v34 != v33);
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_12;
      }
    }

LABEL_38:

LABEL_39:
    v58 = *(v0 + 440);
    v60 = *(v0 + 376);
    v59 = *(v0 + 384);
    v62 = *(v0 + 360);
    v61 = *(v0 + 368);
    v63 = *(v0 + 352);
    v64 = *(v0 + 312);
    v65 = *(v0 + 424);
    sub_10001B680();

    v57 = *(v0 + 8);
    goto LABEL_40;
  }

  v48 = *(v0 + 424);
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 272;
  *(v0 + 88) = sub_10000B720;
  v49 = swift_continuation_init();
  *(v0 + 264) = sub_100003C14(&qword_10002EA00, &unk_10001D520);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_10000C330;
  *(v0 + 232) = &unk_1000294D8;
  *(v0 + 240) = v49;
  [v48 fetchAltDSIDWithCompletionHandler:v0 + 208];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_10000B720()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 448) = v3;
  v4 = *(v1 + 408);
  v5 = *(v1 + 400);
  if (v3)
  {
    v6 = sub_10000BB9C;
  }

  else
  {
    v6 = sub_10000B850;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000B850()
{
  v28 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 360);

  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  sub_10001B420();

  v5 = sub_10001B920();
  v6 = sub_10001BE40();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 416);
  v9 = *(v0 + 360);
  v11 = *(v0 + 336);
  v10 = *(v0 + 344);
  if (v7)
  {
    v12 = swift_slowAlloc();
    v26 = v8;
    v27 = swift_slowAlloc();
    v13 = v27;
    *v12 = 136315138;
    *(v12 + 4) = sub_100012460(v4, v3, &v27);
    _os_log_impl(&_mh_execute_header, v5, v6, "Using primary account altDSID: %s", v12, 0xCu);
    sub_100005E48(v13);

    v26(v9, v11);
  }

  else
  {

    v8(v9, v11);
  }

  v14 = *(v0 + 328);
  sub_10000C4DC(*(v0 + 440), v4, v3);
  sub_100003C14(&qword_10002EA10, &qword_10001D7F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10001CD60;
  *(v15 + 32) = v4;
  *(v15 + 40) = v3;
  v16 = *(v0 + 440);
  v18 = *(v0 + 376);
  v17 = *(v0 + 384);
  v20 = *(v0 + 360);
  v19 = *(v0 + 368);
  v21 = *(v0 + 352);
  v22 = *(v0 + 312);
  v23 = *(v0 + 424);
  sub_10001B680();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_10000BAF0()
{
  v1 = v0[54];
  v2 = v0[49];

  swift_willThrow();
  v3 = v0[54];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v8 = v0[44];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000BB9C()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[49];

  swift_willThrow();

  v4 = v0[56];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v9 = v0[44];

  v10 = v0[1];

  return v10();
}

uint64_t sub_10000BC4C(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0xD000000000000011;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x696472616F626E6FLL;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x4174736575716572;
      }

      return 0x6E776F6E6B6E75;
    }

    return 1701736302;
  }
}

uint64_t sub_10000BCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10001B4E0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_10001BDF0();
  v4[6] = sub_10001BDE0();
  v9 = sub_10001BDD0();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_10000BDE4, v9, v8);
}

uint64_t sub_10000BDE4()
{
  v1 = async function pointer to FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)[1];
  v2 = *(v0[2] + 88);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_10000BE94;
  v4 = v0[5];

  return FamilyDeclaredAgeRangeAnalyticsPackage.init(from:)(v4, v2);
}

uint64_t sub_10000BE94()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return _swift_task_switch(sub_10000BFB4, v4, v3);
}

uint64_t sub_10000BFB4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  sub_10001B4C0();
  sub_10001B4B0();
  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

id sub_10000C054(uint64_t a1)
{
  v1 = sub_10001B3D0();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10001BCF0();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  v5 = objc_allocWithZone(FAAgeRangeAlertModel);
  v6 = sub_10001BD00();

  v7 = sub_10001BD00();

  v8 = sub_10001BD00();

  v9 = sub_10001BD00();

  v10 = [v5 initWithAgeRangeResponse:0 shouldPrompt:1 flowType:a1 title:v6 message:v7 primaryButtonText:v8 secondaryButtonText:v9];

  return v10;
}

uint64_t sub_10000C330(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000F028((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003C14(&qword_10002E9F0, &qword_10001D510);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = sub_10001BD30();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10000C404(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000F028((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100003C14(&qword_10002E9F0, &qword_10001D510);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000C4DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10001B930();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19._countAndFlagsBits = a2;
  v19._object = a3;
  v10 = sub_10001BE80(v19);
  v11 = v10;
  v12 = v10 & 0x100;
  sub_10001B420();
  v13 = sub_10001B920();
  v14 = sub_10001BE40();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = v11 & 1;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v12 >> 8;
    _os_log_impl(&_mh_execute_header, v13, v14, "isPartOfFamily: %{BOOL}d, isChildOrTeen: %{BOOL}d", v15, 0xEu);
  }

  (*(v6 + 8))(v9, v5);
  v16 = 3;
  if (v12)
  {
    v16 = 1;
  }

  if (v11)
  {
    return (v12 >> 7) ^ 2;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_10000C68C(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x4643746E65726170;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6553796C696D6166;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0xD000000000000014;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x7261506472696874;
  }
}

uint64_t sub_10000C748(uint64_t a1)
{
  v2 = sub_10001BA00();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001BA90();
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FamilyOutOfProcessUIExtension();
  sub_10000DA4C(&qword_10002E760, v3, type metadata accessor for FamilyOutOfProcessUIExtension);
  sub_10001B900();
  return 0;
}

uint64_t type metadata accessor for EntryView()
{
  result = qword_10002E8A0;
  if (!qword_10002E8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C9EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001BAB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003C14(&qword_10002E838, &qword_10001D3E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100005EDC(v2, &v17 - v11, &qword_10002E838, &qword_10001D3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001BA00();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10001BE60();
    v16 = sub_10001BB60();
    sub_10001B910();

    sub_10001BAA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10000CBEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001BA60();
  *a1 = result;
  return result;
}

uint64_t sub_10000CC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003C14(&qword_10002E840, &qword_10001D3E8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000CD50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003C14(&qword_10002E840, &qword_10001D3E8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000CE00()
{
  sub_10000CF34();
  if (v0 <= 0x3F)
  {
    sub_10000D080(319, &qword_10002E8B8, &type metadata accessor for AgeRangeAlertFlowStore);
    if (v1 <= 0x3F)
    {
      sub_10000CF84();
      if (v2 <= 0x3F)
      {
        sub_1000065A8(319, &qword_10002E8D0, FAAgeRangeController_ptr);
        if (v3 <= 0x3F)
        {
          sub_10000D01C();
          if (v4 <= 0x3F)
          {
            sub_10000D080(319, &unk_10002E8E0, &type metadata accessor for OpenURLAction);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10000CF34()
{
  if (!qword_10002E8B0)
  {
    v0 = sub_10001BC40();
    if (!v1)
    {
      atomic_store(v0, &qword_10002E8B0);
    }
  }
}

void sub_10000CF84()
{
  if (!qword_10002E8C0)
  {
    sub_10001B760();
    sub_10000DA4C(&qword_10002E8C8, 255, &type metadata accessor for AgeRangeGlobalSharedState);
    v0 = sub_10001B9F0();
    if (!v1)
    {
      atomic_store(v0, &qword_10002E8C0);
    }
  }
}

void sub_10000D01C()
{
  if (!qword_10002E8D8)
  {
    sub_100006560(&qword_10002E828, &qword_10001D370);
    v0 = sub_10001B8F0();
    if (!v1)
    {
      atomic_store(v0, &qword_10002E8D8);
    }
  }
}

void sub_10000D080(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10001B9D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000D134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10000D19C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10000D1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D214()
{
  v2 = *(type metadata accessor for EntryView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000067E8;

  return sub_100007750(v0 + v3);
}

unint64_t sub_10000D2F8()
{
  result = qword_10002E960;
  if (!qword_10002E960)
  {
    sub_100006560(&qword_10002E938, &qword_10001D458);
    sub_10000DA4C(&qword_10002E968, 255, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E960);
  }

  return result;
}

unint64_t sub_10000D3C8()
{
  result = qword_10002E980;
  if (!qword_10002E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E980);
  }

  return result;
}

unint64_t sub_10000D41C()
{
  result = qword_10002E990;
  if (!qword_10002E990)
  {
    sub_100006560(&qword_10002E978, &qword_10001D498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E990);
  }

  return result;
}

uint64_t sub_10000D4A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EntryView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000A30C(v4, a1);
}

unint64_t sub_10000D510()
{
  result = qword_10002E9A0;
  if (!qword_10002E9A0)
  {
    sub_100006560(&qword_10002E998, &qword_10001D4A0);
    type metadata accessor for IntroViewControllerWrapper(255);
    sub_10000DA4C(&qword_10002E9A8, 255, type metadata accessor for IntroViewControllerWrapper);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E9A0);
  }

  return result;
}

uint64_t sub_10000D610(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for EntryView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

char *sub_10000D6A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003C14(&qword_10002EA10, &qword_10001D7F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10000D7B0(uint64_t a1)
{
  v2 = type metadata accessor for IntroViewControllerWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D824(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006560(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D86C()
{
  v1 = (type metadata accessor for EntryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  sub_10000D19C(*(v5 + 48), *(v5 + 56));
  v9 = *(v0 + v3 + 64);
  v10 = *(v0 + v3 + 72);
  v11 = *(v0 + v3 + 80);
  sub_10000D1A8();

  v12 = *(v0 + v3 + 96);

  v13 = v1[13];
  sub_100003C14(&qword_10002E838, &qword_10001D3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10001BA00();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
    v15 = *(v5 + v13);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000D9D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EntryView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10000DA4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10000DA94()
{
  v1[19] = v0;
  sub_10001BDF0();
  v1[20] = sub_10001BDE0();
  v3 = sub_10001BDD0();
  v1[21] = v3;
  v1[22] = v2;

  return _swift_task_switch(sub_10000DB2C, v3, v2);
}

uint64_t sub_10000DB2C()
{
  isa = v0[19].super.isa;
  v2 = sub_100006C00();
  sub_10001B5E0();
  v4 = v3;
  v6 = v5;

  if (v4 && v6)
  {
    v28 = *(v0[19].super.isa + 11);
    v7 = sub_100006C00();
    v8 = sub_10001B5A0();

    if (v8)
    {
      v9 = [v8 ageGates];

      if (v9)
      {
        sub_1000065A8(0, &qword_10002E9E0, NSNumber_ptr);
        sub_10001BDB0();
      }
    }

    v10 = v0[19].super.isa;
    sub_1000065A8(0, &qword_10002E9E0, NSNumber_ptr);
    v27.super.isa = sub_10001BDA0().super.isa;
    v0[23].super.isa = v27.super.isa;

    v26 = sub_10001BD00();
    v0[24].super.isa = v26;

    v11 = sub_10001BD00();
    v0[25].super.isa = v11;

    v12 = sub_100006C00();
    v13 = sub_10001B5F0();

    if (!v13)
    {
      v13 = sub_10001BEF0(0).super.super.isa;
    }

    v0[26].super.isa = v13;
    v14 = v0[19].super.isa;
    v15 = sub_100006C00();
    v16 = sub_10001B5A0();

    v17 = [v16 userAgeOverride];
    v0[27].super.isa = v17;

    v18 = sub_100006C00();
    v19 = sub_10001B5A0();

    v20 = [v19 attestedAtOverrideInDays];
    v0[28].super.isa = v20;

    v0[2].super.isa = v0;
    v0[7].super.isa = &v0[18];
    v0[3].super.isa = sub_10000DF1C;
    v21 = swift_continuation_init();
    v0[17].super.isa = sub_100003C14(&qword_10002E9E8, &qword_10001D508);
    v0[10].super.isa = _NSConcreteStackBlock;
    v0[11].super.isa = 1107296256;
    v0[12].super.isa = sub_10000F2AC;
    v0[13].super.isa = &unk_100029438;
    v0[14].super.isa = v21;
    [v28 shouldPromptAgeRangeWith:v27.super.isa bundleID:v26 appName:v11 privacyVersion:v13 userAgeOverride:v17 attestedAtOverrideInDays:v20 completion:&v0[10]];

    return _swift_continuation_await(&v0[2]);
  }

  else
  {
    v22 = v0[20].super.isa;

    type metadata accessor for AgeRangeError(0);
    v0[18].super.isa = -4014;
    sub_100005574(&_swiftEmptyArrayStorage);
    sub_10000DA4C(&qword_10002E660, 255, type metadata accessor for AgeRangeError);
    sub_10001B370();
    v23 = v0[10].super.isa;
    swift_willThrow();
    v24 = v0[1].super.isa;

    return v24();
  }
}

uint64_t sub_10000DF1C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_10000E0F4;
  }

  else
  {
    v6 = sub_10000E04C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000E04C()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];

  v8 = v0[18];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10000E0F4()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[20];

  swift_willThrow();

  v9 = v0[29];
  v10 = v0[1];

  return v10();
}

uint64_t sub_10000E19C(uint64_t a1)
{
  v1[41] = a1;
  v2 = sub_10001B930();
  v1[42] = v2;
  v3 = *(v2 - 8);
  v1[43] = v3;
  v4 = *(v3 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  sub_10001BDF0();
  v1[47] = sub_10001BDE0();
  v6 = sub_10001BDD0();
  v1[48] = v6;
  v1[49] = v5;

  return _swift_task_switch(sub_10000E2A8, v6, v5);
}

uint64_t sub_10000E2A8()
{
  v1 = v0[41];
  v0[2] = v0;
  v0[7] = v0 + 39;
  v0[3] = sub_10000E3C4;
  v2 = swift_continuation_init();
  v0[25] = sub_100003C14(&qword_10002E9F8, &qword_10001D518);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_10000F2AC;
  v0[21] = &unk_100029460;
  v0[22] = v2;
  [v1 fetchFamilyCircleWithCompletionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000E3C4()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 392);
  v5 = *(v1 + 384);
  if (v3)
  {
    v6 = sub_10000E96C;
  }

  else
  {
    v6 = sub_10000E4F4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000E4F4()
{
  v1 = v0[41];
  v0[51] = v0[39];
  v0[10] = v0;
  v0[15] = v0 + 37;
  v0[11] = sub_10000E618;
  v2 = swift_continuation_init();
  v0[33] = sub_100003C14(&qword_10002EA00, &unk_10001D520);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_10000C330;
  v0[29] = &unk_100029488;
  v0[30] = v2;
  [v1 fetchAltDSIDWithCompletionHandler:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_10000E618()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 416) = v3;
  v4 = *(v1 + 392);
  v5 = *(v1 + 384);
  if (v3)
  {
    v6 = sub_10000EB68;
  }

  else
  {
    v6 = sub_10000E748;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_10000E748()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);

  v3 = sub_10001BE80(*(v0 + 296));

  if ((v3 & 0x100) != 0 && (v3 & 1) != 0 && ([objc_opt_self() isRestrictionsPasscodeSet] & 1) == 0)
  {
    v14 = *(v0 + 368);
    sub_10001B420();
    v15 = sub_10001B920();
    v16 = sub_10001BE40();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 408);
    v19 = *(v0 + 368);
    v20 = *(v0 + 336);
    v21 = *(v0 + 344);
    if (v17)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Showing unconfigured alert - user is child/teen in family and PIN is disabled", v22, 2u);
    }

    (*(v21 + 8))(v19, v20);
    v13 = 1;
  }

  else
  {
    v4 = *(v0 + 360);
    sub_10001B420();
    v5 = sub_10001B920();
    v6 = sub_10001BE40();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 408);
    v9 = *(v0 + 360);
    v10 = *(v0 + 336);
    v11 = *(v0 + 344);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Not showing alert", v12, 2u);
    }

    (*(v11 + 8))(v9, v10);
    v13 = 0;
  }

  v24 = *(v0 + 360);
  v23 = *(v0 + 368);
  v25 = *(v0 + 352);

  v26 = *(v0 + 8);

  return v26(v13);
}

uint64_t sub_10000E96C()
{
  v27 = v0;
  v1 = v0[50];
  v2 = v0[47];

  swift_willThrow();
  v3 = v0[50];
  v4 = v0[44];
  sub_10001B420();
  swift_errorRetain();
  v5 = sub_10001B920();
  v6 = sub_10001BE50();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[43];
    v25 = v0[44];
    v8 = v0[42];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[34];
    v11 = v0[35];
    v13 = v0[36];
    v14 = sub_10001C000();
    v16 = sub_100012460(v14, v15, &v26);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to fetch family circle or primary account: %s, showing unconfigured alert by default", v9, 0xCu);
    sub_100005E48(v10);

    (*(v7 + 8))(v25, v8);
  }

  else
  {
    v18 = v0[43];
    v17 = v0[44];
    v19 = v0[42];

    (*(v18 + 8))(v17, v19);
  }

  v21 = v0[45];
  v20 = v0[46];
  v22 = v0[44];

  v23 = v0[1];

  return v23(1);
}

uint64_t sub_10000EB68()
{
  v28 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[47];

  swift_willThrow();

  v4 = v0[52];
  v5 = v0[44];
  sub_10001B420();
  swift_errorRetain();
  v6 = sub_10001B920();
  v7 = sub_10001BE50();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[43];
    v26 = v0[44];
    v9 = v0[42];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[34];
    v12 = v0[35];
    v14 = v0[36];
    v15 = sub_10001C000();
    v17 = sub_100012460(v15, v16, &v27);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch family circle or primary account: %s, showing unconfigured alert by default", v10, 0xCu);
    sub_100005E48(v11);

    (*(v8 + 8))(v26, v9);
  }

  else
  {
    v19 = v0[43];
    v18 = v0[44];
    v20 = v0[42];

    (*(v19 + 8))(v18, v20);
  }

  v22 = v0[45];
  v21 = v0[46];
  v23 = v0[44];

  v24 = v0[1];

  return v24(1);
}

uint64_t sub_10000ED68()
{
  v1 = (type metadata accessor for EntryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  sub_10000D19C(*(v6 + 48), *(v6 + 56));
  v10 = *(v0 + v3 + 64);
  v11 = *(v0 + v3 + 72);
  v12 = *(v0 + v3 + 80);
  sub_10000D1A8();

  v13 = *(v0 + v3 + 96);

  v14 = v1[13];
  sub_100003C14(&qword_10002E838, &qword_10001D3E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_10001BA00();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
    v16 = *(v6 + v14);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000EEC4(uint64_t a1)
{
  v4 = *(type metadata accessor for EntryView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000066F4;

  return sub_10000BCF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_10000EFC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000F028(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000F070()
{
  sub_100006560(&qword_10002E950, &qword_10001D470);
  sub_100006560(&qword_10002E948, &qword_10001D468);
  sub_100006560(&qword_10002E998, &qword_10001D4A0);
  sub_100006560(&qword_10002E940, &qword_10001D460);
  sub_100006560(&qword_10002E970, &qword_10001D490);
  sub_100006560(&qword_10002E978, &qword_10001D498);
  sub_100006560(&qword_10002E938, &qword_10001D458);
  sub_10000D2F8();
  swift_getOpaqueTypeConformance2();
  sub_10000D3C8();
  sub_10000D824(&qword_10002E988, &qword_10002E970, &qword_10001D490);
  sub_10000D41C();
  swift_getOpaqueTypeConformance2();
  sub_10000D510();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_10000F2B0()
{
  v1 = sub_10001BAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *(v0 + 24);

    sub_10001BE60();
    v8 = sub_10001BB60();
    sub_10001B910();

    sub_10001BAA0();
    swift_getAtKeyPath();
    sub_10000D19C(v9[0], 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }
}

id sub_10000F41C()
{
  v1 = v0;
  v2 = type metadata accessor for IntroViewControllerWrapper(0);
  v3 = v2 - 8;
  v22 = *(v2 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = sub_10001B6A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000F2B0();
  v11 = *(v0 + 48);
  (*(v6 + 16))(v9, v0 + *(v3 + 36), v5);
  v12 = objc_allocWithZone(type metadata accessor for OnboardingIntroViewController(0));

  v13 = sub_10001321C(v10, v11, v9);

  sub_100014B3C(v1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IntroViewControllerWrapper);
  v14 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v15 = swift_allocObject();
  sub_100014A78(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = &v13[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_updateBirthdayTapped];
  v17 = *&v13[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_updateBirthdayTapped];
  v18 = *&v13[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_updateBirthdayTapped + 8];
  *v16 = sub_100014ADC;
  v16[1] = v15;
  sub_100012B0C(v17);
  v19 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v13];

  return v19;
}

uint64_t sub_10000F658(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  sub_100003C14(&qword_10002ECC0, &qword_10001D7D8);
  return sub_10001BC60();
}

uint64_t sub_10000F708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012F24(&qword_10002ECB8, type metadata accessor for IntroViewControllerWrapper);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10000F79C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012F24(&qword_10002ECB8, type metadata accessor for IntroViewControllerWrapper);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10000F830()
{
  sub_100012F24(&qword_10002ECB8, type metadata accessor for IntroViewControllerWrapper);
  sub_10001BB30();
  __break(1u);
}

void sub_10000F918(char a1)
{
  v2 = v1;
  v4 = sub_10001B930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OnboardingIntroViewController(0);
  v22.receiver = v2;
  v22.super_class = v9;
  objc_msgSendSuper2(&v22, "viewWillAppear:", a1 & 1);
  sub_10001B420();
  v10 = sub_10001B920();
  v11 = sub_10001BE70();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "STRemotePasscodeController - Presenting screentime passcode", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  v13 = *&v2[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_flowStore];
  v14 = objc_allocWithZone(sub_10001B7C0());
  v15 = v13;
  v16 = sub_10001B7B0();
  v17 = *&v2[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_screenTimeDelegate];
  *&v2[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_screenTimeDelegate] = v16;
  v18 = v16;

  v19 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_screenTimePasscodeController;
  v20 = *&v2[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_screenTimePasscodeController];
  sub_10001B7F0();

  v21 = *&v2[v19];
  sub_10001B7E0();
}

uint64_t sub_10000FB5C(char a1)
{
  v3 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for OnboardingIntroViewController(0);
  v13.receiver = v1;
  v13.super_class = v7;
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  v8 = sub_10001BE20();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BDF0();

  v10 = sub_10001BDE0();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  sub_100016744(0, 0, v6, &unk_10001D6E0, v11);
}

uint64_t sub_10000FCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_10001B780();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_10001BDF0();
  v4[9] = sub_10001BDE0();
  v9 = sub_10001BDD0();
  v4[10] = v9;
  v4[11] = v8;

  return _swift_task_switch(sub_10000FDC8, v9, v8);
}

uint64_t sub_10000FDC8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_ageRangeContext;
    (*(v0[7] + 104))(v0[8], enum case for OnboardingAnalyticsLogger.AnalyticEventType.navigation(_:), v0[6]);
    v5 = async function pointer to static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)[1];
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_10000FEFC;
    v7 = v0[8];

    return static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(v3 + v4, v7);
  }

  else
  {
    v8 = v0[9];

    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10000FEFC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 88);
  v7 = *(v1 + 80);

  return _swift_task_switch(sub_100015318, v7, v6);
}

uint64_t sub_1000100D4()
{
  v0 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_10001B930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B420();
  v9 = sub_10001B920();
  v10 = sub_10001BE70();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100012460(0x6C466C65636E6163, 0xEC0000002928776FLL, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: Close action.", v11, 0xCu);
    sub_100005E48(v12);
  }

  (*(v5 + 8))(v8, v4);
  v13 = sub_10001BE20();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BDF0();

  v15 = sub_10001BDE0();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &protocol witness table for MainActor;
  v16[4] = v14;

  sub_100016744(0, 0, v3, &unk_10001D6C8, v16);
}

uint64_t sub_1000103A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_10001B780();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_10001BDF0();
  v4[9] = sub_10001BDE0();
  v9 = sub_10001BDD0();
  v4[10] = v9;
  v4[11] = v8;

  return _swift_task_switch(sub_100010498, v9, v8);
}

uint64_t sub_100010498()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v4 = v0[7];
    v3 = v0[8];
    v5 = v0[6];
    v6 = *(Strong + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_flowStore);
    v7 = Strong;
    sub_10001B580();
    v8 = v6;
    v9 = sub_10001B570();
    sub_10001B640();

    v10 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_ageRangeContext;
    (*(v4 + 104))(v3, enum case for OnboardingAnalyticsLogger.AnalyticEventType.close(_:), v5);
    v11 = async function pointer to static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)[1];
    v12 = swift_task_alloc();
    v0[13] = v12;
    *v12 = v0;
    v12[1] = sub_100002410;
    v13 = v0[8];

    return static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(v7 + v10, v13);
  }

  else
  {
    v14 = v0[9];

    v15 = v0[8];

    v16 = v0[1];

    return v16();
  }
}

id sub_1000106DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingIntroViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010880()
{
  result = sub_10001B6A0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100010978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OnboardingIntroViewController.ActionId(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100010A58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OnboardingIntroViewController.ActionId(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100010B1C()
{
  result = type metadata accessor for OnboardingIntroViewController.ActionId(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingIntroViewController.ButtonType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingIntroViewController.ButtonType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100010D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C14(&qword_10002EB50, &qword_10001D600);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100010DB4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100003C14(&qword_10002EB50, &qword_10001D600);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100010E44()
{
  sub_100010E9C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100010E9C()
{
  if (!qword_10002EBD8)
  {
    v0 = sub_10001B3B0();
    if (!v1)
    {
      atomic_store(v0, &qword_10002EBD8);
    }
  }
}

__n128 sub_100010EE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100010EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100010F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100010FA0()
{
  result = qword_10002EC00;
  if (!qword_10002EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EC00);
  }

  return result;
}

Swift::Int sub_10001100C()
{
  v1 = *v0;
  sub_10001C020();
  sub_10001C030(v1);
  return sub_10001C040();
}

Swift::Int sub_100011080()
{
  v1 = *v0;
  sub_10001C020();
  sub_10001C030(v1);
  return sub_10001C040();
}

uint64_t sub_1000110C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000067E8;

  return sub_1000103A4(a1, v4, v5, v6);
}

void sub_1000111B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10001B8A0();
  }
}

uint64_t sub_100011214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10001B930();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_10001BDF0();
  v4[6] = sub_10001BDE0();
  v9 = sub_10001BDD0();

  return _swift_task_switch(sub_100011308, v9, v8);
}

uint64_t sub_100011308()
{
  v36 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[2];

  sub_10001B420();
  v4 = v3;
  v5 = sub_10001B920();
  v6 = sub_10001BE40();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[4];
  v8 = v0[5];
  v10 = &unk_10002E000;
  v11 = v0[3];
  if (v7)
  {
    v34 = v0[5];
    v12 = v0[2];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315138;
    sub_10001B690();
    v15 = sub_10001BDC0();
    v17 = v16;

    v18 = v15;
    v10 = &unk_10002E000;
    v19 = sub_100012460(v18, v17, &v35);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "altDSID in childInFamilyFlow: %s)", v13, 0xCu);
    sub_100005E48(v14);

    (*(v9 + 8))(v34, v11);
  }

  else
  {

    (*(v9 + 8))(v8, v11);
  }

  v20 = v0[2];
  v21 = v10[325];
  sub_10001B690();
  v22 = sub_10001B520();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_10001B510();
  v26 = *&v20[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_flowStore];
  v27 = *&v20[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_sharedState];

  v28 = sub_100012F78(v26, v25, v27, &v20[v21]);

  v29 = [v20 navigationController];
  if (v29)
  {
    v30 = v29;
    [v29 pushViewController:v28 animated:1];
  }

  v31 = v0[5];

  v32 = v0[1];

  return v32();
}

void sub_100011598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_10001BE20();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_10001BDF0();
    v12 = v10;
    v13 = sub_10001BDE0();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v12;
    sub_100016744(0, 0, v8, a4, v14);
  }
}

uint64_t sub_1000116E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10001B780();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_10001B930();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_10001BDF0();
  v4[9] = sub_10001BDE0();
  v12 = sub_10001BDD0();
  v4[10] = v12;
  v4[11] = v11;

  return _swift_task_switch(sub_100011838, v12, v11);
}

uint64_t sub_100011838()
{
  v1 = v0[8];
  sub_10001B420();
  v2 = sub_10001B920();
  v3 = sub_10001BE70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Continue button tapped", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[2];

  (*(v6 + 8))(v5, v7);
  v9 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_ageRangeContext;
  v0[12] = *(v8 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_flowStore);
  v0[13] = v9;
  v10 = sub_10001B660();
  v0[14] = v10;
  v11 = *(v8 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_sharedState);
  v0[15] = v11;

  v12 = sub_10001B690();
  v0[16] = v12;
  v13 = async function pointer to AgeRangeAlertFlowStore.handleContinueAction(with:sharedState:altDSIDList:)[1];
  v14 = swift_task_alloc();
  v0[17] = v14;
  *v14 = v0;
  v14[1] = sub_1000119D4;

  return AgeRangeAlertFlowStore.handleContinueAction(with:sharedState:altDSIDList:)(v10, v11, v12);
}

uint64_t sub_1000119D4()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v11 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_100011DC4;
  }

  else
  {
    v8 = v2[15];
    v7 = v2[16];
    v9 = v2[14];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_100011B08;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100011B08()
{
  v1 = v0[13];
  v2 = v0[2];
  (*(v0[4] + 104))(v0[5], enum case for OnboardingAnalyticsLogger.AnalyticEventType.complete(_:), v0[3]);
  v3 = async function pointer to static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_100011BCC;
  v5 = v0[5];

  return static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(v2 + v1, v5);
}

uint64_t sub_100011BCC()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 88);
  v7 = *(v1 + 80);

  return _swift_task_switch(sub_100011D50, v7, v6);
}

uint64_t sub_100011D50()
{
  v1 = v0[9];

  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100011DC4()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[9];

  v7 = sub_10001B380();
  sub_10001B640();

  v8 = v0[8];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

void sub_100011E8C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_flowStore);
    sub_10001B640();
  }
}

void sub_100011F00()
{
  v0 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_10001B930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_10001B420();
    v11 = sub_10001B920();
    v12 = sub_10001BE30();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Taking the user to acount personal information for changing their birthdate", v13, 2u);
    }

    (*(v5 + 8))(v8, v4);
    v14 = *&v10[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_updateBirthdayTapped];
    if (v14)
    {
      v15 = *&v10[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_updateBirthdayTapped + 8];

      v14(v16);
      sub_100012B0C(v14);
    }

    v17 = sub_10001BE20();
    (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
    sub_10001BDF0();
    v18 = v10;
    v19 = sub_10001BDE0();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    sub_100016744(0, 0, v3, &unk_10001D828, v20);

    v21 = *&v18[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_flowStore];
    sub_10001B580();
    v22 = v21;
    v23 = sub_10001B530();
    sub_10001B640();
  }
}

uint64_t sub_1000121D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_10001B780();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  sub_10001BDF0();
  v4[6] = sub_10001BDE0();
  v9 = sub_10001BDD0();
  v4[7] = v9;
  v4[8] = v8;

  return _swift_task_switch(sub_1000122C8, v9, v8);
}

uint64_t sub_1000122C8()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_ageRangeContext;
  (*(v0[4] + 104))(v0[5], enum case for OnboardingAnalyticsLogger.AnalyticEventType.updateBirthday(_:), v0[3]);
  v3 = async function pointer to static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100002E40;
  v5 = v0[5];

  return static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(v1 + v2, v5);
}

uint64_t sub_100012390(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100012404(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100012460(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100012460(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10001252C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000EFC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005E48(v11);
  return v7;
}

unint64_t sub_10001252C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100012638(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10001BF60();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100012638(uint64_t a1, unint64_t a2)
{
  v4 = sub_100012684(a1, a2);
  sub_1000127B4(&off_1000291C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100012684(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1000128A0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001BF60();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001BD80();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000128A0(v10, 0);
        result = sub_10001BF40();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000127B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100012914(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000128A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003C14(&qword_10002EC08, &qword_10001D6D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100012914(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003C14(&qword_10002EC08, &qword_10001D6D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100012A08(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100012A18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012A58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000067E8;

  return sub_10000FCD4(a1, v4, v5, v6);
}

uint64_t sub_100012B0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100012B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001B6A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100012BF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001B6A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100012CB4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100012CEC()
{
  sub_100012DA0();
  if (v0 <= 0x3F)
  {
    sub_100012DF0();
    if (v1 <= 0x3F)
    {
      sub_100012E48();
      if (v2 <= 0x3F)
      {
        sub_10001B6A0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100012DA0()
{
  if (!qword_10002EC78)
  {
    v0 = sub_10001BC70();
    if (!v1)
    {
      atomic_store(v0, &qword_10002EC78);
    }
  }
}

void sub_100012DF0()
{
  if (!qword_10002E8B8)
  {
    sub_10001B650();
    v0 = sub_10001B9D0();
    if (!v1)
    {
      atomic_store(v0, &qword_10002E8B8);
    }
  }
}

void sub_100012E48()
{
  if (!qword_10002EC80)
  {
    sub_10001B760();
    sub_100012F24(&qword_10002E8C8, &type metadata accessor for AgeRangeGlobalSharedState);
    v0 = sub_10001BA30();
    if (!v1)
    {
      atomic_store(v0, &qword_10002EC80);
    }
  }
}

uint64_t sub_100012F24(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100012F78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = sub_10001B6A0();
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v29[3] = sub_10001B520();
  v29[4] = &protocol witness table for ChildInfoService;
  v29[0] = a2;
  v15 = objc_allocWithZone(UIViewController);

  v16 = [v15 init];
  v17 = sub_10001BE20();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  sub_100014EBC(v29, v28);
  (*(v8 + 16))(v10, a4, v7);
  sub_10001BDF0();
  v18 = a1;
  v19 = v27;

  v20 = v16;
  v21 = sub_10001BDE0();
  v22 = (*(v8 + 80) + 88) & ~*(v8 + 80);
  v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v21;
  *(v24 + 3) = &protocol witness table for MainActor;
  sub_100015010(v28, (v24 + 32));
  *(v24 + 9) = v18;
  *(v24 + 10) = v19;
  (*(v8 + 32))(&v24[v22], v10, v26);
  *&v24[v23] = v20;
  sub_100016744(0, 0, v14, &unk_10001D808, v24);

  sub_100005E48(v29);
  return v20;
}

uint64_t sub_10001321C(void (*a1)(void, void, void), unsigned int (**a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v167 = a3;
  v181 = a2;
  v178 = a1;
  v173 = sub_10001B3B0();
  v175 = *(v173 - 8);
  v4 = *(v175 + 64);
  v5 = __chkstk_darwin(v173);
  v171 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v6;
  __chkstk_darwin(v5);
  v180 = &v158 - v7;
  v8 = type metadata accessor for OnboardingIntroViewController.ActionId(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v176 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for OnboardingIntroViewController.ButtonModel(0);
  v169 = *(v179 - 8);
  v177 = v179 - 8;
  v170 = v169;
  v11 = *(v169 + 64);
  __chkstk_darwin(v179 - 8);
  v174 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001B3D0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10001BCF0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = &v3[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_updateBirthdayTapped];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_screenTimePasscodeController;
  sub_10001B830();
  v19 = objc_allocWithZone(sub_10001B800());
  *&v3[v18] = sub_10001B7D0();
  *&v3[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_screenTimeDelegate] = 0;
  v20 = &v3[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_privacyBundleId];
  v21 = v3;
  v185 = v3;
  *v20 = 0xD00000000000001DLL;
  *(v20 + 1) = 0x800000010001E230;
  v22 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_childInFamilyFeatures;
  v182 = sub_100003C14(&qword_10002ECC8, &qword_10001D7E0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10001D540;
  sub_10001BCE0();
  sub_10001B3C0();
  v24 = sub_10001BD50();
  v26 = v25;
  sub_10001BCE0();
  sub_10001B3C0();
  v27 = sub_10001BD50();
  v168 = 0x800000010001E2C0;
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  *(v23 + 48) = v27;
  *(v23 + 56) = v28;
  *(v23 + 64) = 0xD000000000000011;
  *(v23 + 72) = 0x800000010001E2C0;
  sub_10001BCE0();
  sub_10001B3C0();
  v29 = sub_10001BD50();
  v31 = v30;
  sub_10001BCE0();
  sub_10001B3C0();
  v32 = sub_10001BD50();
  *(v23 + 80) = v29;
  *(v23 + 88) = v31;
  *(v23 + 96) = v32;
  *(v23 + 104) = v33;
  *(v23 + 112) = 0x73696C6B63656863;
  *(v23 + 120) = 0xE900000000000074;
  sub_10001BCE0();
  sub_10001B3C0();
  v34 = sub_10001BD50();
  v36 = v35;
  sub_10001BCE0();
  sub_10001B3C0();
  v37 = sub_10001BD50();
  v183 = 0x800000010001E3B0;
  *(v23 + 128) = v34;
  *(v23 + 136) = v36;
  *(v23 + 144) = v37;
  *(v23 + 152) = v38;
  *(v23 + 160) = 0xD000000000000019;
  *(v23 + 168) = 0x800000010001E3B0;
  *&v166 = 0xD000000000000019;
  v163 = v22;
  *&v22[v21] = v23;
  v39 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_teenOutsideFamilyFeatures;
  v40 = swift_allocObject();
  v184 = xmmword_10001D550;
  *(v40 + 16) = xmmword_10001D550;
  sub_10001BCE0();
  sub_10001B3C0();
  v41 = sub_10001BD50();
  v43 = v42;
  sub_10001BCE0();
  sub_10001B3C0();
  v44 = sub_10001BD50();
  *(v40 + 32) = v41;
  *(v40 + 40) = v43;
  *(v40 + 48) = v44;
  *(v40 + 56) = v45;
  v46 = v168;
  *(v40 + 64) = 0xD000000000000011;
  *(v40 + 72) = v46;
  sub_10001BCE0();
  sub_10001B3C0();
  v47 = sub_10001BD50();
  v49 = v48;
  sub_10001BCE0();
  sub_10001B3C0();
  v50 = sub_10001BD50();
  *(v40 + 80) = v47;
  *(v40 + 88) = v49;
  *(v40 + 96) = v50;
  *(v40 + 104) = v51;
  v52 = v183;
  *(v40 + 112) = 0xD000000000000019;
  *(v40 + 120) = v52;
  v53 = v185;
  v162 = v39;
  *&v39[v185] = v40;
  v54 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_adultFeatures;
  v55 = swift_allocObject();
  *(v55 + 16) = v184;
  sub_10001BCE0();
  sub_10001B3C0();
  v56 = sub_10001BD50();
  v58 = v57;
  sub_10001BCE0();
  sub_10001B3C0();
  v59 = sub_10001BD50();
  *(v55 + 32) = v56;
  *(v55 + 40) = v58;
  *(v55 + 48) = v59;
  *(v55 + 56) = v60;
  *(v55 + 64) = 0xD000000000000011;
  *(v55 + 72) = v46;
  sub_10001BCE0();
  sub_10001B3C0();
  v61 = sub_10001BD50();
  v63 = v62;
  sub_10001BCE0();
  sub_10001B3C0();
  v64 = sub_10001BD50();
  *(v55 + 80) = v61;
  *(v55 + 88) = v63;
  *(v55 + 96) = v64;
  *(v55 + 104) = v65;
  v66 = v183;
  *(v55 + 112) = v166;
  *(v55 + 120) = v66;
  v159 = v54;
  *&v53[v54] = v55;
  v182 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_childInFamilyButtons;
  v183 = sub_100003C14(&qword_10002ECD0, &qword_10001D7E8);
  v177 = *(v169 + 72);
  v67 = (*(v170 + 80) + 32) & ~*(v170 + 80);
  v68 = swift_allocObject();
  v166 = xmmword_10001CD60;
  *(v68 + 16) = xmmword_10001CD60;
  v69 = v68 + v67;
  sub_10001BCE0();
  sub_10001B3C0();
  v70 = sub_10001BD50();
  v170 = v71;
  v72 = *(v179 + 24);
  v73 = sub_100003C14(&qword_10002EB50, &qword_10001D600);
  v160 = *(v73 - 8);
  v168 = *(v160 + 56);
  v168(v68 + v67 + v72, 1, 4, v73);
  v74 = v170;
  *v69 = v70;
  *(v69 + 8) = v74;
  *(v69 + 16) = 0;
  *&v185[v182] = v68;
  v75 = v177;
  v170 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_teenAdultOutsideFamilyButtons;
  v76 = swift_allocObject();
  v169 = v76;
  *(v76 + 16) = v184;
  v161 = v67;
  v77 = v76 + v67;
  sub_10001BCE0();
  sub_10001B3C0();
  v78 = sub_10001BD50();
  v80 = v79;
  v81 = v179;
  v82 = v168;
  v168(v77 + *(v179 + 24), 2, 4, v73);
  *v77 = v78;
  *(v77 + 8) = v80;
  *(v77 + 16) = 0;
  v83 = v77 + v75;
  sub_10001BCE0();
  sub_10001B3C0();
  v84 = sub_10001BD50();
  v86 = v85;
  v87 = v81;
  v88 = v170;
  v89 = v83 + *(v87 + 24);
  v183 = v73;
  v82(v89, 4, 4, v73);
  *v83 = v84;
  *(v83 + 8) = v86;
  *(v83 + 16) = 1;
  v90 = v185;
  *&v185[v88] = v169;
  v91 = v178;
  *(v90 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_flowStore) = v178;
  v92 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_ageRangeContext;
  v93 = sub_10001B6A0();
  v94 = *(v93 - 8);
  (*(v94 + 16))(v90 + v92, v167, v93);
  *(v90 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_sharedState) = v181;
  v95 = v91;

  v96 = sub_10001B670();
  v165 = v93;
  v164 = v94;
  if (v96 == 1)
  {
    *(v90 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_features) = *&v162[v90];
  }

  else
  {
    if (!v96)
    {
      *(v90 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_features) = *&v163[v90];
      *(v90 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_buttonModels) = *(v90 + v182);

      sub_10001BCE0();
      sub_10001B3C0();
      sub_10001BD50();
      sub_10001BCE0();
      sub_10001B3C0();
      sub_10001BD50();
      goto LABEL_8;
    }

    if ((v96 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
LABEL_31:
      result = sub_10001BF70();
      __break(1u);
      return result;
    }

    *(v90 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_features) = *(v90 + v159);
  }

  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  *(v90 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_buttonModels) = *(v90 + v88);

  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
LABEL_8:
  v97 = [objc_opt_self() systemBlueColor];
  v98 = objc_opt_self();
  v99 = [v98 configurationWithHierarchicalColor:v97];

  v100 = sub_10001BD00();
  v182 = objc_opt_self();
  v101 = [v182 _systemImageNamed:v100];

  v163 = v99;
  if (v101)
  {
    v102 = [v101 imageWithConfiguration:v99];
  }

  else
  {
    v102 = 0;
  }

  v103 = sub_10001BD00();

  v104 = sub_10001BD00();

  v105 = type metadata accessor for OnboardingIntroViewController(0);
  v186.receiver = v90;
  v186.super_class = v105;
  v162 = v102;
  v106 = objc_msgSendSuper2(&v186, "initWithTitle:detailText:icon:contentLayout:", v103, v104, v102, 2);

  v107 = v106;
  *&v184 = [v98 configurationPreferringMonochrome];
  v185 = v107;
  v108 = *&v107[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_features];
  v109 = *(v108 + 16);

  v181 = v109;
  if (v109)
  {
    v110 = 0;
    v111 = (v108 + 72);
    while (v110 < *(v108 + 16))
    {
      v113 = *(v111 - 1);
      v112 = *v111;
      v115 = *(v111 - 3);
      v114 = *(v111 - 2);
      v116 = *(v111 - 5);
      v117 = *(v111 - 4);

      v118 = sub_10001BD00();
      v119 = sub_10001BD00();
      v120 = sub_10001BD00();
      v121 = [v182 systemImageNamed:v120 withConfiguration:v184];

      if (!v121)
      {
        v121 = [objc_allocWithZone(UIImage) init];
      }

      v110 = (v110 + 1);
      [v185 addBulletedListItemWithTitle:v118 description:v119 image:v121];

      v111 += 6;
      if (v181 == v110)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_17:

  v122 = v185;
  v123 = *&v185[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_buttonModels];
  v124 = *(v123 + 16);
  v125 = &off_10002D000;
  v126 = v176;
  v127 = v177;
  if (v124)
  {
    v128 = v123 + v161;
    v182 = *(v179 + 24);
    v181 = (v160 + 48);
    v170 = v175 + 32;
    v169 = v175 + 16;
    v168 = (v175 + 8);
    v161 = v123;

    v129 = v174;
    do
    {
      sub_100014B3C(v128, v129, type metadata accessor for OnboardingIntroViewController.ButtonModel);
      v132 = OBLinkTrayButton_ptr;
      if (!*(v129 + 16))
      {
        v132 = OBBoldTrayButton_ptr;
      }

      v133 = *v132;
      if (*(v129 + 16))
      {
        v134 = &selRef_linkButton;
      }

      else
      {
        v134 = &selRef_boldButton;
      }

      v135 = [objc_opt_self() *v134];
      v136 = *v129;
      v137 = *(v129 + 8);
      v138 = v135;
      v139 = sub_10001BD00();
      [v138 setTitle:v139 forState:0];

      sub_100014B3C(v129 + v182, v126, type metadata accessor for OnboardingIntroViewController.ActionId);
      if ((*v181)(v126, 4, v183))
      {
        sub_100014BA4();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v130 = sub_10001BF10();
      }

      else
      {
        v140 = v175;
        v178 = *(v175 + 32);
        v141 = v180;
        v142 = v173;
        v178(v180, v126, v173);
        v179 = sub_100014BA4();
        v143 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v144 = v171;
        (*(v140 + 16))(v171, v141, v142);
        v145 = (*(v140 + 80) + 24) & ~*(v140 + 80);
        v146 = swift_allocObject();
        *(v146 + 16) = v143;
        v147 = v146 + v145;
        v127 = v177;
        v178(v147, v144, v142);
        v129 = v174;

        v126 = v176;
        v130 = sub_10001BF10();
        v148 = *(v140 + 8);
        v122 = v185;
        v149 = v142;
        v125 = &off_10002D000;
        v148(v180, v149);
      }

      [v138 addAction:v130 forControlEvents:0x2000];

      v131 = [v122 v125[256]];
      [v131 addButton:v138];

      sub_100014BF8(v129);
      v128 += v127;
      --v124;
    }

    while (v124);
  }

  v150 = v122;
  v151 = [v150 v125[256]];
  sub_100003C14(&qword_10002EA10, &qword_10001D7F0);
  v152 = swift_allocObject();
  *(v152 + 16) = v166;
  v153 = *&v150[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_privacyBundleId + 8];
  *(v152 + 32) = *&v150[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension29OnboardingIntroViewController_privacyBundleId];
  *(v152 + 40) = v153;

  isa = sub_10001BDA0().super.isa;

  [v151 setPrivacyLinkForBundles:isa];

  v155 = [v150 navigationItem];
  v156 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v150 action:"cancelFlow"];

  [v155 setLeftBarButtonItem:v156];
  (*(v164 + 8))(v167, v165);
  return v150;
}

uint64_t sub_100014974()
{
  v1 = (type metadata accessor for IntroViewControllerWrapper(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  sub_10000D19C(*(v0 + v3 + 24), *(v0 + v3 + 32));
  v7 = *(v0 + v3 + 48);

  v8 = v1[9];
  v9 = sub_10001B6A0();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100014A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroViewControllerWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014ADC()
{
  v1 = *(type metadata accessor for IntroViewControllerWrapper(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_10000F658(v2);
}

uint64_t sub_100014B3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100014BA4()
{
  result = qword_10002EE10;
  if (!qword_10002EE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002EE10);
  }

  return result;
}

uint64_t sub_100014BF8(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingIntroViewController.ButtonModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014CCC()
{
  v1 = sub_10001B3B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100014D90()
{
  v1 = *(*(sub_10001B3B0() - 8) + 80);
  v2 = *(v0 + 16);

  sub_1000111B4();
}

uint64_t sub_100014E08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000067E8;

  return sub_100011214(a1, v4, v5, v6);
}

uint64_t sub_100014EBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100014F20()
{
  v1 = sub_10001B6A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_100005E48((v0 + 32));

  v7 = *(v0 + 80);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100015010(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100015028(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10001B6A0() - 8);
  v6 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[9];
  v10 = v1[10];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000066F4;

  return sub_100003CC4(a1, v7, v8, (v1 + 4), v9, v10, v1 + v6, v11);
}

uint64_t sub_100015164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000067E8;

  return sub_1000116E8(a1, v4, v5, v6);
}

uint64_t sub_100015218()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015258(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000067E8;

  return sub_1000121D4(a1, v4, v5, v6);
}

id sub_10001531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_containerView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_iconView;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v8 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_titleLabel;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_subtitleLabel;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_accessoryImageView;
  *&v3[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_borderColorNormal;
  *&v3[v11] = [objc_allocWithZone(UIColor) initWithRed:0.768627451 green:0.768627451 blue:0.776470588 alpha:1.0];
  v12 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_borderColorSelected;
  *&v3[v12] = [objc_opt_self() systemBlueColor];
  if (a3)
  {
    v13 = sub_10001BD00();
  }

  else
  {
    v13 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for ShareAgeRangeCell();
  v14 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v13);

  v15 = v14;
  sub_1000157AC();
  sub_100015C70();
  [v15 setSelectionStyle:0];

  return v15;
}

id sub_100015550(char a1, char a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for ShareAgeRangeCell();
  if (a1)
  {
    v5 = 1.5;
  }

  else
  {
    v5 = 1.0;
  }

  if (a1)
  {
    v6 = &OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_borderColorSelected;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_borderColorNormal;
  }

  objc_msgSendSuper2(&v16, "setSelected:animated:", a1 & 1, a2 & 1);
  v7 = *&v2[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_containerView];
  v8 = [v7 layer];
  v9 = [*&v2[*v6] CGColor];
  [v8 setBorderColor:v9];

  v10 = [v7 layer];
  [v10 setBorderWidth:v5];

  v11 = *&v2[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_accessoryImageView];
  v12 = [objc_opt_self() systemBlueColor];
  [v11 setTintColor:v12];

  v13 = sub_10001BD00();

  v14 = [objc_opt_self() systemImageNamed:v13];

  [v11 setImage:v14];
  return [v11 setNeedsLayout];
}

void sub_1000157AC()
{
  v1 = *&v0[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_containerView];
  v2 = [v1 layer];
  [v2 setCornerRadius:26.0];

  v3 = [v1 layer];
  [v3 setBorderWidth:1.0];

  v4 = [v1 layer];
  v5 = [*&v0[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_borderColorNormal] CGColor];
  [v4 setBorderColor:v5];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setClipsToBounds:1];
  v6 = [v0 contentView];
  [v6 addSubview:v1];

  sub_100003C14(&qword_10002ED38, qword_10001D8A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001D850;
  v8 = *&v0[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_iconView];
  *(inited + 32) = v8;
  v9 = *&v0[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_titleLabel];
  *(inited + 40) = v9;
  v10 = *&v0[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_subtitleLabel];
  *(inited + 48) = v10;
  v11 = *&v0[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_accessoryImageView];
  *(inited + 56) = v11;
  v12 = inited & 0xC000000000000001;
  v33 = v8;
  v32 = v9;
  v13 = v10;
  v14 = v11;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = v33; ; i = sub_10001BF50())
  {
    v16 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v16];

    if (v12)
    {
      v17 = sub_10001BF50();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v17 = *(inited + 40);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v18];

    if (v12)
    {
      v19 = sub_10001BF50();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v20];

    v31 = v14;
    if (v12)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v21 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v21 = sub_10001BF50();
LABEL_13:
  v22 = v21;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v22];

  swift_setDeallocating();
  v23 = *(inited + 16);
  swift_arrayDestroy();
  v24 = objc_opt_self();
  v25 = [v24 systemFontOfSize:17.0 weight:UIFontWeightSemibold];
  [v32 setFont:v25];

  v26 = objc_opt_self();
  v27 = [v26 blackColor];
  [v32 setTextColor:v27];

  v28 = [v24 systemFontOfSize:17.0];
  [v13 setFont:v28];

  [v13 setNumberOfLines:0];
  [v13 setLineBreakMode:0];
  v29 = [v26 secondaryLabelColor];
  [v13 setTextColor:v29];

  [v33 setContentMode:1];
  [v31 setContentMode:1];
  v30 = [v26 systemBlueColor];
  [v31 setTintColor:v30];
}

void sub_100015C70()
{
  v1 = v0;
  v65 = objc_opt_self();
  sub_100003C14(&qword_10002ED38, qword_10001D8A8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10001D860;
  v3 = *&v1[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_containerView];
  v4 = [v3 topAnchor];
  v5 = [v1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [v3 bottomAnchor];
  v9 = [v1 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v2 + 40) = v11;
  v12 = [v3 leadingAnchor];
  v13 = [v1 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v2 + 48) = v15;
  v16 = [v3 trailingAnchor];
  v17 = [v1 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v2 + 56) = v19;
  v20 = *&v1[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_iconView];
  v21 = [v20 leadingAnchor];
  v22 = [v3 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:20.0];

  *(v2 + 64) = v23;
  v24 = [v20 centerYAnchor];
  v25 = *&v1[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_titleLabel];
  v26 = [v25 firstBaselineAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  *(v2 + 72) = v27;
  v28 = [v20 widthAnchor];
  v29 = [v28 constraintEqualToConstant:34.0];

  *(v2 + 80) = v29;
  v30 = [v20 heightAnchor];
  v31 = [v30 constraintEqualToConstant:34.0];

  *(v2 + 88) = v31;
  v32 = [v25 leadingAnchor];
  v33 = [v20 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:20.0];

  *(v2 + 96) = v34;
  v35 = [v25 topAnchor];
  v36 = [v3 topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];

  *(v2 + 104) = v37;
  v38 = [v25 trailingAnchor];
  v39 = *&v1[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_accessoryImageView];
  v40 = [v39 leadingAnchor];
  v41 = [v38 constraintLessThanOrEqualToAnchor:v40 constant:-20.0];

  *(v2 + 112) = v41;
  v42 = *&v1[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_subtitleLabel];
  v43 = [v42 leadingAnchor];
  v44 = [v25 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v2 + 120) = v45;
  v46 = [v42 topAnchor];
  v47 = [v25 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:8.0];

  *(v2 + 128) = v48;
  v49 = [v42 trailingAnchor];
  v50 = [v25 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v2 + 136) = v51;
  v52 = [v42 bottomAnchor];
  v53 = [v3 bottomAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:-20.0];

  *(v2 + 144) = v54;
  v55 = [v39 trailingAnchor];
  v56 = [v3 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:-20.0];

  *(v2 + 152) = v57;
  v58 = [v39 centerYAnchor];
  v59 = [v25 firstBaselineAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v2 + 160) = v60;
  v61 = [v39 widthAnchor];
  v62 = [v61 constraintEqualToConstant:24.0];

  *(v2 + 168) = v62;
  v63 = [v39 heightAnchor];
  v64 = [v63 constraintEqualToConstant:24.0];

  *(v2 + 176) = v64;
  sub_100016590();
  isa = sub_10001BDA0().super.isa;

  [v65 activateConstraints:isa];
}

id sub_10001649C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareAgeRangeCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100016590()
{
  result = qword_10002ED40;
  if (!qword_10002ED40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002ED40);
  }

  return result;
}

void sub_1000165DC()
{
  v1 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_containerView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_iconView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_titleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_subtitleLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_accessoryImageView;
  *(v0 + v5) = [objc_allocWithZone(UIImageView) init];
  v6 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_borderColorNormal;
  *(v0 + v6) = [objc_allocWithZone(UIColor) initWithRed:0.768627451 green:0.768627451 blue:0.776470588 alpha:1.0];
  v7 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_borderColorSelected;
  *(v0 + v7) = [objc_opt_self() systemBlueColor];
  sub_10001BF70();
  __break(1u);
}

uint64_t sub_100016744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003C14(&qword_10002EE00, &qword_10001CE00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100005EDC(a3, v26 - v10, &qword_10002EE00, &qword_10001CE00);
  v12 = sub_10001BE20();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005DE8(v11, &qword_10002EE00, &qword_10001CE00);
  }

  else
  {
    sub_10001BE10();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10001BDD0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10001BD60() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100005DE8(a3, &qword_10002EE00, &qword_10001CE00);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005DE8(a3, &qword_10002EE00, &qword_10001CE00);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_100016A44()
{
  v1 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for ShareAgeRangeViewController();
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v6 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  [v0 setTableView:v6];

  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  result = [v0 tableView];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  [result setRowHeight:UITableViewAutomaticDimension];

  result = [v0 tableView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = result;
  v11 = [objc_opt_self() systemBackgroundColor];
  [v10 setBackgroundColor:v11];

  result = [v0 tableView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  type metadata accessor for ShareAgeRangeCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = sub_10001BD00();
  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  result = [v0 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = result;
  [result setDataSource:v0];

  result = [v0 tableView];
  if (result)
  {
    v16 = result;
    [result setDelegate:v0];

    v17 = sub_10001BE20();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10001BDF0();

    v19 = sub_10001BDE0();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;

    sub_100016744(0, 0, v4, &unk_10001D978, v20);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100016DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_10001B820();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_10001BDF0();
  v4[9] = sub_10001BDE0();
  v9 = sub_10001BDD0();
  v4[10] = v9;
  v4[11] = v8;

  return _swift_task_switch(sub_100016EA4, v9, v8);
}

uint64_t sub_100016EA4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_ageRangeContext;
    (*(v0[7] + 104))(v0[8], enum case for AgeRangeAnalyticsOnboardingView.chooseHowToShareChildTeenVersion(_:), v0[6]);
    v5 = async function pointer to static OnboardingAnalyticsLogger.logNavigationEvent(ageRangeContext:view:)[1];
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_100002410;
    v7 = v0[8];

    return static OnboardingAnalyticsLogger.logNavigationEvent(ageRangeContext:view:)(v3 + v4, v7);
  }

  else
  {
    v8 = v0[9];

    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t type metadata accessor for ShareAgeRangeViewController()
{
  result = qword_10002EDA0;
  if (!qword_10002EDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001721C()
{
  v0 = sub_10001B6A0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100017318();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100017318()
{
  if (!qword_10002EDB0)
  {
    sub_10001B410();
    v0 = sub_10001BF20();
    if (!v1)
    {
      atomic_store(v0, &qword_10002EDB0);
    }
  }
}

uint64_t sub_100017370()
{
  v0 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v24[-v2 - 8];
  v4 = sub_100003C14(&qword_10002EDE8, &qword_10001D930);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24[-v6 - 8];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_100019EF8();
    v11 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_selectedIndexPath;
    swift_beginAccess();
    sub_100005EDC(v9 + v11, v7, &qword_10002EDE8, &qword_10001D930);
    v12 = sub_10001B410();
    if ((*(*(v12 - 8) + 48))(v7, 1, v12))
    {
      result = sub_100005DE8(v7, &qword_10002EDE8, &qword_10001D930);
      v13 = 0;
    }

    else
    {
      v13 = sub_10001B400();
      result = sub_100005DE8(v7, &qword_10002EDE8, &qword_10001D930);
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    if (v13 < *(v10 + 16))
    {
      v14 = v10 + 56 * v13;
      v15 = *(v14 + 32);
      v16 = *(v14 + 48);
      v17 = *(v14 + 64);
      v28 = *(v14 + 80);
      v27 = v17;
      v25 = v15;
      v26 = v16;
      sub_10001B1A4(&v25, v24);

      v18 = sub_10001BE20();
      (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10001BDF0();

      v20 = sub_10001BDE0();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = &protocol witness table for MainActor;
      *(v21 + 32) = v19;
      v22 = v26;
      *(v21 + 40) = v25;
      *(v21 + 56) = v22;
      *(v21 + 72) = v27;
      *(v21 + 88) = v28;

      sub_100016744(0, 0, v3, &unk_10001DA40, v21);
    }

LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_100017678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_10001B780();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_10001B930();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  sub_10001BDF0();
  v5[13] = sub_10001BDE0();
  v13 = sub_10001BDD0();
  v5[14] = v13;
  v5[15] = v12;

  return _swift_task_switch(sub_1000177C8, v13, v12);
}

uint64_t sub_1000177C8()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[12];
    sub_10001B420();
    v5 = sub_10001B920();
    v6 = sub_10001BE70();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Share age range tapped", v7, 2u);
    }

    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];
    v11 = v0[6];

    (*(v9 + 8))(v8, v10);
    v12 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_flowStore;
    v0[17] = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_flowStore;
    v13 = *(v3 + v12);
    v14 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_ageRangeContext;
    v0[18] = v13;
    v0[19] = v14;
    v13;
    v15 = sub_10001B660();
    v0[20] = v15;
    v16 = *(v11 + 32);
    v17 = *(v3 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_sharedState);
    v0[21] = v17;

    v18 = sub_10001B690();
    v0[22] = v18;
    v19 = async function pointer to AgeRangeAlertFlowStore.handleShareAgeRangeAction(with:selectedState:sharedState:altDSIDList:)[1];
    v20 = swift_task_alloc();
    v0[23] = v20;
    *v20 = v0;
    v20[1] = sub_100017A04;

    return AgeRangeAlertFlowStore.handleShareAgeRangeAction(with:selectedState:sharedState:altDSIDList:)(v15, (v16 + 1), v17, v18);
  }

  else
  {
    v21 = v0[13];

    v22 = v0[12];
    v23 = v0[9];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100017A04()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v12 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_100017E08;
  }

  else
  {
    v8 = v2[21];
    v7 = v2[22];
    v9 = v2[20];
    v10 = v2[18];

    v4 = v2[14];
    v5 = v2[15];
    v6 = sub_100017B40;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100017B40()
{
  v1 = v0[19];
  v2 = v0[16];
  (*(v0[8] + 104))(v0[9], enum case for OnboardingAnalyticsLogger.AnalyticEventType.complete(_:), v0[7]);
  v3 = async function pointer to static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)[1];
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_100017C08;
  v5 = v0[9];

  return static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(v2 + v1, v5);
}

uint64_t sub_100017C08()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 120);
  v7 = *(v1 + 112);

  return _swift_task_switch(sub_100017D8C, v7, v6);
}

uint64_t sub_100017D8C()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100017E08()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v17 = v0[19];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  v11 = *(v7 + v6);
  v12 = sub_10001B380();
  sub_10001B640();

  (*(v9 + 104))(v8, enum case for OnboardingAnalyticsLogger.AnalyticEventType.close(_:), v10);
  v13 = async function pointer to static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)[1];
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_100017F4C;
  v15 = v0[9];

  return static OnboardingAnalyticsLogger.logAnalyticsEvent(ageRangeContext:eventType:)(v7 + v17, v15);
}

uint64_t sub_100017F4C()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *(*v0 + 56);
  v9 = *v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 120);
  v7 = *(v1 + 112);

  return _swift_task_switch(sub_1000180D0, v7, v6);
}

uint64_t sub_1000180D0()
{
  v1 = v0[24];
  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[12];
  v5 = v0[9];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100018158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_10001B810();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_10001BDF0();
  v5[10] = sub_10001BDE0();
  v10 = sub_10001BDD0();
  v5[11] = v10;
  v5[12] = v9;

  return _swift_task_switch(sub_10001824C, v10, v9);
}

uint64_t sub_10001824C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[6];
    v5 = sub_100019EF8();
    v6 = sub_10001B400();
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 < *(v5 + 16))
    {
      v8 = *(v5 + 56 * v6 + 64);

      v9 = v0[9];
      sub_10001BEE0();
      v10 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_ageRangeContext;
      v11 = async function pointer to static OnboardingAnalyticsLogger.logChooseHowToShareEvent(ageRangeContext:option:)[1];
      v12 = swift_task_alloc();
      v0[14] = v12;
      *v12 = v0;
      v12[1] = sub_1000183B0;
      v7 = v0[9];
      v6 = v3 + v10;

      return static OnboardingAnalyticsLogger.logChooseHowToShareEvent(ageRangeContext:option:)(v6, v7);
    }

    __break(1u);
    return static OnboardingAnalyticsLogger.logChooseHowToShareEvent(ageRangeContext:option:)(v6, v7);
  }

  v13 = v0[10];

  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000183B0()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_1000184D0, v4, v3);
}

uint64_t sub_1000184D0()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];

  (*(v5 + 8))(v3, v4);
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100018690(void *a1, uint64_t a2)
{
  v4 = sub_10001B410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003C14(&qword_10002EDE0, &qword_10001D928);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v50 - v10;
  v12 = sub_100003C14(&qword_10002EDE8, &qword_10001D930);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v52 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v18 = sub_10001BD00();
  isa = sub_10001B3E0().super.isa;
  v20 = [a1 dequeueReusableCellWithIdentifier:v18 forIndexPath:isa];

  type metadata accessor for ShareAgeRangeCell();
  v59 = v20;
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = sub_100019EF8();
    v24 = sub_10001B400();
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v24 < *(v23 + 16))
    {
      v25 = (v23 + 56 * v24);
      v26 = v25[5];
      v27 = v25[6];
      v28 = v25[7];
      v56 = v25[4];
      v57 = v27;
      v29 = v25[10];
      v53 = v25[9];
      v58 = v26;

      v55 = v28;

      v54 = v29;

      (*(v5 + 16))(v17, a2, v4);
      (*(v5 + 56))(v17, 0, 1, v4);
      v30 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_selectedIndexPath;
      v31 = v60;
      swift_beginAccess();
      v32 = *(v8 + 48);
      sub_100005EDC(v17, v11, &qword_10002EDE8, &qword_10001D930);
      sub_100005EDC(v31 + v30, &v11[v32], &qword_10002EDE8, &qword_10001D930);
      v33 = *(v5 + 48);
      if (v33(v11, 1, v4) == 1)
      {
        sub_100005DE8(v17, &qword_10002EDE8, &qword_10001D930);
        if (v33(&v11[v32], 1, v4) == 1)
        {
          v34 = &qword_10002EDE8;
          v35 = &qword_10001D930;
LABEL_10:
          sub_100005DE8(v11, v34, v35);
          v37 = v59;
LABEL_12:
          v40 = sub_10001BD00();
          v41 = [objc_opt_self() systemImageNamed:v40];

          v42 = *&v22[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_titleLabel];
          v43 = sub_10001BD00();
          [v42 setText:v43];

          v44 = *&v22[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_subtitleLabel];
          v45 = sub_10001BD00();
          [v44 setText:v45];

          [*&v22[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension17ShareAgeRangeCell_iconView] setImage:v41];

          v46 = objc_opt_self();
          v47 = v37;
          v48 = [v46 systemBackgroundColor];
          [v22 setBackgroundColor:v48];

          return v22;
        }
      }

      else
      {
        v36 = v52;
        sub_100005EDC(v11, v52, &qword_10002EDE8, &qword_10001D930);
        if (v33(&v11[v32], 1, v4) != 1)
        {
          v38 = v51;
          (*(v5 + 32))(v51, &v11[v32], v4);
          sub_10001A230();
          sub_10001BCD0();
          v39 = *(v5 + 8);
          v39(v38, v4);
          sub_100005DE8(v17, &qword_10002EDE8, &qword_10001D930);
          v39(v36, v4);
          sub_100005DE8(v11, &qword_10002EDE8, &qword_10001D930);
          v37 = v59;
          goto LABEL_12;
        }

        sub_100005DE8(v17, &qword_10002EDE8, &qword_10001D930);
        (*(v5 + 8))(v36, v4);
      }

      v34 = &qword_10002EDE0;
      v35 = &qword_10001D928;
      goto LABEL_10;
    }

    __break(1u);
  }

  result = sub_10001BF70();
  __break(1u);
  return result;
}

void sub_100018F28()
{
  v1 = [v0 navigationController];
  v2 = &_s12FamilyCircle0A6LoggerO9extension2os0C0VvgZ_ptr;
  v3 = &off_10002D000;
  if (v1)
  {
    v4 = v1;
    v5 = [v1 navigationItem];

    v6 = type metadata accessor for PasscodeViewController();
    v31 = v6;
    v30[0] = v0;
    v7 = v0;
    v8 = sub_10001BD00();
    if (v6)
    {
      v9 = sub_10000F028(v30, v6);
      v10 = *(v6 - 8);
      v11 = *(v10 + 64);
      __chkstk_darwin(v9);
      v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13);
      v14 = sub_10001BFC0();
      (*(v10 + 8))(v13, v6);
      v3 = &off_10002D000;
      v2 = &_s12FamilyCircle0A6LoggerO9extension2os0C0VvgZ_ptr;
      sub_100005E48(v30);
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_allocWithZone(v2[366]);
    v16 = [v15 v3[344]];

    swift_unknownObjectRelease();
    [v5 setLeftBarButtonItem:v16];
  }

  v17 = [v0 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 navigationItem];

    v31 = type metadata accessor for PasscodeViewController();
    v30[0] = v0;
    v20 = v0;
    v21 = sub_10001BD00();
    v22 = v31;
    if (v31)
    {
      v23 = sub_10000F028(v30, v31);
      v24 = *(v22 - 8);
      v25 = *(v24 + 64);
      __chkstk_darwin(v23);
      v27 = v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v24 + 16))(v27);
      v28 = sub_10001BFC0();
      (*(v24 + 8))(v27, v22);
      sub_100005E48(v30);
    }

    else
    {
      v28 = 0;
    }

    v29 = [objc_allocWithZone(v2[366]) v3[344]];

    swift_unknownObjectRelease();
    [v19 setRightBarButtonItem:v29];
  }
}

id sub_100019468(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000194C4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000195BC;

  return v7(a1);
}

uint64_t sub_1000195BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1000196B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100003C14(&qword_10002EDE8, &qword_10001D930);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v77 = &v68 - v12;
  v13 = sub_10001B3D0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v78 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10001BCF0();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_10001B930();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_selectedIndexPath;
  v24 = sub_10001B410();
  v75 = *(v24 - 8);
  v76 = v24;
  (*(v75 + 56))(&v5[v23], 1, 1);
  *&v5[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_doneButton] = 0;
  *&v5[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_flowStore] = a1;
  *&v5[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_kids] = a2;
  v25 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_ageRangeContext;
  v26 = sub_10001B6A0();
  v71 = *(v26 - 8);
  v72 = v26;
  v27 = *(v71 + 16);
  v74 = a3;
  v27(&v5[v25], a3);
  *&v5[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_sharedState] = a4;
  v28 = a1;

  sub_10001B420();

  v29 = sub_10001B920();
  v30 = sub_10001BE30();

  v31 = os_log_type_enabled(v29, v30);
  v73 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v70 = v18;
    v33 = v32;
    v34 = swift_slowAlloc();
    v79 = v34;
    *v33 = 136315138;
    sub_10001B880();
    v35 = sub_10001BDC0();
    v37 = sub_100012460(v35, v36, &v79);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "kids: %s", v33, 0xCu);
    sub_100005E48(v34);

    (*(v19 + 8))(v22, v70);
  }

  else
  {

    (*(v19 + 8))(v22, v18);
  }

  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  v39 = v38;
  v40 = [objc_opt_self() systemBlueColor];
  v41 = [objc_opt_self() configurationWithHierarchicalColor:v40];

  v42 = sub_10001BD00();
  v43 = [objc_opt_self() _systemImageNamed:v42];

  v69 = v41;
  if (v43)
  {
    v44 = [v43 imageWithConfiguration:v41];
  }

  else
  {
    v44 = 0;
  }

  v70 = v39;
  v45 = sub_10001BD00();
  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  v46 = sub_10001BD00();

  v47 = type metadata accessor for ShareAgeRangeViewController();
  v80.receiver = v5;
  v80.super_class = v47;
  v48 = objc_msgSendSuper2(&v80, "initWithTitle:detailText:icon:adoptTableViewScrollView:", v45, v46, v44, 1);

  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 boldButton];
  v52 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_doneButton;
  v53 = *&v50[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_doneButton];
  *&v50[OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_doneButton] = v51;
  v54 = v51;

  if (!v54)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_10001BCE0();
  sub_10001B3C0();
  sub_10001BD50();
  v55 = sub_10001BD00();

  [v54 setTitle:v55 forState:0];

  v56 = *&v50[v52];
  if (!v56)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100014BA4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = v56;
  v58 = sub_10001BF10();
  [v57 addAction:v58 forControlEvents:64];

  v59 = *&v50[v52];
  if (!v59)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v60 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_selectedIndexPath;
  swift_beginAccess();
  v61 = v77;
  sub_100005EDC(&v50[v60], v77, &qword_10002EDE8, &qword_10001D930);
  v62 = (*(v75 + 48))(v61, 1, v76) != 1;
  v63 = v59;
  sub_100005DE8(v61, &qword_10002EDE8, &qword_10001D930);
  [v63 setEnabled:v62];

  v64 = [v50 buttonTray];
  v65 = *&v50[v52];
  if (v65)
  {
    v66 = v64;
    v67 = v65;

    [v66 addButton:v67];

    (*(v71 + 8))(v74, v72);
    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_100019EF8()
{
  v0 = sub_10001B3D0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10001BCF0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100003C14(&qword_10002EDF8, &unk_10001D938);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001D540;
  sub_10001BCE0();
  sub_10001B3C0();
  v5 = sub_10001BD50();
  v7 = v6;
  sub_10001BCE0();
  sub_10001B3C0();
  v8 = sub_10001BD50();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 48) = v8;
  *(v4 + 56) = v9;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0xD000000000000010;
  *(v4 + 80) = 0x800000010001EAF0;
  sub_10001BCE0();
  sub_10001B3C0();
  v10 = sub_10001BD50();
  v12 = v11;
  sub_10001BCE0();
  sub_10001B3C0();
  v13 = sub_10001BD50();
  *(v4 + 88) = v10;
  *(v4 + 96) = v12;
  *(v4 + 104) = v13;
  *(v4 + 112) = v14;
  *(v4 + 120) = 1;
  *(v4 + 128) = 0xD000000000000013;
  *(v4 + 136) = 0x800000010001EB60;
  sub_10001BCE0();
  sub_10001B3C0();
  v15 = sub_10001BD50();
  v17 = v16;
  sub_10001BCE0();
  sub_10001B3C0();
  v18 = sub_10001BD50();
  *(v4 + 144) = v15;
  *(v4 + 152) = v17;
  *(v4 + 160) = v18;
  *(v4 + 168) = v19;
  *(v4 + 176) = 2;
  *(v4 + 184) = 0x6E6769736F6ELL;
  *(v4 + 192) = 0xE600000000000000;
  return v4;
}

unint64_t sub_10001A230()
{
  result = qword_10002EDF0;
  if (!qword_10002EDF0)
  {
    sub_10001B410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EDF0);
  }

  return result;
}

uint64_t sub_10001A288(uint64_t a1)
{
  v3 = sub_100003C14(&qword_10002EE00, &qword_10001CE00);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v61 = &v56[-v5];
  v6 = sub_10001B410();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v59 = v10;
  v60 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v63 = &v56[-v11];
  v12 = sub_100003C14(&qword_10002EDE0, &qword_10001D928);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v56[-v15];
  v17 = sub_100003C14(&qword_10002EDE8, &qword_10001D930);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v65 = &v56[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v64 = &v56[-v22];
  v23 = __chkstk_darwin(v21);
  v68 = &v56[-v24];
  v25 = __chkstk_darwin(v23);
  v71 = &v56[-v26];
  __chkstk_darwin(v25);
  v28 = &v56[-v27];
  v29 = OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_selectedIndexPath;
  swift_beginAccess();
  v30 = v7[2];
  v62 = a1;
  v69 = v30;
  v70 = v7 + 2;
  v30(v28, a1, v6);
  v67 = v7[7];
  v67(v28, 0, 1, v6);
  v31 = *(v13 + 56);
  sub_100005EDC(v1 + v29, v16, &qword_10002EDE8, &qword_10001D930);
  sub_100005EDC(v28, &v16[v31], &qword_10002EDE8, &qword_10001D930);
  v66 = v7;
  v32 = v7[6];
  if (v32(v16, 1, v6) != 1)
  {
    sub_100005EDC(v16, v71, &qword_10002EDE8, &qword_10001D930);
    if (v32(&v16[v31], 1, v6) != 1)
    {
      v36 = v66;
      v37 = v66[4];
      v58 = v32;
      v38 = v63;
      v37(v63, &v16[v31], v6);
      sub_10001A230();
      v57 = sub_10001BCD0();
      v39 = v36[1];
      v40 = v38;
      v32 = v58;
      v39(v40, v6);
      sub_100005DE8(v28, &qword_10002EDE8, &qword_10001D930);
      v39(v71, v6);
      sub_100005DE8(v16, &qword_10002EDE8, &qword_10001D930);
      if (v57)
      {
        goto LABEL_9;
      }

LABEL_7:
      v33 = v68;
      v69(v68, v62, v6);
      v34 = v33;
      v35 = 0;
      goto LABEL_10;
    }

    sub_100005DE8(v28, &qword_10002EDE8, &qword_10001D930);
    (v66[1])(v71, v6);
LABEL_6:
    sub_100005DE8(v16, &qword_10002EDE0, &qword_10001D928);
    goto LABEL_7;
  }

  sub_100005DE8(v28, &qword_10002EDE8, &qword_10001D930);
  if (v32(&v16[v31], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_100005DE8(v16, &qword_10002EDE8, &qword_10001D930);
LABEL_9:
  v33 = v68;
  v34 = v68;
  v35 = 1;
LABEL_10:
  v67(v34, v35, 1, v6);
  swift_beginAccess();
  sub_10001AA24(v33, v1 + v29);
  result = swift_endAccess();
  v42 = *(v1 + OBJC_IVAR____TtC29FamilyOutOfProcessUIExtension27ShareAgeRangeViewController_doneButton);
  if (v42)
  {
    v43 = v64;
    sub_100005EDC(v1 + v29, v64, &qword_10002EDE8, &qword_10001D930);
    v44 = v32(v43, 1, v6) != 1;
    v45 = v42;
    sub_100005DE8(v43, &qword_10002EDE8, &qword_10001D930);
    [v45 setEnabled:v44];

    v46 = v65;
    sub_100005EDC(v1 + v29, v65, &qword_10002EDE8, &qword_10001D930);
    if (v32(v46, 1, v6) == 1)
    {
      return sub_100005DE8(v46, &qword_10002EDE8, &qword_10001D930);
    }

    else
    {
      v47 = v66;
      v71 = v66[4];
      v48 = v60;
      (v71)(v60, v46, v6);
      v49 = sub_10001BE20();
      v50 = v61;
      (*(*(v49 - 8) + 56))(v61, 1, 1, v49);
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = v63;
      v69(v63, v48, v6);
      sub_10001BDF0();

      v53 = sub_10001BDE0();
      v54 = (*(v47 + 80) + 40) & ~*(v47 + 80);
      v55 = swift_allocObject();
      v55[2] = v53;
      v55[3] = &protocol witness table for MainActor;
      v55[4] = v51;
      (v71)(v55 + v54, v52, v6);

      sub_100016744(0, 0, v50, &unk_10001D950, v55);

      return (v47[1])(v48, v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AA24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003C14(&qword_10002EDE8, &qword_10001D930);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AA94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001AACC()
{
  v1 = sub_10001B410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001AB98(uint64_t a1)
{
  v4 = *(sub_10001B410() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000067E8;

  return sub_100018158(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10001AC90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001ACC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000067E8;

  return sub_1000194C4(a1, v5);
}

uint64_t sub_10001AD80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000066F4;

  return sub_1000194C4(a1, v5);
}

uint64_t sub_10001AE38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001AE78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000067E8;

  return sub_100016DB0(a1, v4, v5, v6);
}

__n128 sub_10001AF2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001AF48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001AF90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShareAgeRangeViewController.AgeShareOption.ShareType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShareAgeRangeViewController.AgeShareOption.ShareType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001B148()
{
  result = qword_10002EE08;
  if (!qword_10002EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EE08);
  }

  return result;
}

uint64_t sub_10001B1DC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10001B234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000066F4;

  return sub_100017678(a1, v4, v5, v6, (v1 + 5));
}