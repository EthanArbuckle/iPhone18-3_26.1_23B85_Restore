uint64_t sub_100020984()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id MiniPlayerHostingTabBarController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController__bc_preferredTabBarScrollEdgeAppearance] = 0;
  v3[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = 0x80;
  *&v3[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController] = 0;
  *&v3[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_bottomAnchorConstraint] = 0;
  v5 = &v3[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
  *v5 = 0;
  v5[1] = 0;
  v3[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems] = 0;
  if (a2)
  {
    v6 = sub_1007A2214();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

void sub_100020B04(id a1)
{
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v4 lastObject];
  v2 = [v1 stringByAppendingPathComponent:@"jalisco-artwork"];
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:v2 error:0];
}

Swift::Void __swiftcall TabBarController.viewDidLoad()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 tabBar];
  [v1 setSpringLoaded:1];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 setAccessibilityIgnoresInvertColors:1];

    v4 = [v0 tabBar];
    v5 = [objc_opt_self() bc_booksKeyColor];
    [v4 setTintColor:v5];
  }

  else
  {
    __break(1u);
  }
}

uint64_t TabBarController.selectedItem.getter()
{
  v1 = v0;
  sub_10000A7C4(0, &qword_100AD1E10);
  v2 = sub_1007A2D74();
  v3 = &_dispatch_main_q;
  if (v2 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  [v1 selectedIndex];
  v4 = sub_1007A2D74();
  v5 = &_dispatch_main_q;
  if (v4 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  sub_1001F1160(&qword_100AEB180);
  sub_100005920(&qword_100AEB188, &qword_100AEB180);
  sub_1007A28B4();
  result = v9;
  if (!v9)
  {
    v7 = sub_1007A2D74();
    v8 = &_dispatch_main_q;
    if (v7 == &_dispatch_main_q)
    {
      +[NSThread isMainThread];
    }

    sub_1007A28B4();
    return 0;
  }

  return result;
}

void sub_100020ED0()
{
  TabBarController.selectedItem.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_10079B9B4();
  v2 = sub_10002112C();
  if (v2 && (v3 = v2, v4 = [v2 navigationBar], v3, v5 = objc_msgSend(v4, "_backdropViewLayerGroupName"), v4, v5))
  {
    v6 = sub_1007A2254();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [v1 tabBar];
  if (v8)
  {

    v10 = sub_1007A2214();
  }

  else
  {
    v10 = 0;
  }

  [v9 _setBackdropGroupName:v10];

  v11 = sub_100021C08();
  v13 = v12;
  ObjectType = swift_getObjectType();
  (*(v13 + 48))(v6, v8, ObjectType, v13);

  v15 = [v1 selectedViewController];
  if (v15)
  {
    v16 = v15;
    v17 = sub_100021C08();
    v18 = [v17 isHidden];

    if ((v18 & 1) == 0)
    {
      v19 = &v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
      v20 = *&v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
      v21 = *(v19 + 1);
      v22 = swift_getObjectType();
      v23 = *(v21 + 8);
      v24 = v20;
      v23(v22, v21);
    }

    [v16 additionalSafeAreaInsets];
    [v16 setAdditionalSafeAreaInsets:?];
  }
}

uint64_t sub_10002112C()
{
  v1 = v0;
  sub_10000A7C4(0, &qword_100AD1E10);
  v2 = sub_1007A2D74();
  v3 = &_dispatch_main_q;
  if (v2 == &_dispatch_main_q)
  {
    +[NSThread isMainThread];
  }

  v4 = [v1 selectedTab];
  if (!v4 || (v5 = v4, v6 = sub_100582D38(), v5, (result = v6) == 0))
  {
    v8 = [v1 selectedIndex];
    if (v8 != _s5Books17REActionMenuStateC9pageCountSivpfi_0())
    {
      if (qword_100AD1870 != -1)
      {
        swift_once();
      }

      v9 = sub_10079ACE4();
      sub_100008B98(v9, qword_100AEB0F0);
      v10 = v1;
      v11 = sub_10079ACC4();
      v12 = sub_1007A29B4();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = v14;
        *v13 = 136446466;
        *(v13 + 4) = sub_1000070F4(0xD00000000000001CLL, 0x80000001008C1A40, &v15);
        *(v13 + 12) = 2048;
        *(v13 + 14) = [v10 selectedIndex];

        _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s RootBarItem at %ld doesn't have a navigation controller", v13, 0x16u);
        sub_1000074E0(v14);
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

char *sub_100021358(void *a1)
{
  v2 = sub_100799234();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 104);
  v6(v5, enum case for BooksUIKitFeatureFlag.floatingTabBar(_:), v2);
  v7 = sub_100799134();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7 & 1) != 0 || (v6(v5, enum case for BooksUIKitFeatureFlag.floatingTabBarOnly(_:), v2), v9 = sub_100799134(), v8(v5, v2), (v9) || (v10 = [a1 tabBar], v11 = objc_msgSend(v10, "superview"), v10, !v11))
  {
    v53 = [objc_allocWithZone(type metadata accessor for ToastContainerView()) init];
    [v53 setHidden:1];
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

    result = [a1 view];
    if (result)
    {
      v54 = result;
      [result addSubview:v53];

      result = [a1 view];
      if (result)
      {
        v55 = result;
        v42 = v53;
        v56 = [a1 tabBar];
        [v55 insertSubview:v42 belowSubview:v56];

        sub_1001F1160(&unk_100AD8160);
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_100811370;
        v58 = [v42 leadingAnchor];

        result = [a1 view];
        if (result)
        {
          v59 = result;
          v60 = [result leadingAnchor];

          v61 = [v58 constraintEqualToAnchor:v60];
          *(v57 + 32) = v61;
          v62 = [v42 trailingAnchor];
          result = [a1 view];
          if (result)
          {
            v63 = result;
            v50 = objc_opt_self();
            v64 = [v63 trailingAnchor];

            v65 = [v62 constraintEqualToAnchor:v64];
            *(v57 + 40) = v65;
            v66 = [v42 heightAnchor];
            v67 = *&v42[OBJC_IVAR____TtC5Books18ToastContainerView_defaultHeight];

            v68 = [v66 constraintEqualToConstant:v67];
            *(v57 + 48) = v68;
            goto LABEL_17;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  if (qword_100AD1358 != -1)
  {
    swift_once();
  }

  v12 = qword_100B22F78;
  v13 = objc_allocWithZone(type metadata accessor for PaletteContainerView());
  v14 = sub_100282CD4(v12);
  swift_getObjectType();
  v15 = v14;
  [v15 setHidden:1];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [a1 tabBar];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  Height = CGRectGetHeight(v71);
  v26 = sub_100283CF8(v70);
  *(v27 + 16) = Height;
  (v26)(v70, 0);

  result = [a1 view];
  if (!result)
  {
    goto LABEL_22;
  }

  v29 = result;
  [result addSubview:v15];

  result = [a1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = result;
  v31 = v15;
  v32 = [a1 tabBar];
  [v30 insertSubview:v31 belowSubview:v32];

  sub_1001F1160(&unk_100AD8160);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100816E30;
  v34 = [v31 leadingAnchor];

  result = [a1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v35 = result;
  v36 = [result leadingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36];
  *(v33 + 32) = v37;
  v38 = [v31 trailingAnchor];
  result = [a1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = result;
  v40 = [result trailingAnchor];

  v41 = [v38 constraintEqualToAnchor:v40];
  *(v33 + 40) = v41;
  v42 = v31;
  v43 = [v42 topAnchor];
  v44 = [a1 tabBar];
  v45 = [v44 topAnchor];

  v46 = *&v42[OBJC_IVAR____TtC5Books20PaletteContainerView_defaultHeight];
  v47 = [v43 constraintEqualToAnchor:v45 constant:-v46];

  *(v33 + 48) = v47;
  v48 = [v42 bottomAnchor];

  result = [a1 view];
  if (result)
  {
    v49 = result;
    v50 = objc_opt_self();
    v51 = [v49 bottomAnchor];

    v52 = [v48 constraintEqualToAnchor:v51];
    *(v33 + 56) = v52;
LABEL_17:
    sub_10000A7C4(0, &qword_100AE9010);
    isa = sub_1007A25D4().super.isa;

    [v50 activateConstraints:isa];

    return v42;
  }

LABEL_26:
  __break(1u);
  return result;
}

char *sub_100021C08()
{
  v1 = &v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
  v2 = *&v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController____lazy_storage___hostContainerView];
  }

  else
  {
    v4 = sub_100021358(v0);
    v5 = *v1;
    *v1 = v4;
    *(v1 + 1) = v6;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_100021CA0()
{
  v1 = OBJC_IVAR____TtC5Books18ToastContainerView_containerView;
  type metadata accessor for ToastContainerView.ContainerView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC5Books18ToastContainerView_backgroundView;
  v3 = [objc_opt_self() effectWithStyle:10];
  v4 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *&v0[v2] = v4;
  *&v0[OBJC_IVAR____TtC5Books18ToastContainerView_defaultHeight] = 0x4055000000000000;
  *&v0[OBJC_IVAR____TtC5Books18ToastContainerView_defaultHeightInset] = 0x4024000000000000;
  *&v0[OBJC_IVAR____TtC5Books18ToastContainerView_defaultWidthInset] = 0x4034000000000000;
  v5 = &v0[OBJC_IVAR____TtC5Books18ToastContainerView_backgroundLayerGroupName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v0[OBJC_IVAR____TtC5Books18ToastContainerView_contentInsets];
  v7 = *&UIEdgeInsetsZero.bottom;
  *v6 = *&UIEdgeInsetsZero.top;
  *(v6 + 1) = v7;
  v71.receiver = v0;
  v71.super_class = type metadata accessor for ToastContainerView();
  v8 = objc_msgSendSuper2(&v71, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC5Books18ToastContainerView_containerView;
  v10 = *&v8[OBJC_IVAR____TtC5Books18ToastContainerView_containerView];
  v11 = v8;
  [v10 setClipsToBounds:0];
  v12 = *&v8[v9];
  v13 = objc_opt_self();
  v14 = v12;
  v70 = v13;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  v16 = [*&v8[v9] layer];
  [v16 setCornerRadius:16.0];

  v17 = [*&v8[v9] layer];
  [v17 setCornerCurve:kCACornerCurveContinuous];

  v18 = [*&v8[v9] layer];
  GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.35);
  [v18 setShadowColor:GenericRGB];

  v20 = [*&v8[v9] layer];
  [v20 setShadowOffset:{0.0, 8.0}];

  v21 = [*&v8[v9] layer];
  LODWORD(v22) = 1.0;
  [v21 setShadowOpacity:v22];

  v23 = [*&v8[v9] layer];
  [v23 setShadowRadius:26.0];

  v24 = *&v8[v9];
  v25 = v11;
  v26 = v24;
  [v25 addSubview:v26];
  v27 = [v26 superview];
  v28 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
  if (v27)
  {
    v29 = v27;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v68 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100816E30;
    v31 = [v26 topAnchor];
    v32 = [v29 topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:10.0];

    *(v30 + 32) = v33;
    v34 = [v26 leadingAnchor];
    v35 = [v29 leadingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35 constant:20.0];

    *(v30 + 40) = v36;
    v37 = [v29 bottomAnchor];
    v38 = [v26 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:10.0];

    *(v30 + 48) = v39;
    v40 = [v29 trailingAnchor];
    v41 = [v26 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:20.0];

    v28 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
    *(v30 + 56) = v42;
    sub_10002267C();
    isa = sub_1007A25D4().super.isa;

    [v68 activateConstraints:isa];
  }

  swift_unknownObjectWeakAssign();
  v44 = OBJC_IVAR____TtC5Books18ToastContainerView_backgroundView;
  [*&v25[OBJC_IVAR____TtC5Books18ToastContainerView_backgroundView] setClipsToBounds:1];
  v45 = [*&v25[v44] layer];
  [v45 setCornerRadius:16.0];

  v46 = *&v25[v44];
  v47 = *&v8[v9];
  v48 = v46;
  [v47 addSubview:v48];
  v49 = [v48 superview];
  if (v49)
  {
    v50 = v49;
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v69 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_100816E30;
    v52 = [v48 topAnchor];
    v53 = v28;
    v54 = [v50 topAnchor];
    v55 = [v52 constraintEqualToAnchor:v54 constant:0.0];

    *(v51 + 32) = v55;
    v56 = [v48 leadingAnchor];
    v57 = [v50 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:0.0];

    *(v51 + 40) = v58;
    v59 = [v50 bottomAnchor];
    v60 = [v48 bottomAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:0.0];

    *(v51 + 48) = v61;
    v62 = [v50 trailingAnchor];
    v63 = [v48 trailingAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:0.0];

    *(v51 + 56) = v64;
    sub_10002267C();
    v65 = sub_1007A25D4().super.isa;

    [v69 v53[194]];
  }

  v66 = [v70 clearColor];
  [v25 setBackgroundColor:v66];

  return v25;
}

unint64_t sub_10002267C()
{
  result = qword_100AE9010;
  if (!qword_100AE9010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE9010);
  }

  return result;
}

uint64_t sub_100022774(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5Books18ToastContainerView_backgroundLayerGroupName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1000227D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002281C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000228AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000228F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002293C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022984(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000229CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022A5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022AA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100022AEC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100022B60(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100022BBC(v1);
  }
}

void sub_100022BBC(uint64_t a1)
{
  v3 = [*&v1[OBJC_IVAR___BKRootBarCoordinator_rootViewController] viewIfLoaded];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        if (a1)
        {
          v7 = [v1 currentTitleForRootBarItem:a1];
          sub_1007A2254();

          v8 = sub_1007A2214();
        }

        else
        {
          v8 = 0;
        }

        [v6 setTitle:v8];
      }
    }
  }
}

id sub_100022CEC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

id sub_100022E50(id a1)
{
  v3 = [v1 rootBarCoordinator];
  if (v3)
  {
    if (!a1)
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    v4 = v3;
    result = swift_unknownObjectRelease();
    if (v4 == a1)
    {
      return result;
    }

LABEL_6:
    [a1 willMoveTo:v1];
LABEL_8:
    swift_beginAccess();
    swift_unknownObjectRetain();
    objc_setAssociatedObject(v1, &unk_100B23B09, a1, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
    v6 = [v1 _mainFlowControllerIfCreated];
    [v6 setRootBarCoordinator:a1];

    return [v1 setupRootViewController];
  }

  if (a1)
  {
    goto LABEL_6;
  }

  return swift_unknownObjectRetain();
}

uint64_t BKSceneController.rootBarCoordinator.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_100B23B09);
  swift_endAccess();
  if (v1)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1001F1160(&qword_100AF4F68);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000230BC(v6);
    return 0;
  }
}

uint64_t sub_1000230BC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD5B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10002318C(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, sub_10000A7C4(0, &qword_100AD6A10), v6 = a1, v7 = sub_1007A3184(), v6, v5, (v7 & 1) == 0))
  {
    swift_unknownObjectWeakAssign();
    v8 = [a1 bk_window];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 traitCollection];

      if (v10)
      {
        v11 = [*&v2[OBJC_IVAR___BKRootBarCoordinator_rootViewController] traitCollection];
        [v2 windowSceneTraitCollectionDidChangeFrom:v11 to:v10];
      }
    }
  }
}

void sub_100023578(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (v4 <= 1)
    {
      if (v4)
      {
        v7 = [Strong selectedItem];
        sub_100022BBC(v7);
      }
    }

    else if (v4 != 2)
    {
      if (v4 == 3)
      {
        sub_1002427FC();
      }

      else
      {
        sub_100240E98(v3, v1, v2);
      }
    }
  }
}

void sub_100023724(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) _persistedInfoURL];
  v3 = [NSData dataWithContentsOfURL:v2];

  if (v3)
  {
    v25 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v25];
    v5 = v25;
    if (v4)
    {
      v6 = objc_opt_class();
      v7 = objc_opt_class();
      v8 = objc_opt_class();
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = [NSSet setWithObjects:v6, v7, v8, v9, v10, objc_opt_class(), 0];
      v24 = v5;
      v12 = [v4 decodeTopLevelObjectOfClasses:v11 forKey:@"Root" error:&v24];
      v13 = v24;

      if (v12)
      {
        v14 = [v12 objectForKeyedSubscript:@"version"];
        if ([v14 unsignedIntegerValue]== 4)
        {
          v15 = [v12 objectForKeyedSubscript:@"URLFromAssetID"];
          if (v15)
          {
            v16 = [NSMutableDictionary dictionaryWithDictionary:v15];
            v17 = *(*v1 + 7);
            *(*v1 + 7) = v16;
          }

          v18 = [v12 objectForKeyedSubscript:@"AssetFromAssetID"];
          if (v18)
          {
            v19 = [NSMutableDictionary dictionaryWithDictionary:v18];
            v20 = *(*v1 + 10);
            *(*v1 + 10) = v19;
          }

          v21 = [v12 objectForKeyedSubscript:@"InsertionDateFromAssetID"];
          if (v21)
          {
            v22 = [NSMutableDictionary dictionaryWithDictionary:v21];
            v23 = *(*v1 + 11);
            *(*v1 + 11) = v22;
          }

          [*v1 iq_populateAssetIDFromURLDictionary];
        }

        else
        {
          v15 = BKLibraryDataSourceUbiquityLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_10078EBB0(v1);
          }
        }
      }

      else
      {
        v14 = BKLibraryDataSourceUbiquityLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10078EC38(v1);
        }
      }
    }

    else
    {
      v11 = BKLibraryDataSourceUbiquityLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10078EC38(v1);
      }

      v13 = v5;
    }
  }
}

void MiniPlayerHostingTabBarController.viewControllers.getter()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v1 = objc_msgSendSuper2(&v22, "viewControllers");
  if (v1)
  {
    v2 = v1;
    sub_10000A7C4(0, &qword_100AD7CB0);
    v3 = sub_1007A25E4();

    v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    v5 = swift_beginAccess();
    if (*&v0[v4])
    {
      v21 = *&v0[v4];
      __chkstk_darwin(v5);
      v20[2] = &v21;
      v7 = v6;

      v8 = sub_100580844(sub_10058C914, v20, v3);

      if ((v8 & 1) == 0)
      {

        return;
      }

      if (v3 >> 62)
      {
        v9 = sub_1007A38D4();
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v10 = v9 - 1;
      if (__OFSUB__(v9, 1))
      {
        __break(1u);
      }

      else if ((v3 & 0xC000000000000001) == 0)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_39:
          __break(1u);
          return;
        }

        if (*(v3 + 8 * v10 + 32) != v7)
        {
          goto LABEL_11;
        }

LABEL_23:
        v21 = _swiftEmptyArrayStorage;
LABEL_24:
        v17 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v18 = sub_1007A3784();
          }

          else
          {
            if (v17 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v18 = *(v3 + 8 * v17 + 32);
          }

          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v18 == v7)
          {
          }

          else
          {
            sub_1007A37D4();
            sub_1007A3804();
            sub_1007A3814();
            sub_1007A37E4();
          }

          ++v17;
          if (v19 == v9)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v15 = v7;
      v16 = sub_1007A3784();
      swift_unknownObjectRelease();

      if (v16 == v15)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (qword_100AD1870 != -1)
      {
        swift_once();
      }

      v11 = sub_10079ACE4();
      sub_100008B98(v11, qword_100AEB0F0);
      v12 = sub_10079ACC4();
      v13 = sub_1007A29C4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "miniPlayerViewController should always be the last child of the tab bar controller", v14, 2u);
      }

      v21 = _swiftEmptyArrayStorage;
      if (!v9)
      {
LABEL_34:

        return;
      }

      goto LABEL_24;
    }
  }
}

id MiniPlayerHostingTabBarController.mutableChildViewControllers.getter()
{
  if (*(v0 + OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_isRebuildingTabBarItems) == 1)
  {
    v1 = [v0 _viewControllersInTabBar];
    sub_10000A7C4(0, &qword_100AD7CB0);
    v2 = sub_1007A25E4();

    sub_1003BBFB4(v2);

    v3 = objc_allocWithZone(NSMutableArray);
    isa = sub_1007A25D4().super.isa;

    v5 = [v3 initWithArray:isa];

    return v5;
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
    return objc_msgSendSuper2(&v7, "mutableChildViewControllers");
  }
}

uint64_t sub_100023FDC(uint64_t result)
{
  v2 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState;
  v3 = v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState];
  v1[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_appearanceState] = result;
  if (!(result >> 6))
  {
    if (v3 >= 0x40)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if (result >> 6 == 1)
  {
    if ((v3 & 0xC0) != 0x40)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (((v3 ^ result) & 1) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (result == 128)
  {
    if (v3 == 128)
    {
      return result;
    }
  }

  else if (v3 == 129)
  {
    return result;
  }

LABEL_12:
  result = [v1 shouldAutomaticallyForwardAppearanceMethods];
  if ((result & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    result = swift_beginAccess();
    if (*&v1[v4])
    {
      ObjectType = swift_getObjectType();
      return sub_1004A6BE8(v3, v1[v2], ObjectType, &off_100A1ED78);
    }
  }

  return result;
}

void sub_1000240CC(uint64_t a1, char a2, int a3, void *a4)
{
  v7 = a4;
  if (v7 || !a3)
  {
    v8 = BALog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100024154();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100024250(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1000242B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_1000242D0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1000242F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100024358(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void _s5Books33MiniPlayerHostingTabBarControllerC11viewDidMove2to23shouldAppearOrDisappearySo8UIWindowCSg_SbtF_0()
{
  v1 = sub_100799234();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 104);
  v5(v4, enum case for BooksUIKitFeatureFlag.floatingTabBar(_:), v1);
  v6 = sub_100799134();
  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6 & 1) != 0 || (v5(v4, enum case for BooksUIKitFeatureFlag.floatingTabBarOnly(_:), v1), v8 = sub_100799134(), v7(v4, v1), (v8))
  {
    v9 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_bottomAnchorConstraint;
    v10 = *&v0[OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_bottomAnchorConstraint];
    if (v10)
    {
      v11 = objc_opt_self();
      sub_1001F1160(&unk_100AD8160);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100811390;
      *(v12 + 32) = v10;
      sub_10000A7C4(0, &qword_100AE9010);
      v13 = v10;
      isa = sub_1007A25D4().super.isa;

      [v11 deactivateConstraints:isa];

      v15 = *&v0[v9];
      *&v0[v9] = 0;
    }

    v16 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (*&v0[v16])
    {
      v17 = [v0 traitCollection];
      if ([v17 horizontalSizeClass] == 1)
      {
        v18 = [v0 tabBar];
        v19 = [v18 window];

        if (v19)
        {

          v20 = [v0 tabBar];
          v21 = [v20 topAnchor];

          v22 = sub_100021C08();
          v23 = [v22 bottomAnchor];

          v24 = [v23 constraintEqualToAnchor:v21 constant:0.0];
        }

        else
        {
          v30 = sub_100021C08();
          v23 = [v30 bottomAnchor];

          v31 = [v0 view];
          if (!v31)
          {
            __break(1u);
            return;
          }

          v32 = v31;
          v33 = [v31 safeAreaLayoutGuide];

          v21 = [v33 bottomAnchor];
          v24 = [v23 constraintEqualToAnchor:v21];
        }
      }

      else
      {
        v25 = [v0 viewIfLoaded];
        if (!v25 || (v26 = v25, v27 = [v25 window], v26, !v27) || (v28 = objc_msgSend(v27, "safeAreaLayoutGuide"), v27, v21 = objc_msgSend(v28, "bottomAnchor"), v28, !v21))
        {
LABEL_16:
          v36 = *&v0[v9];
          if (v36)
          {
            v37 = objc_opt_self();
            sub_1001F1160(&unk_100AD8160);
            v38 = swift_allocObject();
            *(v38 + 16) = xmmword_100811390;
            *(v38 + 32) = v36;
            sub_10000A7C4(0, &qword_100AE9010);
            v39 = v36;
            v40 = sub_1007A25D4().super.isa;

            [v37 activateConstraints:v40];
          }

          return;
        }

        v29 = sub_100021C08();
        v23 = [v29 bottomAnchor];

        v24 = [v23 constraintEqualToAnchor:v21 constant:10.0];
      }

      v34 = v24;

      v35 = *&v0[v9];
      *&v0[v9] = v34;

      goto LABEL_16;
    }
  }
}

void sub_1000248F0(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) unzippedCounterpartCacheURL];
  v24 = 0;
  v18 = v2;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:&v24];
  v5 = v24;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    v11 = BCMetadataXattrAssetID;
    *&v8 = 141558274;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 bu_extendedAttributeNamed:v11 iCloudSyncable:{1, v17}];
        if ([v14 length])
        {
          [*(*(a1 + 32) + 64) setObject:v13 forKeyedSubscript:v14];
        }

        else
        {
          v15 = BKLibraryDataSourceUbiquityLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v26 = 1752392040;
            v27 = 2112;
            v28 = v13;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "_loadCounterpartInfo: Missing assetID. url: %{mask.hash}@", buf, 0x16u);
          }

          v19 = v5;
          [v18 removeItemAtURL:v13 error:&v19];
          v16 = v19;

          v5 = v16;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v9);
  }
}

id sub_100024BF8(uint64_t a1)
{
  if (qword_100AF77E0 != -1)
  {
    sub_100024C7C();
  }

  v2 = qword_100AF77D8;
  v3 = [NSNumber numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void sub_100024C90(id a1)
{
  v3[0] = &off_100A43728;
  v3[1] = &off_100A43740;
  v4[0] = @"BKAppLaunchConditionLibraryDidInitialize";
  v4[1] = @"BKAppLaunchConditionDataSourceFetchDidInitiate";
  v3[2] = &off_100A43758;
  v3[3] = &off_100A43770;
  v4[2] = @"BKAppLaunchConditionLaunching";
  v4[3] = @"BKAppLaunchConditionPrepareForLaunchDismissal";
  v3[4] = &off_100A43788;
  v3[5] = &off_100A437A0;
  v4[4] = @"BKAppLaunchConditionLaunchWillDismiss";
  v4[5] = @"BKAppLaunchConditionLaunched";
  v3[6] = &off_100A437B8;
  v3[7] = &off_100A437D0;
  v4[6] = @"BKAppLaunchConditionInitialWindowSceneDidConnect";
  v4[7] = @"BKAppLaunchConditionPrimaryWindowSceneReadyInSupportedInterfaceOrientation";
  v3[8] = &off_100A437E8;
  v3[9] = &off_100A43800;
  v4[8] = @"BKAppLaunchConditionInitialCarPlaySceneDidConnect";
  v4[9] = @"BKAppLaunchConditionExtendedLaunchComplete";
  v3[10] = &off_100A43818;
  v3[11] = &off_100A43830;
  v4[10] = @"BKAppLaunchConditionJSAppInitialized";
  v4[11] = @"BKAppLaunchConditionWelcomeItemsReady";
  v3[12] = &off_100A43848;
  v3[13] = &off_100A43860;
  v4[12] = @"BKAppLaunchConditionRootBarStandardItemsReady";
  v4[13] = @"BKAppLaunchConditionLibraryDidFinishReloading";
  v3[14] = &off_100A43878;
  v4[14] = @"BKAppLaunchConditionAEPluginPrewarmCompleted";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:15];
  v2 = qword_100AF77D8;
  qword_100AF77D8 = v1;
}

id TabBarController.childForStatusBarHidden.getter()
{
  v1 = objc_opt_self();
  v2 = [v1 delegate];
  v3 = [v2 appLaunchCoordinator];

  LODWORD(v2) = [v3 appLaunchCoordinatorIsConditionSatisfied:0];
  swift_unknownObjectRelease();
  if (v2)
  {
    v4 = [v1 delegate];
    v5 = [v4 sceneManager];

    v6 = [v5 mainFlowController];
    v7 = [v6 viewControllerForStatusBarHidden];

    return v7;
  }

  else
  {
    v9.receiver = v0;
    v9.super_class = type metadata accessor for TabBarController();
    return objc_msgSendSuper2(&v9, "childViewControllerForStatusBarHidden");
  }
}

void sub_1000257BC(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR___BKRootBarCoordinator_splitViewController);
  if (!v3)
  {
    return;
  }

  v4 = *(v2 + OBJC_IVAR___BKRootBarCoordinator_tabBarController);
  if (!v4)
  {
    return;
  }

  v7 = v4;
  v17 = v3;
  v8 = [a1 horizontalSizeClass];
  v9 = [a2 horizontalSizeClass];
  if (v8 != 2)
  {
    if (v8 != 1 || v9 != 2)
    {
      goto LABEL_13;
    }

    v4 = (v3 | 0x8000000000000000);
    v11 = v17;
    goto LABEL_12;
  }

  v11 = v7;
  if (v9 == 1)
  {
LABEL_12:
    v12 = *(v2 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
    *(v2 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind) = v4;
    v13 = v11;
    sub_10023F760(v12);

    v14 = [objc_opt_self() delegate];
    v15 = [v14 sceneManager];

    v16 = [v15 minifiedFlowController];
    [v16 activeRootBarKindDidChange];
  }

LABEL_13:
}

void sub_100025AB4(uint64_t a1, uint64_t a2)
{
  v4 = +[NSNotificationCenter defaultCenter];
  v5 = *(a1 + 32);
  v8 = @"sessionChange";
  v6 = [NSNumber numberWithInteger:a2];
  v9 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v4 postNotificationName:@"BATrackerSessionChanged" object:v5 userInfo:v7];
}

uint64_t sub_100025BF0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_100796594();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100025CF4()
{
  if (qword_100AD19E0 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF11C0);
  v2 = v0;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@: UIApplication will enter foreground", v5, 0xCu);
    sub_100025F24(v6);
  }

  swift_getObjectType();
  v8 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onWillEnterForeground];
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  sub_1000260E8(v10);
  sub_100025F8C(0xD000000000000015, 0x80000001008E5350, v10, v9);
  return sub_100007020(v10);
}

uint64_t sub_100025EA4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF11C0);
  sub_100008B98(v0, qword_100AF11C0);
  return sub_10079ACD4();
}

uint64_t sub_100025F24(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD9480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100025F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {

    v7 = sub_1007A2214();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v10[4] = sub_10025D774;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10021B6B0;
    v10[3] = &unk_100A2A5E0;
    v9 = _Block_copy(v10);

    [v4 appLaunchCoordinatorOnConditionMask:1 blockID:v7 performBlock:v9];
    _Block_release(v9);

    sub_100007020(a3);
  }
}

uint64_t sub_1000260B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000260E8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1000261B4()
{
  v0 = [objc_opt_self() books];
  v1 = [v0 userDefaults];

  qword_100AE1960 = 0xD000000000000019;
  *algn_100AE1968 = 0x80000001008D2440;
  byte_100AE1970 = 0;
  qword_100AE1978 = v1;
}

uint64_t sub_100026244(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = sub_1007A2214();
  v7 = [a4 objectForKey:v6];

  if (v7)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
    sub_1000076D4(&v11, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_1001F1160(&unk_100AD5B40);
  v8 = swift_dynamicCast();
  v9 = v11;
  if (!v8)
  {
    v9 = a3;
  }

  return v9 & 1;
}

void *MiniPlayerHostingTabBarController._viewControllersInTabBar()()
{
  v1 = v0;
  v2 = [v0 childViewControllers];
  sub_10000A7C4(0, &qword_100AD7CB0);
  v3 = sub_1007A25E4();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    v5 = OBJC_IVAR____TtC5Books33MiniPlayerHostingTabBarController_miniPlayerViewController;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v8 = sub_1007A3784();
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = *&v1[v5];
      if (v10 && v8 == v10)
      {
      }

      else
      {
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
        v7 = v3 & 0xC000000000000001;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return _swiftEmptyArrayStorage;
}

void sub_100026A70(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[BCJSConfiguration sharedInstance];
  v2 = [v1 _initWithConfiguration:v4];
  v3 = qword_100AF7740;
  qword_100AF7740 = v2;
}

id sub_100026E38()
{
  if (qword_100AF7548 != -1)
  {
    sub_100026E7C();
  }

  v1 = qword_100AF7540;

  return v1;
}

void sub_100026E90(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKRecentBookOpenResultTracker");
  v2 = qword_100AF7540;
  qword_100AF7540 = v1;
}

void sub_10002728C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000272D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000272E4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000272F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027304(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027314(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027334(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027344(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027354(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027364(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027374(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027384(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027394(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000273A4(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1000273D0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000273E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000273F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027400(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027410(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027420(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027440(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027450(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027460(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027470(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027480(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100027490(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000274A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000274B0(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1000274DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000274EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000274FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10002750C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002751C(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 scene];
  v7 = [v6 _isKeyWindowScene];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1000278EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002790C(uint64_t a1)
{
  v2 = objc_retainBlock(*(*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;
}

uint64_t sub_100027A1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100009A34;

  return sub_1000085FC(a1, v4);
}

uint64_t sub_100027AD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100027B80();
}

uint64_t sub_100027B80()
{
  sub_1007A26F4();
  *(v0 + 16) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_100027C14, v2, v1);
}

id sub_100027C14()
{

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    sub_1007A1024();
    v3 = objc_allocWithZone(type metadata accessor for LightLevelControllerWrapper());
    v4 = sub_100027D40(v2);
    sub_100027EF0(&qword_100AE89F0, type metadata accessor for LightLevelControllerWrapper);
    sub_1007A0FC4();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100027D40(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books27LightLevelControllerWrapper_lightLevelController] = a1;
  v2 = a1;
  LOBYTE(v8[0]) = [v2 isLowLight];
  sub_1001F1160(&unk_100AD1E40);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Books27LightLevelControllerWrapper_isLowLightSubject] = sub_10079B924();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for LightLevelControllerWrapper();
  v3 = objc_msgSendSuper2(&v9, "init", v8[0]);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_1006CD87C;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1006CD608;
  v8[3] = &unk_100A2CFA0;
  v5 = _Block_copy(v8);
  v6 = v3;

  [v2 addObserver:v6 changeHandler:v5];
  _Block_release(v5);

  return v6;
}

uint64_t sub_100027EB8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100027EF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002812C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100028220()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100028318()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_1000283DC();
}

uint64_t sub_1000283DC()
{
  *(v0 + 24) = sub_1007A26F4();
  *(v0 + 32) = sub_1007A26E4();

  return _swift_task_switch(sub_100028454, 0, 0);
}

uint64_t sub_100028454()
{
  v0[5] = sub_10079F534();
  v0[6] = sub_10079F524();
  v2 = sub_1007A2694();
  v0[7] = v2;
  v0[8] = v1;

  return _swift_task_switch(sub_10050DF28, v2, v1);
}

uint64_t sub_10002863C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_100796594();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796564();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

void PersonalizationEventDonor.configurationDidChange(_:)()
{
  v1 = v0;
  sub_100796574();
  if (!v14[3])
  {
    sub_100007840(v14, &unk_100AD5B40);
    goto LABEL_8;
  }

  sub_10079E784();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = *(v0 + OBJC_IVAR___BKPersonalizationEventDonor_remoteConfigurationContainer);
    goto LABEL_9;
  }

  v2 = OBJC_IVAR___BKPersonalizationEventDonor_remoteConfigurationContainer;
  v3 = *(v0 + OBJC_IVAR___BKPersonalizationEventDonor_remoteConfigurationContainer);
  if (!v15)
  {
LABEL_9:
    if (v3)
    {
      return;
    }

    v6 = 0;
LABEL_11:
    v7 = v6;
    v8 = sub_100796584();
    if (v8)
    {
      v9 = v8;
      sub_10079E784();
      *&v15 = sub_10079E754();
      *(&v15 + 1) = v10;
      sub_1007A36B4();
      if (*(v9 + 16))
      {
        v11 = sub_10000E2A4(v14);
        if (v12)
        {
          sub_100007484(*(v9 + 56) + 32 * v11, &v15);
          sub_10002899C(v14);

          if (*(&v16 + 1))
          {
            sub_1001F1160(&qword_100AD6710);
            if (swift_dynamicCast())
            {
              v13 = v14[0];
            }

            else
            {
              v13 = 0;
            }

            goto LABEL_21;
          }

LABEL_20:
          sub_100007840(&v15, &unk_100AD5B40);
          v13 = 0;
LABEL_21:
          sub_1000192D0(v6, v13);

          return;
        }
      }

      sub_10002899C(v14);
    }

    v15 = 0u;
    v16 = 0u;
    goto LABEL_20;
  }

  if (!v3)
  {

    return;
  }

  v4 = v3;
  v5 = sub_1007A3184();

  if (v5)
  {
    v6 = *(v1 + v2);
    goto LABEL_11;
  }
}

void sub_100028AD0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100028AEC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100028B40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100028B74(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

id sub_100028C04(void *a1, const char *a2)
{

  return [a1 setContentInset:{v3, v4, v5, v6}];
}

void sub_100028C24(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_10002920C()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100029258();
}

uint64_t sub_100029258()
{
  if (sub_10079E9F4())
  {
    if (qword_100AD19E0 != -1)
    {
      swift_once();
    }

    v1 = sub_10079ACE4();
    sub_100008B98(v1, qword_100AF11C0);
    v2 = v0;
    v3 = sub_10079ACC4();
    v4 = sub_1007A29D4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v2;
      *v6 = v2;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, v4, "%@: Application did become frontmost", v5, 0xCu);
      sub_100025F24(v6);
    }

    swift_getObjectType();
    v8 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onDidBecomeFrontmost];
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];
    sub_1000260E8(v10);
    v11 = 0x80000001008E53D0;
    v12 = 0xD000000000000014;
  }

  else
  {
    if (qword_100AD19E0 != -1)
    {
      swift_once();
    }

    v13 = sub_10079ACE4();
    sub_100008B98(v13, qword_100AF11C0);
    v14 = v0;
    v15 = sub_10079ACC4();
    v16 = sub_1007A29D4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "%@: Application will resign frontmost", v17, 0xCu);
      sub_100025F24(v18);
    }

    swift_getObjectType();
    v20 = &v14[OBJC_IVAR___BKAppLifecycleObserver_onWillResignFrontmost];
    swift_beginAccess();
    v10 = *v20;
    v9 = v20[1];
    sub_1000260E8(v10);
    v12 = 0xD000000000000015;
    v11 = 0x80000001008E53F0;
  }

  sub_100025F8C(v12, v11, v10, v9);
  return sub_100007020(v10);
}

void sub_100029574(void *a1, uint64_t a2, uint64_t a3, char a4, SEL *a5)
{
  v10 = 0;
  v11 = 0;
  v9 = a3;
  v12 = a4;
  v7 = a1;
  sub_10079B8C4();
  v8.receiver = v7;
  v8.super_class = type metadata accessor for TabBarController();
  objc_msgSendSuper2(&v8, *a5, a3);
}

uint64_t sub_10002961C()
{
  if (qword_100AD19E0 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AF11C0);
  v2 = v0;
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@: UIApplication did become active", v5, 0xCu);
    sub_100025F24(v6);
  }

  swift_getObjectType();
  v8 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onDidBecomeActive];
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  sub_1000260E8(v10);
  sub_100025F8C(0xD000000000000011, 0x80000001008E53B0, v10, v9);
  return sub_100007020(v10);
}

uint64_t sub_100029810()
{
  v1 = *(v0 + OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind);
  if ((v1 & 0x8000000000000000) != 0)
  {
    v5 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
    sub_10079B9A4();

    return v7;
  }

  else
  {
    v2 = v1;
    v3 = TabBarController.selectedItem.getter();

    return v3;
  }
}

void sub_1000298D8(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for MiniPlayerHostingTabBarController();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  sub_100023FDC(a5);
}

void *sub_100029960@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_10002999C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100029A58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100029A84@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100029B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007A2254();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100029CE0()
{
  if (sub_100787D6C(2, 26, 0, 0))
  {
    sub_10079D014();

    return sub_10079C2A4();
  }

  else
  {
    sub_10079C3E4();
    swift_getWitnessTable();
    sub_10079CE44();
    sub_10079C2A4();
    sub_1007A3454();
    swift_getWitnessTable();
    sub_10079C3E4();
    swift_getWitnessTable();
    sub_10079CE44();
    return sub_10079C2A4();
  }
}

uint64_t sub_100029E44()
{
  if (sub_100787D6C(2, 26, 0, 0))
  {
    sub_10079D014();
    sub_10079C2A4();
  }

  else
  {
    sub_10079C3E4();
    swift_getWitnessTable();
    sub_10079CE44();
    sub_10079C2A4();
    sub_1007A3454();
    swift_getWitnessTable();
    sub_10079C3E4();
    swift_getWitnessTable();
    sub_10079CE44();
    sub_10079C2A4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10002A044()
{
  if (sub_100787D6C(2, 26, 4, 0))
  {
    sub_10079C0D4();
  }

  else
  {
    sub_10079BF74();
  }

  return sub_10079C2A4();
}

uint64_t sub_10002A0AC()
{
  if (sub_100787D6C(2, 26, 4, 0))
  {
    sub_10079C0D4();
    sub_10079C2A4();
    sub_1001F18A4();
  }

  else
  {
    sub_10079BF74();
    sub_10079C2A4();
    sub_1001F18F0(&qword_100AD1DF0, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

uint64_t sub_10002A1A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A1C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10002A1E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A208(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10002A284()
{
  sub_1001F1234(&qword_100AD4988);
  sub_1001F1234(&qword_100ADBCE0);
  sub_10079C2A4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  sub_10079CCB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079C2A4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079CCB4();
  swift_getWitnessTable();
  sub_1001FA1F0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10079E1A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  sub_10079CCB4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  sub_10079CCB4();
  sub_10079CCB4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10079E184();
  return swift_getWitnessTable();
}

uint64_t sub_10002A8FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10002A928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002A9D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002AA7C()
{
  sub_1001F1234(&qword_100ADB490);
  sub_10079C2A4();
  sub_100005920(&unk_100AD1D10, &qword_100ADB490);
  swift_getWitnessTable();
  type metadata accessor for ContrastingLeadingTrailingView();
  return swift_getWitnessTable();
}

uint64_t sub_10002AB60()
{
  sub_1001F1234(&qword_100AD4C58);
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD4C60);
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E1A4();

  return swift_getWitnessTable();
}

uint64_t sub_10002AD1C()
{

  return swift_deallocObject();
}

uint64_t sub_10002ADC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD5350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD53A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002AEBC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10002AEC8()
{

  return swift_deallocObject();
}

uint64_t sub_10002B01C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10002B048@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10002B080()
{

  return swift_deallocObject();
}

uint64_t sub_10002B0B8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10002B0F0()
{

  return swift_deallocObject();
}

uint64_t sub_10002B158()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002B190()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002B1D8()
{
  v1 = sub_100797D34();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002B274()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002B2AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10002B2E4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002B36C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10002B398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10002B3D4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002B40C()
{

  return swift_deallocObject();
}

uint64_t sub_10002B4E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C794();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002B538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C6F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002B574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002B620(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002B6C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002B6DC()
{
  v1 = sub_1001F1160(&qword_100AD60E0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10002B770()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002B7AC()
{

  return swift_deallocObject();
}

uint64_t sub_10002B7E8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002B828()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002B870()
{

  return swift_deallocObject();
}

uint64_t sub_10002B8CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002B904()
{
  v1 = sub_100797E24();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10002B9C8()
{

  return swift_deallocObject();
}

uint64_t sub_10002BA10()
{

  return swift_deallocObject();
}

uint64_t sub_10002BA48()
{
  v1 = sub_100797E24();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10002BAD0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002BB08()
{

  return swift_deallocObject();
}

uint64_t sub_10002BB48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002BB80()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10002BBBC()
{

  return swift_deallocObject();
}

uint64_t sub_10002BBF4()
{

  return swift_deallocObject();
}

uint64_t sub_10002BC2C()
{

  return swift_deallocObject();
}

uint64_t sub_10002BCD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10002BCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(&qword_100AD6BC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002BDB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&qword_100AD6BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002BE68()
{
  v1 = (type metadata accessor for TipContentView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[11];
  v4 = sub_1001F1160(&qword_100AD6BC0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10002BFA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C5B4();
  *a1 = result;
  return result;
}

uint64_t sub_10002BFF8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10079C7B4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10002C05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD6D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C12C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001F1160(&qword_100AE3E60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1001F1160(&qword_100AD6E98);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v15 = sub_1001F1160(&qword_100AD6EA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v16 = sub_1001F1160(&qword_100AE3E70);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[14];
    goto LABEL_11;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v18 = *(a1 + a3[16]);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

  else
  {
    v19 = sub_10079BED4();
    if (*(*(v19 - 8) + 84) == a2)
    {
      v8 = v19;
      v12 = *(v19 - 8);
      v13 = a3[22];
      goto LABEL_11;
    }

    v20 = sub_10079ACE4();
    v21 = *(*(v20 - 8) + 48);
    v22 = a1 + a3[23];

    return v21(v22, a2, v20);
  }
}

uint64_t sub_10002C3FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1001F1160(&qword_100AE3E60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1001F1160(&qword_100AD6E98);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = sub_1001F1160(&qword_100AD6EA0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  result = sub_1001F1160(&qword_100AE3E70);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[14];
    goto LABEL_11;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[16]) = (a2 - 1);
    return result;
  }

  v19 = sub_10079BED4();
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[22];
    goto LABEL_11;
  }

  v20 = sub_10079ACE4();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[23];

  return v21(v22, a2, a2, v20);
}

double sub_10002C6CC(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4 + *a1;
  *a1 = result;
  return result;
}

uint64_t sub_10002C740()
{

  return swift_deallocObject();
}

uint64_t sub_10002C788()
{
  v1 = type metadata accessor for REActionMenuView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_10079CEE4();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1, v3))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  else
  {
  }

  v5 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10079CEE4();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[6];
  sub_1001F1160(&unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10079CAE4();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  v10 = v1[7];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  v12 = v1[8];
  sub_1001F1160(&unk_100ADB4F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10079C0E4();
    (*(*(v13 - 8) + 8))(v2 + v12, v13);
  }

  else
  {
  }

  v14 = v2 + v1[14];
  v15 = sub_10079D024();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  sub_1001F1160(&qword_100AE3E70);

  v18 = v2 + v1[15];
  if (!v17(v18, 1, v15))
  {
    (*(v16 + 8))(v18, v15);
  }

  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  sub_1000074E0(v2 + v1[20]);
  swift_unknownObjectWeakDestroy();
  v19 = v1[22];
  v20 = sub_10079BED4();
  (*(*(v20 - 8) + 8))(v2 + v19, v20);
  v21 = v1[23];
  v22 = sub_10079ACE4();
  (*(*(v22 - 8) + 8))(v2 + v21, v22);

  return swift_deallocObject();
}

uint64_t sub_10002CDCC()
{
  sub_10079E184();
  sub_10079E0A4();
  sub_10079CCB4();
  sub_10079DEF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10002CEE8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002CF20()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002CF68()
{

  return swift_deallocObject();
}

uint64_t sub_10002CFE8()
{

  return swift_deallocObject();
}

uint64_t sub_10002D020()
{

  return swift_deallocObject();
}

uint64_t sub_10002D058()
{

  return swift_deallocObject();
}

uint64_t sub_10002D094()
{

  return swift_deallocObject();
}

uint64_t sub_10002D0CC()
{

  return swift_deallocObject();
}

uint64_t sub_10002D104()
{

  return swift_deallocObject();
}

uint64_t sub_10002D194()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002D1D4()
{

  return swift_deallocObject();
}

uint64_t sub_10002D20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002D2B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002D35C()
{

  return swift_deallocObject();
}

uint64_t sub_10002D3B4()
{
  swift_unknownObjectRelease();
  sub_1000074E0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_10002D3F4()
{

  return swift_deallocObject();
}

uint64_t sub_10002D43C()
{
  sub_100266188(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10002D478()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002D4B0()
{

  return swift_deallocObject();
}

uint64_t sub_10002D500()
{

  return swift_deallocObject();
}

uint64_t sub_10002D538()
{

  return swift_deallocObject();
}

uint64_t sub_10002D570(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10079ACE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002D61C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10079ACE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002D6D8()
{
  v9 = *(v0 + 24);
  v1 = type metadata accessor for HalfSheet();
  v10 = *(*(v1 - 8) + 80);
  v2 = (v10 + 48) & ~v10;
  v3 = *(v9 - 8);
  v4 = *(v3 + 48);
  if (!v4(v0 + v2, 1, v9))
  {
    (*(v3 + 8))(v0 + v2, v9);
  }

  v5 = v0 + v2 + *(v1 + 52);
  sub_1007A3454();
  v6 = sub_10079E224();
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 32);
    if (!v4(v5 + v7, 1, v9))
    {
      (*(v3 + 8))(v5 + v7, v9);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10002D92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD7B88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D99C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD7B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002DA04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD7BD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002DA74()
{
  sub_1001F1234(&qword_100AD7B88);
  sub_10079C2A4();
  sub_10079D1C4();
  sub_10079C2A4();
  sub_10079CAC4();
  swift_getWitnessTable();
  sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle);
  swift_getOpaqueTypeMetadata2();
  sub_1001F1234(&qword_100AD7B98);
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E184();
  sub_1007A3454();
  sub_10079DEF4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1007A3454();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E1A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD7B80);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100005920(&qword_100AD7BA0, &qword_100AD7B80);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10079C2A4();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10002DF74()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002E0E0()
{

  return swift_deallocObject();
}

uint64_t sub_10002E138()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002E174()
{

  return swift_deallocObject();
}

uint64_t sub_10002E1B4()
{

  return swift_deallocObject();
}

uint64_t sub_10002E1F4()
{

  return swift_deallocObject();
}

uint64_t sub_10002E22C()
{

  return swift_deallocObject();
}

uint64_t sub_10002E274()
{

  return swift_deallocObject();
}

uint64_t sub_10002E340(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD84B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E3B8()
{
  sub_1001F1234(&qword_100AD84C0);
  sub_1001F1234(&qword_100AD84B8);
  sub_1001F1234(&qword_100AE4700);
  sub_1002859A0();
  sub_100005920(&qword_100AD8530, &qword_100AE4700);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002E4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A0F74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1001F1160(&qword_100AD8770);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002E5F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1007A0F74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1001F1160(&qword_100AD8770);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10002E728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A0F74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1001F1160(&qword_100AD8770);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10002E858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1007A0F74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_1001F1160(&qword_100AD8770);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10002E9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AE3E60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1001F1160(&qword_100AD6E98);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10002EAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001F1160(&qword_100AE3E60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1001F1160(&qword_100AD6E98);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10002EBF4()
{
  sub_10079E184();
  sub_10079E0A4();
  sub_10079CCB4();
  sub_10079DEF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10002ECF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007A2A84();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002ED4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007A2A44();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10002EDA4()
{

  return swift_deallocObject();
}

uint64_t sub_10002EDDC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002EE14()
{

  return swift_deallocObject();
}

uint64_t sub_10002EE54()
{

  return swift_deallocObject();
}

uint64_t sub_10002EE8C()
{

  return swift_deallocObject();
}

uint64_t sub_10002EECC()
{

  return swift_deallocObject();
}

uint64_t sub_10002EF5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1001F1160(&qword_100AE3E60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_1001F1160(&unk_100ADB5F0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[6];
    }

    else
    {
      v14 = sub_1001F1160(&qword_100AD6E98);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[8];
      }

      else
      {
        v15 = sub_1001F1160(&qword_100AD8B70);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = a1 + a3[12];
          v18 = *(v17 + 8);
          v19 = *v17 & 0x7FFFFFFF;
          if ((v18 & 0xF000000000000007) != 0)
          {
            return (v19 + 1);
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[10];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10002F12C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1001F1160(&qword_100AE3E60);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1001F1160(&unk_100ADB5F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_1001F1160(&qword_100AD6E98);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[8];
      }

      else
      {
        result = sub_1001F1160(&qword_100AD8B70);
        if (*(*(result - 8) + 84) != a3)
        {
          v18 = (a1 + a4[12]);
          *v18 = (a2 - 1);
          v18[1] = 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[10];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10002F360()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002F3E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002F418()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002F450()
{
  v1 = *(sub_1001F1160(&qword_100AD9470) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1001F1160(&qword_100AD9468) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);

  v6 = sub_100797D84();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = sub_1007981B4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v5, 1, v8))
  {
    (*(v9 + 8))(v0 + v5, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_10002F684()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002F6E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002F758()
{

  return swift_deallocObject();
}

uint64_t sub_10002F7A8()
{
  sub_1001F1234(&unk_100ADB470);
  sub_1001F1234(&qword_100AD9658);
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD9660);
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD9668);
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD9670);
  sub_1001F1234(&qword_100AD9678);
  sub_1001F1234(&qword_100AD9680);
  sub_1001F1234(&qword_100AD9688);
  swift_getTupleTypeMetadata();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E1A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD9698);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1002AAD94();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002FA54()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10002FA9C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10002FAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002FBA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002FC4C()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10002FC84()
{
  v1 = (type metadata accessor for RenameActionItem() - 8);
  v2 = (*(*v1 + 80) + 72) & ~*(*v1 + 80);

  sub_1000074E0(v0 + 24);
  sub_1000074E0(v0 + v2);
  sub_1000074E0(v0 + v2 + 40);

  sub_1000074E0(v0 + v2 + 88);
  sub_1000074E0(v0 + v2 + 128);
  v3 = v1[11];
  v4 = sub_100797144();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10002FD9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007A0F94();
  *a1 = result;
  return result;
}

uint64_t sub_10002FDF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007A02B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002FE38()
{
  sub_1001F1234(&qword_100AD9CC0);
  sub_1001F1234(&qword_100AD9CD8);
  sub_1002B33BC();
  sub_100005920(&qword_100AD9CE8, &qword_100AD9CD8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002FEFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1001F1160(&unk_100ADB5E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_10002FFC4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_1001F1160(&unk_100ADB5E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_100030080@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

uint64_t sub_1000300B4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_1000300EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progressValue];
  *a2 = v4;
  return result;
}

id sub_100030120@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

uint64_t sub_100030178()
{
  sub_1001F1234(&qword_100AD9EC8);
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E1A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1002B64E4();
  return swift_getWitnessTable();
}

unint64_t sub_1000302FC(unint64_t *a1)
{
  v1 = *a1;
  sub_1002B6C38(*a1);
  return sub_10033A0A4(v1);
}

uint64_t sub_100030348@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C6E4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000303DC()
{
  v1 = sub_1001F1160(&qword_100ADA048);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000304C4()
{
  v1 = sub_1001F1160(&qword_100ADA048);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100030558()
{
  v1 = sub_1001F1160(&unk_100ADA050);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = (v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_10003062C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100030664()
{

  return swift_deallocObject();
}

uint64_t sub_1000306B4()
{

  return swift_deallocObject();
}

uint64_t sub_1000306FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003074C()
{

  return swift_deallocObject();
}

uint64_t sub_100030784()
{

  return swift_deallocObject();
}

uint64_t sub_1000307C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100ADA2B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100030890(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F1160(&qword_100ADA2B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100030968()
{

  return swift_deallocObject();
}

uint64_t sub_1000309A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000309E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100030A1C()
{
  v1 = *(sub_1001F1160(&unk_100ADB5C0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);

  if (*(v0 + 32))
  {
  }

  v3 = sub_100796BB4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_100030B68()
{

  return swift_deallocObject();
}

uint64_t sub_100030C68()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100030CAC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100030CE4()
{

  return swift_deallocObject();
}

uint64_t sub_100030D1C()
{

  return swift_deallocObject();
}

uint64_t sub_100030D7C()
{

  return swift_deallocObject();
}

uint64_t sub_100030DB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100030E20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100030E58()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100030EAC()
{

  return swift_deallocObject();
}

uint64_t sub_100030EF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100030F3C()
{

  return swift_deallocObject();
}

uint64_t sub_100030F8C()
{

  return swift_deallocObject();
}

uint64_t sub_100030FD4()
{
  sub_10079C2A4();
  swift_getWitnessTable();
  type metadata accessor for PopoverListHighlight();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AEE070);
  sub_10079C2A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1002E5844();
  return swift_getWitnessTable();
}

uint64_t sub_1000311F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BKSplitViewContentHostingController_standardItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_100031250()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100031288()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10003134C()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10003144C()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100031534()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100031584()
{
  sub_1001F1234(&qword_100ADB0E8);
  sub_1001F1234(&qword_100AD1D70);
  sub_100005920(&qword_100ADB0F0, &qword_100ADB0E8);
  sub_100005920(&qword_100ADBBB0, &qword_100AD1D70);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100031698@<X0>(uint64_t a1@<X8>)
{
  result = sub_1002FEB3C();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1000316F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002FF910();
  *a1 = result;
  return result;
}

uint64_t sub_100031750@<X0>(uint64_t a1@<X8>)
{
  result = sub_1002FFFD0();
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_100031784@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100300608();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000317D8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003185C()
{
  swift_unknownObjectWeakDestroy();

  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000318FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADB458);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031974()
{
  v1 = sub_1001F1160(&unk_100ADB4D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100031AE0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100031B18()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100031B60()
{
  swift_unknownObjectRelease();

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100031BB0()
{

  return swift_deallocObject();
}

uint64_t sub_100031BF0()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100031C48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031C90()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031CD0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031D18()
{
  swift_unknownObjectRelease();

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100031D6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031DA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100031DEC()
{

  return swift_deallocObject();
}

uint64_t sub_100031E28(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1001F1160(&qword_100AE3E60);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = sub_1001F1160(&unk_100ADB5F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = sub_1001F1160(&qword_100AE3E70);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_10003200C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1001F1160(&qword_100AE3E60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = sub_1001F1160(&unk_100ADB5F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = sub_1001F1160(&qword_100AE3E70);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000322C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C504();
  *a1 = result;
  return result;
}

uint64_t sub_100032358()
{

  return swift_deallocObject();
}

uint64_t sub_1000323A8@<X0>(void *a1@<X8>)
{
  result = sub_10079C694();
  *a1 = v3;
  return result;
}

uint64_t sub_1000324C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C714();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100032524()
{
  v1 = type metadata accessor for ThemeOptionsView();
  v2 = *(*(v1 - 1) + 80);

  v3 = v0 + ((v2 + 32) & ~v2);
  sub_1000074E0(v3);

  swift_unknownObjectRelease();

  v4 = v1[8];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10079BC44();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[10];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10079CEE4();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v1[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10079CEE4();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v3 + v9, 1, v10))
    {
      (*(v11 + 8))(v3 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v1[12];
  sub_1001F1160(&unk_100ADB740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10079C104();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  v14 = v3 + v1[13];
  v15 = sub_10079D024();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (!v17(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  sub_1001F1160(&qword_100AE3E70);

  v18 = v3 + v1[14];
  if (!v17(v18, 1, v15))
  {
    (*(v16 + 8))(v18, v15);
  }

  v19 = v3 + v1[15];
  if (!v17(v19, 1, v15))
  {
    (*(v16 + 8))(v19, v15);
  }

  v20 = v3 + v1[16];
  if (!v17(v20, 1, v15))
  {
    (*(v16 + 8))(v20, v15);
  }

  return swift_deallocObject();
}

uint64_t sub_100032A60()
{
  sub_1001F1234(&qword_100ADB758);
  sub_100318554();
  return swift_getOpaqueTypeConformance2();
}

id sub_100032B34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationItem];
  *a2 = result;
  return result;
}

uint64_t sub_100032B78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_100032BB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleView];
  *a2 = result;
  return result;
}

id sub_100032C00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 largeTitleDisplayMode];
  *a2 = result;
  return result;
}

id sub_100032D9C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 bc_isPresentingCardStack];
  *a2 = result;
  return result;
}

uint64_t sub_100032DD0()
{

  return swift_deallocObject();
}

uint64_t sub_100032E2C()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100032EC0()
{
  sub_10079CFC4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E0A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100ADC2F8);
  sub_10079C2A4();
  sub_1001F1234(&qword_100ADC300);
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100005920(&qword_100ADC310, &qword_100ADC2F8);
  swift_getWitnessTable();
  sub_100005920(&qword_100ADC320, &qword_100ADC300);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000331E8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1001F1160(&qword_100AE3E60);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1001F1160(&qword_100AD6E98);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = sub_1001F1160(&qword_100AE3E70);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_1000333CC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1001F1160(&qword_100AE3E60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1001F1160(&qword_100AD6E98);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = sub_1001F1160(&qword_100AE3E70);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1000335E0()
{
  v1 = type metadata accessor for SampleHeaderView();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  if (*(v0 + v2 + 48))
  {
    sub_1000074E0(v3 + 24);
  }

  v4 = v1[7];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10079CEE4();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v7 = v1[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10079CEE4();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v3 + v7, 1, v8))
    {
      (*(v9 + 8))(v3 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[9];
  sub_1001F1160(&unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CAE4();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
  }

  v12 = v1[11];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10079BC44();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
  }

  v14 = v3 + v1[12];
  v15 = sub_10079D024();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v14, 1, v15))
  {
    (*(v16 + 8))(v14, v15);
  }

  sub_1001F1160(&qword_100AE3E70);

  return swift_deallocObject();
}

uint64_t sub_100033A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADC4F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033B58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_100033B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10079ACE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 68);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&qword_100ADC5B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 88);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100033CBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v8 = sub_10079ACE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 68);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&qword_100ADC5B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 88);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100033DEC(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADC6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100033E58()
{

  return swift_deallocObject();
}

uint64_t sub_100033E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADC710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033F00()
{
  v1 = type metadata accessor for RESliderView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 120))
  {
  }

  v3 = *(v1 + 68);
  v4 = sub_10079ACE4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v2 + *(v1 + 88);
  v6 = sub_100796BB4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_1001F1160(&qword_100ADC5B0);

  return swift_deallocObject();
}

uint64_t sub_1000341B8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003420C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return REActionMenuState.chapterTitle.setter(v1, v2);
}

uint64_t sub_100034250(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100334B58(v1, v2);
}

uint64_t sub_1000344B4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003455C()
{

  return swift_deallocObject();
}

uint64_t sub_10003459C()
{

  return swift_deallocObject();
}

uint64_t sub_1000345D4()
{

  return swift_deallocObject();
}

uint64_t sub_10003460C()
{

  return swift_deallocObject();
}

uint64_t sub_100034664()
{

  return swift_deallocObject();
}

uint64_t sub_1000346AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000346E4()
{

  return swift_deallocObject();
}

uint64_t sub_100034720()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100034758()
{
  v1 = sub_100796AD4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100034850()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003488C()
{

  return swift_deallocObject();
}

uint64_t sub_1000348C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100034924()
{

  return swift_deallocObject();
}

uint64_t sub_10003495C()
{
  v1 = sub_100796544();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_100796AD4();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100034AEC()
{

  return swift_deallocObject();
}

uint64_t sub_100034B24()
{
  v1 = sub_100796AD4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100034BD0()
{
  v9 = sub_100796544();
  v1 = *(v9 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1001F1160(&qword_100ADD5B8);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = (((((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2, v9);

  (*(v5 + 8))(v0 + v6, v4);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100034D84()
{

  return swift_deallocObject();
}

uint64_t sub_100034DBC()
{
  v1 = sub_1001F1160(&qword_100ADD5B8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100034EA8()
{

  return swift_deallocObject();
}

uint64_t sub_100034EE0()
{

  return swift_deallocObject();
}

uint64_t sub_100034F30()
{

  return swift_deallocObject();
}

uint64_t sub_100034F70()
{

  return swift_deallocObject();
}

uint64_t sub_100035004(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10079EF54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000350B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10079EF54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100035158()
{

  return swift_deallocObject();
}

uint64_t sub_1000351A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000351F0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100035228()
{

  return swift_deallocObject();
}

uint64_t sub_100035288()
{

  return swift_deallocObject();
}

uint64_t sub_1000352C0()
{

  return swift_deallocObject();
}

uint64_t sub_1000352FC()
{

  return swift_deallocObject();
}

uint64_t sub_100035344()
{

  return swift_deallocObject();
}

uint64_t sub_1000353E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100035448()
{
  sub_1001F1234(&qword_100ADBC68);
  sub_10079C2A4();
  sub_100365254();
  return swift_getWitnessTable();
}

uint64_t sub_1000354C0()
{

  return swift_deallocObject();
}

uint64_t sub_100035524()
{

  return swift_deallocObject();
}

uint64_t sub_100035618@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10003565C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003569C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000356EC()
{

  return swift_deallocObject();
}

uint64_t sub_10003572C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003578C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000357C4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100035804(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(&unk_100ADB5E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000358C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&unk_100ADB5E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100035978()
{
  v1 = type metadata accessor for SidebarAccountView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079BC44();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100035AD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C674();
  *a1 = result;
  return result;
}

uint64_t sub_100035C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100035CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100035D68()
{

  return swift_deallocObject();
}

uint64_t sub_100035DD0()
{

  return swift_deallocObject();
}

uint64_t sub_100035E1C()
{

  return swift_deallocObject();
}

uint64_t sub_100035E54()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100035E8C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100035F40()
{

  return swift_deallocObject();
}

uint64_t sub_100035F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AD6E98);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100036048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F1160(&qword_100AD6E98);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003612C()
{
  v1 = type metadata accessor for OptionSlider();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  sub_1001F1160(&unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_10079CAE4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000362A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADF2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADF2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036380()
{
  v1 = type metadata accessor for OptionSlider();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  sub_1001F1160(&unk_100ADB4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_10079CAE4();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000364E0()
{
  sub_1001F1234(&qword_100ADF290);
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079D1C4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100ADF298);
  sub_1001F1234(&qword_100ADF2A0);
  swift_getTupleTypeMetadata3();
  sub_10079E5C4();
  swift_getWitnessTable();
  type metadata accessor for OptionsAdaptiveStack();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E184();

  return swift_getWitnessTable();
}

uint64_t sub_100036660()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000366A0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000366D8()
{

  return swift_deallocObject();
}

uint64_t sub_100036714()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003677C()
{

  return swift_deallocObject();
}

uint64_t sub_1000367CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100036878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000369C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000369FC()
{

  return swift_deallocObject();
}

uint64_t sub_100036A3C()
{

  return swift_deallocObject();
}

uint64_t sub_100036A74()
{

  return swift_deallocObject();
}

uint64_t sub_100036ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = _s5StateO4TurnVMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100036B68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = _s5StateO4TurnVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100036C6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003AC854(v1, v2);
}

uint64_t sub_100036CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADFEE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100036D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADFEE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100036DD8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100796C04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100036E84(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100796C04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100036F28()
{

  return swift_deallocObject();
}

uint64_t sub_100036F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(&qword_100AD6BC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100037038(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&qword_100AD6BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100037110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AF6390);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000371DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F1160(&qword_100AF6390);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000372FC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037344()
{

  return swift_deallocObject();
}

uint64_t sub_10003737C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000373D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037410()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037458()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000374F8()
{

  return swift_deallocObject();
}

uint64_t sub_100037560()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1000375EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE1100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003766C()
{
  sub_1001F1234(&qword_100AE10A8);
  sub_10079CCC4();
  sub_1003C9D80();
  sub_1003CA35C(&qword_100AD8DC8, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000377A0()
{
  swift_unknownObjectWeakDestroy();

  sub_1000074E0((v0 + 7));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003780C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100037848()
{

  return swift_deallocObject();
}

uint64_t sub_1000378A0()
{
  swift_unknownObjectRelease();
  sub_1000074E0(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_100037918()
{

  return swift_deallocObject();
}

uint64_t sub_100037958()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000379AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE17E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037A50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE1808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100037AC0(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE1808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037B34()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100037B6C()
{

  return swift_deallocObject();
}

uint64_t sub_100037BA4()
{

  return swift_deallocObject();
}

uint64_t sub_100037BDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037C24()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100037C5C()
{

  return swift_deallocObject();
}

uint64_t sub_100037CC4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037D3C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037D9C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037DEC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037E3C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE1BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037EA8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100037EE0()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100037F30()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100037F80()
{
  sub_1001F1234(&qword_100AE1BF0);
  sub_10079E3F4();
  sub_100005920(&qword_100AE1C00, &qword_100AE1BF0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003803C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003807C()
{

  return swift_deallocObject();
}

uint64_t sub_1000380C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100038100()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100038150()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000381F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10003821C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10003824C()
{
  v1 = sub_1007974F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1001F1160(&qword_100AE2220);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1000383B0()
{
  v1 = sub_1007974F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_1001F1160(&qword_100AE2228);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100038514()
{
  v1 = sub_1007974F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100038634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_100038660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

id sub_100038690@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 seriesFilterMode];
  *a2 = result;
  return result;
}

id sub_1000386E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 seriesSortMode];
  *a2 = result;
  return result;
}

uint64_t sub_10003875C()
{
  v1 = sub_1007991C4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void *sub_100038840(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000388A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000388E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100038928()
{

  return swift_deallocObject();
}

uint64_t sub_1000389D8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100038A10()
{

  return swift_deallocObject();
}

uint64_t sub_100038A50()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_100038A8C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100797D94();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1001F1160(&qword_100AE2578);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100798034();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_100798234();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_100038C20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100797D94();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1001F1160(&qword_100AE2578);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100798034();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_100798234();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_100038DCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100038E04()
{
  v1 = (_s5StateO21CapturingTurnSnapshotVMa(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = sub_1007A0F74();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);

  v4(v0 + v2 + v1[9], v3);

  return swift_deallocObject();
}

uint64_t sub_100038F20()
{
  v1 = *(_s5StateO7TurningVMa(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);

  v3 = sub_1007A0F74();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = _s5StateO4TurnVMa(0);

  v4(v0 + v2 + v5[7], v3);

  return swift_deallocObject();
}

uint64_t sub_100039058()
{

  return swift_deallocObject();
}

uint64_t sub_10003909C()
{
  v1 = (_s5StateO21CapturingDragSnapshotVMa(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = sub_1007A0F74();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);

  v5 = v0 + v2 + v1[8];
  sub_1001F1160(&qword_100AD8770);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v4(v5, v3);
    v7 = v5 + *(sub_1001F1160(&qword_100AD8A70) + 48);
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_6;
    }

    v7 = v5;
  }

  v4(v7, v3);
LABEL_6:

  return swift_deallocObject();
}

uint64_t sub_100039224()
{
  v1 = (_s5StateO8DraggingVMa(0) - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);

  v3 = sub_1007A0F74();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);

  v5 = v0 + v2 + v1[9];
  sub_1001F1160(&qword_100AD8770);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v4(v5, v3);
    v7 = v5 + *(sub_1001F1160(&qword_100AD8A70) + 48);
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_6;
    }

    v7 = v5;
  }

  v4(v7, v3);
LABEL_6:

  return swift_deallocObject();
}

uint64_t sub_1000393C0()
{
  v1 = *(_s5StateO9ResettingVMa(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = sub_1007A0F74();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = _s5StateO4TurnVMa(0);

  v5(v3 + v6[7], v4);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100039504()
{
  v1 = *(_s5StateO7TurningVMa(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  swift_unknownObjectRelease();

  v3 = sub_1007A0F74();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v5 = _s5StateO4TurnVMa(0);

  v4(v0 + v2 + v5[7], v3);

  return swift_deallocObject();
}

uint64_t sub_10003964C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10079ACE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000396F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10079ACE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000397F8()
{
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_100423A9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100423AF0();
  swift_getWitnessTable();
  sub_10079E1A4();
  return swift_getWitnessTable();
}

uint64_t sub_100039900()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100039938()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000399A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100039A04()
{

  return swift_deallocObject();
}

uint64_t sub_100039A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100039AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE2CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100039CDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039F10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_100039F58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_100039F9C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100039FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079C104();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10003A040(uint64_t a1, uint64_t a2)
{
  v4 = sub_10079C104();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10003A0B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(&qword_100AD6BC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10003A16C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(&qword_100AD6BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003A234@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079C7F4();
  *a1 = result;
  return result;
}

uint64_t sub_10003A2EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003A32C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1007A3854();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 68)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10003A3D8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1007A3854();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 68)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003A480()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003A4B8()
{
  v1 = sub_1007A3854();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_10003A598@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BKMenuOnLeft];
  *a2 = result;
  return result;
}

uint64_t sub_10003A5E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003AA9C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1001F1160(&unk_100AE3E50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_13;
  }

  v13 = sub_1001F1160(&qword_100AE3E60);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v14 = sub_1001F1160(&qword_100AE3E68);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[22];
    goto LABEL_13;
  }

  v16 = sub_1001F1160(&qword_100AE3E70);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[23];

  return v17(v18, a2, v16);
}

uint64_t sub_10003ACD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = sub_1001F1160(&unk_100AE3E50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1001F1160(&unk_100ADB5E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_11;
  }

  v13 = sub_1001F1160(&qword_100AE3E60);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = sub_1001F1160(&qword_100AE3E68);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[22];
    goto LABEL_11;
  }

  v16 = sub_1001F1160(&qword_100AE3E70);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[23];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10003AFEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1007A0444();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003B044@<X0>(void *a1@<X8>)
{
  result = sub_10079C554();
  *a1 = v3;
  return result;
}

uint64_t sub_10003B09C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C734();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003B0CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10079C704();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003B110()
{
  v1 = type metadata accessor for ReadingSettingsView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000074E0(v2);
  v3 = v1[5];
  v4 = sub_1001F1160(&unk_100AE3E50);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[11];
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10079BC44();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[13];
  sub_1001F1160(&unk_100ADB4C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10079CEE4();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079CEE4();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  sub_10002AEBC(*(v2 + v1[15]), *(v2 + v1[15] + 8));
  sub_10002AEBC(*(v2 + v1[16]), *(v2 + v1[16] + 8));
  sub_10002AEBC(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  v13 = v1[22];
  v14 = sub_1001F1160(&qword_100AE3E68);
  (*(*(v14 - 8) + 8))(v2 + v13, v14);
  v15 = v2 + v1[23];
  v16 = sub_10079D024();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  sub_1001F1160(&qword_100AE3E70);

  return swift_deallocObject();
}

uint64_t sub_10003B694@<X0>(void *a1@<X8>)
{
  result = sub_10079C614();
  *a1 = v3;
  return result;
}

uint64_t sub_10003B6E8()
{

  return swift_deallocObject();
}

uint64_t sub_10003B728()
{
  sub_1001F1234(&qword_100AE4548);
  sub_1004605A8(&qword_100AE45A8, &qword_100AE4548, &unk_1008270E8, sub_100460438);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10003B7C0()
{
  sub_1007A2654();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_10079E284();
  swift_getWitnessTable();
  sub_10079E564();
  return swift_getWitnessTable();
}

uint64_t sub_10003B950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100ADB388);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003BA28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F1160(&qword_100ADB388);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10003BAFC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003BB34()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003BB7C()
{

  return swift_deallocObject();
}

uint64_t sub_10003BBB4()
{

  return swift_deallocObject();
}

uint64_t sub_10003BBEC()
{

  return swift_deallocObject();
}

uint64_t sub_10003BC24()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003BC5C()
{

  return swift_deallocObject();
}

uint64_t sub_10003BC9C()
{

  return swift_deallocObject();
}

uint64_t sub_10003BCE8()
{
  v1 = sub_100796BB4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003BDE8()
{
  v1 = sub_100796BB4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003BEF0()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10003BFE0()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10003C0B8()
{
  v1 = sub_10079ACE4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003C1B8()
{
  v1 = sub_1001F1160(&unk_100AE4DA0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10003C270()
{
  v1 = sub_1001F1160(&unk_100AE4DA0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10003C358()
{

  return swift_deallocObject();
}

uint64_t sub_10003C3D8()
{

  return swift_deallocObject();
}

uint64_t sub_10003C410()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003C448()
{

  return swift_deallocObject();
}

uint64_t sub_10003C4A4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003C4DC()
{

  return swift_deallocObject();
}

uint64_t sub_10003C524()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003C55C()
{

  return swift_deallocObject();
}

uint64_t sub_10003C5A4()
{

  return swift_deallocObject();
}

uint64_t sub_10003C5E0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10003C628()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10003C67C()
{

  return swift_deallocObject();
}

uint64_t sub_10003C6B4()
{

  return swift_deallocObject();
}

uint64_t sub_10003C71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F1160(&unk_100ADB5E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003C7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1001F1160(&unk_100ADB5E0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003C8A8()
{
  v1 = type metadata accessor for ChapterScrubbingView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10079BC44();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_1000074E0(v3 + v1[7]);

  return swift_deallocObject();
}

uint64_t sub_10003CA1C()
{
  v1 = type metadata accessor for ChapterScrubbingView();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_10079BED4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10079BC44();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  else
  {
  }

  sub_1000074E0(v7 + v1[7]);

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_10003CC18()
{

  return swift_deallocObject();
}

uint64_t sub_10003CDF8()
{

  return swift_deallocObject();
}

uint64_t sub_10003CE34()
{

  return swift_deallocObject();
}

uint64_t sub_10003CEC0()
{

  return swift_deallocObject();
}

uint64_t sub_10003CEF8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003CF30()
{

  return swift_deallocObject();
}

uint64_t sub_10003CF88()
{

  return swift_deallocObject();
}

uint64_t sub_10003CFCC()
{

  return swift_deallocObject();
}

uint64_t sub_10003D054()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003D08C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003D0EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003D144()
{

  return swift_deallocObject();
}

uint64_t sub_10003D180@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  return sub_100009864(v3 + v4, a2);
}

uint64_t sub_10003D1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003D28C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D330()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003D388()
{

  return swift_deallocObject();
}

uint64_t sub_10003D3C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003D400()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003D448()
{

  return swift_deallocObject();
}

uint64_t sub_10003D480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 3);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1007A0634();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003D524(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 3) = a2 + 1;
  }

  else
  {
    v7 = sub_1007A0634();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D624()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003D664()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003D6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003D750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003D804()
{

  swift_unknownObjectWeakDestroy();
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

id sub_10003D858@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

id sub_10003D88C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 notFinished];
  *a2 = result;
  return result;
}

uint64_t sub_10003D8C8()
{

  return swift_deallocObject();
}

uint64_t sub_10003D90C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003D944()
{

  return swift_deallocObject();
}

uint64_t sub_10003D9AC()
{
  swift_unknownObjectWeakDestroy();

  sub_1000074E0((v0 + 7));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003DA24()
{
  swift_unknownObjectWeakDestroy();

  sub_1000074E0((v0 + 7));
  swift_unknownObjectRelease();
  sub_1000074E0((v0 + 13));

  return swift_deallocObject();
}

uint64_t sub_10003DA9C()
{
  swift_unknownObjectWeakDestroy();

  sub_1000074E0((v0 + 7));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003DB1C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003DB6C()
{
  swift_unknownObjectWeakDestroy();

  sub_1000074E0((v0 + 7));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003DC54()
{
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD97F8);
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD7228);
  sub_10079C2A4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10020AEE4();
  swift_getWitnessTable();
  sub_100005920(&unk_100AF6660, &qword_100AD97F8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100005920(&qword_100AD7220, &qword_100AD7228);
  return swift_getWitnessTable();
}

id sub_10003DEDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bc_currentLifeCycleState];
  *a2 = result;
  return result;
}

uint64_t sub_10003DF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001F1160(qword_100ADC258);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003DFCC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F1160(qword_100ADC258);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003E07C()
{
  v1 = (type metadata accessor for REScrubberView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[8];
  v4 = sub_1001F1160(qword_100ADC258);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10003E1D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003E25C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE7958);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E2E4()
{

  return swift_deallocObject();
}

uint64_t sub_10003E338()
{
  v1 = (type metadata accessor for REScrubberView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[8];
  v4 = sub_1001F1160(qword_100ADC258);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_10003E490()
{

  return swift_deallocObject();
}

uint64_t sub_10003E504()
{

  return swift_deallocObject();
}

uint64_t sub_10003E640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10003E684()
{
  v1 = sub_1001F1160(&unk_100ADA050);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10003E774()
{
  v1 = sub_1001F1160(&unk_100ADA050);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10003E81C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003E8A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003E8E0()
{

  return swift_deallocObject();
}

uint64_t sub_10003E920()
{

  return swift_deallocObject();
}

uint64_t sub_10003E970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003EA1C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003EAC0()
{

  return swift_deallocObject();
}

uint64_t sub_10003EB18()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10003EBBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10003EBE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10003EC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE84A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003ECD0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10079CA64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003ED7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10079CA64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003EE6C()
{

  return swift_deallocObject();
}

uint64_t sub_10003EEA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003EEDC()
{

  return swift_deallocObject();
}

uint64_t sub_10003EF34()
{
  sub_1000074E0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10003EF94()
{

  return swift_deallocObject();
}

uint64_t sub_10003F010()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003F06C()
{

  return swift_deallocObject();
}

id sub_10003F0A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 readerShowStatusBar];
  *a2 = result;
  return result;
}

uint64_t sub_10003F0D8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003F110@<X0>(_BYTE *a1@<X8>)
{
  swift_getObjectType();
  result = sub_10079F7A4();
  *a1 = result & 1;
  return result;
}

double sub_10003F19C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*(*a1 + 16) + 120);
  *a2 = result;
  return result;
}

uint64_t sub_10003F208()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003F248()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_10003F2B8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003F2F0()
{

  return swift_deallocObject();
}

uint64_t sub_10003F328()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003F360()
{

  return swift_deallocObject();
}

uint64_t sub_10003F3A8()
{

  return swift_deallocObject();
}

uint64_t sub_10003F3E0()
{

  return swift_deallocObject();
}

uint64_t sub_10003F428()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003F460()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10003F498()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003F514()
{

  return swift_deallocObject();
}

uint64_t sub_10003F574()
{

  return swift_deallocObject();
}

uint64_t sub_10003F5AC()
{

  return swift_deallocObject();
}

uint64_t sub_10003F604()
{

  return swift_deallocObject();
}

uint64_t sub_10003F668()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003F6D0()
{

  return swift_deallocObject();
}

uint64_t sub_10003F71C()
{

  return swift_deallocObject();
}

uint64_t sub_10003F75C()
{

  return swift_deallocObject();
}

uint64_t sub_10003F794()
{
  v1 = sub_1001F1160(&unk_100AE9048);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10003F870()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003F8A8()
{

  return swift_deallocObject();
}

uint64_t sub_10003F8EC()
{

  return swift_deallocObject();
}

uint64_t sub_10003F944()
{

  return swift_deallocObject();
}

uint64_t sub_10003F984()
{

  return swift_deallocObject();
}

uint64_t sub_10003F9DC()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003FA28()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003FA60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003FAA4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003FADC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    if ((*(a1 + 24) & 0xF000000000000007) != 0)
    {
      return (*(a1 + 16) & 0x7FFFFFFFu) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1001F1160(&qword_100AD8B70);
    v8 = *(v7 - 8);
    if (*(v8 + 84) == a2)
    {
      v9 = v7;
      v10 = *(v8 + 48);
      v11 = a1 + *(a3 + 28);

      return v10(v11, a2, v9);
    }

    else
    {
      v12 = sub_1001F1160(&qword_100AE96C8);
      v13 = *(*(v12 - 8) + 48);
      v14 = a1 + *(a3 + 32);

      return v13(v14, a2, v12);
    }
  }
}

uint64_t sub_10003FC58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    v8 = sub_1001F1160(&qword_100AD8B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1001F1160(&qword_100AE96C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10003FDA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD8E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FE2C()
{

  return swift_deallocObject();
}

uint64_t sub_10003FE84()
{

  return swift_deallocObject();
}

uint64_t sub_10003FEBC()
{
  v1 = sub_10079FD44();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10003FF5C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10003FF94()
{

  return swift_deallocObject();
}

uint64_t sub_10003FFE0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100040060@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100795E14();
  *a1 = result;
  return result;
}

uint64_t sub_10004008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100040138(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000406D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100040718()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100040750()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100040788()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000408D0()
{

  return swift_deallocObject();
}

uint64_t sub_100040910()
{

  return swift_deallocObject();
}

uint64_t sub_100040950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100797144();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000409FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100797144();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100040AA0()
{

  return swift_deallocObject();
}

uint64_t sub_100040B1C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100040B54()
{

  return swift_deallocObject();
}

uint64_t sub_100040B94()
{

  return swift_deallocObject();
}

uint64_t sub_100040BD4()
{

  return swift_deallocObject();
}

uint64_t sub_100040C14()
{

  return swift_deallocObject();
}

uint64_t sub_100040C54()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100040C8C()
{

  return swift_deallocObject();
}

uint64_t sub_100040CC4()
{

  return swift_deallocObject();
}

uint64_t sub_100040CFC()
{

  return swift_deallocObject();
}

uint64_t sub_100040D34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100040D6C()
{

  sub_1000074E0(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100040DAC()
{

  return swift_deallocObject();
}

id sub_100040DE4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

uint64_t sub_100040E34()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_100040E6C()
{

  return swift_deallocObject();
}

uint64_t sub_100040EDC()
{

  return swift_deallocObject();
}

uint64_t sub_100040F34()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for PopoverListHighlight();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  if (*(v3 + 16))
  {
  }

  v4 = *(v2 + 52);
  sub_1001F1160(&unk_100ADB730);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10079BC44();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v3 + *(v2 + 56), v1);

  return swift_deallocObject();
}

uint64_t sub_1000410D0()
{
  sub_1001F1234(&qword_100AE4630);
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1001F1234(&qword_100AEA288);
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD7B98);
  sub_10079C2A4();
  sub_1001F1234(&qword_100AD7B80);
  sub_100005920(&qword_100AE46E0, &qword_100AE4630);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100005920(&qword_100AEA290, &qword_100AEA288);
  swift_getWitnessTable();
  sub_100005920(&unk_100AD7C30, &qword_100AD7B98);
  swift_getWitnessTable();
  sub_100005920(&qword_100AD7BA0, &qword_100AD7B80);
  swift_getOpaqueTypeMetadata2();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_10079CCB4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}