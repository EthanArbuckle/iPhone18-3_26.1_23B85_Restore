uint64_t sub_47F18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620);
}

uint64_t sub_47F84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider34ProductMediaItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_48054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_48120(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_481A0()
{
  result = qword_9400A8;
  if (!qword_9400A8)
  {
    type metadata accessor for InformationRibbonCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9400A8);
  }

  return result;
}

uint64_t sub_48208(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_94F1F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  swift_getKeyPath();
  sub_75C7B0();

  sub_768760();
  (*(v4 + 8))(v6, v3);
  sub_75C7A0();
  sub_75A110();
  sub_768900();
  sub_768ED0();
  v7 = v11;
  v8 = sub_527DE4();
  v9 = sub_45DC5C();
  if (v9)
  {
    sub_453470(v9, v7, a2, v8);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_483AC()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v4, v0);
  qword_99A110 = sub_768FF0();
  unk_99A118 = &protocol witness table for OSLogger;
  sub_B1B4(qword_99A0F8);
  return sub_768FE0();
}

char *sub_484F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_BD88(&unk_940200);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_dynamicDelegate] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_gridPresenter] = 0;
  v14 = &v5[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_gridView];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_objectGraph] = a4;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_requestInfo] = a1;
  v15 = &v5[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_referrer];
  *v15 = a2;
  *(v15 + 1) = a3;
  sub_75A110();

  sub_768880();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_artworkLoader] = v41;
  sub_760C90();
  v16 = sub_769210();

  sub_760D20();
  v17 = sub_769210();

  sub_75A920();
  sub_768880();
  v18 = sub_75A910();

  v40.receiver = v5;
  v40.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v40, "initWithServiceType:placement:bag:", v16, v17, v18);
  swift_unknownObjectRelease();

  v20 = v19;
  sub_760D10();
  v21 = sub_764CF0();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_10A2C(v13, &unk_940200);
    v23 = 0;
  }

  else
  {
    sub_764CA0();
    (*(v22 + 8))(v13, v21);
    v23 = sub_769210();
  }

  [v20 setSeed:v23];

  sub_760C80();
  if (v24)
  {
    v25 = sub_769210();
  }

  else
  {
    v25 = 0;
  }

  [v20 setOfferHints:v25];

  v26 = v20;
  v27 = sub_760CA0();
  if (v27)
  {
    sub_527FF0(v27);

    v28.super.isa = sub_7690E0().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  [v26 setClientOptions:v28.super.isa];

  if (sub_760CB0())
  {
    v29.super.isa = sub_7690E0().super.isa;
  }

  else
  {
    v29.super.isa = 0;
  }

  [v26 setMetricsOverlay:v29.super.isa];

  [v26 setAnonymousMetrics:1];
  sub_75A930();
  v30 = sub_769210();

  [v26 setMediaClientIdentifier:v30];

  sub_4A17C();
  v31 = v26;
  sub_768880();
  v32 = v41;
  v33 = [v41 ams_activeiTunesAccount];

  [v31 setAccount:v33];
  sub_761230();
  sub_768880();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = objc_allocWithZone(sub_762C00());
  v35 = sub_762BF0();

  v36 = OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_dynamicDelegate;
  *&v31[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_dynamicDelegate] = v35;
  swift_unknownObjectRelease();
  [v31 setDelegate:*&v31[v36]];
  sub_7625F0();
  v37 = sub_7625E0();
  [v31 setMediaContentDelegate:v37];

  return v31;
}

void sub_48BC4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void *sub_48C20(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_49810(a1, a2, a3, a4);
  v11 = v10;

  return v10;
}

uint64_t sub_4902C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_referrer);

  return v1;
}

id sub_49154()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_491A8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_49268()
{
  v1 = [v0 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_7690F0();

  return v3;
}

void sub_492D8(uint64_t a1)
{
  if (a1)
  {
    isa = sub_7690E0().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setMetricsOverlay:isa];
}

void (*sub_49360(uint64_t **a1))(void *a1)
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
  v2[4] = sub_493D0(v2);
  return sub_215A4;
}

void (*sub_493D0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = sub_7690F0();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_4946C;
}

void sub_4946C(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      isa = sub_7690E0().super.isa;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setMetricsOverlay:isa];
  }

  else if (v3)
  {
    isa = sub_7690E0().super.isa;

    [a1[1] setMetricsOverlay:isa];
  }

  else
  {
    isa = 0;
    [a1[1] setMetricsOverlay:0];
  }
}

void *sub_49560(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = sub_49810(a1, a2, a3, a4);
  v5 = v4;
  return v4;
}

void sub_4958C()
{
  swift_getObjectType();

  sub_7632E0();
}

uint64_t sub_495D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_4A134(&unk_9401F0, v5, type metadata accessor for MarketingItemViewController);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v6);
}

uint64_t sub_49694(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v5 = sub_4A134(&unk_9401F0, v4, type metadata accessor for MarketingItemViewController);

  return a3(ObjectType, v5);
}

void *sub_49810(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_75E7A0();
  swift_allocObject();

  sub_75E780();
  v10 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v11 = sub_4F28A4(0);
  [v11 setFrame:{a1, a2, a3, a4}];
  v12 = sub_4A134(&qword_9401E8, 255, type metadata accessor for UpsellGridView);
  v13 = (v5 + OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_gridView);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v11;
  v13[1] = v12;
  v20 = v11;

  sub_4A134(&qword_9401E0, v15, type metadata accessor for MarketingItemViewController);
  swift_unknownObjectRetain();
  sub_75E790();
  sub_75A160();
  if (qword_93DEF0 != -1)
  {
    swift_once();
  }

  v16 = sub_768FF0();
  sub_BE38(v16, qword_9A0400);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  type metadata accessor for CGRect(0);
  v21[3] = v17;
  v18 = swift_allocObject();
  v21[0] = v18;
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  sub_7685C0();
  sub_10A2C(v21, &unk_93FBD0);
  sub_768E80();

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  if (CGRectIsEmpty(v22))
  {
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }

  return *v13;
}

void *sub_49BC0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  sub_75E7A0();
  swift_allocObject();

  sub_75E780();
  v10 = objc_allocWithZone(type metadata accessor for UpsellGridView());
  v11 = sub_4F28A4(0);
  [v11 setFrame:{a1, a2, a3, a4}];
  v12 = sub_4A134(&qword_9401E8, 255, type metadata accessor for UpsellGridView);
  v13 = (v5 + OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_gridView);
  swift_beginAccess();
  v14 = *v13;
  *v13 = v11;
  v13[1] = v12;
  v19 = v11;

  sub_4A134(&qword_959CE0, 255, type metadata accessor for DynamicViewController);
  swift_unknownObjectRetain();
  sub_75E790();
  sub_75A160();
  if (qword_93DEF0 != -1)
  {
    swift_once();
  }

  v15 = sub_768FF0();
  sub_BE38(v15, qword_9A0400);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  type metadata accessor for CGRect(0);
  v20[3] = v16;
  v17 = swift_allocObject();
  v20[0] = v17;
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  sub_7685C0();
  sub_10A2C(v20, &unk_93FBD0);
  sub_768E80();

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  if (CGRectIsEmpty(v21))
  {
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }

  return *v13;
}

uint64_t sub_49F6C()
{
  if (qword_93C220 != -1)
  {
    swift_once();
  }

  sub_B170(qword_99A0F8, qword_99A110);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_B1B4(v3);
  (*(*(v2 - 8) + 16))(v0);
  sub_7685C0();
  sub_10A2C(v3, &unk_93FBD0);
  sub_768EA0();
}

uint64_t sub_4A134(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_4A17C()
{
  result = qword_959CF0;
  if (!qword_959CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_959CF0);
  }

  return result;
}

uint64_t sub_4A1C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_4A3B0(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___RootViewController_storeViewController] = 0;
  *&v1[OBJC_IVAR___RootViewController_shieldView] = 0;
  v4 = OBJC_IVAR___RootViewController_appProtectionSubject;
  v5 = objc_opt_self();
  v6 = sub_769210();
  v7 = [v5 applicationWithBundleIdentifier:v6];

  *&v2[v4] = v7;
  v8 = OBJC_IVAR___RootViewController_latestStoreLaunchDetails;
  v9 = sub_BD88(&unk_940330);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR___RootViewController_adamID;
  sub_BE70(0, &qword_945820);
  *&v2[v10] = sub_76A1A0(0);
  *&v2[OBJC_IVAR___RootViewController_presentationViewController] = 0;
  *&v2[OBJC_IVAR___RootViewController_sendDelegate] = 0;
  *&v2[OBJC_IVAR___RootViewController_balloonPlugin] = 0;
  *&v2[OBJC_IVAR___RootViewController_balloonPluginDataSource] = 0;
  v2[OBJC_IVAR___RootViewController_isiMessage] = 0;
  v2[OBJC_IVAR___RootViewController_shouldSuppressEntryView] = 0;
  v2[OBJC_IVAR___RootViewController_isPrimaryViewController] = 0;
  v2[OBJC_IVAR___RootViewController_isDismissing] = 0;
  v2[OBJC_IVAR___RootViewController_inFullScreenModalPresentation] = 0;
  *&v2[OBJC_IVAR___RootViewController_currentBrowserConsumer] = 0;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for RootViewController();
  v11 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  v12 = *&v11[OBJC_IVAR___RootViewController_balloonPlugin];
  *&v11[OBJC_IVAR___RootViewController_balloonPlugin] = a1;

  return v11;
}

void sub_4A890()
{
  v8 = [objc_opt_self() sharedApplication];
  if (!sub_4CB2C([v8 statusBarOrientation]) || (~objc_msgSend(v0, "supportedInterfaceOrientations") & 0x18) == 0)
  {
    goto LABEL_12;
  }

  if ([v0 isViewLoaded])
  {
    v1 = [v0 view];
    if (!v1)
    {
      __break(1u);
      goto LABEL_16;
    }

    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
LABEL_11:
      [v3 _setRotatableViewOrientation:1 duration:0 force:0.3];

      goto LABEL_12;
    }
  }

  v4 = [v0 presentedViewController];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 view];

  if (!v6)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v3 = [v6 window];

  if (v3)
  {
    goto LABEL_11;
  }

LABEL_9:
  v7 = [objc_opt_self() keyWindow];
  if (v7)
  {
    v3 = v7;
    goto LABEL_11;
  }

LABEL_12:
}

void sub_4AA34()
{
  v1 = OBJC_IVAR___RootViewController_storeViewController;
  if (*&v0[OBJC_IVAR___RootViewController_storeViewController])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for StoreRootViewController()) initWithNibName:0 bundle:0];
  swift_unknownObjectWeakAssign();
  v3 = v2;
  [v0 addChildViewController:v3];
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v5 setFrame:{v9, v11, v13, v15}];
  v16 = [v3 view];

  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v16 setAlpha:1.0];

  v17 = [v3 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v17 setAutoresizingMask:18];

  v18 = [v0 view];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v3 view];

  if (!v20)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v19 addSubview:v20];

  [v3 didMoveToParentViewController:v0];
  v21 = *&v0[v1];
  *&v0[v1] = v3;
}

void sub_4AC88()
{
  v1 = v0;
  v2 = sub_758110();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___RootViewController_shieldView;
  if (!*&v0[OBJC_IVAR___RootViewController_shieldView])
  {
    (*(v3 + 104))(v6, enum case for SystemAppIcon.AppStore(_:), v2, v4);
    v8 = [v0 traitCollection];
    [v8 displayScale];

    v9 = sub_758100();
    (*(v3 + 8))(v6, v2);
    if (!v9)
    {
      v9 = [objc_allocWithZone(UIImage) init];
    }

    v10 = [objc_opt_self() mainBundle];
    v30._countAndFlagsBits = 0xE000000000000000;
    v32._countAndFlagsBits = 0x524F54535F505041;
    v32._object = 0xE900000000000045;
    v33.value._countAndFlagsBits = 0;
    v33.value._object = 0;
    v11.super.isa = v10;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_756EF0(v32, v33, v11, v34, v30);

    v12 = objc_allocWithZone(APBaseExtensionShieldView);
    v13 = v9;
    v14 = sub_769210();

    v15 = [v12 initWithLocalizedApplicationName:v14 iconImage:v13];

    [v15 setDelegate:v1];
    v16 = v15;
    v17 = [v1 view];
    if (v17)
    {
      v18 = v17;
      [v17 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [v16 setFrame:{v20, v22, v24, v26}];
      [v16 setAutoresizingMask:18];

      v27 = [v1 view];
      if (v27)
      {
        v28 = v27;
        [v27 addSubview:v16];

        v29 = *&v1[v7];
        *&v1[v7] = v16;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_4AFA4()
{
  v1 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v1 - 8);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v57 - v5;
  v7 = sub_BD88(&qword_940358);
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = sub_BD88(&unk_940360);
  __chkstk_darwin(v13);
  v15 = &v57 - v14;
  v16 = sub_7570A0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v64 = v0;
  v20 = *(v0 + OBJC_IVAR___RootViewController_storeViewController);
  if (v20)
  {
    v60 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = v9;
    v63 = v18;
    v21 = OBJC_IVAR___RootViewController_latestStoreLaunchDetails;
    v22 = v64;
    swift_beginAccess();
    v61 = v21;
    sub_1ED18(v22 + v21, v12, &qword_940358);
    v23 = sub_BD88(&unk_940330);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {
      v60 = v3;
      v61 = v17;
      v62 = v6;
      v25 = v20;
      sub_10A2C(v12, &qword_940358);
      v26 = OBJC_IVAR___RootViewController_adamID;
      v27 = *(v64 + OBJC_IVAR___RootViewController_adamID);
      sub_BE70(0, &qword_945820);
      v28 = v27;
      isa = sub_76A1A0(0).super.super.isa;
      v30 = sub_76A1C0();

      if (v30)
      {
      }

      else
      {
        v59 = v25;
        v65 = 0;
        v66 = 0xE000000000000000;
        sub_76A730(38);

        v65 = 0xD00000000000001FLL;
        v66 = 0x80000000007CB220;
        v45 = *(v64 + v26);
        v46 = [v45 description];
        v47 = sub_769240();
        v49 = v48;

        v68._countAndFlagsBits = v47;
        v68._object = v49;
        sub_769370(v68);

        v69._countAndFlagsBits = 0x383D746D3FLL;
        v69._object = 0xE500000000000000;
        sub_769370(v69);
        v50 = v62;
        sub_757090();

        v51 = v60;
        sub_1ED18(v50, v60, &unk_93FD30);
        v52 = v61;
        v53 = v63;
        if ((*(v61 + 48))(v51, 1, v63) == 1)
        {
          __break(1u);
        }

        else
        {
          v54 = v59;
          sub_73A964(v51);
          (*(v52 + 8))(v51, v53);
          v55 = sub_76A1A0(0).super.super.isa;

          sub_10A2C(v50, &unk_93FD30);
          v56 = *(v64 + v26);
          *(v64 + v26) = v55;
        }
      }
    }

    else
    {
      v32 = &v12[*(v23 + 48)];
      v33 = *v32;
      v58 = *(v32 + 1);
      v59 = v33;
      v34 = &v15[*(v13 + 48)];
      v35 = *(v17 + 32);
      v36 = v63;
      v35(v15, v12, v63);
      v37 = v58;
      *v34 = v59;
      *(v34 + 1) = v37;
      v38 = v60;
      v39 = v15;
      v40 = v36;
      v35(v60, v39, v36);
      v41 = v20;
      sub_73A964(v38);

      (*(v17 + 8))(v38, v40);
      v42 = v62;
      (*(v24 + 56))(v62, 1, 1, v23);
      v43 = v61;
      v44 = v64;
      swift_beginAccess();
      sub_4C8D8(v42, v44 + v43);
      swift_endAccess();
    }
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v31 = sub_768FF0();
    sub_BE38(v31, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }
}

uint64_t sub_4B9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_BD88(&qword_940358);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  sub_1ED18(a1, v9, &unk_93FD30);
  v13 = sub_7570A0();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v9, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    result = (*(v14 + 32))(v12, v9, v13);
    if (a3)
    {
      v16 = sub_BD88(&unk_940330);
      v17 = &v12[*(v16 + 48)];
      *v17 = a2;
      *(v17 + 1) = a3;
      (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
      v18 = OBJC_IVAR___RootViewController_latestStoreLaunchDetails;
      swift_beginAccess();

      sub_4C8D8(v12, v3 + v18);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

void sub_4BE28(void *a1)
{
  v3 = [objc_opt_self() sharedGuard];
  v4 = *&v1[OBJC_IVAR___RootViewController_appProtectionSubject];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v1;
  v9[4] = sub_4C7F4;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_509F0;
  v9[3] = &unk_881118;
  v6 = _Block_copy(v9);
  v7 = a1;
  v8 = v1;

  [v3 authenticateForSubject:v4 completion:v6];
  _Block_release(v6);
}

uint64_t sub_4BF44(char a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_768380();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7683C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_BE70(0, &qword_940340);
    v24 = sub_769970();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    aBlock[4] = sub_4C814;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    aBlock[3] = &unk_881168;
    v16 = _Block_copy(aBlock);
    v17 = a3;
    v18 = a4;

    sub_7683A0();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_4C81C();
    sub_BD88(&qword_940350);
    sub_4C874();
    sub_76A5A0();
    v19 = v24;
    sub_769980();
    _Block_release(v16);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v20 = sub_768FF0();
    sub_BE38(v20, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v22 = sub_768FF0();
    sub_BE38(v22, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();
  }
}

void sub_4C440(void *a1, uint64_t a2)
{
  [a1 removeFromSuperview];
  v3 = *(a2 + OBJC_IVAR___RootViewController_shieldView);
  *(a2 + OBJC_IVAR___RootViewController_shieldView) = 0;

  sub_4AA34();
  sub_4AFA4();
}

id sub_4C520()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RootViewController()
{
  result = qword_940318;
  if (!qword_940318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4C678()
{
  sub_4C750();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_4C750()
{
  if (!qword_940328)
  {
    sub_133D8(&unk_940330);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_940328);
    }
  }
}

uint64_t sub_4C7B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4C7FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_4C81C()
{
  result = qword_9406E0;
  if (!qword_9406E0)
  {
    sub_768380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9406E0);
  }

  return result;
}

unint64_t sub_4C874()
{
  result = qword_9406F0;
  if (!qword_9406F0)
  {
    sub_133D8(&qword_940350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9406F0);
  }

  return result;
}

uint64_t sub_4C8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_940358);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_4C948()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___RootViewController_storeViewController) = 0;
  *(v0 + OBJC_IVAR___RootViewController_shieldView) = 0;
  v2 = OBJC_IVAR___RootViewController_appProtectionSubject;
  v3 = objc_opt_self();
  v4 = sub_769210();
  v5 = [v3 applicationWithBundleIdentifier:v4];

  *(v1 + v2) = v5;
  v6 = OBJC_IVAR___RootViewController_latestStoreLaunchDetails;
  v7 = sub_BD88(&unk_940330);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR___RootViewController_adamID;
  sub_BE70(0, &qword_945820);
  *(v1 + v8) = sub_76A1A0(0);
  *(v1 + OBJC_IVAR___RootViewController_presentationViewController) = 0;
  *(v1 + OBJC_IVAR___RootViewController_sendDelegate) = 0;
  *(v1 + OBJC_IVAR___RootViewController_balloonPlugin) = 0;
  *(v1 + OBJC_IVAR___RootViewController_balloonPluginDataSource) = 0;
  *(v1 + OBJC_IVAR___RootViewController_isiMessage) = 0;
  *(v1 + OBJC_IVAR___RootViewController_shouldSuppressEntryView) = 0;
  *(v1 + OBJC_IVAR___RootViewController_isPrimaryViewController) = 0;
  *(v1 + OBJC_IVAR___RootViewController_isDismissing) = 0;
  *(v1 + OBJC_IVAR___RootViewController_inFullScreenModalPresentation) = 0;
  *(v1 + OBJC_IVAR___RootViewController_currentBrowserConsumer) = 0;
  sub_76A840();
  __break(1u);
}

void sub_4CB3C(void *a1)
{
  if (*(v1 + OBJC_IVAR___RootViewController_sendDelegate))
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRetain();
      v5 = [a1 bundleID];
      if (v5)
      {
        v6 = v5;
        sub_769240();
      }

      v7 = sub_769210();

      [v4 didBeginInstallingAppWithBundleIdentifier:v7];
      swift_unknownObjectRelease();
    }
  }
}

char *sub_4CC30(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_7593D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_itemLayoutContext;
  v19 = sub_75C840();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for VideoCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_avatarShowcase] = 0;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_shadowView;
  sub_758E80();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 setClipsToBounds:0];

  v25 = OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_shadowView;
  v26 = qword_93C550;
  v27 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_shadowView];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = sub_765080();
  v29 = sub_BE38(v28, qword_99B550);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v17, v29, v28);
  (*(v30 + 56))(v17, 0, 1, v28);
  sub_758E60();

  v31 = *&v22[v25];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v32 = v31;
  sub_758E70();

  (*(v12 + 8))(v14, v11);
  v33 = *&v22[v25];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondarySystemBackgroundColor];
  [v35 setBackgroundColor:v36];

  v37 = [v22 contentView];
  [v37 addSubview:*&v22[v25]];

  v38 = [v22 contentView];
  [v38 addSubview:*&v22[OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView]];

  return v22;
}

void sub_4D0E4(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

void sub_4D1AC(void *a1)
{
  v18 = a1;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_4E33C(&qword_93F500, type metadata accessor for VideoView);
    v9 = [v8 superview];
    if (!v9)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = v9;
    sub_2630C();
    v11 = v6;
    v12 = sub_76A1C0();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v8 = v13;
        [v13 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    sub_75CCD0();
    (*(v3 + 8))(v5, v2);
    [v6 addSubview:v15];
    [v6 sendSubviewToBack:v15];
    [v6 setNeedsLayout];
  }

  else
  {
    v16 = v18;
  }
}

void (*sub_4D41C(uint64_t *a1))(void ***a1, char a2)
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
  v5 = sub_7593D0();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider13VideoCardView_videoView;
  v4[4] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_4D514;
}

void sub_4D514(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_4E33C(&qword_93F500, type metadata accessor for VideoView);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[4];
        sub_2630C();
        v11 = v10;
        v12 = sub_76A1C0();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v32 = v3[1];
      v33 = v3[2];
      v33[13](v31, enum case for CornerStyle.continuous(_:), v32);
      sub_75CCD0();
      (v33[1])(v31, v32);
      [v30 addSubview:v29];
      [v30 sendSubviewToBack:v29];
      [v30 setNeedsLayout];
    }

    v27 = v3[3];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_4E33C(&qword_93F500, type metadata accessor for VideoView);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[4];
      sub_2630C();
      v18 = v17;
      v19 = sub_76A1C0();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v25 = v3[1];
    v26 = v3[2];
    v26[13](v24, enum case for CornerStyle.continuous(_:), v25);
    sub_75CCD0();
    (v26[1])(v24, v25);
    [v23 addSubview:v22];
    [v23 sendSubviewToBack:v22];
    [v23 setNeedsLayout];
  }

  v27 = v3[3];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_4D880()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  [v1 layoutIfNeeded];
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_shadowView];
  v12 = [v0 contentView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v11 setFrame:{v14, v16, v18, v20}];
  sub_4E33C(&qword_940428, type metadata accessor for VideoCardCollectionViewCell);
  sub_760A70();
}

void sub_4DA48()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "prepareForReuse", v4);
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v9 = Strong;
  sub_4E33C(&qword_93F500, type metadata accessor for VideoView);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    sub_2630C();
    v12 = v7;
    v13 = sub_76A1C0();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      goto LABEL_7;
    }

    v9 = v14;
    [v14 removeFromSuperview];
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2);
    sub_75CCD0();
    (*(v3 + 8))(v6, v2);
    [v7 addSubview:v16];
    [v7 sendSubviewToBack:v16];
    [v7 setNeedsLayout];
  }
}

uint64_t type metadata accessor for VideoCardCollectionViewCell()
{
  result = qword_9403F8;
  if (!qword_9403F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4DDA0()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_4DE6C(uint64_t **a1))()
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
  v2[4] = sub_4D41C(v2);
  return sub_246E0;
}

double sub_4DEDC(double a1)
{
  type metadata accessor for VideoCardView();
  swift_getObjectType();

  return sub_6B2178(a1);
}

uint64_t sub_4DF54()
{
  ObjectType = swift_getObjectType();
  v1 = sub_4E33C(&qword_940420, type metadata accessor for VideoCardCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_4DFC8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_4E33C(&qword_940420, type metadata accessor for VideoCardCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_4E054(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_4E33C(&qword_940420, type metadata accessor for VideoCardCollectionViewCell);
  *(v3 + 32) = sub_75DC50();
  return sub_21028;
}

uint64_t sub_4E138(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_2630C();
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

uint64_t sub_4E33C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_4E384()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_videoCardView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for VideoCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_avatarShowcase) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider27VideoCardCollectionViewCell_shadowView;
  sub_758E80();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_4E4B8()
{
  v0 = sub_BD88(&unk_945000);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  *&v79 = &v77 - v2;
  v3 = sub_7572E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_BD88(&unk_93F5C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_77FA60;
  v80 = type metadata accessor for BoolUserDefaultsDebugSetting();
  v8 = swift_allocObject();
  *(v8 + 56) = 0xD00000000000001ALL;
  *(v8 + 64) = 0x80000000007CB3B0;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xD000000000000019;
  *(v8 + 88) = 0x80000000007CB3D0;
  *(v8 + 96) = 0;
  sub_7572D0();
  v9 = sub_7572B0();
  v11 = v10;
  v12 = *(v4 + 8);
  v85 = v3;
  v81 = v12;
  v82 = v4 + 8;
  v12(v6, v3);
  v86 = v9;
  v87 = v11;
  sub_76A6E0();
  v84 = v7;
  *(v7 + 32) = v8;
  if (qword_93E0D8 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v0, qword_9A07A8);
  v14 = sub_7689F0();
  v78 = sub_7689C0();
  v15 = ASKBuildTypeGetCurrent();
  v16 = sub_769240();
  v18 = v17;
  if (v16 == sub_769240() && v18 == v19)
  {
    goto LABEL_5;
  }

  v20 = sub_76A950();

  if (v20)
  {
    goto LABEL_7;
  }

  v67 = sub_769240();
  v69 = v68;
  if (v67 == sub_769240() && v69 == v70)
  {
LABEL_5:

LABEL_8:
    v21 = 1;
    goto LABEL_9;
  }

  v71 = sub_76A950();

  if (v71)
  {
LABEL_7:

    goto LABEL_8;
  }

  v72 = sub_769240();
  v74 = v73;
  if (v72 == sub_769240() && v74 == v75)
  {
  }

  else
  {
    v76 = sub_76A950();

    v21 = 0;
    if ((v76 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  sub_7689E0();
  sub_7686D0();

  v21 = v86;
LABEL_9:
  v22 = v13;
  v23 = *(v1 + 16);
  v24 = v79;
  v23(v79, v22, v0);
  type metadata accessor for BoolPreferencesDebugSetting();
  v25 = swift_allocObject();
  *(v25 + 56) = 0xD00000000000001BLL;
  *(v25 + 64) = 0x80000000007CB3F0;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  *(v25 + 88) = v21 & 1;
  v23(v25 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_key, v24, v0);
  v26 = (v25 + OBJC_IVAR____TtC18ASMessagesProvider27BoolPreferencesDebugSetting_preferences);
  *v26 = v78;
  v26[1] = &protocol witness table for LocalPreferences;

  sub_7572D0();
  v27 = sub_7572B0();
  v29 = v28;
  v77 = v14;
  v30 = v81;
  v81(v6, v85);
  v86 = v27;
  v87 = v29;
  sub_76A6E0();
  (*(v1 + 8))(v24, v0);

  v31 = v84;
  *(v84 + 40) = v25;
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 56) = 0xD000000000000025;
  *(v33 + 64) = 0x80000000007CB410;
  *(v33 + 72) = 0;
  *(v33 + 80) = 0xD000000000000021;
  *(v33 + 88) = 0x80000000007CB440;
  *(v33 + 96) = 0;
  sub_7572D0();
  v34 = sub_7572B0();
  v36 = v35;
  v37 = v85;
  v30(v6, v85);
  v86 = v34;
  v87 = v36;
  sub_76A6E0();
  *(v32 + 48) = v33;
  v38 = swift_allocObject();
  *(v38 + 56) = 0x646F4D206F6D6544;
  *(v38 + 64) = 0xE900000000000065;
  *(v38 + 72) = 0;
  *(v38 + 80) = 0x65646F4D6F6D6564;
  *(v38 + 88) = 0xE800000000000000;
  *(v38 + 96) = 0;
  sub_7572D0();
  v39 = sub_7572B0();
  v41 = v40;
  v30(v6, v37);
  v86 = v39;
  v87 = v41;
  sub_76A6E0();
  *(v32 + 56) = v38;
  v42 = swift_allocObject();
  v79 = xmmword_77B6C0;
  *(v42 + 16) = xmmword_77B6C0;
  v43 = swift_allocObject();
  *(v43 + 56) = 0xD00000000000001ALL;
  *(v43 + 64) = 0x80000000007CB470;
  *(v43 + 72) = 0;
  *(v43 + 80) = 0xD000000000000013;
  *(v43 + 88) = 0x80000000007CB490;
  *(v43 + 96) = 0;
  sub_7572D0();
  v44 = sub_7572B0();
  v46 = v45;
  v47 = v85;
  v30(v6, v85);
  v86 = v44;
  v87 = v46;
  sub_76A6E0();
  v78 = v42;
  *(v42 + 32) = v43;
  v48 = sub_7689A0();
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0x6E776F6E6B6E55;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE700000000000000;
  }

  type metadata accessor for InfoDebugSetting();
  v52 = swift_allocObject();
  v52[7] = 0x697372655620534ALL;
  v52[8] = 0xEA00000000006E6FLL;
  v52[9] = v50;
  v52[10] = v51;

  sub_7572D0();
  v53 = sub_7572B0();
  v55 = v54;
  v30(v6, v47);
  v86 = v53;
  v87 = v55;
  sub_76A6E0();

  *(v42 + 40) = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = v79;
  type metadata accessor for DebugSection();
  v57 = swift_allocObject();
  sub_7572D0();
  v58 = sub_7572B0();
  v60 = v59;
  v61 = v47;
  v30(v6, v47);
  v57[2] = v58;
  v57[3] = v60;
  v57[4] = 0;
  v57[5] = 0xE000000000000000;
  v57[6] = v84;
  *(v56 + 32) = v57;
  v62 = swift_allocObject();
  sub_7572D0();
  v63 = sub_7572B0();
  v65 = v64;
  v30(v6, v61);
  v62[2] = v63;
  v62[3] = v65;
  v62[4] = 0x697263536176614ALL;
  v62[5] = 0xEA00000000007470;
  v62[6] = v78;
  *(v56 + 40) = v62;
  return v56;
}

id sub_4EE00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_4EE6C()
{
  result = qword_9404F0;
  if (!qword_9404F0)
  {
    sub_760210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9404F0);
  }

  return result;
}

uint64_t sub_4EEC4()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_759E30();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75B430();
  sub_75B410();
  sub_760200();
  sub_75B3A0();

  (*(v5 + 8))(v7, v4);
  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_768F30();
}

id sub_4F098(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (v6[OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] == 1)
  {
    v6[OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 0;
    sub_1B2A9C(*a1, a4, a3, a6);
  }

  return [v6 setNeedsLayout];
}

uint64_t sub_4F110()
{
  result = sub_75B0C0();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_4F1F4(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v3 = sub_7656C0();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = sub_75C840();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  v38 = v2;
  sub_1799C(v2 + v18, v17);
  v19 = v9[6];
  if (v19(v17, 1, v8))
  {
    sub_3A63C(v17);
LABEL_6:
    [v38 bounds];
    v25 = v39;
    return sub_1B249C(v25, v40);
  }

  v33 = v7;
  v34 = v14;
  v20 = v8;
  v32 = v9[2];
  v32(v11, v17, v8);
  sub_3A63C(v17);
  swift_getKeyPath();
  sub_75C7B0();

  v31 = v9[1];
  v31(v11, v8);
  v21 = v41;
  v22 = [v41 horizontalSizeClass];

  if (v22 != &dword_0 + 2)
  {
    goto LABEL_6;
  }

  v23 = v38;
  v24 = v34;
  sub_1799C(v38 + v18, v34);
  if (v19(v24, 1, v20))
  {
    sub_3A63C(v24);
    [v23 bounds];
    CGRectGetWidth(v42);
  }

  else
  {
    v32(v11, v24, v20);
    sub_3A63C(v24);
    swift_getKeyPath();
    v27 = v35;
    sub_75C7B0();

    v31(v11, v20);
    v29 = v36;
    v28 = v37;
    v30 = v33;
    (*(v36 + 32))(v33, v27, v37);
    sub_765580();
    sub_7655A0();
    (*(v29 + 8))(v30, v28);
  }

  [v23 bounds];
  CGRectGetHeight(v43);
  v25 = v39;
  return sub_1B249C(v25, v40);
}

void sub_4F648()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_artworkView);
  sub_759210();
  sub_4FAE4(&qword_945810, &type metadata accessor for ArtworkView);
  v3 = v2;
  sub_75A0C0();

  v4 = *(*(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v4)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_4FAE4(&unk_93F530, type metadata accessor for VideoView);
      v5 = v4;
      sub_75A0C0();
    }
  }
}

id sub_4F7D8(double a1, uint64_t a2, void *a3)
{
  v5 = sub_75EEC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_440FB8(a3, v8, a1);
  sub_75EEE0();
  sub_4FAE4(&qword_948750, &type metadata accessor for UpsellBreakoutLayout);
  sub_766ED0();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_BD88(&unk_93F5C0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77D9F0;
  *(v21 + 32) = v16;
  sub_4FB2C();
  v22 = v16;
  isa = sub_769450().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_4FAE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_4FB2C()
{
  result = qword_957F90;
  if (!qword_957F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_957F90);
  }

  return result;
}

unint64_t sub_4FB8C()
{
  result = qword_940548;
  if (!qword_940548)
  {
    sub_7584C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940548);
  }

  return result;
}

uint64_t sub_4FBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7570A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  __chkstk_darwin(v17);
  v40 = v36 - v18;
  sub_7584A0();
  sub_7584A0();
  v38 = *(v5 + 48);
  v19 = v38(v16, 1, v4);
  v39 = a2;
  v37 = v5;
  if (v19 == 1)
  {
    sub_10A2C(v16, &unk_93FD30);
    v20 = 0;
  }

  else
  {
    (*(v5 + 32))(v7, v16, v4);
    sub_75E8D0();
    sub_7688F0();
    v21 = v5;
    v20 = aBlock;
    if (aBlock)
    {
      sub_7584B0();
      sub_75E8C0();

      v22 = v37;
      (*(v37 + 8))(v7, v4);
      v23 = v40;
      sub_10A2C(v40, &unk_93FD30);
      v20 = 1;
      (*(v22 + 56))(v13, 0, 1, v4);
      sub_50774(v13, v23);
    }

    else
    {
      (*(v21 + 8))(v7, v4);
    }
  }

  sub_BD88(&qword_94DDC0);
  v24 = sub_768F90();
  v25 = [objc_allocWithZone(ASCAppLaunchTrampoline) init];
  sub_7584B0();
  v26 = sub_769210();

  sub_50690(v40, v10);
  if (v38(v10, 1, v4) == 1)
  {
    v28 = 0;
  }

  else
  {
    sub_757040(v27);
    v28 = v29;
    (*(v37 + 8))(v10, v4);
  }

  v30 = [v25 openApplicationWithBundleIdentifier:v26 payloadURL:v28 universalLinkRequired:{v20, v36[0], v36[1], v36[2], v36[3]}];

  v45 = sub_50700;
  v46 = v24;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_503E0;
  v44 = &unk_881238;
  v31 = _Block_copy(&aBlock);

  [v30 addSuccessBlock:v31];
  _Block_release(v31);
  v32 = swift_allocObject();
  v33 = v39;
  v32[2] = a1;
  v32[3] = v33;
  v32[4] = v24;
  v45 = sub_50768;
  v46 = v32;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_50614;
  v44 = &unk_881288;
  v34 = _Block_copy(&aBlock);

  [v30 addErrorBlock:v34];
  _Block_release(v34);

  sub_10A2C(v40, &unk_93FD30);
  return v24;
}

uint64_t sub_502F4()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_768F60();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_503E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v3 = sub_768FF0();
  sub_BE38(v3, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v9[3] = v8;
  v4 = sub_B1B4(v9);
  (*(*(v8 - 8) + 16))(v4);
  sub_7685E0();
  sub_10A2C(v9, &unk_93FBD0);
  sub_768EA0();

  v5 = sub_758490();
  if (!v5)
  {
    return sub_768F50();
  }

  sub_72D574(v5, 1, a3);
  sub_768F00();
}

void sub_5061C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_50690(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_50708(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_50720()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_50774(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FD30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for VideoView()
{
  result = qword_9405F0;
  if (!qword_9405F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_50838()
{
  sub_57C5C();
  if (v0 <= 0x3F)
  {
    sub_7570A0();
    if (v1 <= 0x3F)
    {
      sub_75DC30();
      if (v2 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_509F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_50A68(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_940580 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + qword_9405B0);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider15VideoMirrorView_videoLayer);
      v6 = v3;
      [v5 setPlayer:v6];
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

char *sub_50B14()
{
  v1 = v0;
  v2 = sub_75DC30();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_9405B0;
  v8 = *&v0[qword_9405B0];
  if (v8)
  {
    sub_59B8C(&unk_940740, type metadata accessor for VideoView);
    v9 = v8;
    v10 = v0;
    sub_759A40();

    v11 = *&v0[v7];
    if (v11)
    {
      v12 = qword_99A200;
      swift_beginAccess();
      (*(v3 + 16))(v6, &v10[v12], v2);
      v13 = v11;
      sub_75DC00();
      (*(v3 + 8))(v6, v2);
      sub_759A00();

      v14 = *&v1[v7];
      if (v14)
      {
        [v14 _setDisallowsVideoLayerDisplayCompositing:1];
      }
    }
  }

  v15 = *&v1[qword_9405B8];
  if (v15)
  {
    [v15 setPlayer:{*&v1[v7], v4}];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = *&result[OBJC_IVAR____TtC18ASMessagesProvider15VideoMirrorView_videoLayer];
    v18 = *&v1[v7];
    [v17 setPlayer:v18];

    result = swift_unknownObjectRelease();
  }

  v19 = qword_9405D0;
  if (v1[qword_9405D0] == 1)
  {
    [v1 updateAudioSessionCategoryWithIsAudioOn:1];
    result = *&v1[v7];
    if (result)
    {
      result = [result setMuted:0];
    }

    v1[v19] = 0;
  }

  return result;
}

uint64_t sub_50D80()
{
  v1 = *(v0 + qword_9405B0);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 currentItem];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 tracks];

  sub_BE70(0, &unk_940780);
  v5 = sub_769460();

  if (v5 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_27;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 assetTrack];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 mediaType];

        v14 = sub_769240();
        v16 = v15;
        if (v14 == sub_769240() && v16 == v17)
        {

LABEL_23:
          i = 1;
          goto LABEL_24;
        }

        v19 = sub_76A950();

        if (v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        i = 0;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_24:

  return i;
}

id sub_50FB8(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for VideoView();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_51014(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[qword_9405B8];
  v6 = a3;
  v7 = a1;
  if (v5)
  {
    v5 = [v5 view];
  }

  [v5 setBackgroundColor:a3];

  v8.receiver = a1;
  v8.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v8, "setBackgroundColor:", a3);
}

uint64_t sub_510C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = sub_75DC30();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75A6B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + qword_99A1D0);
  if (v12)
  {
    v28[0] = v9;
    v28[1] = a1;

    v13 = sub_7625C0();
    v14 = qword_99A200;
    v15 = (v4 + 16);
    v16 = (v4 + 8);
    if (v13)
    {
      swift_beginAccess();
      v17 = v2 + v14;
      v18 = v29;
      (*v15)(v6, v17, v29);
      sub_75DBE0();
    }

    else
    {
      swift_beginAccess();
      v24 = v2 + v14;
      v18 = v29;
      (*v15)(v6, v24, v29);
      sub_75DBB0();
    }

    (*v16)(v6, v18);
    v25 = sub_7625C0();
    v12(v11, v25 & 1);
    sub_F704(v12);
    return (*(v8 + 8))(v11, v28[0]);
  }

  else
  {
    v19 = sub_7625C0();
    v20 = qword_99A200;
    v21 = (v4 + 16);
    if (v19)
    {
      swift_beginAccess();
      v22 = v2 + v20;
      v23 = v29;
      (*v21)(v6, v22, v29);
      sub_75DBE0();
    }

    else
    {
      swift_beginAccess();
      v27 = v2 + v20;
      v23 = v29;
      (*v21)(v6, v27, v29);
      sub_75DBB0();
    }

    return (*(v4 + 8))(v6, v23);
  }
}

id sub_513EC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, "frame");
}

void sub_51430(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for VideoView();
  v20.receiver = a1;
  v20.super_class = v10;
  v11 = a1;
  objc_msgSendSuper2(&v20, "frame");
  v13 = v12;
  v15 = v14;
  v19.receiver = v11;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, "setFrame:", a2, a3, a4, a5);
  [v11 frame];
  v18 = v17 == v13 && v16 == v15;
  if (!v18 && (*(v11 + qword_9405A0) & 1) == 0)
  {
    sub_55054();
  }
}

uint64_t sub_51518()
{
  v0 = ASKDeviceTypeGetCurrent();
  v1 = sub_769240();
  v3 = v2;
  v5 = 8.0;
  if (v1 != sub_769240() || v3 != v4)
  {
    if (sub_76A950())
    {
      v5 = 8.0;
    }

    else
    {
      v5 = 6.0;
    }
  }

  qword_940550 = *&v5;
  *algn_940558 = v5;
  qword_940560 = *&v5;
  unk_940568 = *&v5;
  return result;
}

char *sub_515D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a5;
  v68 = a4;
  v69 = a3;
  v61 = sub_768C60();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_7570A0();
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v58 = v7;
  v17 = objc_allocWithZone(v7);
  swift_weakInit();
  *&v17[qword_940578 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_940580 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v17[qword_940588 + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = qword_940590;
  *&v17[v18] = [objc_allocWithZone(UIImageView) init];
  v17[qword_940598] = 0;
  v17[qword_9405A0] = 0;
  v17[qword_9405A8] = 0;
  *&v17[qword_9405B0] = 0;
  *&v17[qword_9405B8] = 0;
  v19 = qword_9405C0;
  sub_7625F0();
  *&v17[v19] = sub_7625E0();
  v20 = qword_9405C8;
  *&v17[v20] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v21 = a2;
  v22 = &v17[qword_99A1B0];
  v23 = *&UIEdgeInsetsZero.bottom;
  *v22 = *&UIEdgeInsetsZero.top;
  v22[1] = v23;
  v24 = &v17[qword_99A1B8];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  *&v17[qword_99A1C0] = 1;
  v17[qword_9405D0] = 0;
  v25 = &v17[qword_99A1D0];
  *v25 = 0;
  v25[1] = 0;
  *&v17[qword_99A1E0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_99A1E8] = 0;
  v17[qword_99A1F0] = 0;
  swift_unknownObjectWeakInit();
  v17[qword_9405D8] = 0;
  v17[qword_99A208] = 0;
  *&v17[qword_9405E0] = 0;
  v17[qword_9405E8] = 0;
  swift_beginAccess();
  v64 = a7;
  swift_weakAssign();
  v63 = a1;
  sub_59C2C(a1, &v17[qword_99A1D8]);
  v26 = sub_757080();
  v28 = v27;
  v29 = sub_7650F0();
  v57 = a2;
  if (!v28)
  {

    v31 = v65;
    v32 = v62;
    goto LABEL_9;
  }

  if (v26 == v29 && v28 == v30)
  {

    v31 = v65;
    v32 = v62;
    goto LABEL_7;
  }

  v33 = sub_76A950();

  v31 = v65;
  v32 = v62;
  if ((v33 & 1) == 0)
  {
LABEL_9:
    (*(v32 + 16))(&v17[qword_99A1C8], v21, v31);
    goto LABEL_10;
  }

LABEL_7:
  v34 = [objc_opt_self() mainBundle];
  sub_757030();
  v35 = sub_769210();

  v36 = [v34 URLForResource:v35 withExtension:0];

  if (!v36)
  {
    goto LABEL_9;
  }

  sub_757060();

  v37 = *(v32 + 32);
  v37(v16, v13, v31);
  v37(&v17[qword_99A1C8], v16, v31);
LABEL_10:
  v38 = v32;
  sub_1ED18(v68, &v17[qword_99A198], &unk_948710);
  sub_1ED18(v67, &v17[qword_99A1A0], &unk_948710);
  v39 = qword_99A200;
  v40 = sub_75DC30();
  v41 = *(v40 - 8);
  (*(v41 + 16))(&v17[v39], v69, v40);
  sub_1ED18(v66, &v17[qword_99A1A8], &unk_940700);
  v72.receiver = v17;
  v72.super_class = v58;
  v42 = objc_msgSendSuper2(&v72, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v42 setClipsToBounds:0];
  v43 = qword_940590;
  [*&v42[qword_940590] setUserInteractionEnabled:0];
  [*&v42[v43] setClipsToBounds:1];
  [v42 addSubview:*&v42[v43]];
  v44 = objc_opt_self();
  v45 = [v44 defaultCenter];
  v46 = sub_769AA0();
  [v45 addObserver:v42 selector:"didChangeAutoPlayVideoSetting" name:v46 object:0];

  v47 = [v44 defaultCenter];
  [v47 addObserver:v42 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v48 = qword_9405C8;
  [*&v42[qword_9405C8] setHidden:1];
  v49 = *&v42[v48];
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock];
  v52 = *&v49[OBJC_IVAR____TtC18ASMessagesProvider10PlayButton_tapActionBlock];
  *v51 = sub_5AA60;
  v51[1] = v50;
  v53 = v49;

  sub_F704(v52);

  memset(v71, 0, sizeof(v71));
  memset(v70, 0, sizeof(v70));
  v54 = v59;
  sub_768C10();
  sub_10A2C(v70, &unk_93FBD0);
  sub_10A2C(v71, &unk_93FBD0);
  sub_769E70();
  (*(v60 + 8))(v54, v61);
  [v42 addSubview:*&v42[v48]];
  sub_58B90();

  sub_10A2C(v66, &unk_940700);
  sub_10A2C(v67, &unk_948710);
  sub_10A2C(v68, &unk_948710);
  (*(v41 + 8))(v69, v40);
  (*(v38 + 8))(v57, v65);
  sub_1EB60(v63);

  return v42;
}

void sub_51EB4()
{
  v44 = sub_75DC30();
  v0 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_75A6B0();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  __chkstk_darwin(v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &ObjectType - v7;
  v9 = sub_75FC40();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75FC80();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v40 = v0;
    (*((swift_isaMask & *Strong) + qword_99A210 + 712))();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      ObjectType = swift_getObjectType();
      sub_59B8C(&qword_93F500, type metadata accessor for VideoView);
      v18 = v17;
      v39 = v8;
      v19 = v5;
      v20 = v12;
      v21 = v18;
      sub_75D090();

      v12 = v20;
      v5 = v19;
      v8 = v39;
      swift_unknownObjectRelease();
    }

    (*(v13 + 104))(v15, enum case for MediaClickMetricsEvent.TargetId.play(_:), v12);
    v22 = v12;
    v24 = v45;
    v23 = v46;
    (*(v45 + 104))(v11, enum case for MediaClickMetricsEvent.ActionType.play(_:), v46);
    sub_56D2C(v15, v11);
    (*(v24 + 8))(v11, v23);
    v25 = (*(v13 + 8))(v15, v22);
    if ((*((swift_isaMask & *v17) + qword_99A210 + 752))(v25))
    {
      v26 = sub_7625C0();
      v27 = qword_99A200;
      v28 = (v40 + 16);
      v29 = (v40 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v17 + v27;
        v31 = v43;
        (*v28)(v43, v30, v44);
        sub_75DBE0();
      }

      else
      {
        swift_beginAccess();
        v32 = v17 + v27;
        v31 = v43;
        (*v28)(v43, v32, v44);
        sub_75DBB0();
      }

      (*v29)(v31, v44);
      sub_75A680();
      sub_59B8C(&qword_9406B8, &type metadata accessor for VideoControls);
      v33 = v41;
      v34 = sub_76A520();
      v35 = *(v42 + 8);
      v35(v5, v33);
      v35(v8, v33);
      if (v34)
      {
        v36 = *(v17 + qword_9405B0);
        if (v36)
        {
          v37 = v36;
          [v17 updateAudioSessionCategoryWithIsAudioOn:1];
          [v37 setMuted:0];

          v17 = v37;
        }

        else
        {
          *(v17 + qword_9405D0) = 1;
        }
      }
    }
  }
}

uint64_t sub_524C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_75C330();
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + qword_9405B0);
  if (v8)
  {
    v14 = v4;
    v9 = v8;
    sub_759A20();

    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = enum case for VideoPlayerState.unknown(_:);
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

void sub_525F4()
{
  v1 = v0;
  v2 = qword_9405B0;
  v3 = *(v0 + qword_9405B0);
  if (v3 || (sub_52D00(), (v3 = *(v0 + v2)) != 0))
  {
    v4 = v3;
    v5 = sub_7599E0();

    if ((v5 & 1) == 0)
    {
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = *(v1 + v2);
      if (v7)
      {
        swift_retain_n();
        v8 = v7;
        if ([v8 isMuted] & 1) != 0 && ((*((swift_isaMask & *v1) + qword_99A210 + 752))())
        {

          sub_1A9418(sub_5AA58, v6);

LABEL_12:

          return;
        }
      }

      else
      {
        swift_retain_n();
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = *(Strong + qword_9405B0);

        [v11 play];

        return;
      }

      goto LABEL_12;
    }
  }
}

void sub_527C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_9405B0);

    [v2 play];
  }
}

uint64_t sub_52838()
{
  v1 = v0;
  v2 = sub_75DC30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_99A200;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_75DB90();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = sub_7625C0();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_52964()
{
  v1 = v0;
  v0[qword_99A1F0] = 0;
  v2 = qword_99A1E8;
  [v0 setUserInteractionEnabled:(v0[qword_99A1E8] & 1) == 0];
  v3 = [v0 backgroundColor];
  if (!v3)
  {
    sub_BE70(0, &qword_93E540);
    v3 = sub_76A030();
  }

  v10 = v3;
  v4 = *&v0[qword_9405B8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      if (v1[v2] == 1)
      {
        v7 = [objc_opt_self() clearColor];
      }

      else
      {
        v7 = v10;
      }

      v8 = v7;
      [v6 setBackgroundColor:v7];
    }
  }

  sub_58B90();
  if ((v1[v2] & 1) == 0)
  {
    v9 = *&v1[qword_9405B0];
    if (v9)
    {
      [v9 setMuted:(v1[qword_9405D8] & 1) == 0];
    }
  }

  sub_55054();
  [v1 setNeedsLayout];
}

uint64_t sub_52AF0(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_75DC30();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = qword_99A200;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_59B8C(&unk_940770, &type metadata accessor for VideoConfiguration);
  LOBYTE(v11) = sub_7691C0();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    sub_58B90();
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

void sub_52D00()
{
  v1 = v0;
  v2 = sub_7570A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_54930();
  v6 = qword_9405B0;
  v7 = *(v0 + qword_9405B0);
  if (v7 || (((*(v3 + 16))(v5, v0 + qword_99A1C8, v2), v8 = objc_allocWithZone(sub_759A80()), v9 = sub_759A10(), (v10 = *(v0 + v6)) == 0) ? (v12 = 0) : (v11 = v10, sub_759A40(), v11, v12 = *(v1 + v6)), *(v1 + v6) = v9, v13 = v9, v12, sub_50B14(), v13, (v7 = *(v1 + v6)) != 0))
  {
    v14 = v7;
    sub_7599F0();
  }
}

void sub_52E60(char a1)
{
  if (a1)
  {
    v2 = *(v1 + qword_9405B8);
    if (v2)
    {
      v7[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v7[5] = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_509F0;
      v7[3] = &unk_881600;
      v3 = _Block_copy(v7);
      v4 = v2;
      [v4 exitFullScreenAnimated:0 completionHandler:v3];
      _Block_release(v3);
    }

    v5 = *(v1 + qword_9405B0);
    if (v5)
    {
      v6 = v5;
      sub_7599D0();
    }
  }

  else
  {
    *(v1 + qword_9405E8) = 1;
  }
}

void sub_52F60()
{
  v1 = qword_9405B8;
  v2 = *(v0 + qword_9405B8);
  if (v2)
  {
    v3 = [v2 view];
  }

  else
  {
    v3 = 0;
  }

  [v3 removeFromSuperview];

  v4 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_52FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v5 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v7 = sub_BD88(&qword_940760);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_BD88(&qword_940768);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_BD88(&unk_948710);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_768670();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ED18(v3 + qword_99A198, v15, &unk_948710);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v38 = a3;
    (*(v17 + 32))(v19, v15, v16);
    v21 = qword_9405B0;
    v22 = *(v3 + qword_9405B0);
    if (!v22)
    {
      (*(v17 + 8))(v19, v16);
      v20 = 1;
      a3 = v38;
      return (*(v17 + 56))(a3, v20, 1, v16);
    }

    v23 = v3;
    v24 = v22;
    v25 = sub_7599C0();
    if (v25)
    {
      v26 = *(v23 + v21);
      if (v26)
      {
        v27 = [v26 currentItem];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 asset];

          v30 = sub_769210();
          v31 = [v29 statusOfValueForKey:v30 error:0];

          if (v31 == &dword_0 + 2)
          {
            [v25 duration];
            [v25 currentTime];
            CMTimeGetSeconds(&time);

LABEL_12:
            v32 = sub_75C9E0();
            v33 = *(v32 - 8);
            (*(v33 + 16))(v12, v39, v32);
            (*(v33 + 56))(v12, 0, 1, v32);
            v34 = sub_75C9F0();
            (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
            v35 = v40;
            sub_759A50();
            a3 = v38;
            sub_75CA10();

            sub_10A2C(v35, &unk_93FD30);
            sub_10A2C(v9, &qword_940760);
            sub_10A2C(v12, &qword_940768);
            (*(v17 + 8))(v19, v16);
            v20 = 0;
            return (*(v17 + 56))(a3, v20, 1, v16);
          }
        }
      }
    }

    v37 = 0;
    goto LABEL_12;
  }

  sub_10A2C(v15, &unk_948710);
  v20 = 1;
  return (*(v17 + 56))(a3, v20, 1, v16);
}

uint64_t sub_5356C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_BD88(&qword_9406B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_75C9E0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for MediaMetricsEvent.ActionType.stop(_:), v12, v14);
  if (a2)
  {
    v17 = enum case for MediaMetricsEvent.ActionDetails.complete(_:);
    v18 = sub_75CA00();
    (*(*(v18 - 8) + 104))(v8, v17, v18);
  }

  else
  {
    v18 = sub_75CA00();
    if (a1)
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.pause(_:);
    }

    else
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.autopause(_:);
    }

    (*(*(v18 - 8) + 104))(v8, *v19, v18);
  }

  sub_75CA00();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_5A9E8(v8, v11);
  sub_52FE0(v16, v11, a3);
  sub_10A2C(v11, &qword_9406B0);
  return (*(v13 + 8))(v16, v12);
}

void sub_537EC(void *a1)
{
  v1 = a1;
  sub_58B90();
}

uint64_t sub_53834()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[qword_9405B8];
  if (v9)
  {
    v10 = [v9 view];
  }

  else
  {
    v10 = 0;
  }

  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[qword_940590];
  [v11 frame];
  [v11 setFrame:?];
  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  [v11 setCenter:{MidX, CGRectGetMidY(v16)}];
  sub_539CC();
  return sub_55E04();
}

void sub_53984(void *a1)
{
  v1 = a1;
  sub_53834();
}

id sub_539CC()
{
  v1 = qword_9405C8;
  result = [*&v0[qword_9405C8] isHidden];
  if ((result & 1) == 0)
  {
    v3 = *&v0[v1];
    [v0 bounds];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = &v0[qword_99A1B8];
    if (v0[qword_99A1B8 + 16])
    {
      [v0 bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MidY = CGRectGetMidY(v20);
    }

    else
    {
      MidX = *v10;
      MidY = v10[1];
    }

    v17 = *&v0[v1];

    return [v17 setFrame:{MidX - v7 * 0.5, MidY - v9 * 0.5, v7, v9}];
  }

  return result;
}

uint64_t sub_53B1C()
{
  v1 = v0;
  v94 = sub_75A6B0();
  v2 = *(v94 - 8);
  __chkstk_darwin(v94);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v84 - v6;
  v7 = sub_75C330();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v85 = &v84 - v12;
  __chkstk_darwin(v13);
  v86 = &v84 - v14;
  __chkstk_darwin(v15);
  v92 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v22 = __chkstk_darwin(v20);
  v23 = &v84 - v21;
  v24 = qword_9405E8;
  v25 = v1[qword_9405E8];
  v89 = v8;
  v87 = v26;
  if (v25 == 1)
  {
    v91 = v2;
    v27 = *&v1[qword_9405B0];
    if (v27)
    {
      v28 = v27;
      sub_759A20();

      (*(v8 + 32))(v23, v19, v7);
      v29 = *(v8 + 104);
    }

    else
    {
      v29 = *(v8 + 104);
      v29(&v84 - v21, enum case for VideoPlayerState.unknown(_:), v7, v22);
    }

    v32 = v92;
    (v29)(v92, enum case for VideoPlayerState.paused(_:), v7);
    v33 = sub_75C320();
    v34 = *(v8 + 8);
    v34(v32, v7);
    v34(v23, v7);
    if (v33)
    {
      v1[v24] = 0;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_5A9E0;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v2 = v91;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v35 = qword_9405B0;
  v36 = *&v1[qword_9405B0];
  v88 = v7;
  v95 = v31;
  v90 = qword_9405B0;
  if (!v36)
  {
    v43 = v2;
    v48 = 0;
    v49 = &v1[qword_99A1E8];
    v50 = v1[qword_99A1E8] ^ 1;
    goto LABEL_22;
  }

  v37 = [v36 currentItem];
  if (v37)
  {
    v38 = v4;
    v39 = v2;
    v40 = v37;
    [v37 currentTime];
    sub_769DF0(0.0, 1000000000);
    v41 = sub_769DE0();

    v2 = v39;
    v4 = v38;
    v31 = v95;
    v42 = *&v1[v35];
    if (v42)
    {
      goto LABEL_13;
    }

LABEL_17:
    v43 = v2;
    v45 = 0;
    goto LABEL_18;
  }

  v41 = 1;
  v42 = *&v1[v35];
  if (!v42)
  {
    goto LABEL_17;
  }

LABEL_13:
  v43 = v2;
  v44 = v42;
  v45 = sub_759A60();

  v46 = *&v1[v35];
  if (!v46)
  {
LABEL_18:
    v48 = 0;
    goto LABEL_19;
  }

  v47 = v46;
  v48 = sub_759A70();

LABEL_19:
  v49 = &v1[qword_99A1E8];
  v51 = v1[qword_99A1E8] | v48;
  v52 = v51 | v41;
  v50 = v51 ^ 1;
  if ((v52 & 1) == 0 && (v45 & 1) == 0)
  {
    v48 = 0;
    v50 = v1[qword_9405A8];
  }

LABEL_22:
  v53 = v1[qword_940598];
  v93 = v30;
  sub_54438(v50 & 1, v53, v30, v31);
  v54 = v96;
  sub_510C4(v96);
  sub_75A690();
  sub_59B8C(&qword_9406B8, &type metadata accessor for VideoControls);
  v55 = v94;
  v56 = sub_76A520();
  v59 = *(v43 + 8);
  v57 = v43 + 8;
  v58 = v59;
  v59(v4, v55);
  if (v56)
  {
    v60 = v48 ^ 1;
  }

  else
  {
    sub_75A6A0();
    v61 = sub_76A520();
    v58(v4, v55);
    if (v61)
    {
      v62 = *&v1[v90];
      v91 = v57;
      if (v62)
      {
        v63 = v62;
        v64 = v85;
        sub_759A20();

        v65 = v88;
        v66 = v89;
        v67 = v86;
        (*(v89 + 32))(v86, v64, v88);
        v68 = *(v66 + 104);
      }

      else
      {
        v65 = v88;
        v66 = v89;
        v68 = *(v89 + 104);
        v67 = v86;
        (v68)(v86, enum case for VideoPlayerState.unknown(_:), v88);
      }

      v69 = v92;
      v86 = v68;
      (v68)(v92, enum case for VideoPlayerState.paused(_:), v65);
      v70 = sub_75C320();
      v71 = *(v66 + 8);
      v71(v69, v65);
      v71(v67, v65);
      if (v70)
      {
        v60 = 1;
        v55 = v94;
        v54 = v96;
      }

      else
      {
        v72 = *&v1[v90];
        if (v72)
        {
          v73 = v72;
          v74 = v84;
          sub_759A20();

          (*(v89 + 32))(v87, v74, v65);
          v54 = v96;
          v75 = v86;
        }

        else
        {
          v75 = v86;
          (v86)(v87, enum case for VideoPlayerState.unknown(_:), v65);
          v54 = v96;
        }

        v76 = v92;
        (v75)(v92, enum case for VideoPlayerState.ended(_:), v65);
        v77 = v87;
        v60 = sub_75C320();
        v71(v76, v65);
        v71(v77, v65);
        v55 = v94;
      }
    }

    else
    {
      v60 = 0;
      v54 = v96;
    }
  }

  v78 = v60 & ~*v49;
  v79 = objc_opt_self();
  v80 = swift_allocObject();
  *(v80 + 16) = v1;
  *(v80 + 24) = v78 & 1;
  aBlock[4] = sub_5A9AC;
  aBlock[5] = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_8815D8;
  v81 = _Block_copy(aBlock);
  v82 = v1;

  [v79 animateWithDuration:4 delay:v81 options:0 animations:0.2 completion:0.0];
  _Block_release(v81);
  sub_F704(v93);
  return (v58)(v54, v55);
}

void sub_543B8(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + qword_9405B0);
      v3 = Strong;
      v4 = v2;

      if (v2)
      {
        sub_7599D0();
      }
    }
  }
}

void sub_54438(char a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  if (a2)
  {
    v8 = a1 & 1;
    if (a1)
    {
      v9 = 0.2;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v8;
    v27 = sub_5A9A0;
    v28 = v10;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_23F0CC;
    v26 = &unk_881510;
    v11 = _Block_copy(&v23);
    v12 = v4;

    if (a3)
    {
      v27 = a3;
      v28 = a4;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_3D6D80;
      v26 = &unk_881588;
      a3 = _Block_copy(&v23);
    }

    v13 = objc_opt_self();
    [v13 animateWithDuration:4 delay:v11 options:a3 animations:v9 completion:0.0];
    _Block_release(a3);
    _Block_release(v11);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v8;
    v27 = sub_5AAAC;
    v28 = v14;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_23F0CC;
    v26 = &unk_881560;
    v15 = _Block_copy(&v23);
    v16 = v12;

    [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
    _Block_release(v15);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a1 & 1;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_5A984;
    *(v19 + 24) = v18;
    v27 = sub_2EC28;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1EB578;
    v26 = &unk_8814C0;
    v20 = _Block_copy(&v23);
    v21 = v4;

    [v17 performWithoutAnimation:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id sub_547C0(char *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = 0.0;
  if (a2)
  {
    v6 = 1.0;
  }

  [*&a1[qword_940590] setAlpha:v6];

  return [a1 layoutSubviews];
}

id sub_54880(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = *(a1 + qword_940590);
  v7 = 0.0;
  if (a2)
  {
    v7 = 1.0;
  }

  return [v6 setAlpha:v7];
}

void sub_54930()
{
  v1 = qword_9405B8;
  if (*&v0[qword_9405B8])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for AppStoreVideoPlayerViewController()) init];
  [v2 setShowsPlaybackControls:0];
  [v2 setAllowsVideoFrameAnalysis:0];
  [v2 setUpdatesNowPlayingInfoCenter:0];
  [v2 setCanPausePlaybackWhenExitingFullScreen:0];
  [v2 setPreferredUnobscuredArea:*&v0[qword_99A1C0]];
  [v2 setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [v2 setDelegate:v0];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 setClipsToBounds:1];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v0 backgroundColor];
  if (!v8)
  {
    sub_BE70(0, &qword_93E540);
    v8 = sub_76A030();
  }

  [v7 setBackgroundColor:v8];

  [v3 setModalPresentationStyle:5];
  [v3 setCanToggleVideoGravityWhenEmbeddedInline:0];
  v9 = [v3 view];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 layer];

  sub_75CD70();
  v12 = sub_75CD80();
  v12();
  [v11 setMaskedCorners:sub_7697E0()];

  v13 = [v3 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v0 bounds];
  [v14 setFrame:?];

  v15 = *&v0[qword_9405B0];
  if (v15)
  {
    v16 = v15;
    [v16 _setDisallowsVideoLayerDisplayCompositing:1];
    [v3 setPlayer:v16];
  }

  v17 = [v3 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  [v0 insertSubview:v17 atIndex:0];

  v19 = *&v0[v1];
  *&v0[v1] = v3;

  sub_58B90();
  v20 = [v3 view];

  if (!v20)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = [v20 layer];

  [v21 setAllowsGroupBlending:0];
}

id sub_54CF8()
{
  v1 = v0;
  v2 = sub_75A6B0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_99A1E8] == 1)
  {
    v7 = *&v0[qword_9405B8];
    if (v7)
    {
      [v7 setShowsPlaybackControls:{1, v4}];
    }
  }

  else
  {
    v8 = *&v0[qword_9405B0];
    if (v8 && (v9 = v8, v10 = sub_759A70(), v9, (v10 & 1) != 0))
    {
      v11 = qword_9405B8;
      v12 = *&v1[qword_9405B8];
      if (v12)
      {
        v13 = v12;
        sub_510C4(v6);
        v14 = sub_75A670();
        (*(v3 + 8))(v6, v2);
        [v13 setShowsPlaybackControls:v14 & 1];

        v15 = *&v1[v11];
        if (v15)
        {
          [v15 flashPlaybackControlsWithDuration:5.0];
        }
      }
    }

    else
    {
      v16 = *&v1[qword_9405B8];
      if (v16)
      {
        [v16 setShowsPlaybackControls:{0, v4}];
      }
    }
  }

  return [v1 accessibilityUpdatePlayerControllerControls];
}

void sub_54EB4()
{
  v1 = v0;
  if (qword_93C228 != -1)
  {
    swift_once();
  }

  v2 = *&qword_940550;
  v3 = *algn_940558;
  v4 = *&qword_940560;
  v5 = unk_940568;
  v6 = &v0[qword_99A1B0];
  v7 = *&v0[qword_99A1B0];
  v8 = *&v0[qword_99A1B0 + 16];
  v9 = [v0 traitCollection];
  v10 = sub_7699F0();

  v11 = *&v1[qword_9405B8];
  if (v11)
  {
    v12 = 8;
    if (v10)
    {
      v13 = 24;
    }

    else
    {
      v13 = 8;
    }

    if ((v10 & 1) == 0)
    {
      v12 = 24;
    }

    v14 = v3 + *&v6[v13];
    v15 = v5 + *&v6[v12];
    v16 = objc_opt_self();
    v17 = v11;
    v18 = [v16 valueWithUIEdgeInsets:{v2 + v7, v14, v4 + v8, v15}];
    [v17 setOverrideLayoutMarginsWhenEmbeddedInline:v18];
  }
}

void sub_55054()
{
  v1 = v0;
  v2 = sub_768380();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768390();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_99A1E8] != 1)
  {
LABEL_4:
    [v1 frame];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];

    sub_769D60();
    v13 = v16;
    v14 = v17;
    goto LABEL_6;
  }

  sub_1ED18(&v0[qword_99A1A8], aBlock, &unk_940700);
  if (v37)
  {
    sub_B170(aBlock, v37);
    v12 = sub_75ACD0();
    sub_BEB8(aBlock);
    v13 = 0.0;
    v14 = 0.0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  sub_10A2C(aBlock, &unk_940700);
  v13 = 0.0;
  v14 = 0.0;
LABEL_6:
  v18 = qword_9405B0;
  v19 = *&v1[qword_9405B0];
  if (!v19 || (v20 = v19, v21 = sub_7599C0(), v20, !v21) || (([v21 preferredMaximumResolution], v23 = v22, v25 = v24, v21, v23 == v13) ? (v26 = v25 == v14) : (v26 = 0), !v26))
  {
    sub_BE70(0, &qword_940340);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v27 = sub_7699A0();
    (*(v9 + 8))(v11, v8);
    v28 = *&v1[v18];
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v14;
    v38 = sub_5A940;
    v39 = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23F0CC;
    v37 = &unk_881448;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    sub_7683A0();
    v35 = _swiftEmptyArrayStorage;
    sub_59B8C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_4C874();
    sub_76A5A0();
    sub_769980();
    _Block_release(v30);

    (*(v34 + 8))(v4, v2);
    (*(v32 + 8))(v7, v33);
  }
}

void sub_5554C(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v5 = sub_7599C0();
    [v5 setPreferredMaximumResolution:{a2, a3}];
  }
}

void sub_555BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + qword_99A1E8) = 0;
    sub_52964();
  }
}

void sub_5561C(uint64_t a1)
{
  v3 = sub_75EEF0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3, v5);
  if ((*(v4 + 88))(v7, v3) == enum case for VideoPlaybackFailure.videoDecodersUnavailable(_:))
  {
    (*(v4 + 96))(v7, v3);
    v8 = *v7;
    v9 = [objc_opt_self() defaultCenter];
    v10 = sub_769A90();
    sub_BD88(&unk_9498B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77E280;
    v17 = sub_763B10();
    v18 = v12;
    sub_76A6E0();
    *(inited + 96) = &type metadata for AnyHashable;
    v13 = swift_allocObject();
    *(inited + 72) = v13;
    sub_59C2C(v1 + qword_99A1D8, v13 + 16);
    v17 = sub_763B20();
    v18 = v14;
    sub_76A6E0();
    *(inited + 168) = sub_BD88(&qword_940750);
    *(inited + 144) = v8;
    v15 = v8;
    sub_10E1F8(inited);
    swift_setDeallocating();
    sub_BD88(&qword_940758);
    swift_arrayDestroy();
    isa = sub_7690E0().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

void sub_5590C()
{
  sub_75CD70();
  v1 = sub_75CD80();
  v1();
  v2 = sub_7697E0();
  v3 = [v0 layer];
  [v3 setMaskedCorners:v2];

  sub_75CD40();
  v4 = *&v0[qword_9405B8];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];

      [v7 setMaskedCorners:v2];
    }
  }

  v8 = [*&v0[qword_940590] layer];
  [v8 setMaskedCorners:v2];
}

uint64_t sub_55A3C()
{
  sub_75CD70();
  v0 = sub_75CD80();

  return v0();
}

void sub_55A84(uint64_t a1)
{
  sub_75CD70();
  v2 = sub_75CD80();
  v2(a1);

  sub_5590C();
}

void (*sub_55AE4(uint64_t *a1))(void *a1, char a2)
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
  *(v3 + 32) = v1;
  sub_75CD70();
  v5 = sub_75CD80();
  *(v4 + 40) = v5(v4);
  return sub_55B84;
}

void sub_55B84(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_5590C();
  }

  free(v3);
}

void sub_55BEC(void *a1, double a2)
{
  v3 = a1;
  sub_55D3C(&selRef__setCornerRadius_, &selRef__cornerRadius, a2);
}

id sub_55C78(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_55CBC(void *a1, double a2)
{
  v3 = a1;
  sub_55D3C(&selRef__setContinuousCornerRadius_, &selRef__continuousCornerRadius, a2);
}

id sub_55D3C(SEL *a1, SEL *a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v12, *a1, a3);
  v7 = *&v3[qword_9405B8];
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v3 *a2];
      [v9 *a1];
    }
  }

  v10 = *&v3[qword_940590];
  [v3 *a2];
  return [v10 *a1];
}

uint64_t sub_55E04()
{
  v1 = v0;
  v2 = sub_7593D0();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v27 - v5;
  v6 = sub_75DC30();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = qword_99A200;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, &v1[v13], v6);
  v15 = sub_75DBA0();
  v16 = *(v7 + 8);
  v16(v12, v6);
  if ((v15 & 1) == 0)
  {
    [v1 _continuousCornerRadius];
    if (v20 == 0.0)
    {
      [v1 _cornerRadius];
      v21 = v30;
      if (v22 == 0.0)
      {
        v23 = v29;
        v24 = v31;
        (*(v30 + 104))(v29, enum case for CornerStyle.arc(_:), v31);
        goto LABEL_12;
      }

      [v1 _cornerRadius];
      v25 = enum case for CornerStyle.arc(_:);
    }

    else
    {
      [v1 _continuousCornerRadius];
      v25 = enum case for CornerStyle.continuous(_:);
      v21 = v30;
    }

    v23 = v29;
    v24 = v31;
    (*(v21 + 104))(v29, v25, v31);
    goto LABEL_12;
  }

  v14(v9, &v1[v13], v6);
  sub_75DBF0();
  v18 = v17;
  v16(v9, v6);
  if (v18)
  {
    v19 = &enum case for CornerStyle.arc(_:);
  }

  else
  {
    [*&v1[qword_940590] frame];
    v19 = &enum case for CornerStyle.continuous(_:);
  }

  v21 = v30;
  v24 = v31;
  v23 = v28;
  (*(v30 + 104))(v28, *v19, v31);
LABEL_12:
  sub_75CCD0();
  return (*(v21 + 8))(v23, v24);
}

void sub_5617C(uint64_t a1, uint64_t a2)
{
  v5 = qword_9405E0;
  v6 = *&v2[qword_9405E0];
  if (!v6 || [v6 phase] == &dword_0 + 3 || (v7 = *&v2[v5]) != 0 && objc_msgSend(v7, "phase") == &dword_4)
  {
    v8 = sub_74E4B8(a1);
    if (v8)
    {
      v9 = *&v2[v5];
      *&v2[v5] = v8;
      v10 = v8;

      [v10 locationInView:v2];
      v11 = [v2 hitTest:a2 withEvent:?];
      if (v11)
      {
        v12 = v11;
        sub_BE70(0, &qword_93E550);
        v13 = v12;
        v14 = v2;
        v15 = v2;
        v16 = sub_76A1C0();

        if ((v16 & 1) == 0)
        {
          sub_BE70(0, &qword_963060);
          sub_5A800();
          v17 = v13;
          isa = sub_769630().super.isa;
          [v17 touchesBegan:isa withEvent:a2];
        }

        v2 = v14;
      }

      sub_BE70(0, &qword_963060);
      sub_5A800();
      v19.super.isa = sub_769630().super.isa;
      v21.super_class = type metadata accessor for VideoView();
      objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v2, v21.super_class, v22.receiver, v22.super_class);
    }

    else
    {
      sub_BE70(0, &qword_963060);
      sub_5A800();
      v19.super.isa = sub_769630().super.isa;
      v22.super_class = type metadata accessor for VideoView();
      objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v2, v22.super_class);
    }
  }

  else
  {
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v19.super.isa = sub_769630().super.isa;
    v20.super_class = type metadata accessor for VideoView();
    objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v19.super.isa, a2, v2, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
  }
}

uint64_t sub_56408(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  v6 = sub_769640();
  v7 = a4;
  v8 = a1;
  sub_5617C(v6, a4);
}

void sub_564D0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = qword_9405E0;
  v8 = *&v3[qword_9405E0];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if ((sub_666B98(v9, a1) & 1) == 0)
  {

LABEL_8:
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v19.super.isa = sub_769630().super.isa;
    v21.super_class = type metadata accessor for VideoView();
    objc_msgSendSuper2(&v21, *a3, v19.super.isa, a2, v20.receiver, v20.super_class, v3, v21.super_class);
    goto LABEL_11;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v9 locationInView:v3];
  v11 = [v3 hitTest:a2 withEvent:?];
  if (v11)
  {
    v12 = v11;
    sub_BE70(0, &qword_93E550);
    v13 = v12;
    v14 = v3;
    v15 = v3;
    v16 = sub_76A1C0();

    if ((v16 & 1) == 0)
    {
      sub_BE70(0, &qword_963060);
      sub_5A800();
      v17 = v13;
      isa = sub_769630().super.isa;
      [v17 *a3];

      v9 = v17;
    }

    v3 = v14;
  }

  else
  {
    v13 = v9;
  }

  sub_BE70(0, &qword_963060);
  sub_5A800();
  v19.super.isa = sub_769630().super.isa;
  v20.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v20, *a3, v19.super.isa, a2, v3, v20.super_class, v21.receiver, v21.super_class);
LABEL_11:
}

uint64_t sub_56700(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  v8 = sub_769640();
  v9 = a4;
  v10 = a1;
  sub_564D0(v8, a4, a5);
}

char *sub_567B0()
{
  v1 = v0;
  v2 = qword_9405B0;
  v3 = *(v0 + qword_9405B0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_7599E0();

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = v6;
      sub_759A40();

      v6 = *(v1 + v2);
    }

    *(v1 + v2) = 0;

    result = sub_50B14();
    if (v5)
    {
      sub_52D00();
      v9 = *((swift_isaMask & *v1) + qword_99A210 + 712);

      return v9();
    }
  }

  else
  {

    return sub_50B14();
  }

  return result;
}

void sub_568CC(void *a1)
{
  v1 = a1;
  sub_567B0();
}

void sub_56914()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setShowsPlaybackControls:1];
  }
}

void sub_56974()
{
  v1 = sub_75FC40();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FC80();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[qword_9405B0];
  if (v9)
  {
    v10 = v9;
    [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
    v11 = [v10 isMuted];
    [v0 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
    (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
    v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
    if (!v11)
    {
      v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
    }

    (*(v2 + 104))(v4, *v12, v1);
    sub_56D2C(v8, v4);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_56BA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + qword_99A210 + 712))();
  }
}

void sub_56C44(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_59C88(a4);

  swift_unknownObjectRelease();
}

void sub_56CC0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_59E2C(a4);
}

uint64_t sub_56D2C(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v74 = &v62 - v4;
  v5 = sub_768A10();
  __chkstk_darwin(v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_940710);
  __chkstk_darwin(v7 - 8);
  v71 = &v62 - v8;
  v9 = sub_BD88(&qword_940718);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_BD88(&qword_940720);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_BD88(&qword_940728);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v76 = sub_7687B0();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v62 - v20;
  v21 = sub_BD88(&unk_948710);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = sub_768670();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ED18(v2 + qword_99A1A0, v23, &unk_948710);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &unk_948710;
    v29 = v23;
    return sub_10A2C(v29, v28);
  }

  (*(v25 + 32))(v27, v23, v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v25 + 8))(v27, v24);
  }

  v32 = Strong;
  v33 = qword_9405B0;
  v34 = *(v2 + qword_9405B0);
  if (!v34)
  {
    (*(v25 + 8))(v27, v24);
  }

  v35 = v2;
  v66 = v34;
  v36 = sub_7599C0();
  v67 = v32;
  v65 = v2;
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v36;
  v38 = *(v35 + v33);
  if (!v38 || (v39 = [v38 currentItem]) == 0 || (v40 = v39, v41 = objc_msgSend(v39, "asset"), v40, v42 = sub_769210(), v43 = objc_msgSend(v41, "statusOfValueForKey:error:", v42, 0), v41, v42, v43 != &dword_0 + 2))
  {

LABEL_14:
    v64 = 0.0;
    v63 = 1;
    goto LABEL_15;
  }

  [v37 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v63 = 0;
  v64 = Seconds;
LABEL_15:
  sub_BD88(&unk_940730);
  v62 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  v45 = enum case for MediaClickMetricsEvent.TargetType.button(_:);
  v46 = sub_75FC50();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v17, v45, v46);
  (*(v47 + 56))(v17, 0, 1, v46);
  v48 = sub_75FC80();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v14, v69, v48);
  (*(v49 + 56))(v14, 0, 1, v48);
  v50 = sub_75FC40();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v11, v70, v50);
  (*(v51 + 56))(v11, 0, 1, v50);
  LODWORD(v51) = *(v65 + qword_99A1E8);
  v52 = sub_75FC60();
  v53 = *(v52 - 8);
  v54 = &enum case for MediaClickMetricsEvent.ActionContext.fullscreen(_:);
  if (!v51)
  {
    v54 = &enum case for MediaClickMetricsEvent.ActionContext.inline(_:);
  }

  v55 = v71;
  (*(*(v52 - 8) + 104))(v71, *v54, v52);
  (*(v53 + 56))(v55, 0, 1, v52);
  sub_75FC70();
  sub_10A2C(v55, &qword_940710);
  sub_10A2C(v11, &qword_940718);
  sub_10A2C(v14, &qword_940720);
  sub_10A2C(v17, &qword_940728);
  sub_768A00();
  v56 = v75;
  sub_7687A0();
  v57 = sub_BD88(&unk_93F630);
  v58 = v74;
  sub_768860();
  v59 = *(v57 - 8);
  if ((*(v59 + 48))(v58, 1, v57) == 1)
  {

    (*(v73 + 8))(v56, v76);
    (*(v25 + 8))(v27, v24);
    v28 = &unk_93F980;
    v29 = v58;
    return sub_10A2C(v29, v28);
  }

  sub_759240();
  v60 = v73;
  (*(v73 + 16))(v68, v56, v76);
  v61 = sub_759220();
  sub_32AC48(v61, 1, v67, v58);

  (*(v60 + 8))(v75, v76);
  (*(v25 + 8))(v27, v24);
  return (*(v59 + 8))(v58, v57);
}

uint64_t sub_5779C(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *&a1[qword_9405B0];
  if (v3)
  {
    v5 = a1;
    v6 = v3;
    v7 = a3();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_57838()
{
  swift_weakDestroy();
  sub_13238(v0 + qword_940578);
  sub_13238(v0 + qword_940580);
  sub_13238(v0 + qword_940588);

  sub_10A2C(v0 + qword_99A198, &unk_948710);
  sub_10A2C(v0 + qword_99A1A0, &unk_948710);
  sub_10A2C(v0 + qword_99A1A8, &unk_940700);

  v1 = qword_99A1C8;
  v2 = sub_7570A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_F704(*(v0 + qword_99A1D0));
  sub_1EB60(v0 + qword_99A1D8);
  sub_13238(v0 + qword_99A1E0);
  swift_unknownObjectWeakDestroy();
  v3 = qword_99A200;
  v4 = sub_75DC30();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_9405E0);
}

id sub_57A2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_57A64(uint64_t a1)
{
  swift_weakDestroy();
  sub_13238(a1 + qword_940578);
  sub_13238(a1 + qword_940580);
  sub_13238(a1 + qword_940588);

  sub_10A2C(a1 + qword_99A198, &unk_948710);
  sub_10A2C(a1 + qword_99A1A0, &unk_948710);
  sub_10A2C(a1 + qword_99A1A8, &unk_940700);

  v2 = qword_99A1C8;
  v3 = sub_7570A0();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_F704(*(a1 + qword_99A1D0));
  sub_1EB60(a1 + qword_99A1D8);
  sub_13238(a1 + qword_99A1E0);
  swift_unknownObjectWeakDestroy();
  v4 = qword_99A200;
  v5 = sub_75DC30();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + qword_9405E0);
}

void sub_57C5C()
{
  if (!qword_940688)
  {
    sub_768670();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_940688);
    }
  }
}

uint64_t sub_57D24()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_57D84(uint64_t *a1))(void **a1, char a2)
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
  v5 = qword_940570;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

void sub_57E1C(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_57EEC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_99A1E0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_57F58(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_99A1E0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_57FF8;
}

void sub_57FF8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

void sub_58084()
{
  v1 = *(v0 + qword_9405B0);
  if (v1)
  {
    v2 = v1;
    sub_759A30();
  }
}

uint64_t sub_58124@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_99A200;
  swift_beginAccess();
  v4 = sub_75DC30();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_581B0(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = sub_75DC30();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = qword_99A200;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_58308;
}

void sub_58308(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_52AF0(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_52AF0(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_583C0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_BD88(&qword_9406B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_75C9E0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for MediaMetricsEvent.ActionType.play(_:), v7, v9);
  if (a1)
  {
    v12 = sub_75CA00();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {
    v13 = enum case for MediaMetricsEvent.ActionDetails.autoplay(_:);
    v14 = sub_75CA00();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v6, v13, v14);
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  sub_52FE0(v11, v6, a2);
  sub_10A2C(v6, &qword_9406B0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_58618@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_BD88(&qword_9406B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_75C9E0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MediaMetricsEvent.ActionType.seek(_:), v5, v7);
  v10 = enum case for MediaMetricsEvent.ActionDetails.autostart(_:);
  v11 = sub_75CA00();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_52FE0(v9, v4, a1);
  sub_10A2C(v4, &qword_9406B0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_5880C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_59B8C(&qword_93F500, type metadata accessor for VideoView);
    sub_75D080();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_588E0()
{
  v1 = v0 + qword_940588;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_58984(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + qword_9405B0);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

void sub_58A80()
{
  v1 = *(v0 + qword_9405B0);
  if (v1)
  {
    v2 = v1;
    if (sub_7599E0())
    {
      [v2 pause];
    }
  }
}

uint64_t sub_58B90()
{
  v1 = v0;
  v2 = sub_75A6B0();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v68 - v6;
  v7 = sub_75A6E0();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75DC30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = *(v0 + qword_9405B0);
  if (v16)
  {
    v17 = v9;
    v18 = v11;
    v19 = qword_99A200;
    swift_beginAccess();
    v20 = v1 + v19;
    v11 = v18;
    (*(v18 + 16))(v15, v20, v10);
    v21 = v16;
    sub_75DC00();
    (*(v11 + 8))(v15, v10);
    sub_759A00();

    v9 = v17;
  }

  v68 = v4;
  v77 = v2;
  v75 = qword_9405B8;
  v22 = *(v1 + qword_9405B8);
  if (v22)
  {
    v23 = v9;
    v24 = v11;
    v25 = qword_99A200;
    swift_beginAccess();
    v26 = v1 + v25;
    v11 = v24;
    (*(v24 + 16))(v15, v26, v10);
    v27 = v22;
    v28 = sub_75DBC0();
    (*(v11 + 8))(v15, v10);
    [v27 setAllowsEnteringFullScreen:v28 & 1];

    v9 = v23;
  }

  v76 = *(v1 + qword_940590);
  v29 = qword_99A200;
  swift_beginAccess();
  v30 = (v11 + 16);
  v72 = *(v11 + 16);
  v72(v15, &v29[v1], v10);
  sub_75DC20();
  v31 = *(v11 + 8);
  v73 = v11 + 8;
  v71 = v31;
  v31(v15, v10);
  v32 = sub_75A6C0();
  v33 = v78[1];
  v33(v9, v7);
  [v76 setContentMode:v32];
  v34 = *(v1 + v75);
  if (v34)
  {
    v72(v15, &v29[v1], v10);
    v78 = v34;
    sub_75DC20();
    v71(v15, v10);
    v35 = sub_75A6D0();
    v33(v9, v7);
    v36 = v78;
    [v78 setVideoGravity:v35 forLayoutClass:0];
  }

  v69 = v10;
  v78 = v30;
  v76 = v29;
  sub_510C4(v79);
  sub_59B8C(&qword_9406B8, &type metadata accessor for VideoControls);
  v37 = v68;
  v38 = v77;
  sub_76A590();
  sub_59B8C(&unk_9406C0, &type metadata accessor for VideoControls);
  v39 = sub_7691C0();
  v40 = v74 + 8;
  v41 = *(v74 + 8);
  v41(v37, v38);
  [v1 setUserInteractionEnabled:(v39 & 1) == 0];
  v42 = *(v1 + qword_9405C8);
  sub_75A690();
  v43 = sub_76A520();
  v41(v37, v38);
  if (v43)
  {
    v44 = v41;
    v45 = 0;
  }

  else
  {
    sub_75A6A0();
    v46 = sub_76A520();
    v44 = v41;
    v41(v37, v38);
    v45 = v46 ^ 1;
  }

  v47 = v76;
  [v42 setHidden:{v45 & 1, v68}];

  v48 = v75;
  v49 = *(v1 + v75);
  if (v49)
  {
    v50 = v49;
    [v50 setShowsPlaybackControls:sub_75A670() & 1];

    v47 = v76;
    v51 = *(v1 + v48);
    if (v51)
    {
      v74 = v40;
      v52 = *((swift_isaMask & *v1) + qword_99A210 + 752);
      v53 = v51;
      v54 = (v52() & 1) != 0 ? 1 : *(v1 + qword_99A208);
      [v53 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v54];

      v55 = *(v1 + v48);
      v47 = v76;
      if (v55)
      {
        v56 = v55;
        sub_75A680();
        v57 = v77;
        v58 = sub_76A520();
        v44(v37, v57);
        if (v58)
        {
          v59 = 1;
        }

        else
        {
          v59 = *(v1 + qword_99A1E8);
        }

        [v56 setPlaybackControlsIncludeVolumeControls:v59];
      }
    }
  }

  sub_53B1C();
  v60 = &v47[v1];
  v61 = v69;
  v62 = v70;
  v72(v70, v60, v69);
  v63 = sub_75DBA0();
  v71(v62, v61);
  if (v63)
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
    if ((*(v1 + qword_99A1E8) & 1) == 0)
    {
      sub_759210();
      sub_759080();
      sub_75CD00();
      sub_759090();
    }
  }

  else
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
  }

  sub_75CD10();
  sub_55E04();
  sub_54CF8();
  sub_54EB4();
  return v66(v64, v65);
}

uint64_t sub_593F4(char a1)
{
  v2 = sub_768380();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7683C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_93C5F8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_9483E8;
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = AVAudioSessionCategoryPlayback;
    v10[5] = AVAudioSessionModeDefault;
    v10[6] = 0;
    v22 = sub_5AAA4;
    v23 = v10;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_8813D0;
  }

  else
  {
    if (qword_93C5F8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_9483E8;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = AVAudioSessionCategoryPlayback;
    v12[5] = AVAudioSessionModeDefault;
    v12[6] = 1;
    v22 = sub_5A86C;
    v23 = v12;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_881380;
  }

  v20 = sub_23F0CC;
  v21 = v11;
  v13 = _Block_copy(&aBlock);
  v14 = AVAudioSessionCategoryPlayback;
  v15 = AVAudioSessionModeDefault;
  sub_7683A0();
  v17[1] = _swiftEmptyArrayStorage;
  sub_59B8C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_5979C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_59B8C(&qword_93F500, type metadata accessor for VideoView);
    sub_75D0C0();
    swift_unknownObjectRelease();
  }

  v3 = v1 + qword_940588;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = sub_59B8C(&qword_93F500, type metadata accessor for VideoView);
    (*(v4 + 16))(a1, v1, v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  sub_54CF8();
  return sub_53B1C();
}

void sub_59900()
{
  v1 = v0;
  v2 = sub_75DC30();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = qword_99A200;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_75DC00();
    (*(v3 + 8))(v5, v2);
    sub_59B8C(&qword_93F500, type metadata accessor for VideoView);
    sub_75D0A0();
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_99A1E8) == 1)
  {
    v7 = *(v1 + qword_9405B8);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_59C0C;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_509F0;
      aBlock[3] = &unk_8812E0;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [v10 exitFullScreenAnimated:1 completionHandler:v9];
      _Block_release(v9);
    }
  }
}

uint64_t sub_59B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_59BD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_59C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_59C88(void *a1)
{
  v3 = v1 + qword_940578;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v1 + qword_99A1F0) = 1;
  v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_6C6800;
  v12 = &unk_881308;
  v6 = _Block_copy(&v9);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_5A7F8;
  v14 = v7;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_6C6800;
  v12 = &unk_881330;
  v8 = _Block_copy(&v9);

  [a1 animateAlongsideTransition:v6 completion:v8];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_59E2C(uint64_t a1)
{
  v2 = v1;
  v48 = sub_75DC30();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75A6B0();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v43 - v9;
  v10 = sub_75FC40();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75FC80();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        [v2 updateAudioSessionCategoryWithIsAudioOn:{1, v16}];
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
        v19 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
LABEL_17:
        (*(v11 + 104))(v13, *v19, v10);
        v32 = v18;
        v33 = v13;
LABEL_27:
        sub_56D2C(v32, v33);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        return;
      case 4:
        v36 = *(v2 + qword_9405B0);
        if (v36)
        {
          v37 = [v36 isMuted] ^ 1;
        }

        else
        {
          v37 = 0;
        }

        *(v2 + qword_9405D8) = v37;
        *(v2 + qword_99A1E8) = 1;
        sub_52964();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.fullscreen(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.enterFullscreen(_:), v10);
        v32 = v18;
        v33 = v13;
        goto LABEL_27;
      case 5:
        *(v2 + qword_99A1E8) = 0;
        sub_52964();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.inline(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.exitFullscreen(_:), v10);
        sub_56D2C(v18, v13);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        v20 = v2 + qword_940578;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 1);
          ObjectType = swift_getObjectType();
          (*(v21 + 16))(ObjectType, v21);
          swift_unknownObjectRelease();
        }

        break;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return;
      }

      [v2 updateAudioSessionCategoryWithIsAudioOn:{0, v16}];
      (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
      v19 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      goto LABEL_17;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_59B8C(&qword_93F500, type metadata accessor for VideoView);
      sub_75D0B0();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.pause(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.pause(_:), v10);
    sub_56D2C(v18, v13);
    (*(v11 + 8))(v13, v10);
    v34 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v2) + qword_99A210 + 752))(v34) & 1) == 0)
    {
      [v2 updateAudioSessionCategoryWithIsAudioOn:0];
      v35 = *(v2 + qword_9405B0);
      if (v35)
      {
        [v35 setMuted:1];
      }
    }
  }

  else
  {
    v44 = v6;
    v23 = v2;
    v24 = v2 + qword_99A1E0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43[1] = *(v24 + 1);
      swift_getObjectType();
      sub_59B8C(&qword_93F500, type metadata accessor for VideoView);
      sub_75D090();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.play(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.play(_:), v10);
    sub_56D2C(v18, v13);
    (*(v11 + 8))(v13, v10);
    v25 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v23) + qword_99A210 + 752))(v25) & 1) == 0)
    {
      v26 = sub_7625C0();
      v27 = qword_99A200;
      v28 = (v45 + 16);
      v29 = (v45 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_75DBE0();
      }

      else
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_75DBB0();
      }

      v38 = v44;
      (*v29)(v5, v30);
      v39 = v47;
      sub_75A680();
      sub_59B8C(&qword_9406B8, &type metadata accessor for VideoControls);
      v40 = sub_76A520();
      v41 = *(v49 + 8);
      v41(v39, v38);
      v41(v31, v38);
      if (v40)
      {
        [v23 updateAudioSessionCategoryWithIsAudioOn:1];
        v42 = *&v23[qword_9405B0];
        if (v42)
        {
          [v42 setMuted:0];
        }
      }
    }
  }
}

unint64_t sub_5A800()
{
  result = qword_9406D0;
  if (!qword_9406D0)
  {
    sub_BE70(255, &qword_963060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9406D0);
  }

  return result;
}

uint64_t sub_5A870()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_5A8D0()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_5A908()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5A94C()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_5A9B0()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + qword_9405C8) setAlpha:v1];
}

uint64_t sub_5A9E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9406B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_5AADC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_itemLayoutContext;
  v12 = sub_75C840();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate] = 0;
  v13 = [objc_allocWithZone(sub_765E60()) initWithFrame:{a1, a2, a3, a4}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_smallPlayerCard] = v13;
  v14 = v13;
  v15 = sub_765DD0();

  v16 = [objc_opt_self() systemGrayColor];
  [v15 setTintColor:v16];

  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_smallPlayerCard]];

  return v17;
}

void sub_5AE50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 2) = a1;
    *(v7 + 3) = a2;
    *(v7 + 4) = v6;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    updated = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
    v10 = objc_allocWithZone(updated);
    *&v10[OBJC_IVAR____TtC18ASMessagesProviderP33_95094EE089CA9A4098111B9FD0B1802740SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 4;
    v11 = &v10[OBJC_IVAR____TtC18ASMessagesProviderP33_95094EE089CA9A4098111B9FD0B1802740SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
    *v11 = sub_5B810;
    v11[1] = v7;
    v12 = &v10[OBJC_IVAR____TtC18ASMessagesProviderP33_95094EE089CA9A4098111B9FD0B1802740SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
    *v12 = sub_5B81C;
    v12[1] = v8;
    v26.receiver = v10;
    v26.super_class = updated;

    v13 = objc_msgSendSuper2(&v26, "init");
    v14 = objc_opt_self();
    v15 = [v14 daemonProxy];
    [v15 addDataUpdateDelegate:v13];

    v16 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate);
    *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate) = v13;
    v17 = v13;

    if (sub_75A850())
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = objc_allocWithZone(updated);
      *&v19[OBJC_IVAR____TtC18ASMessagesProviderP33_95094EE089CA9A4098111B9FD0B1802740SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 21;
      v20 = &v19[OBJC_IVAR____TtC18ASMessagesProviderP33_95094EE089CA9A4098111B9FD0B1802740SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
      *v20 = sub_5B248;
      v20[1] = 0;
      v21 = &v19[OBJC_IVAR____TtC18ASMessagesProviderP33_95094EE089CA9A4098111B9FD0B1802740SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
      *v21 = sub_5B840;
      v21[1] = v18;
      v25.receiver = v19;
      v25.super_class = updated;
      v22 = objc_msgSendSuper2(&v25, "init");
      v23 = [v14 daemonProxy];
      v24 = v22;
      [v23 addDataUpdateDelegate:v24];

      v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate);
      *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate) = v24;
    }
  }
}

void sub_5B0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_769240();
  v15 = v6;
  sub_76A6E0();
  if (!*(a1 + 16) || (v7 = sub_663E34(v16), (v8 & 1) == 0))
  {
    sub_1EB60(v16);
    return;
  }

  sub_132B4(*(a1 + 56) + 32 * v7, v17);
  sub_1EB60(v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v14 == a2 && v15 == a3)
  {
  }

  else
  {
    v9 = sub_76A950();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_smallPlayerCard);

    v13 = sub_765E00();
    if (v13)
    {
      v13();
      sub_F704(v13);
    }
  }
}

uint64_t sub_5B248(uint64_t a1)
{
  sub_769240();
  sub_76A6E0();
  if (!*(a1 + 16))
  {
    return sub_1EB60(v5);
  }

  v2 = sub_663E34(v5);
  if ((v3 & 1) == 0)
  {
    return sub_1EB60(v5);
  }

  sub_132B4(*(a1 + 56) + 32 * v2, v6);
  sub_1EB60(v5);
  result = swift_dynamicCast();
  if (result)
  {
    sub_5B864();
    sub_769800();
  }

  return result;
}

void sub_5B32C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *&Strong[*a2];
    *&Strong[v4] = 0;
  }
}

uint64_t type metadata accessor for SmallContactCardCollectionViewCell()
{
  result = qword_940830;
  if (!qword_940830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5B44C()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_5B5EC()
{
  v1 = [objc_opt_self() daemonProxy];
  [v1 removeDataUpdateDelegate:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_5B798()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5B7D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_5B864()
{
  result = qword_940888;
  if (!qword_940888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_940888);
  }

  return result;
}

char *sub_5B8B0(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v73 = a3;
  v72 = a1;
  v14 = sub_768C60();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_760AD0();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = sub_75A010();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v24 - 8);
  v26 = &v68 - v25;
  v27 = &v7[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerLabelPresenter];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = &v7[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButtonTapHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_metrics;
  v30 = sub_75D2C0();
  v31 = *(v30 - 8);
  v75 = v30;
  v76 = v31;
  v32 = *(v31 + 16);
  v74 = a2;
  v32(&v8[v29], a2, v30);
  v68 = sub_75A030();
  v33 = enum case for Wordmark.arcade(_:);
  v34 = sub_765770();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v26, v33, v34);
  (*(v35 + 56))(v26, 0, 1, v34);
  sub_75D2B0();
  (*(v21 + 104))(v23, enum case for WordmarkView.Alignment.leading(_:), v20);
  v36 = *(&v83 + 1);
  v37 = v84;
  v38 = sub_10974(&v82, *(&v83 + 1));
  v39 = __chkstk_darwin(v38);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v39);
  v43 = sub_418748(v26, v41, v23, v68, v36, v37);
  sub_BEB8(&v82);
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_wordmarkView] = v43;
  v44 = sub_7666D0();
  v45 = *(v44 - 8);
  v46 = v72;
  (*(v45 + 16))(v19, v72, v44);
  (*(v45 + 56))(v19, 0, 1, v44);
  (*(v70 + 104))(v69, enum case for DirectionalTextAlignment.leading(_:), v71);
  v47 = objc_allocWithZone(sub_75BB20());
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_subtitleLabel] = sub_75BB10();
  v48 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v8[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton] = sub_1DD00C(v73);
  v49 = type metadata accessor for ArcadeLockupView();
  v81.receiver = v8;
  v81.super_class = v49;
  v50 = objc_msgSendSuper2(&v81, "initWithFrame:", a4, a5, a6, a7);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v54 = v50;
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v54 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v55 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_wordmarkView;
  v56 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_wordmarkView];
  sub_396E8();
  v57 = v56;
  v58 = sub_769FD0();
  [v57 setTintColor:v58];

  [v54 addSubview:*&v54[v55]];
  v59 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_subtitleLabel;
  v60 = *&v54[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_subtitleLabel];
  v61 = sub_769FF0();
  [v60 setTextColor:v61];

  v62 = *&v54[v59];
  sub_75BAD0();

  v63 = *&v54[v59];
  v82 = 0u;
  v83 = 0u;
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v77;
  sub_768C10();
  sub_BDD0(v80);
  sub_BDD0(&v82);
  sub_769E70();

  (*(v78 + 8))(v65, v79);
  [v54 addSubview:*&v54[v59]];
  v66 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton;
  [*&v54[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton] addTarget:v54 action:"offerButtonWasTapped" forControlEvents:64];
  [v54 addSubview:*&v54[v66]];

  (*(v76 + 8))(v74, v75);
  (*(v45 + 8))(v46, v44);
  return v54;
}

uint64_t sub_5C184()
{
  v1 = v0;
  v18[0] = sub_75D2C0();
  v2 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75D2D0();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  sub_769DA0();
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_wordmarkView];
  v18[17] = sub_75A030();
  v18[18] = &protocol witness table for UIView;
  v18[14] = v10;
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_subtitleLabel];
  v18[12] = sub_75BB20();
  v18[13] = &protocol witness table for UILabel;
  v18[9] = v11;
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton];
  v18[7] = type metadata accessor for OfferButton();
  v18[8] = &protocol witness table for UIView;
  v18[4] = v12;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v1[v13], v18[0]);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_75D280();
  sub_5CC40();
  sub_7665A0();
  (*(v6 + 8))(v9, v5);
  [v1 layoutMargins];
  return sub_769DC0();
}

uint64_t sub_5C460()
{
  v22 = sub_7664F0();
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_75D2C0();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_75D2D0();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArcadeLockupView();
  v32.receiver = v0;
  v32.super_class = v8;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_wordmarkView];
  v30 = sub_75A030();
  v31 = &protocol witness table for UIView;
  v29 = v9;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_subtitleLabel];
  v27 = sub_75BB20();
  v28 = &protocol witness table for UILabel;
  v26 = v10;
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton];
  v24 = type metadata accessor for OfferButton();
  v25 = &protocol witness table for UIView;
  v23 = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v12], v18);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_75D280();
  sub_75D650();
  v16 = v20;
  sub_75D290();
  (*(v21 + 8))(v16, v22);
  return (*(v5 + 8))(v7, v19);
}

id sub_5C9B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeLockupView()
{
  result = qword_9408D8;
  if (!qword_9408D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5CB00()
{
  result = sub_75D2C0();
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

uint64_t sub_5CBB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_metrics;
  swift_beginAccess();
  v5 = sub_75D2C0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

unint64_t sub_5CC40()
{
  result = qword_9408E8;
  if (!qword_9408E8)
  {
    sub_75D2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9408E8);
  }

  return result;
}

uint64_t sub_5CC98()
{
  v0 = sub_761C80();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D750();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MetadataRibbonItemViewType.borderedTextLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
    v6 = &unk_93EBD8;
    v7 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.editorsChoice(_:))
  {
    v5 = type metadata accessor for MetadataRibbonEditorsChoiceView();
    v6 = &unk_93F600;
    v7 = type metadata accessor for MetadataRibbonEditorsChoiceView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.imageWithLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v6 = &unk_93EBD0;
    v7 = type metadata accessor for MetadataRibbonIconWithLabelView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.starRating(_:))
  {
    v5 = type metadata accessor for MetadataRibbonStarRatingView();
    v6 = &unk_93F610;
    v7 = type metadata accessor for MetadataRibbonStarRatingView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.textLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonTagView();
    v6 = &unk_93EBC8;
    v7 = type metadata accessor for MetadataRibbonTagView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.divider(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBarView();
    v6 = &unk_93F5F0;
    v7 = type metadata accessor for MetadataRibbonBarView;
  }

  else
  {
    if (v4 != enum case for MetadataRibbonItemViewType.highlightedText(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v5 = type metadata accessor for MetadataRibbonHighlightedTextView();
    v6 = &unk_93EBB8;
    v7 = type metadata accessor for MetadataRibbonHighlightedTextView;
  }

  sub_5CFBC(v6, v7);
  return v5;
}

uint64_t sub_5CFBC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_5D148()
{
  sub_75C1D0();
  v0 = sub_764C70();

  if (!v0)
  {
    goto LABEL_10;
  }

  if ((sub_765160() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (sub_765190())
  {
    v1 = sub_759910();
    goto LABEL_7;
  }

  if ((sub_765180() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v1 = sub_56EBA8(v0, 0);
LABEL_7:
  v2 = v1;

  if (v2)
  {
    return v2;
  }

LABEL_10:
  v4 = objc_allocWithZone(UIImage);

  return [v4 init];
}

id sub_5D2DC()
{
  v1 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_164D8B16753152EB39F79E4A0FCFB04314ActionActivity_objectGraph];
  v5 = sub_BD88(&unk_93F630);
  sub_768860();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_268C8(v3);
  }

  else
  {
    v7 = sub_75C1D0();
    sub_32A6C0(v7, 1, v4, v3);

    (*(v6 + 8))(v3, v5);
  }

  return [v0 activityDidFinish:1];
}

uint64_t type metadata accessor for ActionActivity()
{
  result = qword_940928;
  if (!qword_940928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5D5BC()
{
  result = sub_75C1E0();
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

id sub_5D658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v9 = sub_75C1E0();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  sub_75A110();
  sub_768900();
  sub_768ED0();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider22ActivityViewController_artworkLoader;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider22ActivityViewController_artworkLoader] = v55;
  sub_75A920();
  sub_768ED0();
  v16 = v55;
  v17 = *&v5[v15];

  v46 = v16;
  v18 = sub_75A810();
  v47 = a1;
  v19 = sub_7214D8(v17, v18 & 1);

  v20 = *(a2 + 16);
  v51 = a4;
  if (v20)
  {
    v43[0] = v19;
    v44 = v5;
    v55 = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v21 = *(v52 + 16);
    v22 = *(v52 + 80);
    v43[1] = a2;
    v23 = (a2 + ((v22 + 32) & ~v22));
    v49 = *(v52 + 72);
    v50 = v21;
    v52 += 16;
    v48 = (v52 - 8);
    do
    {
      v24 = v50;
      v50(v14, v23, v9);
      v24(v11, v14, v9);
      v25 = type metadata accessor for ActionActivity();
      v26 = objc_allocWithZone(v25);
      v24(&v26[OBJC_IVAR____TtC18ASMessagesProviderP33_164D8B16753152EB39F79E4A0FCFB04314ActionActivity_activity], v11, v9);
      *&v26[OBJC_IVAR____TtC18ASMessagesProviderP33_164D8B16753152EB39F79E4A0FCFB04314ActionActivity_objectGraph] = a4;
      v54.receiver = v26;
      v54.super_class = v25;

      objc_msgSendSuper2(&v54, "init");
      v27 = *v48;
      (*v48)(v11, v9);
      v27(v14, v9);
      sub_76A7A0();
      sub_76A7D0();
      a4 = v51;
      sub_76A7E0();
      sub_76A7B0();
      v23 += v49;
      --v20;
    }

    while (v20);

    v5 = v44;
    v28 = v45;
    v19 = v43[0];
  }

  else
  {

    v28 = v45;
  }

  sub_140A10(v19);

  isa = sub_769450().super.isa;

  sub_5DBC8();
  v30 = sub_769450().super.isa;

  v31 = type metadata accessor for ActivityViewController();
  v53.receiver = v5;
  v53.super_class = v31;
  v32 = objc_msgSendSuper2(&v53, "initWithActivityItems:applicationActivities:", isa, v30);

  v33 = v32;
  [v33 setSharingStyle:v28];
  sub_BD88(&unk_95D700);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_780120;
  *(v34 + 32) = UIActivityTypeAddToReadingList;
  *(v34 + 40) = UIActivityTypeAssignToContact;
  *(v34 + 48) = UIActivityTypePostToFlickr;
  *(v34 + 56) = UIActivityTypePrint;
  *(v34 + 64) = UIActivityTypeSaveToCameraRoll;
  *(v34 + 72) = UIActivityTypeCopyToPasteboard;
  type metadata accessor for ActivityType(0);
  v35 = UIActivityTypeAddToReadingList;
  v36 = UIActivityTypeAssignToContact;
  v37 = UIActivityTypePostToFlickr;
  v38 = UIActivityTypePrint;
  v39 = UIActivityTypeSaveToCameraRoll;
  v40 = UIActivityTypeCopyToPasteboard;
  v41 = sub_769450().super.isa;

  [v33 setExcludedActivityTypes:v41];

  return v33;
}

id sub_5DB5C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_5DBC8()
{
  result = qword_940968;
  if (!qword_940968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_940968);
  }

  return result;
}

uint64_t sub_5DC14(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7593D0();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v53.receiver = v4;
  v53.super_class = ObjectType;
  v50 = ObjectType;
  v13 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView;
  *(*&v13[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_delegate + 8) = &off_881678;
  swift_unknownObjectWeakAssign();
  v15 = *&v13[v14];
  v16 = v13;
  v47 = v15;
  v17 = [v16 traitCollection];
  v18 = [(NSString *)v17 preferredContentSizeCategory];
  v19 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v20 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_769B60();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_769B50())
  {
    v22 = sub_769B60();

    if (v22)
    {
      v23 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v24 = [(NSString *)v17 preferredContentSizeCategory];
  v25 = UIContentSizeCategoryAccessibilityMedium;
  v26 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_769B60();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_769B50())
  {
    v27 = sub_769B60();

    if (v27)
    {
      v23 = v25;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {

    v23 = 0;
    v17 = v25;
  }

LABEL_12:

  v28 = v47;
  [v47 setMaximumContentSizeCategory:v23];

  v29 = [v16 contentView];
  [v29 addSubview:*&v13[v14]];

  v30 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer;
  v31 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  v32 = type metadata accessor for TodayCardInfoLayerView();
  v52.receiver = v31;
  v52.super_class = v32;
  v33 = v16;
  objc_msgSendSuper2(&v52, "_setContinuousCornerRadius:", 20.0);
  sub_4BE560();
  *&v33[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = 0x402E000000000000;
  v35 = v48;
  v34 = v49;
  (*(v48 + 104))(v12, enum case for CornerStyle.continuous(_:), v49);
  sub_501278(v12, 15.0);
  (*(v35 + 8))(v12, v34);
  v36 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v36)
  {
    v37 = v36;
    [v37 _setContinuousCornerRadius:15.0];
    v38 = [v37 layer];
    [v38 setMaskedCorners:sub_7697E0()];
  }

  v39 = [v33 contentView];
  [v39 _setContinuousCornerRadius:20.0];

  v40 = [v33 contentView];
  v41 = [v40 layer];

  [v41 setMaskedCorners:3];
  v42 = *&v16[v30];
  v43 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType];
  *&v42[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_preferredGradientType] = kCAGradientLayerAxial;
  v44 = v42;
  v45 = kCAGradientLayerAxial;

  sub_5E1B8();
  sub_BD88(&qword_9477F0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_77B6D0;
  *(v46 + 32) = sub_767B80();
  *(v46 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v51[3] = v50;
  v51[0] = v33;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v51);
  return v33;
}

uint64_t sub_5E1B8()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView];
  v2 = [v0 traitCollection];
  v3 = [(NSString *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v5 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_769B60();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_769B50())
  {
    v7 = sub_769B60();

    if (v7)
    {
      v8 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [(NSString *)v2 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryAccessibilityMedium;
  v11 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_769B60();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_769B50())
  {
    v12 = sub_769B60();

    if (v12)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {

    v8 = 0;
    v2 = v10;
  }

LABEL_12:

  [v1 setMaximumContentSizeCategory:v8];

  return [v0 setNeedsLayout];
}

__n128 sub_5E3C4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32);
  result = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets);
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

id sub_5E3E8(id result)
{
  v2 = &v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 16];
  v5 = v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32];
  v6 = *(result + 1);
  *v2 = *result;
  *(v2 + 1) = v6;
  v7 = *(result + 32);
  v2[32] = v7;
  if (v7)
  {
    if (v5)
    {
      return result;
    }

    return [v1 setNeedsLayout];
  }

  if (v5)
  {
    return [v1 setNeedsLayout];
  }

  v4 = vceqq_f64(*(result + 1), v4);
  *&v3.f64[0] = vmovn_s32(vuzp1q_s32(vceqq_f64(*result, v3), v4));
  LOWORD(v3.f64[0]) = vminv_u16(*&v3.f64[0]);
  if ((LOBYTE(v3.f64[0]) & 1) == 0)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

double sub_5E454()
{
  v1 = v0;
  v2 = sub_BD88(&unk_955AA0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v6 = 0.0;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v7 = &v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
    if ((v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v6 = *v7, *v7 <= 0.0) || (v8 = [v0 traitCollection], v9 = sub_7699D0(), v8, (v9 & 1) == 0))
    {
      v10 = [v1 traitCollection];
      v11 = sub_7699F0();

      v12 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_5FC64(v1 + v12, v5);
      v13 = [v1 traitCollection];
      sub_28377C(v5, v13);
      if (v11)
      {
        v6 = v15;
      }

      else
      {
        v6 = v14;
      }

      sub_5FCD4(v5);
    }
  }

  return v6;
}

id sub_5E65C()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;

  v5 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v6 = v4 + -30.0 + -14.0 + -14.0;
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView] bounds];
    Height = CGRectGetHeight(v37);
  }

  else
  {
    v8 = [v1 contentView];
    [v8 bounds];
    v6 = v9;
    Height = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_26DAA8(v36);
  sub_270D88(v11, v36, v6, Height);
  sub_37538(v36);

  if (v1[v5] == 1 && ((v12 = [v1 traitCollection], v13 = v12, !v1[v5]) ? (v14 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v14 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory), sub_4C0ED8(v12, v1[*v14], v36), v13, v1[v5] == 1))
  {
    v15 = [v1 contentView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    CGRectGetMinY(v38);
    MinY = sub_5E454();
  }

  else
  {
    v25 = [v1 contentView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v39.origin.x = v27;
    v39.origin.y = v29;
    v39.size.width = v31;
    v39.size.height = v33;
    MinY = CGRectGetMinY(v39);
  }

  v34 = [v1 contentView];
  [v34 bounds];

  sub_769D20();
  return [v11 setFrame:?];
}

void sub_5E928()
{
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
    [v1 frame];
    sub_769D10();
    [v1 setFrame:?];
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
    if (v2)
    {
      v3 = v2;
      [v3 frame];
      sub_769D10();
      [v3 setFrame:?];
    }
  }
}

uint64_t sub_5EAE0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_765B10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v40 = v39 - v15;
  sub_1827E4(a1, a2, a3, a4);
  v16 = sub_765B20();
  sub_757810();
  if (swift_dynamicCastClass())
  {
    v39[1] = v16;
    v17 = sub_7577F0();
    v18 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView];
    sub_268FDC(v17);
    [v5 setNeedsLayout];
    v19 = [v5 backgroundView];
    if (v19)
    {
      v20 = v19;
      v21 = sub_757800();
      [v20 setBackgroundColor:v21];
    }

    v39[0] = v13;
    v22 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
    v23 = sub_757800();
    [v22 setBackgroundColor:v23];

    v24 = sub_757800();
    v25 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v26 = *&v18[v25];
    if (v26)
    {
      v27 = v26;
      [v27 setBackgroundColor:v24];
    }

    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    sub_7688F0();
    v28 = v43;
    v29 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v30 = *&v18[OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v31 = v30;
    sub_26CAC0(v28);
    v32 = *&v18[v29];
    *&v18[v29] = v28;
    v33 = v28;

    sub_26CC24(v30);
    v34 = v40;
    sub_765B30();
    v35 = v39[0];
    (*(v11 + 104))(v39[0], enum case for TodayCard.Style.white(_:), v10);
    sub_5FC0C();
    sub_769430();
    sub_769430();
    if (v43 == v41 && v44 == v42)
    {
      v36 = 1;
    }

    else if (sub_76A950())
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    v38 = *(v11 + 8);
    v38(v35, v10);
    v38(v34, v10);

    [v18 setOverrideUserInterfaceStyle:v36];
    sub_5EECC();
    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_5EECC()
{
  v1 = v0;
  sub_281340();
  v2 = [v0 contentView];
  sub_366D68();
  if (v3)
  {
    v4 = sub_769210();
  }

  else
  {
    v4 = 0;
  }

  [v2 setAccessibilityLabel:v4];

  v5 = [v1 contentView];
  v6 = [*(*&v1[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_textLabel) text];
  if (v6)
  {
    v7 = v6;
    sub_769240();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v21[0] = v9;
  v10 = 0;
  v21[1] = sub_366D68();
  v21[2] = v11;
  v12 = _swiftEmptyArrayStorage;
LABEL_8:
  v13 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_7B5CC(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_7B5CC((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  sub_BD88(&qword_941BA0);
  swift_arrayDestroy();
  sub_BD88(&unk_947FF0);
  sub_5FBA8();
  sub_7691A0();

  v20 = sub_769210();

  [v5 setAccessibilityLabel:v20];
}

void sub_5F150(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_182EB0(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8 && (a3 & 1) == 0)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v4 backgroundView];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 backgroundView];
      v14 = [v13 backgroundColor];

      [v12 setBackgroundColor:v14];
    }

    v15 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
    v16 = [*&v9[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView] backgroundColor];
    [v15 setBackgroundColor:v16];

    v17 = OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView;
    v18 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView];
    v19 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    if (*(v18 + v19))
    {
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

    v21 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView];
    sub_268FDC(v20);
    [v4 setNeedsLayout];
    v22 = *&v9[v17];
    v23 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v24 = *(v22 + v23);
    if (v24)
    {
      v25 = [v24 backgroundColor];
    }

    else
    {
      v25 = 0;
    }

    v26 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v27 = *&v21[v26];
    if (v27)
    {
      v28 = v27;
      [v28 setBackgroundColor:v25];
    }

    [v21 setOverrideUserInterfaceStyle:{objc_msgSend(*&v9[v17], "overrideUserInterfaceStyle")}];
    v29 = [*&v9[v17] maximumContentSizeCategory];
    [v21 setMaximumContentSizeCategory:v29];

    v30 = [v4 contentView];
    v31 = [v9 contentView];
    v32 = [v31 overrideUserInterfaceStyle];

    [v30 setOverrideUserInterfaceStyle:v32];
  }
}

void sub_5F430()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_268FDC(_swiftEmptyArrayStorage);
  [v1 setNeedsLayout];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    [v4 setBackgroundColor:0];
  }

  v5 = [v1 contentView];
  [v5 setOverrideUserInterfaceStyle:0];
}

id sub_5F554()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B34C();
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style) = v8;
  sub_26B40C(v9);
  if (v1[v7])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 20.0;
  }

  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  v12 = type metadata accessor for TodayCardInfoLayerView();
  v22.receiver = v11;
  v22.super_class = v12;
  objc_msgSendSuper2(&v22, "_setContinuousCornerRadius:", v10);
  sub_4BE560();
  if (v1[v7])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = v13;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_501278(v5, v13);
  (*(v3 + 8))(v5, v2);
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v14)
  {
    v15 = v14;
    [v15 _setContinuousCornerRadius:v13];
    v16 = [v15 layer];
    [v16 setMaskedCorners:sub_7697E0()];
  }

  if (v1[v7])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 20.0;
  }

  v18 = [v1 contentView];
  [v18 _setContinuousCornerRadius:v17];

  v19 = [v1 contentView];
  v20 = [v19 layer];

  [v20 setMaskedCorners:3];
  return [v1 setNeedsLayout];
}

id sub_5F830()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B648();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v7 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v9 = v0[*v8];
  if (v9 == 4)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 15.0;
  }

  if (v9 == 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider35AppEventTodayCardCollectionViewCell_formattedDateView];
  if (v7)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style);
  *(v12 + OBJC_IVAR____TtC18ASMessagesProvider29AppPromotionFormattedDateView_style) = v13;
  sub_26B40C(v14);
  if (v1[v6])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 20.0;
  }

  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  v17 = type metadata accessor for TodayCardInfoLayerView();
  v23.receiver = v16;
  v23.super_class = v17;
  objc_msgSendSuper2(&v23, "_setContinuousCornerRadius:", v15);
  sub_4BE560();
  if (v1[v6])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = v18;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_501278(v5, v18);
  (*(v3 + 8))(v5, v2);
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v19)
  {
    v20 = v19;
    [v20 _setContinuousCornerRadius:v18];
    v21 = [v20 layer];
    [v21 setMaskedCorners:sub_7697E0()];
  }

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for AppEventTodayCardCollectionViewCell()
{
  result = qword_9409A0;
  if (!qword_9409A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_5FBA8()
{
  result = qword_94EC70;
  if (!qword_94EC70)
  {
    sub_133D8(&unk_947FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94EC70);
  }

  return result;
}

unint64_t sub_5FC0C()
{
  result = qword_9409B0;
  if (!qword_9409B0)
  {
    sub_765B10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9409B0);
  }

  return result;
}

uint64_t sub_5FC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_955AA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5FCD4(uint64_t a1)
{
  v2 = sub_BD88(&unk_955AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SearchLandingLayoutSectionProvider()
{
  result = qword_9409B8;
  if (!qword_9409B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5FDC8(uint64_t a1)
{
  swift_allocObject();
  sub_134D8(a1, v5);
  sub_134D8(v5, &v4);
  v2 = sub_762B60();
  sub_BEB8(a1);
  sub_BEB8(v5);
  return v2;
}

id sub_5FE54(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v124 = a7;
  v121 = a8;
  v122 = a5;
  v118 = a4;
  v125 = a3;
  v127 = a2;
  v123 = a10;
  v120 = a9;
  v129 = sub_75C840();
  v109 = *(v129 - 1);
  __chkstk_darwin(v129);
  v128 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_957F70);
  __chkstk_darwin(v13 - 8);
  v110 = &v106 - v14;
  v108 = sub_7656C0();
  v111 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_764930();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v116 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v22 = sub_BD88(&unk_94F1F0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v114 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v106 - v26;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v28 = *(v23 + 8);
  v115 = v23 + 8;
  v113 = v28;
  v28(v27, v22);
  v112 = *(v17 + 88);
  v29 = v112(v21, v16);
  v126 = v17;
  v119 = v21;
  if (v29 != enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_20;
  }

  v30 = ASKDeviceTypeGetCurrent();
  v31 = sub_769240();
  v33 = v32;
  if (v31 == sub_769240() && v33 == v34)
  {
    goto LABEL_4;
  }

  v36 = sub_76A950();

  v35 = v126;
  if ((v36 & 1) == 0)
  {
    v30 = ASKDeviceTypeGetCurrent();
    v63 = sub_769240();
    v65 = v64;
    if (v63 == sub_769240() && v65 == v66)
    {
LABEL_4:

      v35 = v126;
      goto LABEL_6;
    }

    v67 = sub_76A950();

    v35 = v126;
    if ((v67 & 1) == 0)
    {
LABEL_20:
      v129 = &v106;
      __chkstk_darwin(v29);
      __chkstk_darwin(v68);
      sub_762BA0();
      v69 = sub_762BB0();
      v70 = v118;
      v71 = a6;
      v117 = a6;
      v72 = v124;
      v128 = v69(a1, sub_60CC8, &v106 - 4, v118, v122, v71, v124, v121, v120, v123);
      v73 = v114;
      sub_75DAA0();
      swift_getKeyPath();
      v74 = v116;
      sub_768750();

      v113(v73, v22);
      v75 = v112(v74, v16);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v127();
        v62 = sub_CB3B4(a1, v76, v70, v122, v117, v72, v121, v120, v123);
      }

      else
      {
        v77 = v128;
        v78 = v117;
        if (v75 != enum case for Shelf.ContentType.ribbonFlow(_:))
        {
          v35 = v126;
          if (v75 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            v62 = v128;
            [v128 setOrthogonalScrollingBehavior:2];
          }

          else
          {
            (*(v126 + 8))(v116, v16);
            v62 = v77;
          }

          goto LABEL_25;
        }

        v79 = v127();
        v62 = sub_CC6F8(a1, v79, v118, v122, v78, v124, v121, v120, v123);
      }

      v35 = v126;
LABEL_25:
      v21 = v119;
      goto LABEL_26;
    }
  }

LABEL_6:
  v37 = (v127)(v29);
  v38 = *(v37 + 16);
  v39 = _swiftEmptyArrayStorage;
  v114 = v38;
  if (v38)
  {
    v117 = a6;
    v115 = a1;
    v116 = v16;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_143C5C(0, v38, 0);
    v127 = type metadata accessor for SearchActionContentView(0);
    v39 = aBlock[0];
    v40 = *(v109 + 16);
    v41 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v125 = v37;
    v42 = v37 + v41;
    v43 = *(v109 + 72);
    v44 = v38;
    v45 = (v109 + 8);
    do
    {
      v47 = v128;
      v46 = v129;
      v40(v128, v42, v129);
      v48 = sub_6B512C(v47);
      (*v45)(v47, v46);
      aBlock[0] = v39;
      v50 = v39[2];
      v49 = v39[3];
      if (v50 >= v49 >> 1)
      {
        sub_143C5C((v49 > 1), v50 + 1, 1);
        v39 = aBlock[0];
      }

      v39[2] = v50 + 1;
      *&v39[v50 + 4] = v48;
      v42 += v43;
      --v44;
    }

    while (v44);
    v16 = v116;
    v37 = v125;
    v35 = v126;
    v21 = v119;
    a1 = v115;
  }

  v51 = COERCE_DOUBLE(sub_2FD90C(v39));
  if ((v52 & 1) != 0 || v51 <= 0.0)
  {

    sub_BE70(0, &unk_93FFE0);
    v59 = sub_75DAB0();
    v60 = *(v59 - 8);
    v61 = v110;
    (*(v60 + 16))(v110, a1, v59);
    (*(v60 + 56))(v61, 0, 1, v59);
    v62 = sub_769C40();
    sub_60CD0(v61);
    goto LABEL_26;
  }

  v125 = v37;
  v53 = *&v51;
  v54 = v107;
  sub_75DA20();
  sub_765550();
  v56 = v55;
  v57 = *(v111 + 8);
  v111 += 8;
  v128 = v57;
  (v57)(v54, v108);
  if (v56 >= 2.0)
  {

    v58 = v122;
    v81 = v114;
    if (v114)
    {
      v82 = sub_7694E0();
      *(v82 + 16) = v81;
      v83 = (v82 + 32);
      if (v81 >= 4)
      {
        v84 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        v83 += v81 & 0x7FFFFFFFFFFFFFFCLL;
        v85 = vdupq_n_s64(v53);
        v86 = (v82 + 48);
        v87 = v81 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v86[-1] = v85;
          *v86 = v85;
          v86 += 2;
          v87 -= 4;
        }

        while (v87);
        if (v81 == v84)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v84 = 0;
      }

      v88 = v81 - v84;
      do
      {
        *v83++ = v53;
        --v88;
      }

      while (v88);
    }
  }

  else
  {
    v58 = v122;
  }

LABEL_39:
  v89 = sub_75F960();

  v90 = objc_opt_self();
  v129 = v89;
  v91 = [v90 sectionWithGroup:v89];
  swift_getObjectType();
  v92 = v58;
  sub_761E30();
  sub_BE70(0, &unk_956240);
  isa = sub_769450().super.isa;

  [v91 setBoundarySupplementaryItems:isa];

  v62 = v91;
  sub_761E20();
  sub_BE70(0, &unk_957FA0);
  v94 = sub_769450().super.isa;

  [v91 setDecorationItems:v94];

  v95 = v107;
  sub_75DA20();
  sub_765650();
  v97 = v96;
  v99 = v98;
  (v128)(v95, v108);
  sub_B170(v92, v92[3]);
  sub_761DF0();
  v101 = v100;
  sub_B170(v92, v92[3]);
  sub_761E10();
  [v91 setContentInsets:{v101, v97, v102, v99}];
  sub_762B90();
  v103 = sub_769480();
  v105 = v104;

  if (v103)
  {
    aBlock[4] = v103;
    aBlock[5] = v105;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_4E4820;
    aBlock[3] = &unk_881698;
    v103 = _Block_copy(aBlock);
  }

  v21 = v119;
  v35 = v126;
  [v62 setVisibleItemsInvalidationHandler:v103];
  _Block_release(v103);

LABEL_26:
  (*(v35 + 8))(v21, v16);
  return v62;
}

uint64_t sub_60C64()
{
  sub_762BC0();

  return swift_deallocClassInstance();
}

uint64_t sub_60CD0(uint64_t a1)
{
  v2 = sub_BD88(&unk_957F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_60D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_60D50(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider28TabPlaceholderViewController_storeTab;
  v6 = sub_758880();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  v9 = sub_725904();
  if (v9)
  {
    v10 = v9;
    [v8 setTabBarItem:v9];
    v11 = [v8 title];
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = [v8 title];
    if (v12)
    {
      v13 = v12;
      v14 = sub_769240();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {
LABEL_7:
        v18 = [v10 title];
        if (v18)
        {
          v19 = v18;
          sub_769240();
        }

        else
        {
          sub_758870();
          if (!v21)
          {
            v22 = 0;
            goto LABEL_15;
          }
        }

        v22 = sub_769210();

LABEL_15:
        [v8 setTitle:v22];
      }
    }
  }

  else
  {
    sub_758870();
    if (v20)
    {
      v10 = sub_769210();
    }

    else
    {
      v10 = 0;
    }

    [v8 setTitle:v10];
  }

  result = [v8 view];
  if (result)
  {
    v24 = result;
    v25 = [objc_opt_self() systemBackgroundColor];
    [v24 setBackgroundColor:v25];

    (*(v7 + 8))(a1, v6);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6103C(uint64_t a1)
{
  v73 = a1;
  v66 = sub_BD88(&qword_940A40);
  __chkstk_darwin(v66);
  v67 = &v64 - v1;
  v2 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v2 - 8);
  v64 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v64 - v5;
  __chkstk_darwin(v6);
  v70 = &v64 - v7;
  v8 = sub_7570A0();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  __chkstk_darwin(v8);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v64 - v12;
  v13 = sub_BD88(&qword_940A48);
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v64 - v17;
  v19 = type metadata accessor for FlowDestination();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  __chkstk_darwin(v26);
  v28 = &v64 - v27;
  __chkstk_darwin(v29);
  v31 = &v64 - v30;
  sub_726248(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v32 = &unk_9442D0;
    v33 = v18;
LABEL_27:
    sub_10A2C(v33, v32);
    v41 = 0;
    return v41 & 1;
  }

  sub_61AE8(v18, v31);
  v34 = &v15[*(v13 + 48)];
  sub_61B4C(v31, v15);
  sub_61B4C(v73, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_61B4C(v15, v25);

        v43 = sub_BD88(&qword_940A50);
        v44 = *(v43 + 48);
        if (swift_getEnumCaseMultiPayload() == 8)
        {

          v45 = *(v43 + 48);
          v46 = v70;
          sub_50774(&v25[v44], v70);
          v47 = v34 + v45;
          v48 = v69;
          sub_50774(v47, v69);
          v49 = v67;
          v50 = *(v66 + 48);
          sub_50690(v46, v67);
          sub_50690(v48, v49 + v50);
          v51 = v71;
          v52 = *(v72 + 48);
          if (v52(v49, 1, v71) == 1)
          {
            sub_10A2C(v48, &unk_93FD30);
            sub_10A2C(v46, &unk_93FD30);
            sub_61BB0(v31);
            if (v52(v49 + v50, 1, v51) == 1)
            {
              sub_10A2C(v49, &unk_93FD30);
              v41 = 1;
              goto LABEL_33;
            }
          }

          else
          {
            v60 = v64;
            sub_50690(v49, v64);
            if (v52(v49 + v50, 1, v51) != 1)
            {
              v61 = v72;
              v62 = v68;
              (*(v72 + 32))(v68, v49 + v50, v51);
              sub_61C0C();
              v41 = sub_7691C0();
              v63 = *(v61 + 8);
              v63(v62, v51);
              sub_10A2C(v69, &unk_93FD30);
              sub_10A2C(v70, &unk_93FD30);
              sub_61BB0(v31);
              v63(v60, v51);
              sub_10A2C(v49, &unk_93FD30);
              goto LABEL_33;
            }

            sub_10A2C(v69, &unk_93FD30);
            sub_10A2C(v70, &unk_93FD30);
            sub_61BB0(v31);
            (*(v72 + 8))(v60, v51);
          }

          sub_10A2C(v49, &qword_940A40);
          v41 = 0;
          goto LABEL_33;
        }

        sub_61BB0(v31);
        sub_10A2C(&v25[v44], &unk_93FD30);
LABEL_26:
        v32 = &qword_940A48;
        v33 = v15;
        goto LABEL_27;
      }

LABEL_22:
      sub_61BB0(v31);
      goto LABEL_26;
    }

    sub_61BB0(v31);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_26;
    }

    sub_61BB0(v34);
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 13:
        sub_61BB0(v31);
        sub_61B4C(v15, v22);

        v53 = sub_BD88(&qword_955D30);
        v54 = *(v53 + 48);
        if (swift_getEnumCaseMultiPayload() != 13)
        {
          v58 = sub_75AA40();
          (*(*(v58 - 8) + 8))(&v22[v54], v58);
          goto LABEL_26;
        }

        v55 = *(v53 + 48);
        v56 = sub_75AA40();
        v57 = *(*(v56 - 8) + 8);
        v57(v34 + v55, v56);
        v57(&v22[v54], v56);
        break;
      case 44:
        sub_61BB0(v31);
        if (swift_getEnumCaseMultiPayload() != 44)
        {
          goto LABEL_26;
        }

        break;
      case 20:
        sub_61B4C(v15, v28);
        if (swift_getEnumCaseMultiPayload() == 20)
        {
          v36 = v71;
          v37 = v72;
          v38 = *(v72 + 32);
          v39 = v68;
          v38(v68, v28, v71);
          v40 = v65;
          v38(v65, v34, v36);
          v41 = sub_757050();
          v42 = *(v37 + 8);
          v42(v40, v36);
          v42(v39, v36);
          sub_61BB0(v31);
LABEL_33:
          sub_61BB0(v15);
          return v41 & 1;
        }

        sub_61BB0(v31);
        (*(v72 + 8))(v28, v71);
        goto LABEL_26;
      default:
        goto LABEL_22;
    }
  }

  sub_61BB0(v15);
  v41 = 1;
  return v41 & 1;
}

uint64_t type metadata accessor for TabPlaceholderViewController()
{
  result = qword_940A30;
  if (!qword_940A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61A30()
{
  result = sub_758880();
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

uint64_t sub_61AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_61B4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowDestination();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_61BB0(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_61C0C()
{
  result = qword_947410;
  if (!qword_947410)
  {
    sub_7570A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947410);
  }

  return result;
}

uint64_t sub_61C64()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_765610();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_BD88(&qword_940A70);
  v15 = *(sub_765540() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_780120;
  v43 = v17 + v16;
  v49 = 0x3FF8000000000000;
  sub_62634();
  sub_7655D0();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_7655B0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_7655D0();
  v49 = 0;
  v42 = v7;
  sub_7655D0();
  v38 = v14;
  v41 = v11;
  sub_765500();
  v49 = 0x3FF8000000000000;
  sub_7655D0();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_7655B0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_765500();
  v49 = 0x4000000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v33 = 2 * v27 + v45;
  v49 = 0x4004000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_7697A0();
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_7655D0();
  v49 = 0x4038000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  sub_765500();
  v49 = 0x4014000000000000;
  sub_7655D0();
  v49 = 0x4038000000000000;
  sub_7655D0();
  v49 = 0x4034000000000000;
  sub_7655D0();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_7655D0();
  v49 = 0;
  sub_7655D0();
  result = sub_765500();
  qword_940A58 = v37;
  return result;
}

unint64_t sub_62634()
{
  result = qword_940A78;
  if (!qword_940A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940A78);
  }

  return result;
}

uint64_t sub_62688(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_offerButton);
  sub_38EE0(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_B170(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_76A930();
    (*(v7 + 8))(v10, v5);
    sub_BEB8(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  return swift_unknownObjectRelease();
}

char *sub_627E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v114 = sub_760AD0();
  v101 = *(v114 - 8);
  __chkstk_darwin(v114);
  v102 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v100 = &v95 - v12;
  v13 = sub_757CA0();
  __chkstk_darwin(v13 - 8);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_940AD0);
  __chkstk_darwin(v15 - 8);
  v107 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v95 - v18;
  __chkstk_darwin(v19);
  v108 = &v95 - v20;
  __chkstk_darwin(v21);
  v106 = &v95 - v22;
  v23 = sub_7664A0();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_metrics;
  v140[13] = &type metadata for Double;
  v140[14] = &protocol witness table for Double;
  v140[9] = &protocol witness table for Double;
  v140[10] = 0x4024000000000000;
  v140[8] = &type metadata for Double;
  v140[5] = 0x4000000000000000;
  if (qword_93D8D0 != -1)
  {
    swift_once();
  }

  v104 = v5;
  v98 = &v5[v27];
  v28 = sub_7666D0();
  v109 = sub_BE38(v28, qword_99F268);
  v29 = *(v28 - 8);
  v30 = v29 + 16;
  v121 = *(v29 + 16);
  v122 = v29;
  v121(v26, v109, v28);
  LODWORD(v118) = enum case for FontSource.useCase(_:);
  v119 = v24[13];
  v119(v26);
  v120 = sub_766CA0();
  v140[3] = v120;
  v140[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v140);
  v138 = v23;
  v139 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v137);
  v111 = v24[2];
  v111(v31, v26, v23);
  sub_766CB0();
  v32 = v24[1];
  v113 = v24 + 1;
  v32(v26, v23);
  v137[0] = 0x405C000000000000;
  v134[0] = 0x4044000000000000;
  v33 = sub_BD88(&qword_93FBE0);
  sub_7592D0();
  v115 = v28;
  v116 = v30;
  v121(v26, v109, v28);
  v112 = v24 + 13;
  (v119)(v26, v118, v23);
  v138 = v120;
  v139 = &protocol witness table for StaticDimension;
  sub_B1B4(v137);
  v135 = v23;
  v136 = &protocol witness table for FontSource;
  v34 = sub_B1B4(v134);
  v117 = v24 + 2;
  v111(v34, v26, v23);
  sub_766CB0();
  v96 = v32;
  v32(v26, v23);
  v134[0] = 0x405C000000000000;
  v131[0] = 0x4044000000000000;
  v105 = v33;
  sub_7592D0();
  if (qword_93D8D8 != -1)
  {
    swift_once();
  }

  v35 = v115;
  v97 = sub_BE38(v115, qword_99F280);
  v36 = v121;
  (v121)(v26);
  (v119)(v26, v118, v23);
  v135 = v120;
  v136 = &protocol witness table for StaticDimension;
  sub_B1B4(v134);
  v132 = v23;
  v133 = &protocol witness table for FontSource;
  v37 = sub_B1B4(v131);
  v38 = v111;
  v111(v37, v26, v23);
  sub_766CB0();
  v39 = v96;
  v96(v26, v23);
  v131[0] = 0x405C000000000000;
  v128[0] = 0x4044000000000000;
  sub_7592D0();
  v40 = v36;
  v41 = v39;
  v42 = v35;
  if (qword_93D8C0 != -1)
  {
    swift_once();
  }

  v43 = sub_BE38(v35, qword_99F238);
  v40(v26, v43, v35);
  v44 = v118;
  (v119)(v26, v118, v23);
  v132 = v120;
  v133 = &protocol witness table for StaticDimension;
  sub_B1B4(v131);
  v129 = v23;
  v130 = &protocol witness table for FontSource;
  v45 = sub_B1B4(v128);
  v38(v45, v26, v23);
  sub_766CB0();
  v41(v26, v23);
  v128[0] = 0x4052000000000000;
  v125[0] = 0x4034000000000000;
  sub_7592D0();
  *v26 = UIFontTextStyleBody;
  *(v26 + 2) = 0;
  v46 = v41;
  LODWORD(v105) = enum case for FontUseCase.preferredFont(_:);
  v95 = *(v122 + 104);
  v95(v26);
  v47 = v119;
  (v119)(v26, v44, v23);
  v129 = v120;
  v130 = &protocol witness table for StaticDimension;
  sub_B1B4(v128);
  v126 = v23;
  v127 = &protocol witness table for FontSource;
  v48 = sub_B1B4(v125);
  v49 = v111;
  v111(v48, v26, v23);
  v50 = UIFontTextStyleBody;
  sub_766CB0();
  v46(v26, v23);
  *v26 = v50;
  *(v26 + 2) = 0;
  (v95)(v26, v105, v42);
  (v47)(v26, v118, v23);
  v126 = v120;
  v127 = &protocol witness table for StaticDimension;
  sub_B1B4(v125);
  v124[3] = v23;
  v124[4] = &protocol witness table for FontSource;
  v51 = sub_B1B4(v124);
  v49(v51, v26, v23);
  sub_766CB0();
  v46(v26, v23);
  sub_757730();
  v52 = v99;
  sub_757C20();
  v53 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v54 = sub_243D30(v52, 1);
  v55 = v104;
  *&v104[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_inAppPurchaseView] = v54;
  v56 = v100;
  v57 = v109;
  v58 = v121;
  v121(v100, v109, v42);
  v59 = *(v122 + 56);
  v122 += 56;
  v59(v56, 0, 1, v42);
  LODWORD(v120) = enum case for DirectionalTextAlignment.none(_:);
  v60 = v102;
  v118 = *(v101 + 104);
  v118(v102);
  v119 = sub_75BB20();
  v61 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_titleLabel] = sub_75BB10();
  v62 = v115;
  v58(v56, v57, v115);
  v63 = v59;
  v59(v56, 0, 1, v62);
  v64 = v120;
  v65 = v118;
  (v118)(v60, v120, v114);
  v66 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_parentTitleLabel] = sub_75BB10();
  v67 = v115;
  v121(v56, v97, v115);
  v63(v56, 0, 1, v67);
  v68 = v64;
  v69 = v114;
  v70 = v119;
  v65(v60, v68);
  v71 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_subtitleLabel] = sub_75BB10();
  if (qword_93D8C8 != -1)
  {
    swift_once();
  }

  v72 = v115;
  v73 = sub_BE38(v115, qword_99F250);
  v121(v56, v73, v72);
  v63(v56, 0, 1, v72);
  (v65)(v60, v120, v69);
  v74 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_descriptionLabel] = sub_75BB10();
  v75 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v55[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_offerButton] = sub_1DD00C(0);
  *&v55[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_ageRatingBadge] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v123.receiver = v55;
  v123.super_class = ObjectType;
  v76 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v80 = v76;
  [v80 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v80 setScrollEnabled:1];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_titleLabel;
  [*&v80[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_titleLabel] setTextAlignment:1];
  v82 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_parentTitleLabel;
  [*&v80[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_parentTitleLabel] setTextAlignment:1];
  v83 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_subtitleLabel;
  [*&v80[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_subtitleLabel] setTextAlignment:1];
  v84 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_descriptionLabel;
  [*&v80[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_descriptionLabel] setTextAlignment:1];
  v85 = *&v80[v81];
  sub_396E8();
  v86 = v85;
  v87 = sub_769FD0();
  [v86 setTextColor:v87];

  v88 = *&v80[v82];
  v89 = sub_769FF0();
  [v88 setTextColor:v89];

  v90 = *&v80[v83];
  v91 = sub_769FE0();
  [v90 setTextColor:v91];

  v92 = *&v80[v84];
  v93 = sub_769FD0();
  [v92 setTextColor:v93];

  [v80 addSubview:*&v80[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_inAppPurchaseView]];
  [v80 addSubview:*&v80[v81]];
  [v80 addSubview:*&v80[v82]];
  [v80 addSubview:*&v80[v83]];
  [v80 addSubview:*&v80[v84]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_offerButton]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_ageRatingBadge]];

  return v80;
}

double sub_637B0()
{
  v1 = sub_757740();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = v4;
  v5 = sub_757760();
  v6 = *(v5 - 8);
  v29 = v5;
  v30 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_metrics, v1, v7);
  v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_inAppPurchaseView);
  v50 = type metadata accessor for InAppPurchaseView();
  v51 = &protocol witness table for UIView;
  v49 = v10;
  v11 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_titleLabel);
  v47 = sub_75BB20();
  v48 = &protocol witness table for UILabel;
  v46 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_parentTitleLabel);
  v44 = v47;
  v45 = &protocol witness table for UILabel;
  v42 = &protocol witness table for UILabel;
  v43 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_subtitleLabel);
  v41 = v47;
  v39 = &protocol witness table for UILabel;
  v40 = v13;
  v14 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_descriptionLabel);
  v38 = v47;
  v37 = v14;
  v15 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_ageRatingBadge);
  v35 = type metadata accessor for AgeRatingBadgeView();
  v36 = &protocol witness table for UIView;
  v34 = v15;
  v16 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_offerButton);
  v32 = type metadata accessor for OfferButton();
  v33 = &protocol witness table for UIView;
  v31 = v16;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  sub_757750();
  sub_64080();
  v24 = v29;
  sub_7665A0();
  v26 = v25;
  (*(v30 + 8))(v9, v24);
  return v26;
}

uint64_t sub_63ACC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v32 = ObjectType;
  v3 = sub_7664F0();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_757740();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  v9 = sub_757760();
  v34 = *(v9 - 8);
  v35 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
  v57 = type metadata accessor for InAppPurchaseView();
  v58 = &protocol witness table for UIView;
  v56 = v12;
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_titleLabel];
  v54 = sub_75BB20();
  v55 = &protocol witness table for UILabel;
  v53 = v13;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_parentTitleLabel];
  v51 = v54;
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v14;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_subtitleLabel];
  v48 = v54;
  v46 = &protocol witness table for UILabel;
  v47 = v15;
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_descriptionLabel];
  v45 = v54;
  v44 = v16;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_ageRatingBadge];
  v42 = type metadata accessor for AgeRatingBadgeView();
  v43 = &protocol witness table for UIView;
  v41 = v17;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v31;
  sub_757750();
  sub_75D650();
  v27 = v33;
  sub_757720();
  [v1 frame];
  Width = CGRectGetWidth(v60);
  sub_7664D0();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v27, v37);
  return (*(v34 + 8))(v26, v35);
}

uint64_t type metadata accessor for InstallPagePreInstallFreeOfferView()
{
  result = qword_940AB0;
  if (!qword_940AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_63FD8()
{
  result = sub_757740();
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

unint64_t sub_64080()
{
  result = qword_940AC8;
  if (!qword_940AC8)
  {
    sub_757760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940AC8);
  }

  return result;
}

void sub_640D8()
{
  v0 = sub_BD88(&qword_940AD0);
  __chkstk_darwin(v0 - 8);
  v39 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v41 = v33 - v3;
  __chkstk_darwin(v4);
  v40 = v33 - v5;
  __chkstk_darwin(v6);
  v38 = v33 - v7;
  v8 = sub_7664A0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC18ASMessagesProvider34InstallPagePreInstallFreeOfferView_metrics;
  v67[13] = &type metadata for Double;
  v67[14] = &protocol witness table for Double;
  v67[9] = &protocol witness table for Double;
  v67[10] = 0x4024000000000000;
  v67[8] = &type metadata for Double;
  v67[5] = 0x4000000000000000;
  if (qword_93D8D0 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  v46 = sub_BE38(v12, qword_99F268);
  v34 = *(v12 - 8);
  v13 = v34 + 16;
  v37 = *(v34 + 16);
  v37(v11, v46, v12);
  v49 = enum case for FontSource.useCase(_:);
  v50 = v9[13];
  v50(v11);
  v47 = sub_766CA0();
  v67[3] = v47;
  v67[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v67);
  v65 = v8;
  v66 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v64);
  v15 = v9[2];
  v15(v14, v11, v8);
  sub_766CB0();
  v42 = v9[1];
  v42(v11, v8);
  v64[0] = 0x405C000000000000;
  v61[0] = 0x4044000000000000;
  v16 = sub_BD88(&qword_93FBE0);
  sub_7592D0();
  v44 = v12;
  v33[1] = v13;
  v37(v11, v46, v12);
  v46 = (v9 + 13);
  (v50)(v11, v49, v8);
  v65 = v47;
  v66 = &protocol witness table for StaticDimension;
  sub_B1B4(v64);
  v62 = v8;
  v63 = &protocol witness table for FontSource;
  v17 = sub_B1B4(v61);
  v43 = v9 + 2;
  v48 = v15;
  v15(v17, v11, v8);
  sub_766CB0();
  v45 = v9 + 1;
  v42(v11, v8);
  v61[0] = 0x405C000000000000;
  v58[0] = 0x4044000000000000;
  v36 = v16;
  sub_7592D0();
  if (qword_93D8D8 != -1)
  {
    swift_once();
  }

  v18 = v44;
  v19 = sub_BE38(v44, qword_99F280);
  v20 = v18;
  v21 = v37;
  v37(v11, v19, v20);
  (v50)(v11, v49, v8);
  v62 = v47;
  v63 = &protocol witness table for StaticDimension;
  sub_B1B4(v61);
  v59 = v8;
  v60 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v58);
  v48(v22, v11, v8);
  sub_766CB0();
  v42(v11, v8);
  v58[0] = 0x405C000000000000;
  v55[0] = 0x4044000000000000;
  sub_7592D0();
  if (qword_93D8C0 != -1)
  {
    swift_once();
  }

  v23 = v44;
  v24 = sub_BE38(v44, qword_99F238);
  v21(v11, v24, v23);
  v25 = v49;
  (v50)(v11, v49, v8);
  v26 = v47;
  v59 = v47;
  v60 = &protocol witness table for StaticDimension;
  sub_B1B4(v58);
  v56 = v8;
  v57 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v55);
  v48(v27, v11, v8);
  sub_766CB0();
  v28 = v42;
  v42(v11, v8);
  v55[0] = 0x4052000000000000;
  v52[0] = 0x4034000000000000;
  sub_7592D0();
  *v11 = UIFontTextStyleBody;
  *(v11 + 2) = 0;
  LODWORD(v37) = enum case for FontUseCase.preferredFont(_:);
  v36 = *(v34 + 104);
  v36(v11);
  (v50)(v11, v25, v8);
  v56 = v26;
  v57 = &protocol witness table for StaticDimension;
  sub_B1B4(v55);
  v53 = v8;
  v54 = &protocol witness table for FontSource;
  v29 = sub_B1B4(v52);
  v48(v29, v11, v8);
  v30 = UIFontTextStyleBody;
  sub_766CB0();
  v28(v11, v8);
  *v11 = v30;
  *(v11 + 2) = 0;
  (v36)(v11, v37, v44);
  (v50)(v11, v49, v8);
  v53 = v47;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v51[3] = v8;
  v51[4] = &protocol witness table for FontSource;
  v31 = sub_B1B4(v51);
  v48(v31, v11, v8);
  v32 = v30;
  sub_766CB0();
  v28(v11, v8);
  sub_757730();
  sub_76A840();
  __break(1u);
}

uint64_t sub_64980(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_649C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_64A14()
{
  result = qword_940AD8;
  if (!qword_940AD8)
  {
    sub_759F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940AD8);
  }

  return result;
}

Swift::Int sub_64A74()
{
  sub_76AA30();
  sub_76AA40(0);
  return sub_76AA80();
}

Swift::Int sub_64AE0()
{
  sub_76AA30();
  sub_76AA40(0);
  return sub_76AA80();
}

uint64_t sub_64B38(uint64_t a1)
{
  v2 = sub_7687C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_32CF48(Strong);

  v16 = v7;
  sub_3C80C();
  v8 = v7;
  sub_BD88(&qword_940AE0);
  if (swift_dynamicCast())
  {
    sub_10914(&v13, v17);
    v9 = v18;
    v10 = v19;
    sub_B170(v17, v18);
    v13 = 0u;
    v14 = 0u;
    (*(v10 + 16))(a1, &v13, v9, v10);
    sub_10A2C(&v13, &unk_93FBD0);
    sub_BD88(&qword_94DDC0);
    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    v11 = sub_768F30();

    sub_BEB8(v17);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_10A2C(&v13, &qword_940AE8);
    sub_BD88(&qword_94DDC0);
    sub_64D7C();
    swift_allocError();
    v11 = sub_768F20();
  }

  return v11;
}

unint64_t sub_64D7C()
{
  result = qword_940AF0;
  if (!qword_940AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940AF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchActionImplementation.ImplementationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SearchActionImplementation.ImplementationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_64EB4()
{
  result = qword_940AF8;
  if (!qword_940AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_940AF8);
  }

  return result;
}

uint64_t sub_64F08()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v12[2] = v12 - v1;
  v2 = sub_765610();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v10 = sub_765540();
  sub_161DC(v10, qword_99A288);
  v12[1] = sub_BE38(v10, qword_99A288);
  v13 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v13 = 0x4041000000000000;
  sub_7655D0();
  v13 = 0x4041000000000000;
  sub_7655D0();
  *v5 = vdupq_n_s64(0x4041000000000000uLL);
  (*(v3 + 104))(v5, enum case for PageGrid.HorizontalMargins.dynamicCenter(_:), v2);
  LOBYTE(v13) = 0;
  sub_7655D0();
  v13 = 0;
  sub_7655D0();
  return sub_765500();
}

uint64_t sub_65220()
{
  v0 = sub_765610();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_765540();
  sub_161DC(v7, qword_99A2A0);
  sub_BE38(v7, qword_99A2A0);
  v10 = 0x4074F00000000000;
  sub_62634();
  sub_7655D0();
  v10 = 0x404A000000000000;
  sub_7655D0();
  v10 = 0x404A000000000000;
  sub_7655D0();
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (*(v1 + 104))(v3, enum case for PageGrid.HorizontalMargins.absolute(_:), v0);
  return sub_765510();
}

uint64_t sub_65464()
{
  v0 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v0 - 8);
  v38 = v31 - v1;
  v44 = sub_765610();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v5 - 8);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  sub_BD88(&qword_940A70);
  v37 = sub_765540();
  v10 = *(*(v37 - 8) + 72);
  v43 = *(v37 - 8);
  v11 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v40 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_77DCF0;
  v35 = v12;
  v42 = v12 + v11;
  v45 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v45 = 0x4030000000000000;
  sub_7655D0();
  v45 = 0x4030000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v36 = enum case for PageGrid.HorizontalMargins.dynamicCenter(_:);
  v18 = *(v2 + 104);
  v39 = v2 + 104;
  v18(v4);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  sub_7655D0();
  sub_765500();
  v45 = 0x3FF0000000000000;
  sub_7655D0();
  v45 = 0x4030000000000000;
  sub_7655D0();
  v45 = 0x4030000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v41 = v18;
  (v18)(v4, v36, v44);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  v20 = v40;
  sub_7655D0();
  v21 = v42;
  sub_765500();
  v22 = v21 + 2 * v20;
  if (qword_93C238 != -1)
  {
    swift_once();
  }

  v23 = v37;
  v24 = sub_BE38(v37, qword_99A288);
  v25 = *(v43 + 16);
  v43 += 16;
  v34 = v25;
  v25(v22, v24, v23);
  v31[1] = 3 * v20;
  v45 = 0x4000000000000000;
  sub_7655D0();
  v45 = 0x4041000000000000;
  sub_7655D0();
  v45 = 0x4041000000000000;
  sub_7655D0();
  v32 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v32;
  v36 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v41(v4);
  LOBYTE(v45) = 0;
  sub_7655D0();
  v45 = 0;
  sub_7655D0();
  sub_765500();
  v45 = 0x4074F00000000000;
  sub_7655D0();
  v45 = 0x4041000000000000;
  sub_7655D0();
  v45 = 0x4041000000000000;
  sub_7655D0();
  *v4 = v32;
  (v41)(v4, v36, v44);
  v26 = v42;
  sub_765510();
  v45 = 0x4074F00000000000;
  sub_7655D0();
  v45 = 0x404A000000000000;
  sub_7655D0();
  v45 = 0x404A000000000000;
  sub_7655D0();
  *v4 = vdupq_n_s64(0x404A000000000000uLL);
  (v41)(v4, v36, v44);
  sub_765510();
  if (qword_93C240 != -1)
  {
    swift_once();
  }

  v27 = v26 + 6 * v40;
  v28 = v37;
  v29 = sub_BE38(v37, qword_99A2A0);
  result = v34(v27, v29, v28);
  qword_940B00 = v35;
  return result;
}

void sub_65CD0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      v4 = [v3 navigationBar];

      [v4 frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v16.origin.x = v6;
      v16.origin.y = v8;
      v16.size.width = v10;
      v16.size.height = v12;
      CGRectGetMaxY(v16);
    }
  }

  v13 = *(v0 + 32);
  if (v13)
  {
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = v13;
    sub_622DF8(v14);
  }
}

void sub_65DEC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2)
  {

    v2(v3, 1.0, 0.0);
    sub_F704(v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      v7 = [v6 navigationBar];

      [v7 _setTitleOpacity:1.0];
    }
  }

  *(v1 + 88) = 0;
}

void sub_65EB0(void *a1, void *a2)
{
  v32 = a2;
  v4 = sub_764590();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_940BD8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_BD88(&qword_940BE0);
  __chkstk_darwin(v10 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = *(v2 + 32);
  v33 = v2;
  *(v2 + 32) = a1;
  a1;

  if (a1)
  {
    sub_7645B0();
    v19 = *(v5 + 56);
    v19(v17, 0, 1, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v17, 1, 1, v4);
  }

  (*(v5 + 104))(v14, enum case for Uber.Style.inline(_:), v4);
  v19(v14, 0, 1, v4);
  v20 = *(v7 + 48);
  sub_67890(v17, v9);
  sub_67890(v14, &v9[v20]);
  v21 = *(v5 + 48);
  if (v21(v9, 1, v4) == 1)
  {
    sub_10A2C(v14, &qword_940BE0);
    sub_10A2C(v17, &qword_940BE0);
    if (v21(&v9[v20], 1, v4) == 1)
    {
      sub_10A2C(v9, &qword_940BE0);
      goto LABEL_13;
    }
  }

  else
  {
    v22 = v31;
    sub_67890(v9, v31);
    if (v21(&v9[v20], 1, v4) != 1)
    {
      v26 = v30;
      (*(v5 + 32))(v30, &v9[v20], v4);
      sub_67900();
      v27 = v22;
      v28 = sub_7691C0();
      v29 = *(v5 + 8);
      v29(v26, v4);
      sub_10A2C(v14, &qword_940BE0);
      sub_10A2C(v17, &qword_940BE0);
      v29(v27, v4);
      sub_10A2C(v9, &qword_940BE0);
      if (v28)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    sub_10A2C(v14, &qword_940BE0);
    sub_10A2C(v17, &qword_940BE0);
    (*(v5 + 8))(v22, v4);
  }

  sub_10A2C(v9, &qword_940BD8);
LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    sub_65CD0();
    (*&stru_1A8.sectname[swift_isaMask & *v24])(v25, 0);
  }

LABEL_13:
  sub_66394(v32);
}