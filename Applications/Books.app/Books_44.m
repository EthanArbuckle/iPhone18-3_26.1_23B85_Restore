Swift::Void __swiftcall BookReaderModuleHost.requestClose(_:)(Swift::Bool a1)
{
  v3 = v1;
  v4 = sub_10079ACC4();
  v5 = sub_1007A29D4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_1005A42D4();
    v10 = sub_1000070F4(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s requestClose", v6, 0xCu);
    sub_1000074E0(v7);
  }

  v11 = sub_1005AA0A0();
  if (v11)
  {

    [v11 requestClose:a1];
  }
}

uint64_t BookReaderModuleHost.bookPositionProcessor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___REBookReaderModuleHost_bookPositionProcessor;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = *(v1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v4)
  {
    v5 = *(v1 + v3);
    swift_unknownObjectRetain();
    v6 = v4;
    [v6 setBookPositionProcessor:v5];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void (*BookReaderModuleHost.bookPositionProcessor.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___REBookReaderModuleHost_bookPositionProcessor;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1005A7314;
}

void sub_1005A7314(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
    if (v5)
    {
      [v5 setBookPositionProcessor:*(v4 + v3[4])];
    }
  }

  free(v3);
}

char *BookReaderModuleHost.__allocating_init(hostEnvironmentProvider:book:annotationProvider:storeController:styleManager:engagementManager:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v6);
  sub_1007A1774();
  v15 = sub_1007A1764();
  v16 = objc_allocWithZone(v7);
  v17 = sub_1005A76B0(a1, a2, a3, a4, a5, a6, v15);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

char *BookReaderModuleHost.init(hostEnvironmentProvider:book:annotationProvider:storeController:styleManager:engagementManager:)(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  ObjectType = swift_getObjectType();
  sub_1007A1774();
  v13 = sub_1007A1764();
  v14 = objc_allocWithZone(ObjectType);
  v15 = sub_1005A76B0(a1, a2, a3, a4, a5, a6, v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

char *sub_1005A76B0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v8 = v7;
  v70 = a6;
  v63 = a4;
  v64 = a5;
  v61 = a2;
  v62 = a3;
  ObjectType = swift_getObjectType();
  v68 = sub_10079ACE4();
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AEBCA0);
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  __chkstk_darwin(v12);
  v15 = &v61 - v14;
  v16 = sub_100796C04();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR___REBookReaderModuleHost_contentOpenAnimator] = 0;
  v20 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfoTracker;
  type metadata accessor for AppIntentsAssetViewControllerInfoTracker();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74[0] = 0;
  sub_1001F1160(&unk_100AEBC90);
  sub_10079B964();
  *(v21 + OBJC_IVAR____TtC5Books40AppIntentsAssetViewControllerInfoTracker_task) = 0;
  swift_unknownObjectWeakAssign();
  *&v8[v20] = v21;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_appIntentsInfoChangeObserver] = 0;
  v22 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  *&v8[v22] = [objc_allocWithZone(BCAppIntentsAssetViewControllerInfo) init];
  v23 = &v8[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  *v23 = 0;
  v23[1] = 0;
  sub_10000A7C4(0, &qword_100AD20A0);
  sub_1007A33F4();
  v24 = &v8[OBJC_IVAR___REBookReaderModuleHost_hostID];
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v25 = sub_100796BC4();
  v27 = v26;
  (*(v17 + 8))(v19, v16);
  *v24 = v25;
  v24[1] = v27;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_methodCalls] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_bookPositionProcessor] = 0;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_subscribers] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_readerHostViewConstraints] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_fixedSizeConstraints] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_snapshotView] = 0;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_blurView] = 0;
  v8[OBJC_IVAR___REBookReaderModuleHost_inBackground] = 0;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_hostEnvironmentProvider] = a1;
  v28 = v61;
  v29 = v62;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_book] = v61;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_annotationProvider] = v29;
  v30 = v63;
  v31 = v64;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_storeController] = v63;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_styleManager] = v31;
  v32 = v70;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_engagementManager] = v70;
  v33 = &v8[OBJC_IVAR___REBookReaderModuleHost_contentSizeCategoryManager];
  *v33 = a7;
  v33[1] = &protocol witness table for ContentSizeCategoryManager;
  v69 = a1;
  swift_unknownObjectRetain();
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  v70 = a7;

  AEBookInfo.bookEntity.getter(v74);
  v39 = objc_allocWithZone(type metadata accessor for EpubBookParserWrapper());
  v40 = v34;
  v41 = v36;
  v42 = sub_1005AA460(v74, v34, v41, [v39 init]);
  v63 = v40;

  v64 = v41;
  *&v8[OBJC_IVAR___REBookReaderModuleHost_bookProviderService] = v42;
  v73.receiver = v8;
  v73.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v73, "initWithNibName:bundle:", 0, 0);
  sub_1005A7EAC();
  sub_10079FCE4();
  sub_10079FAC4();
  swift_beginAccess();

  sub_1001F1160(&unk_100AE8330);
  sub_10079B974();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AEBCB0, &unk_100AEBCA0);
  v44 = v65;
  v45 = sub_10079BB04();

  v46 = v15;
  v47 = v68;
  (v66)[1](v46, v44);
  *&v43[OBJC_IVAR___REBookReaderModuleHost_appIntentsInfoChangeObserver] = v45;

  v48 = v67;
  (*(v71 + 16))(v67, &v43[OBJC_IVAR___REBookReaderModuleHost_log], v47);
  v49 = sub_10079ACC4();
  v50 = sub_1007A29D4();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v66 = v35;
    v52 = v51;
    v53 = swift_slowAlloc();
    v65 = v37;
    v54 = v53;
    v74[0] = v53;
    *v52 = 136446210;
    v55 = sub_1005A42D4();
    v57 = v38;
    v58 = sub_1000070F4(v55, v56, v74);

    *(v52 + 4) = v58;
    v38 = v57;
    _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s init", v52, 0xCu);
    sub_1000074E0(v54);
    v37 = v65;

    v35 = v66;
  }

  (*(v71 + 8))(v48, v47);
  sub_1001F1160(&unk_100AEB3D0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_10080B690;
  *(v59 + 32) = sub_10079B5B4();
  *(v59 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_1007A2C54();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v43;
}

uint64_t sub_1005A7EAC()
{
  v0 = sub_1007A2E74();
  v13 = *(v0 - 8);
  __chkstk_darwin(v0);
  v12 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v11 - v3;
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  sub_1007A2E84();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100017D44(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher);
  sub_10079BB04();

  swift_beginAccess();
  sub_1001F1160(&unk_100AF27C0);
  sub_100005920(&qword_100AEBCC0, &unk_100AF27C0);
  sub_10079B864();
  swift_endAccess();

  v7 = [v5 defaultCenter];
  v8 = v12;
  sub_1007A2E84();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B864();
  swift_endAccess();

  v9 = *(v13 + 8);
  v9(v8, v0);
  return (v9)(v4, v0);
}

void sub_1005A81E4(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = v1;
    }

    else
    {
      v4 = [objc_allocWithZone(BCAppIntentsAssetViewControllerInfo) init];
    }

    v5 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
    swift_beginAccess();
    v6 = *&v3[v5];
    *&v3[v5] = v4;
    v7 = v1;
    v8 = v4;

    type metadata accessor for BookReaderModuleHost();
    sub_1007A3004();
  }
}

id BookReaderModuleHost.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10079ACE4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v0 + OBJC_IVAR___REBookReaderModuleHost_log, v2, v4);
  v7 = v0;
  v8 = sub_10079ACC4();
  v9 = sub_1007A29D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = ObjectType;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    v13 = sub_1005A42D4();
    v15 = sub_1000070F4(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s deinit", v11, 0xCu);
    sub_1000074E0(v12);

    ObjectType = v17;
  }

  (*(v3 + 8))(v6, v2);
  v19.receiver = v7;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "dealloc");
}

void sub_1005A86A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR___REBookReaderModuleHost_readerHostViewConstraints))
    {
      v2 = OBJC_IVAR___REBookReaderModuleHost_fixedSizeConstraints;
      swift_beginAccess();
      if (*&v1[v2])
      {
        v3 = objc_opt_self();
        sub_10000A7C4(0, &qword_100AE9010);

        isa = sub_1007A25D4().super.isa;

        [v3 activateConstraints:isa];

        v5 = sub_1007A25D4().super.isa;

        [v3 deactivateConstraints:v5];

        swift_beginAccess();
        if (*&v1[v2])
        {
          *&v1[v2] = _swiftEmptyArrayStorage;
        }

        swift_endAccess();
        v6 = OBJC_IVAR___REBookReaderModuleHost_snapshotView;
        v7 = *&v1[OBJC_IVAR___REBookReaderModuleHost_snapshotView];
        if (v7)
        {
          [v7 removeFromSuperview];
          v8 = *&v1[v6];
        }

        else
        {
          v8 = 0;
        }

        *&v1[v6] = 0;

        v9 = OBJC_IVAR___REBookReaderModuleHost_blurView;
        v10 = *&v1[OBJC_IVAR___REBookReaderModuleHost_blurView];
        if (v10)
        {
          [v10 removeFromSuperview];
          v11 = *&v1[v9];
        }

        else
        {
          v11 = 0;
        }

        *&v1[v9] = 0;

        v1[OBJC_IVAR___REBookReaderModuleHost_inBackground] = 0;
      }
    }
  }
}

void sub_1005A8878()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  if (!*(Strong + OBJC_IVAR___REBookReaderModuleHost_readerHostViewConstraints) || (v2 = objc_opt_self(), sub_10000A7C4(0, &qword_100AE9010), , isa = sub_1007A25D4().super.isa, , [v2 deactivateConstraints:isa], isa, (v4 = *&v1[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController]) == 0) || (v5 = objc_msgSend(v4, "viewIfLoaded")) == 0)
  {
LABEL_12:

    return;
  }

  v6 = v5;
  v7 = [v1 viewIfLoaded];
  if (!v7)
  {

    goto LABEL_12;
  }

  v8 = v7;
  v1[OBJC_IVAR___REBookReaderModuleHost_inBackground] = 1;
  v9 = [v6 snapshotViewAfterScreenUpdates:0];
  v10 = *&v1[OBJC_IVAR___REBookReaderModuleHost_snapshotView];
  *&v1[OBJC_IVAR___REBookReaderModuleHost_snapshotView] = v9;
  v11 = v9;

  if (v11)
  {
    [v8 addSubview:v11];
    v12 = [v11 superview];
    if (v12)
    {
      v13 = v12;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_1001F1160(&unk_100AD8160);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_100816E30;
      v15 = [v11 topAnchor];
      v40 = v8;
      v16 = [v13 topAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 constant:0.0];

      *(v14 + 32) = v17;
      v18 = [v11 leadingAnchor];
      v19 = [v13 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];

      *(v14 + 40) = v20;
      v21 = [v13 bottomAnchor];
      v22 = [v11 bottomAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];

      *(v14 + 48) = v23;
      v24 = [v13 trailingAnchor];
      v25 = [v11 trailingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];

      *(v14 + 56) = v26;
      v8 = v40;
      v27 = sub_1007A25D4().super.isa;

      [v2 activateConstraints:v27];
    }

    v28 = [objc_opt_self() effectWithStyle:6];
    v29 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v28];

    v30 = *&v1[OBJC_IVAR___REBookReaderModuleHost_blurView];
    *&v1[OBJC_IVAR___REBookReaderModuleHost_blurView] = v29;
  }

  sub_1001F1160(&unk_100AD8160);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100811360;
  v32 = [v6 widthAnchor];
  [v6 frame];
  v34 = [v32 constraintEqualToConstant:v33];

  *(v31 + 32) = v34;
  v35 = [v6 heightAnchor];
  [v6 frame];
  v37 = [v35 constraintEqualToConstant:v36];

  *(v31 + 40) = v37;
  v38 = sub_1007A25D4().super.isa;
  [v2 activateConstraints:v38];

  v39 = OBJC_IVAR___REBookReaderModuleHost_fixedSizeConstraints;
  swift_beginAccess();
  *&v1[v39] = v31;
}

void BookReaderModuleHost.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR___REBookReaderModuleHost_inBackground;
  if ((v3[OBJC_IVAR___REBookReaderModuleHost_inBackground] & 1) == 0)
  {
    v42.receiver = v3;
    v42.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v42, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  }

  v8 = *&v3[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (v8)
  {
    if (v3[v7])
    {
      v9 = v8;
    }

    else
    {
      [v8 viewWillTransitionToSize:a1 withTransitionCoordinator:{a2, a3}];
    }

    v10 = [v8 viewIfLoaded];
    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = v10;
    v12 = *&v3[OBJC_IVAR___REBookReaderModuleHost_blurView];
    if (!v12)
    {
LABEL_24:

LABEL_25:
      return;
    }

    v13 = v12;
    [v11 frame];
    v15 = v14;
    v17 = v16;
    v18 = [v3 view];
    v19 = v18;
    if (v15 == a2 && v17 == a3)
    {
      if (v18)
      {
        v40 = [v13 isDescendantOfView:v18];

        if (v40)
        {
          [v13 removeFromSuperview];
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (v18)
      {
        v21 = [v13 isDescendantOfView:v18];

        if ((v21 & 1) == 0)
        {
          v22 = [v3 view];
          if (v22)
          {
            v23 = v22;
            [v22 addSubview:v13];
            v24 = [v13 superview];
            if (v24)
            {
              v25 = v24;
              [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
              v41 = objc_opt_self();
              sub_1001F1160(&unk_100AD8160);
              v26 = swift_allocObject();
              *(v26 + 16) = xmmword_100816E30;
              v27 = [v13 topAnchor];
              v28 = [v25 topAnchor];
              v29 = [v27 constraintEqualToAnchor:v28 constant:0.0];

              *(v26 + 32) = v29;
              v30 = [v13 leadingAnchor];
              v31 = [v25 leadingAnchor];
              v32 = [v30 constraintEqualToAnchor:v31 constant:0.0];

              *(v26 + 40) = v32;
              v33 = [v25 bottomAnchor];
              v34 = [v13 bottomAnchor];
              v35 = [v33 constraintEqualToAnchor:v34 constant:0.0];

              *(v26 + 48) = v35;
              v36 = [v25 trailingAnchor];
              v37 = [v13 trailingAnchor];
              v38 = [v36 constraintEqualToAnchor:v37 constant:0.0];

              *(v26 + 56) = v38;
              sub_10000A7C4(0, &qword_100AE9010);
              isa = sub_1007A25D4().super.isa;

              [v41 activateConstraints:isa];
            }

            goto LABEL_23;
          }

LABEL_29:
          __break(1u);
          return;
        }

LABEL_22:
        v23 = v11;
        v11 = v8;
LABEL_23:
        v8 = v11;

        v11 = v23;
        goto LABEL_24;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }
}

Swift::Void __swiftcall BookReaderModuleHost.viewIsAppearing(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  sub_1005A54F0();
  v4.receiver = v1;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, "viewIsAppearing:", a1);
  [v1 bc_analyticsVisibilityUpdateSubtree];
}

Swift::Void __swiftcall BookReaderModuleHost.viewDidAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1);
  [v1 bc_analyticsVisibilityUpdateSubtree];
  swift_getObjectType();
  v3 = [v1 traitCollection];
  sub_1007A17B4();
}

Swift::Void __swiftcall BookReaderModuleHost.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional to, Swift::Bool shouldAppearOrDisappear)
{
  is_nil = to.is_nil;
  isa = to.value.super.super.super.isa;
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidMoveToWindow:shouldAppearOrDisappear:", isa, is_nil);
}

id sub_1005A95E4(char a1, SEL *a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, *a2, a1 & 1);
  return [v2 bc_analyticsVisibilityUpdateSubtree];
}

void sub_1005A9650(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  [v7 bc_analyticsVisibilityUpdateSubtree];
}

uint64_t BookReaderModuleHost.supportedInterfaceOrientations.getter()
{
  v1 = *(v0 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v1)
  {
    return [v1 supportedInterfaceOrientations];
  }

  else
  {
    return 30;
  }
}

void sub_1005A9708()
{
  v1 = *(v0 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v1)
  {
    v2 = OBJC_IVAR___REBookReaderModuleHost_methodCalls;
    swift_beginAccess();
    v3 = *(v0 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v1;

      v6 = (v3 + 40);
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v9 = v8 >> 5;
        if (v8 >> 5 <= 1)
        {
          if (v9)
          {
            [v5 openToLocation:*(v6 - 1) animated:v8 & 1];
          }

          else
          {
            [v5 open:*(v6 - 1) & 1];
          }
        }

        else if (v9 == 2)
        {
          [v5 jumpToBeginningAnimated:*(v6 - 1) & 1];
        }

        else if (v9 == 3)
        {
          if ([v5 respondsToSelector:"setAssetIsPreordered:"])
          {
            [v5 setAssetIsPreordered:v7];
          }
        }

        else
        {
          v10 = v8;
          v11 = *v6;
          if (__PAIR128__(-128, 2) < __PAIR128__(v10, v7))
          {
            if (v11 == 128 && v7 == 3)
            {
              [v5 assetViewControllerUpdateCloseStateTypeIfNeeded];
            }

            else if (v11 == 128 && v7 == 4)
            {
              [v5 assetViewControllerUpdateToolbarsForOpenAnimation];
            }

            else
            {
              [v5 assetViewControllerUpdateToolbarsAfterOpenAnimation];
            }
          }

          else if (v7 | v11 ^ 0x80)
          {
            if (v11 == 128 && v7 == 1)
            {
              if ([v5 respondsToSelector:"assetViewControllerWillEnterForeground"])
              {
                [v5 assetViewControllerWillEnterForeground];
              }
            }

            else
            {
              [v5 assetViewControllerUpdateToolbars];
            }
          }

          else if ([v5 respondsToSelector:"assetViewControllerWillOpen"])
          {
            [v5 assetViewControllerWillOpen];
          }
        }

        v6 += 16;
        --v4;
      }

      while (v4);
    }

    *(v0 + v2) = _swiftEmptyArrayStorage;
  }
}

void *BookReaderModuleHost.childForStatusBarStyle.getter()
{
  v1 = *(v0 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1005A99BC()
{
  v1 = (*v0 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (!*v1)
  {
    return 0;
  }

  v2 = v1[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 8))(ObjectType, v2);
}

UIView_optional __swiftcall BookReaderModuleHost.transitionContentView()()
{
  if (*&v0[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController])
  {
    v1 = *&v0[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  }

  else
  {
    v1 = v0;
  }

  v2 = [v1 view];

  v3 = v2;
  result.value.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

Swift::Bool __swiftcall BookReaderModuleHost.prefersStatusBarHiddenDuringTransition()()
{
  v1 = *(v0 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v1)
  {
    return [v1 prefersStatusBarHidden];
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1007A2214();
  v5 = [v3 BOOLForKey:v4];

  return v5 ^ 1;
}

uint64_t (*BookReaderModuleHost.upSellData.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v4 = [v4 upSellData];
  }

  *a1 = v4;
  return sub_1005A9C54;
}

id sub_1005A9C6C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v4)
  {
    v4 = [v4 *a3];
    v3 = vars8;
  }

  return v4;
}

id sub_1005A9CBC(SEL *a1)
{
  if (*(v1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController))
  {
    return [*(v1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController) *a1];
  }

  else
  {
    return 0;
  }
}

void sub_1005A9D2C(void *a1, const char **a2)
{
  v3 = *(v2 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v3)
  {
    v4 = *a2;
    v6 = a1;
    v5 = v3;
    [v5 v4];

    a1 = v6;
  }
}

uint64_t (*BookReaderModuleHost.appAnalyticsAdditionalData.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v4 = [v4 appAnalyticsAdditionalData];
  }

  *a1 = v4;
  return sub_1005A9DFC;
}

uint64_t sub_1005A9E08(uint64_t *a1, char a2, SEL *a3)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v6 = *(v5 + v4);
    if (v6)
    {
      [v6 *a3];
    }
  }

  else
  {
    v7 = *(v5 + v4);
    if (v7)
    {
      v8 = *a3;
      v11 = *a1;
      v9 = v7;
      [v9 v8];
    }
  }

  return _objc_release_x3();
}

Swift::Void __swiftcall BookReaderModuleHost.forceRepagination()()
{
  v1 = *(v0 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v1)
  {
    [v1 forceRepagination];
  }
}

Swift::Void __swiftcall BookReaderModuleHost.setFinishedForAssetID(_:)(Swift::String a1)
{
  v2 = *(v1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  if (v2 && ([*(v1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController) respondsToSelector:"setFinishedForAssetID:"] & 1) != 0)
  {
    v3 = v2;
    v4 = sub_1007A2214();
    [v3 setFinishedForAssetID:v4];
  }
}

void sub_1005AA018(void *a1)
{
  swift_getObjectType();
  v2 = [a1 traitCollection];
  sub_1007A17B4();
}

uint64_t sub_1005AA0A0()
{
  v1 = *&v0[OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController];
  if (!v1)
  {
    v2 = v0;
    v3 = sub_10079ACC4();
    v4 = sub_1007A29B4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_1005A42D4();
      v9 = sub_1000070F4(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s API called unexpectedly before Book Reader Module intialization", v5, 0xCu);
      sub_1000074E0(v6);
    }
  }

  return v1;
}

uint64_t type metadata accessor for BookReaderModuleHost()
{
  result = qword_100AEBC20;
  if (!qword_100AEBC20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005AA238()
{
  result = sub_10079ACE4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1005AA34C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1005AA36C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 9))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1005AA3C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1005AA424(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0x80;
  }

  return result;
}

id sub_1005AA460(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v17[3] = type metadata accessor for EpubBookParserWrapper();
  v17[4] = sub_100017D44(&qword_100AEBCC8, type metadata accessor for EpubBookParserWrapper);
  v17[0] = a4;
  v8 = type metadata accessor for BookProviderService();
  v9 = objc_allocWithZone(v8);
  v16[3] = sub_10000A7C4(0, &qword_100AEBCD0);
  v16[4] = sub_1005AA910();
  v15 = v8;
  v16[0] = a3;
  v10 = a3;
  sub_1001F1160(&qword_100AEBCE0);
  sub_1007A22E4();
  sub_10079ACD4();
  sub_100009864(a1, &v9[OBJC_IVAR___REBookProviderService_bookEntity]);
  *&v9[OBJC_IVAR___REBookProviderService_bookInfo] = a2;
  sub_100009864(v16, &v9[OBJC_IVAR___REBookProviderService_storeController]);
  sub_100009864(v17, &v9[OBJC_IVAR___REBookProviderService_epubParser]);
  if (a2)
  {
    v11 = [a2 managedObjectContext];
  }

  else
  {
    v11 = 0;
  }

  *&v9[OBJC_IVAR___REBookProviderService_bookInfoMOC] = v11;
  v14.receiver = v9;
  v14.super_class = v8;
  v12 = objc_msgSendSuper2(&v14, "init");
  sub_1000074E0(a1);
  sub_1000074E0(v17);
  sub_1000074E0(v16);
  return v12;
}

void sub_1005AA63C()
{
  v1 = v0;
  v2 = sub_100796C04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___REBookReaderModuleHost_contentOpenAnimator) = 0;
  v6 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfoTracker;
  type metadata accessor for AppIntentsAssetViewControllerInfoTracker();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[1] = 0;
  sub_1001F1160(&unk_100AEBC90);
  sub_10079B964();
  *(v7 + OBJC_IVAR____TtC5Books40AppIntentsAssetViewControllerInfoTracker_task) = 0;
  swift_unknownObjectWeakAssign();
  *(v1 + v6) = v7;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_appIntentsInfoChangeObserver) = 0;
  v8 = OBJC_IVAR___REBookReaderModuleHost_appIntentsInfo;
  *(v1 + v8) = [objc_allocWithZone(BCAppIntentsAssetViewControllerInfo) init];
  v9 = (v1 + OBJC_IVAR___REBookReaderModuleHost_readerModuleViewController);
  *v9 = 0;
  v9[1] = 0;
  sub_10000A7C4(0, &qword_100AD20A0);
  sub_1007A33F4();
  v10 = (v1 + OBJC_IVAR___REBookReaderModuleHost_hostID);
  _s5Books7InfoBarO7MessageC2id10Foundation4UUIDVvpfi_0();
  v11 = sub_100796BC4();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  *v10 = v11;
  v10[1] = v13;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_methodCalls) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_bookPositionProcessor) = 0;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_subscribers) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_readerHostViewConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_fixedSizeConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_snapshotView) = 0;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_blurView) = 0;
  *(v1 + OBJC_IVAR___REBookReaderModuleHost_inBackground) = 0;
  sub_1007A38A4();
  __break(1u);
}

unint64_t sub_1005AA910()
{
  result = qword_100AEBCD8;
  if (!qword_100AEBCD8)
  {
    sub_10000A7C4(255, &qword_100AEBCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEBCD8);
  }

  return result;
}

uint64_t type metadata accessor for SearchResultText()
{
  result = qword_100AEBD40;
  if (!qword_100AEBD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005AAA34()
{
  result = sub_10079FF64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005AAAE0@<X0>(uint64_t a1@<X8>)
{
  sub_10079FF14();
  sub_100206ECC();
  v2 = sub_10079D5D4();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SearchResultText();
  v8 = sub_10079D5A4();
  v10 = v9;
  v12 = v11;
  sub_10020B430(v2, v4, v6 & 1);

  v13 = sub_10079D564();
  v52 = v14;
  v53 = v13;
  v51 = v15;
  sub_10020B430(v8, v10, v12 & 1);

  sub_10079FF54();
  v16 = sub_10079D5D4();
  v18 = v17;
  LOBYTE(v10) = v19;
  v20 = sub_10079D5A4();
  v22 = v21;
  LOBYTE(v4) = v23;
  sub_10020B430(v16, v18, v10 & 1);

  v24 = sub_10079D564();
  v26 = v25;
  v28 = v27;
  sub_10020B430(v20, v22, v4 & 1);

  v29 = sub_10079D584();
  v56 = v30;
  v57 = v29;
  v55 = v31;
  sub_10020B430(v24, v26, v28 & 1);

  sub_10020B430(v53, v52, v51 & 1);

  sub_10079FF24();
  v32 = sub_10079D5D4();
  v34 = v33;
  LOBYTE(v26) = v35;
  v36 = sub_10079D5A4();
  v38 = v37;
  v40 = v39;
  sub_10020B430(v32, v34, v26 & 1);

  v41 = sub_10079D564();
  v43 = v42;
  LOBYTE(v26) = v44;
  sub_10020B430(v36, v38, v40 & 1);

  v58 = sub_10079D584();
  v54 = v45;
  v47 = v46;
  v60 = v48;
  sub_10020B430(v41, v43, v26 & 1);

  sub_10020B430(v57, v56, v55 & 1);

  v49 = *(v1 + *(v7 + 32));
  result = swift_getKeyPath();
  *a1 = v58;
  *(a1 + 8) = v54;
  *(a1 + 16) = v47 & 1;
  *(a1 + 24) = v60;
  *(a1 + 32) = result;
  *(a1 + 40) = v49;
  *(a1 + 48) = 0;
  return result;
}

void *sub_1005AAE74(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1003BD0CC(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    result = sub_1007A35A4();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      result = sub_1007A3A74();
      v10 = result;
      v12 = v11;
      v13 = v4;
      v30 = v4;
      v14 = v1;
      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_1003BD0CC((v15 > 1), v16 + 1, 1);
        v13 = v30;
      }

      v13[2] = v16 + 1;
      v17 = &v13[2 * v16];
      v17[4] = v10;
      v17[5] = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_100343CEC(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_100343CEC(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_1005AB0B8(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1007A37F4();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100007484(i, v5);
    sub_10000A7C4(0, &qword_100AD7620);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1007A37D4();
    sub_1007A3804();
    sub_1007A3814();
    sub_1007A37E4();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_1005AB23C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(void, double), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v10 = sub_1001F1160(a2);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v31 - v12;
  v14 = a4(0, v11);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v36 = &v31 - v20;
  v21 = *(a1 + 16);
  v38 = _swiftEmptyArrayStorage;
  (a5)(0, v21, 0, v19);
  v22 = v38;
  if (v21)
  {
    v31 = a5;
    v32 = a2;
    v33 = a3;
    v34 = v15;
    v23 = a1 + 32;
    v35 = (v15 + 56);
    v24 = (v15 + 32);
    while (1)
    {
      sub_100009864(v23, v37);
      sub_1001F1160(&qword_100ADA250);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v35)(v13, 0, 1, v14);
      v25 = *v24;
      v26 = v36;
      (*v24)(v36, v13, v14);
      v25(v17, v26, v14);
      v38 = v22;
      v27 = v17;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        v31(v28 > 1, v29 + 1, 1);
        v22 = v38;
      }

      v22[2] = v29 + 1;
      v25(v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29, v27, v14);
      v23 += 40;
      --v21;
      v17 = v27;
      if (!v21)
      {
        return v22;
      }
    }

    (*v35)(v13, 1, 1, v14);
    sub_100007840(v13, v32);
    return 0;
  }

  return v22;
}

void *sub_1005AB520(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1003BD0CC(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_100007484(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1003BD0CC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_1005AB634(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1007A37F4();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1007A3784();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for SinglePageViewController();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      if (v6 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1007A38D4();
    sub_1007A37F4();
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1005AB798(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_1007A38D4();
    sub_1007A37F4();
    v2 = sub_1007A38D4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1007A37F4();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_1007A3784();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        sub_10079E794();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        sub_1007A37E4();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1005AB908()
{
  sub_100007840(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_purchaseDate, &unk_100ADB5C0);
  sub_100007840(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_creationDate, &unk_100ADB5C0);
  sub_100007840(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_wantToReadInfo, &qword_100AEC0C8);
  sub_100007840(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_samplesInfo, &qword_100AEC0C8);
  sub_100007840(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo, &qword_100AEC0C8);
  sub_100007840(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_lastEngagedDate, &unk_100ADB5C0);
  sub_100007840(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_dateFinished, &unk_100ADB5C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProtoStoreBook()
{
  result = qword_100AEBDF8;
  if (!qword_100AEBDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005ABA90()
{
  sub_1005ABBB8(319, &qword_100AD91B0, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_1005ABBB8(319, &unk_100AEBE08, &type metadata accessor for CollectionMembershipInfo);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005ABBB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007A3454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1005ABC0C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 513;
  v1 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_purchaseDate;
  v2 = sub_100796BB4();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_creationDate, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_highWaterMarkReadingProgress;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_wantToReadInfo;
  v6 = sub_10079A234();
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  v7(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_samplesInfo, 1, 1, v6);
  v7(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_isSample) = 2;
  v3(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_lastEngagedDate, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_dateFinished, 1, 1, v2);
  return v0;
}

uint64_t sub_1005ABDC4()
{
  sub_10000A7C4(0, &qword_100AD20A0);
  result = sub_1007A33B4();
  qword_100B23640 = result;
  return result;
}

uint64_t sub_1005ABE3C()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B23648);
  sub_100008B98(v0, qword_100B23648);
  if (qword_100AD18B8 != -1)
  {
    swift_once();
  }

  v1 = qword_100B23640;
  return sub_10079ACF4();
}

uint64_t sub_1005ABEC8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_1007A2744();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005ABFB0, 0, 0);
}

uint64_t sub_1005ABFB0()
{
  sub_1007A2704();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1005AC068;
  v2 = *(v0 + 64);

  return sub_100367BF8(v2);
}

uint64_t sub_1005AC068(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005AC584;
  }

  else
  {
    v4[11] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005AC1F0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005AC1F0()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[3];
  v4 = [objc_opt_self() predicateForPersonalizationAffinityAssets];
  v0[12] = v4;
  v5 = [v1 assetIDsOfStoreAssetsWithPredicate:v4];
  v6 = sub_1007A25E4();
  v0[13] = v6;

  v7 = swift_task_alloc();
  v0[14] = v7;
  v7[2] = v1;
  v7[3] = v6;
  v7[4] = v3;
  v7[5] = v2;
  v8 = swift_task_alloc();
  v0[15] = v8;
  v9 = sub_1001F1160(&qword_100AEC0C0);
  *v8 = v0;
  v8[1] = sub_1005AC368;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000015, 0x80000001008DEF30, sub_1005B51F4, v7, v9);
}

uint64_t sub_1005AC368()
{

  return _swift_task_switch(sub_1005AC49C, 0, 0);
}

uint64_t sub_1005AC49C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = sub_100401700(sub_1005B5200, v6, v4);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1005AC584()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005AC5E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a3;
  v25 = a2;
  v7 = sub_1001F1160(qword_100AEC0E0);
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = sub_10079A3E4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a4, v12, v15);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v20 = v25;
  v21 = v27;
  *(v19 + 16) = v25;
  *(v19 + 24) = v21;
  (*(v13 + 32))(v19 + v17, v16, v12);
  (*(v8 + 32))(v19 + v18, v11, v24);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  aBlock[4] = sub_1005B521C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A24410;
  v22 = _Block_copy(aBlock);
  v23 = v20;

  [v23 performBackgroundReadOnlyBlock:v22];
  _Block_release(v22);
}

uint64_t sub_1005AC8A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v132 = a5;
  v138 = sub_1007A1C54();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1007A1CA4();
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_1001F1160(qword_100AEC0E0);
  v130 = *(v131 - 8);
  v128 = *(v130 + 64);
  __chkstk_darwin(v131);
  v129 = &v128 - v10;
  v11 = sub_10079A3E4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = [a2 storeAssetIDsOfWantToReadWithLimit:1000 inMoc:{a1, v13}];
  v148 = [a2 storeAssetIDsOfSamplesCollectionWithLimit:1000 inMoc:a1];
  v146 = a2;
  v147 = [a2 storeAssetIDsOfFinishedCollectionWithLimit:1000 inMoc:a1];
  v16 = [objc_allocWithZone(NSMutableOrderedSet) init];
  sub_1003BC374(a3);
  isa = sub_1007A25D4().super.isa;

  v139 = v16;
  [v16 addObjectsFromArray:isa];

  sub_10079A394();
  sub_1005B53C4(&qword_100AEC0D8, &type metadata accessor for StoreBookCollectionOptions);
  LOBYTE(isa) = sub_1007A3534();
  v18 = *(v12 + 8);
  v18(v15, v11);
  if (isa)
  {
    [v139 unionOrderedSet:v141];
  }

  sub_10079A3B4();
  v19 = sub_1007A3534();
  v18(v15, v11);
  if (v19)
  {
    [v139 unionOrderedSet:v148];
  }

  sub_10079A3C4();
  v20 = sub_1007A3534();
  v18(v15, v11);
  if (v20)
  {
    [v139 unionOrderedSet:v147];
  }

  v21 = [v139 array];
  v22 = sub_1007A25E4();

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + 32;
    v25 = _swiftEmptyArrayStorage;
    do
    {
      sub_100007484(v24, &aBlock);
      sub_1000076D4(&aBlock, &v156);
      if (swift_dynamicCast())
      {
        v27 = v158;
        if (v158)
        {
          v28 = v157;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_10000B3D8(0, *(v25 + 2) + 1, 1, v25);
          }

          v30 = *(v25 + 2);
          v29 = *(v25 + 3);
          if (v30 >= v29 >> 1)
          {
            v25 = sub_10000B3D8((v29 > 1), v30 + 1, 1, v25);
          }

          *(v25 + 2) = v30 + 1;
          v26 = &v25[16 * v30];
          *(v26 + 4) = v28;
          *(v26 + 5) = v27;
        }
      }

      v24 += 32;
      --v23;
    }

    while (v23);
  }

  v31 = sub_1007A25D4().super.isa;

  v32 = [v146 libraryAssetsWithAssetIDs:v31 inManagedObjectContext:a1];

  sub_10000A7C4(0, &qword_100ADA990);
  v33 = sub_1007A25E4();

  v34 = v141;
  if (v33 >> 62)
  {
    goto LABEL_124;
  }

  v149 = v33 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    v150 = v33 & 0xC000000000000001;
    v36 = _swiftEmptyArrayStorage;
    if (i)
    {
      v37 = 0;
      do
      {
        v38 = v37;
        while (1)
        {
          if (v150)
          {
            v39 = sub_1007A3784();
          }

          else
          {
            if (v38 >= *(v149 + 16))
            {
              goto LABEL_118;
            }

            v39 = *(v33 + 8 * v38 + 32);
          }

          v40 = v39;
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          v41 = [v39 assetID];
          if (v41)
          {
            break;
          }

          ++v38;
          if (v37 == i)
          {
            goto LABEL_35;
          }
        }

        v42 = i;
        v43 = v41;
        v44 = sub_1007A2254();
        v46 = v45;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_10000B3D8(0, *(v36 + 2) + 1, 1, v36);
        }

        v48 = *(v36 + 2);
        v47 = *(v36 + 3);
        if (v48 >= v47 >> 1)
        {
          v36 = sub_10000B3D8((v47 > 1), v48 + 1, 1, v36);
        }

        *(v36 + 2) = v48 + 1;
        v49 = &v36[16 * v48];
        *(v49 + 4) = v44;
        *(v49 + 5) = v46;
        i = v42;
        v34 = v141;
      }

      while (v37 != v42);
    }

LABEL_35:
    v145 = i;
    v50 = sub_10040E374(v36);

    v51 = [v34 array];
    v52 = sub_1007A25E4();

    v53 = sub_1005AB520(v52);

    v144 = v33;
    if (v53)
    {
      v143 = v53[2];
      if (v143)
      {
        v55 = 0;
        v142 = v53 + 4;
        v34 = (v50 + 56);
        *&v54 = 136315138;
        v140 = v54;
        do
        {
          if (v55 >= v53[2])
          {
            goto LABEL_121;
          }

          v56 = &v142[2 * v55];
          v58 = *v56;
          v57 = v56[1];
          if (*(v50 + 16))
          {
            sub_1007A3C04();

            _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
            v59 = sub_1007A3C44();
            v60 = -1 << *(v50 + 32);
            v61 = v59 & ~v60;
            if ((*&v34[(v61 >> 3) & 0xFFFFFFFFFFFFFF8] >> v61))
            {
              v62 = ~v60;
              do
              {
                v63 = (*(v50 + 48) + 16 * v61);
                v64 = *v63 == v58 && v63[1] == v57;
                if (v64 || (sub_1007A3AB4() & 1) != 0)
                {
                  goto LABEL_56;
                }

                v61 = (v61 + 1) & v62;
              }

              while (((*&v34[(v61 >> 3) & 0xFFFFFFFFFFFFFF8] >> v61) & 1) != 0);
            }
          }

          else
          {
          }

          if (qword_100AD18C0 != -1)
          {
            swift_once();
          }

          v65 = sub_10079ACE4();
          sub_100008B98(v65, qword_100B23648);

          v66 = sub_10079ACC4();
          v67 = sub_1007A29B4();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&aBlock = v69;
            *v68 = v140;
            *(v68 + 4) = sub_1000070F4(v58, v57, &aBlock);
            _os_log_impl(&_mh_execute_header, v66, v67, "failed to find asset for %s in Want to Read", v68, 0xCu);
            sub_1000074E0(v69);
            v33 = v144;

LABEL_56:

            goto LABEL_39;
          }

LABEL_39:
          ++v55;
        }

        while (v55 != v143);
      }

      v34 = v141;
    }

    v70 = [v148 array];
    v71 = sub_1007A25E4();

    v72 = sub_1005AB520(v71);

    if (v72)
    {
      v143 = v72[2];
      if (v143)
      {
        v74 = 0;
        v142 = v72 + 4;
        v34 = (v50 + 56);
        *&v73 = 136315138;
        v140 = v73;
        do
        {
          if (v74 >= v72[2])
          {
            goto LABEL_122;
          }

          v75 = &v142[2 * v74];
          v77 = *v75;
          v76 = v75[1];
          if (*(v50 + 16))
          {
            sub_1007A3C04();

            _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
            v78 = sub_1007A3C44();
            v79 = -1 << *(v50 + 32);
            v80 = v78 & ~v79;
            if ((*&v34[(v80 >> 3) & 0xFFFFFFFFFFFFFF8] >> v80))
            {
              v81 = ~v79;
              do
              {
                v82 = (*(v50 + 48) + 16 * v80);
                v83 = *v82 == v77 && v82[1] == v76;
                if (v83 || (sub_1007A3AB4() & 1) != 0)
                {
                  goto LABEL_79;
                }

                v80 = (v80 + 1) & v81;
              }

              while (((*&v34[(v80 >> 3) & 0xFFFFFFFFFFFFFF8] >> v80) & 1) != 0);
            }
          }

          else
          {
          }

          if (qword_100AD18C0 != -1)
          {
            swift_once();
          }

          v84 = sub_10079ACE4();
          sub_100008B98(v84, qword_100B23648);

          v85 = sub_10079ACC4();
          v86 = sub_1007A29B4();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            *&aBlock = v88;
            *v87 = v140;
            *(v87 + 4) = sub_1000070F4(v77, v76, &aBlock);
            _os_log_impl(&_mh_execute_header, v85, v86, "failed to find asset for %s in Sampled", v87, 0xCu);
            sub_1000074E0(v88);
            v33 = v144;

LABEL_79:

            goto LABEL_62;
          }

LABEL_62:
          ++v74;
        }

        while (v74 != v143);
      }

      v34 = v141;
    }

    v89 = [v147 array];
    v90 = sub_1007A25E4();

    v91 = sub_1005AB520(v90);

    if (v91)
    {
      v143 = v91[2];
      if (v143)
      {
        v93 = 0;
        v142 = v91 + 4;
        v34 = (v50 + 56);
        *&v92 = 136315138;
        v140 = v92;
        do
        {
          if (v93 >= v91[2])
          {
            goto LABEL_123;
          }

          v94 = &v142[2 * v93];
          v96 = *v94;
          v95 = v94[1];
          if (*(v50 + 16))
          {
            sub_1007A3C04();

            _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
            v97 = sub_1007A3C44();
            v98 = -1 << *(v50 + 32);
            v99 = v97 & ~v98;
            if ((*&v34[(v99 >> 3) & 0xFFFFFFFFFFFFFF8] >> v99))
            {
              v100 = ~v98;
              do
              {
                v101 = (*(v50 + 48) + 16 * v99);
                v102 = *v101 == v96 && v101[1] == v95;
                if (v102 || (sub_1007A3AB4() & 1) != 0)
                {
                  goto LABEL_102;
                }

                v99 = (v99 + 1) & v100;
              }

              while (((*&v34[(v99 >> 3) & 0xFFFFFFFFFFFFFF8] >> v99) & 1) != 0);
            }
          }

          else
          {
          }

          if (qword_100AD18C0 != -1)
          {
            swift_once();
          }

          v103 = sub_10079ACE4();
          sub_100008B98(v103, qword_100B23648);

          v104 = sub_10079ACC4();
          v105 = sub_1007A29B4();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            *&aBlock = v107;
            *v106 = v140;
            *(v106 + 4) = sub_1000070F4(v96, v95, &aBlock);
            _os_log_impl(&_mh_execute_header, v104, v105, "failed to find asset for %s in Finished", v106, 0xCu);
            sub_1000074E0(v107);
            v33 = v144;

LABEL_102:

            goto LABEL_85;
          }

LABEL_85:
          ++v93;
        }

        while (v93 != v143);
      }

      v34 = v141;
    }

    v108 = [objc_msgSend(objc_opt_self() "sharedInstance")];
    swift_unknownObjectRelease();
    v109 = dispatch_group_create();
    v110 = _swiftEmptyArrayStorage;
    *&aBlock = _swiftEmptyArrayStorage;
    if (!v145)
    {
      break;
    }

    v111 = 0;
    while (1)
    {
      if (v150)
      {
        v112 = sub_1007A3784();
      }

      else
      {
        if (v111 >= *(v149 + 16))
        {
          goto LABEL_120;
        }

        v112 = *(v33 + 8 * v111 + 32);
      }

      v113 = v112;
      v114 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        break;
      }

      *&v156 = v112;
      sub_1005ADC00(&v156, v108, v34, v148, v147, v109, v146, &v157);

      if (v157)
      {
        sub_1007A25C4();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();
        v110 = aBlock;
      }

      ++v111;
      if (v114 == v145)
      {
        goto LABEL_116;
      }
    }

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
    v149 = v33 & 0xFFFFFFFFFFFFFF8;
  }

LABEL_116:

  sub_10000A7C4(0, &qword_100AD1E10);
  v115 = sub_1007A2D74();
  v116 = v130;
  v117 = v129;
  v118 = v131;
  (*(v130 + 16))(v129, v132, v131);
  v119 = (*(v116 + 80) + 16) & ~*(v116 + 80);
  v120 = v34;
  v121 = (v128 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v122 = swift_allocObject();
  (*(v116 + 32))(v122 + v119, v117, v118);
  *(v122 + v121) = v110;
  v154 = sub_1005B532C;
  v155 = v122;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v152 = sub_1003323D0;
  v153 = &unk_100A24460;
  v123 = _Block_copy(&aBlock);
  v124 = v133;
  sub_1007A1C74();
  *&v156 = _swiftEmptyArrayStorage;
  sub_1005B53C4(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
  v125 = v135;
  v126 = v138;
  sub_1007A3594();
  sub_1007A2CB4();

  _Block_release(v123);
  (*(v137 + 8))(v125, v126);
  (*(v134 + 8))(v124, v136);
}

void sub_1005ADC00(id *a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, NSObject *a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v114 = a7;
  v117 = a4;
  v118 = a5;
  v116 = a3;
  LODWORD(v115) = a2;
  v12 = sub_1001F1160(&qword_100AEC0C8);
  __chkstk_darwin(v12 - 8);
  v119 = &v106 - v13;
  v14 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v14 - 8);
  v111 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v113 = &v106 - v17;
  __chkstk_darwin(v18);
  v20 = &v106 - v19;
  __chkstk_darwin(v21);
  v23 = &v106 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v106 - v26;
  v28 = *a1;
  v29 = [*a1 assetID];
  if (!v29)
  {
    v43 = 0;
LABEL_100:
    *a8 = v43;
    return;
  }

  v30 = v29;
  v31 = sub_1007A2254();
  v33 = v32;
  v34 = HIBYTE(v32) & 0xF;
  v35 = v31 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v36 = v34;
  }

  else
  {
    v36 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    v43 = 0;
    goto LABEL_100;
  }

  v112 = a8;
  v110 = a6;
  if ((v33 & 0x1000000000000000) != 0)
  {
    LOBYTE(v126) = 0;
    v39 = sub_10063E4AC(v31, v33, 10);
    v53 = v105;
    goto LABEL_67;
  }

  if ((v33 & 0x2000000000000000) == 0)
  {
    if ((v31 & 0x1000000000000000) != 0)
    {
      v37 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v37 = sub_1007A37B4();
    }

    v38 = *v37;
    if (v38 == 43)
    {
      if (v35 >= 1)
      {
        v34 = v35 - 1;
        if (v35 != 1)
        {
          v39 = 0;
          if (v37)
          {
            v46 = v37 + 1;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                goto LABEL_65;
              }

              v42 = __CFADD__(10 * v39, v47);
              v39 = 10 * v39 + v47;
              if (v42)
              {
                goto LABEL_65;
              }

              ++v46;
              if (!--v34)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_57;
        }

        goto LABEL_65;
      }

      goto LABEL_106;
    }

    if (v38 != 45)
    {
      if (v35)
      {
        v39 = 0;
        if (v37)
        {
          while (1)
          {
            v50 = *v37 - 48;
            if (v50 > 9)
            {
              goto LABEL_65;
            }

            if (!is_mul_ok(v39, 0xAuLL))
            {
              goto LABEL_65;
            }

            v42 = __CFADD__(10 * v39, v50);
            v39 = 10 * v39 + v50;
            if (v42)
            {
              goto LABEL_65;
            }

            ++v37;
            if (!--v35)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_57;
      }

LABEL_65:
      v39 = 0;
      LOBYTE(v34) = 1;
      goto LABEL_66;
    }

    if (v35 >= 1)
    {
      v34 = v35 - 1;
      if (v35 != 1)
      {
        v39 = 0;
        if (v37)
        {
          v40 = v37 + 1;
          while (1)
          {
            v41 = *v40 - 48;
            if (v41 > 9)
            {
              goto LABEL_65;
            }

            if (!is_mul_ok(v39, 0xAuLL))
            {
              goto LABEL_65;
            }

            v42 = 10 * v39 >= v41;
            v39 = 10 * v39 - v41;
            if (!v42)
            {
              goto LABEL_65;
            }

            ++v40;
            if (!--v34)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_57:
        LOBYTE(v34) = 0;
LABEL_66:
        LOBYTE(v126) = v34;
        v53 = v34;
LABEL_67:

        if (v53 & 1) != 0 || (v115 & 1) == 0 && (v54 = [v28 isExplicit]) != 0 && (v55 = v54, v56 = objc_msgSend(v54, "BOOLValue"), v55, (v56))
        {

          v43 = 0;
          a8 = v112;
        }

        else
        {
          v57 = [v28 bookHighWaterMarkProgress];
          if (v57)
          {
            v58 = v57;
            [v57 doubleValue];
            v60 = v59;

            v125 = v60;
            aBlock = xmmword_10081BC80;
            sub_1007A20C4();
            v106 = v126;
          }

          else
          {
            v106 = 0;
          }

          v61 = v30;
          v107 = [v116 indexOfObject:v61];
          v108 = [v117 indexOfObject:v61];

          v115 = [v118 indexOfObject:v61];
          type metadata accessor for ProtoStoreBook();
          swift_allocObject();
          v43 = sub_1005ABC0C();
          *(v43 + 16) = v39;
          *(v43 + 24) = 0;
          if (([v28 isStoreOrSeriesItem] & 1) == 0)
          {
            v62 = [v28 purchaseDate];
            if (v62)
            {
              v63 = v62;
              sub_100796B64();

              v64 = 0;
            }

            else
            {
              v64 = 1;
            }

            v65 = sub_100796BB4();
            (*(*(v65 - 8) + 56))(v27, v64, 1, v65);
            v66 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_purchaseDate;
            swift_beginAccess();
            sub_1002391EC(v27, v43 + v66, &unk_100ADB5C0);
            swift_endAccess();
          }

          v67 = [v28 creationDate];
          v109 = v8;
          if (v67)
          {
            v68 = v67;
            sub_100796B64();

            v69 = 0;
          }

          else
          {
            v69 = 1;
          }

          v70 = sub_100796BB4();
          v71 = *(*(v70 - 8) + 56);
          v72 = 1;
          (v71)(v23, v69, 1, v70);
          v73 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_creationDate;
          swift_beginAccess();
          sub_1002391EC(v23, v43 + v73, &unk_100ADB5C0);
          swift_endAccess();
          v74 = v43 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_highWaterMarkReadingProgress;
          *v74 = v106;
          *(v74 + 8) = 0;
          v75 = [v28 lastEngagedDate];
          if (v75)
          {
            v76 = v75;
            sub_100796B64();

            v72 = 0;
          }

          (v71)(v20, v72, 1, v70);
          v77 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_lastEngagedDate;
          swift_beginAccess();
          sub_1002391EC(v20, v43 + v77, &unk_100ADB5C0);
          swift_endAccess();
          v78 = [v28 dateFinished];
          if (v78)
          {
            v79 = v113;
            v80 = v78;
            sub_100796B64();

            v81 = v79;
            v82 = v110;
          }

          else
          {
            v82 = v110;
            v81 = v113;
          }

          v83 = v114;
          v84 = v81;
          v71();
          v85 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_dateFinished;
          swift_beginAccess();
          sub_1002391EC(v84, v43 + v85, &unk_100ADB5C0);
          swift_endAccess();
          if (v107 != _s5Books17REActionMenuStateC9pageCountSivpfi_0())
          {
            [v116 count];
            v86 = v119;
            sub_10079A224();
            v87 = sub_10079A234();
            (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
            v88 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_wantToReadInfo;
            swift_beginAccess();
            sub_1002391EC(v86, v43 + v88, &qword_100AEC0C8);
            swift_endAccess();
          }

          if (v108 != _s5Books17REActionMenuStateC9pageCountSivpfi_0())
          {
            [v117 count];
            v89 = v119;
            sub_10079A224();
            v90 = sub_10079A234();
            (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
            v91 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_samplesInfo;
            swift_beginAccess();
            sub_1002391EC(v89, v43 + v91, &qword_100AEC0C8);
            swift_endAccess();
          }

          if ([v28 isSample])
          {
            v92 = 1;
          }

          else
          {
            v93 = [v28 purchaseDate];
            if (v93)
            {
              v94 = v111;
              v95 = v93;
              sub_100796B64();

              (v71)(v94, 0, 1, v70);
              sub_100007840(v94, &unk_100ADB5C0);
              v92 = 0;
            }

            else
            {
              v96 = v111;
              (v71)(v111, 1, 1, v70);
              sub_100007840(v96, &unk_100ADB5C0);
              v92 = [v28 isNonLocalSample];
            }
          }

          *(v43 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_isSample) = v92;
          v97 = _s5Books17REActionMenuStateC9pageCountSivpfi_0();
          a8 = v112;
          if (v115 != v97)
          {
            [v118 count];
            v98 = v119;
            sub_10079A224();
            v99 = sub_10079A234();
            (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
            v100 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo;
            swift_beginAccess();
            sub_1002391EC(v98, v43 + v100, &qword_100AEC0C8);
            swift_endAccess();
          }

          dispatch_group_enter(v82);
          v101 = swift_allocObject();
          v101[2] = v43;
          v101[3] = v83;
          v101[4] = v82;
          v123 = sub_1005B540C;
          v124 = v101;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v121 = sub_100393608;
          v122 = &unk_100A244B0;
          v102 = _Block_copy(&aBlock);

          v103 = v83;
          v104 = v82;

          [v103 assetAccountIdentifiersForAsset:v28 completion:v102];
          _Block_release(v102);
        }

        goto LABEL_100;
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  *&aBlock = v31;
  *(&aBlock + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
  if (v31 != 43)
  {
    if (v31 != 45)
    {
      if (v34)
      {
        v39 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v52 = *p_aBlock - 48;
          if (v52 > 9)
          {
            break;
          }

          if (!is_mul_ok(v39, 0xAuLL))
          {
            break;
          }

          v42 = __CFADD__(10 * v39, v52);
          v39 = 10 * v39 + v52;
          if (v42)
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v34)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v34)
    {
      if (--v34)
      {
        v39 = 0;
        v44 = &aBlock + 1;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          if (!is_mul_ok(v39, 0xAuLL))
          {
            break;
          }

          v42 = 10 * v39 >= v45;
          v39 = 10 * v39 - v45;
          if (!v42)
          {
            break;
          }

          ++v44;
          if (!--v34)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_105;
  }

  if (v34)
  {
    if (--v34)
    {
      v39 = 0;
      v48 = &aBlock + 1;
      while (1)
      {
        v49 = *v48 - 48;
        if (v49 > 9)
        {
          break;
        }

        if (!is_mul_ok(v39, 0xAuLL))
        {
          break;
        }

        v42 = __CFADD__(10 * v39, v49);
        v39 = 10 * v39 + v49;
        if (v42)
        {
          break;
        }

        ++v48;
        if (!--v34)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_107:
  __break(1u);
}

void sub_1005AE894(id a1, int a2, uint64_t a3, id a4, NSObject *a5)
{
  v8 = a1;
  if (a1)
  {
    v9 = [a1 familyID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1007A2254();
      v13 = v12;

      v27 = v11;
      v28 = v13;
      v14 = sub_1007A3AA4();
      sub_1002308AC(&v27);
    }

    else
    {
      v14 = 0;
    }

    v16 = [v8 purchasedDSID];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1007A2254();
      v20 = v19;

      v27 = v18;
      v28 = v20;
      v15 = sub_1007A3AA4();
      sub_1002308AC(&v27);
    }

    else
    {
      v15 = 0;
    }

    v21 = [v8 downloadedDSID];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1007A2254();
      v25 = v24;

      v27 = v23;
      v28 = v25;
      v8 = sub_1007A3AA4();
      sub_1002308AC(&v27);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v26 = [a4 isFamilyPurchaseWithFamilyID:v14 purchaserDSID:v15 downloaderDSID:v8];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(a3 + 25) = v26;
  dispatch_group_leave(a5);
}

uint64_t sub_1005AEA3C()
{

  sub_1001F1160(qword_100AEC0E0);
  return sub_1007A26B4();
}

uint64_t sub_1005AEA90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v209 = a2;
  v220 = a3;
  v5 = sub_1001F1160(&qword_100AEC0C8);
  __chkstk_darwin(v5 - 8);
  v192 = &v184 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v194 = &v184 - v8;
  __chkstk_darwin(v9);
  v195 = &v184 - v10;
  __chkstk_darwin(v11);
  v193 = &v184 - v12;
  __chkstk_darwin(v13);
  v196 = &v184 - v14;
  __chkstk_darwin(v15);
  v198 = &v184 - v16;
  __chkstk_darwin(v17);
  v197 = &v184 - v18;
  __chkstk_darwin(v19);
  v21 = &v184 - v20;
  __chkstk_darwin(v22);
  v202 = &v184 - v23;
  v212 = sub_10079A3E4();
  v206 = *(v212 - 8);
  __chkstk_darwin(v212);
  v210 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1001F1160(&qword_100AE2238);
  __chkstk_darwin(v25 - 8);
  v214 = &v184 - v26;
  v207 = sub_1001F1160(&qword_100AEC0D0);
  __chkstk_darwin(v207);
  v28 = &v184 - v27;
  v29 = sub_100796BB4();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v211 = &v184 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v205 = &v184 - v33;
  v34 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v34 - 8);
  v203 = &v184 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  __chkstk_darwin(v37);
  v208 = (&v184 - v38);
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  v42 = &v184 - v41;
  __chkstk_darwin(v43);
  v45 = &v184 - v44;
  __chkstk_darwin(v46);
  v213 = &v184 - v47;
  __chkstk_darwin(v48);
  v52 = &v184 - v51;
  v53 = *a1;
  if (*(v53 + 24) == 1)
  {
    v54 = sub_10079AA04();
    return (*(*(v54 - 8) + 56))(v220, 1, 1, v54);
  }

  v189 = v50;
  v185 = v49;
  v187 = v21;
  v190 = *(v53 + 16);
  v56 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_lastEngagedDate;
  swift_beginAccess();
  sub_1000077D8(v53 + v56, v52, &unk_100ADB5C0);
  v57 = *(v30 + 48);
  v201 = v30 + 48;
  v200 = v57;
  v58 = v57(v52, 1, v29);
  v191 = v3;
  if (v58)
  {
    sub_100007840(v52, &unk_100ADB5C0);
  }

  else
  {
    v59 = v205;
    (*(v30 + 16))(v205, v52, v29);
    sub_100007840(v52, &unk_100ADB5C0);
    sub_100796A04();
    (*(v30 + 8))(v59, v29);
  }

  v60 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_dateFinished;
  swift_beginAccess();
  v199 = v53;
  v188 = v60;
  sub_1000077D8(v53 + v60, v45, &unk_100ADB5C0);
  sub_100796A84();
  v204 = v30;
  v186 = *(v30 + 56);
  v186(v42, 0, 1, v29);
  v61 = v29;
  v62 = *(v207 + 48);
  sub_1000077D8(v45, v28, &unk_100ADB5C0);
  sub_1000077D8(v42, &v28[v62], &unk_100ADB5C0);
  v63 = v28;
  v64 = v28;
  v65 = v200;
  if (v200(v63, 1, v61) != 1)
  {
    v71 = v189;
    sub_1000077D8(v64, v189, &unk_100ADB5C0);
    if (v65(v64 + v62, 1, v61) != 1)
    {
      v73 = v204;
      v74 = v205;
      (*(v204 + 32))(v205, v64 + v62, v61);
      sub_1005B53C4(&unk_100AE4D80, &type metadata accessor for Date);
      LODWORD(v207) = sub_1007A2124();
      v75 = *(v73 + 8);
      v75(v74, v61);
      sub_100007840(v42, &unk_100ADB5C0);
      sub_100007840(v45, &unk_100ADB5C0);
      v75(v189, v61);
      sub_100007840(v64, &unk_100ADB5C0);
      v70 = v213;
      v68 = v61;
      v69 = v211;
      v65 = v200;
      if (v207)
      {
        goto LABEL_14;
      }

LABEL_12:
      v72 = v199;
      sub_1000077D8(v199 + v188, v70, &unk_100ADB5C0);
      goto LABEL_15;
    }

    sub_100007840(v42, &unk_100ADB5C0);
    sub_100007840(v45, &unk_100ADB5C0);
    (*(v204 + 8))(v71, v61);
    v67 = v213;
    v68 = v61;
    v65 = v200;
LABEL_11:
    sub_100007840(v64, &qword_100AEC0D0);
    v69 = v211;
    v70 = v67;
    goto LABEL_12;
  }

  sub_100007840(v42, &unk_100ADB5C0);
  sub_100007840(v45, &unk_100ADB5C0);
  v66 = v65(v64 + v62, 1, v61);
  v67 = v213;
  v68 = v61;
  if (v66 != 1)
  {
    goto LABEL_11;
  }

  sub_100007840(v64, &unk_100ADB5C0);
  v69 = v211;
  v70 = v67;
LABEL_14:
  v186(v70, 1, 1, v68);
  v72 = v199;
LABEL_15:
  v76 = v208;
  sub_1000077D8(v70, v208, &unk_100ADB5C0);
  v77 = v65(v76, 1, v68);
  v78 = v204;
  if (v77 == 1)
  {
    sub_100007840(v76, &unk_100ADB5C0);
  }

  else
  {
    sub_100796A04();
    (*(v78 + 8))(v76, v68);
  }

  v79 = *(v72 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_isSample);
  if (v79 != 2 && (v79 & 1) != 0)
  {
    v80 = v210;
    sub_10079A3B4();
    sub_1005B53C4(&qword_100AEC0D8, &type metadata accessor for StoreBookCollectionOptions);
    v81 = v212;
    v82 = sub_1007A3534();
    (*(v206 + 8))(v80, v81);
    if (v82)
    {
      v83 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo;
      swift_beginAccess();
      sub_1000077D8(v72 + v83, v202, &qword_100AEC0C8);
      v84 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_wantToReadInfo;
      swift_beginAccess();
      sub_1000077D8(v72 + v84, v187, &qword_100AEC0C8);
      v85 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_samplesInfo;
      swift_beginAccess();
      sub_1000077D8(v72 + v85, v197, &qword_100AEC0C8);
      v86 = v214;
      sub_10079A9E4();
      v87 = v70;
LABEL_47:
      sub_100007840(v87, &unk_100ADB5C0);
      v161 = sub_10079AA04();
      (*(*(v161 - 8) + 56))(v86, 0, 1, v161);
      goto LABEL_48;
    }

    v173 = sub_10079AA04();
    (*(*(v173 - 8) + 56))(v214, 1, 1, v173);
    v120 = v220;
    if (qword_100AD18C0 != -1)
    {
      swift_once();
    }

    v174 = sub_10079ACE4();
    sub_100008B98(v174, qword_100B23648);
    v117 = sub_10079ACC4();
    v118 = sub_1007A2994();
    if (!os_log_type_enabled(v117, v118))
    {
      goto LABEL_62;
    }

    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v219 = v122;
    *v121 = 141558275;
    *(v121 + 4) = 1752392040;
    *(v121 + 12) = 2081;
    v218 = v190;
    v175 = sub_1007A3A74();
    v177 = sub_1000070F4(v175, v176, &v219);

    *(v121 + 14) = v177;
    v126 = "ignoring unrequested sample book with store ID %{private,mask.hash}s";
    goto LABEL_61;
  }

  v88 = *(v72 + 25);
  if (v88 == 2 || (v88 & 1) == 0)
  {
    v97 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_purchaseDate;
    swift_beginAccess();
    v98 = v72 + v97;
    v99 = v203;
    sub_1000077D8(v98, v203, &unk_100ADB5C0);
    if (v65(v99, 1, v68) == 1)
    {
      sub_100007840(v99, &unk_100ADB5C0);
      v100 = v72;
      v101 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_wantToReadInfo;
      swift_beginAccess();
      v211 = v101;
      v102 = v72 + v101;
      v103 = v198;
      sub_1000077D8(v102, v198, &qword_100AEC0C8);
      v104 = sub_10079A234();
      v105 = *(v104 - 8);
      v106 = *(v105 + 48);
      v107 = v105 + 48;
      v108 = v106(v103, 1, v104);
      sub_100007840(v103, &qword_100AEC0C8);
      v109 = v210;
      if (v108 == 1 && (v110 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo, swift_beginAccess(), v111 = v196, sub_1000077D8(v100 + v110, v196, &qword_100AEC0C8), LODWORD(v110) = v106(v111, 1, v104), sub_100007840(v111, &qword_100AEC0C8), v110 == 1) && (v112 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_samplesInfo, swift_beginAccess(), v113 = v100 + v112, v114 = v193, sub_1000077D8(v113, v193, &qword_100AEC0C8), LODWORD(v112) = v106(v114, 1, v104), sub_100007840(v114, &qword_100AEC0C8), v112 == 1))
      {
        v115 = sub_10079AA04();
        (*(*(v115 - 8) + 56))(v214, 1, 1, v115);
        if (qword_100AD18C0 != -1)
        {
          swift_once();
        }

        v116 = sub_10079ACE4();
        sub_100008B98(v116, qword_100B23648);
        v117 = sub_10079ACC4();
        v118 = sub_1007A2994();
        v119 = os_log_type_enabled(v117, v118);
        v120 = v220;
        v70 = v213;
        if (!v119)
        {
          goto LABEL_62;
        }

        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v217[0] = v122;
        *v121 = 141558275;
        *(v121 + 4) = 1752392040;
        *(v121 + 12) = 2081;
        v216 = v190;
        v123 = sub_1007A3A74();
        v125 = sub_1000070F4(v123, v124, v217);

        *(v121 + 14) = v125;
        v126 = "ignoring book with store ID %{private,mask.hash}s";
      }

      else
      {
        v207 = v107;
        v208 = v106;
        sub_10079A394();
        sub_1005B53C4(&qword_100AEC0D8, &type metadata accessor for StoreBookCollectionOptions);
        v135 = v212;
        v136 = sub_1007A3534();
        v137 = *(v206 + 8);
        v137(v109, v135);
        if (v136 & 1) != 0 && (v138 = v195, sub_1000077D8(&v211[v199], v195, &qword_100AEC0C8), v139 = v208(v138, 1, v104), v109 = v210, sub_100007840(v138, &qword_100AEC0C8), v139 != 1) || (sub_10079A3C4(), v140 = v212, v141 = sub_1007A3534(), v137(v109, v140), (v141) && (v142 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo, v143 = v199, swift_beginAccess(), v144 = v194, sub_1000077D8(v143 + v142, v194, &qword_100AEC0C8), LODWORD(v142) = v208(v144, 1, v104), sub_100007840(v144, &qword_100AEC0C8), v142 != 1) || (sub_10079A3B4(), v145 = v212, v146 = sub_1007A3534(), v137(v109, v145), (v146) && (v147 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_samplesInfo, v148 = v199, swift_beginAccess(), v149 = v148 + v147, v150 = v192, sub_1000077D8(v149, v192, &qword_100AEC0C8), v151 = v208(v150, 1, v104), sub_100007840(v150, &qword_100AEC0C8), v151 != 1))
        {
          v158 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo;
          v159 = v199;
          swift_beginAccess();
          sub_1000077D8(v159 + v158, v202, &qword_100AEC0C8);
          sub_1000077D8(&v211[v159], v187, &qword_100AEC0C8);
          v160 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_samplesInfo;
          swift_beginAccess();
          sub_1000077D8(v159 + v160, v197, &qword_100AEC0C8);
          v86 = v214;
          sub_10079A9D4();
          v87 = v213;
          goto LABEL_47;
        }

        v152 = sub_10079AA04();
        (*(*(v152 - 8) + 56))(v214, 1, 1, v152);
        if (qword_100AD18C0 != -1)
        {
          swift_once();
        }

        v153 = sub_10079ACE4();
        sub_100008B98(v153, qword_100B23648);
        v117 = sub_10079ACC4();
        v118 = sub_1007A2994();
        v154 = os_log_type_enabled(v117, v118);
        v120 = v220;
        v70 = v213;
        if (!v154)
        {
          goto LABEL_62;
        }

        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v216 = v122;
        *v121 = 141558275;
        *(v121 + 4) = 1752392040;
        *(v121 + 12) = 2081;
        v215 = v190;
        v155 = sub_1007A3A74();
        v157 = sub_1000070F4(v155, v156, &v216);

        *(v121 + 14) = v157;
        v126 = "ignoring unrequested Want To Read or Finished book with store ID %{private,mask.hash}s";
      }

      goto LABEL_61;
    }

    v127 = v214;
    (*(v78 + 32))(v69, v99, v68);
    v128 = v210;
    sub_10079A3D4();
    sub_1005B53C4(&qword_100AEC0D8, &type metadata accessor for StoreBookCollectionOptions);
    v129 = v68;
    v130 = v212;
    v131 = sub_1007A3534();
    (*(v206 + 8))(v128, v130);
    if ((v131 & 1) == 0)
    {
      v212 = v129;
      v162 = sub_10079AA04();
      (*(*(v162 - 8) + 56))(v127, 1, 1, v162);
      v120 = v220;
      if (qword_100AD18C0 != -1)
      {
        swift_once();
      }

      v163 = sub_10079ACE4();
      sub_100008B98(v163, qword_100B23648);
      v164 = sub_10079ACC4();
      v165 = sub_1007A2994();
      v166 = os_log_type_enabled(v164, v165);
      v70 = v213;
      if (v166)
      {
        v167 = swift_slowAlloc();
        v168 = v69;
        v169 = swift_slowAlloc();
        v218 = v169;
        *v167 = 141558275;
        *(v167 + 4) = 1752392040;
        *(v167 + 12) = 2081;
        v217[6] = v190;
        v170 = sub_1007A3A74();
        v172 = sub_1000070F4(v170, v171, &v218);

        *(v167 + 14) = v172;
        _os_log_impl(&_mh_execute_header, v164, v165, "ignoring unrequested purchased book with store ID %{private,mask.hash}s", v167, 0x16u);
        sub_1000074E0(v169);

        (*(v204 + 8))(v168, v212);
      }

      else
      {

        (*(v204 + 8))(v69, v212);
      }

      goto LABEL_64;
    }

    (*(v78 + 16))(v205, v69, v129);
    v212 = *(v72 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_highWaterMarkReadingProgress);
    LODWORD(v210) = *(v72 + OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_highWaterMarkReadingProgress + 8);
    v132 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo;
    swift_beginAccess();
    sub_1000077D8(v72 + v132, v202, &qword_100AEC0C8);
    v133 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_wantToReadInfo;
    swift_beginAccess();
    sub_1000077D8(v72 + v133, v187, &qword_100AEC0C8);
    sub_10079A9F4();
    (*(v78 + 8))(v211, v129);
    sub_100007840(v213, &unk_100ADB5C0);
    v134 = sub_10079AA04();
    (*(*(v134 - 8) + 56))(v127, 0, 1, v134);
  }

  else
  {
    v89 = v210;
    sub_10079A3A4();
    sub_1005B53C4(&qword_100AEC0D8, &type metadata accessor for StoreBookCollectionOptions);
    v90 = v212;
    v91 = sub_1007A3534();
    (*(v206 + 8))(v89, v90);
    if ((v91 & 1) == 0)
    {
      v178 = sub_10079AA04();
      (*(*(v178 - 8) + 56))(v214, 1, 1, v178);
      if (qword_100AD18C0 != -1)
      {
        swift_once();
      }

      v179 = sub_10079ACE4();
      sub_100008B98(v179, qword_100B23648);
      v117 = sub_10079ACC4();
      v118 = sub_1007A2994();
      v180 = os_log_type_enabled(v117, v118);
      v120 = v220;
      if (!v180)
      {
        goto LABEL_62;
      }

      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v219 = v122;
      *v121 = 141558275;
      *(v121 + 4) = 1752392040;
      *(v121 + 12) = 2081;
      v218 = v190;
      v181 = sub_1007A3A74();
      v183 = sub_1000070F4(v181, v182, &v219);

      *(v121 + 14) = v183;
      v126 = "ignoring unrequested family purchase book with store ID %{private,mask.hash}s";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v117, v118, v126, v121, 0x16u);
      sub_1000074E0(v122);

LABEL_62:

LABEL_64:
      sub_100007840(v70, &unk_100ADB5C0);
      return sub_10020B3C8(v214, v120, &qword_100AE2238);
    }

    v92 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_creationDate;
    swift_beginAccess();
    sub_1000077D8(v72 + v92, v185, &unk_100ADB5C0);
    v93 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_finishedInfo;
    swift_beginAccess();
    sub_1000077D8(v72 + v93, v202, &qword_100AEC0C8);
    v94 = OBJC_IVAR____TtC5BooksP33_02696A047B96C3DDDA2E2D16AEDFA8F114ProtoStoreBook_wantToReadInfo;
    swift_beginAccess();
    sub_1000077D8(v72 + v94, v187, &qword_100AEC0C8);
    v95 = v214;
    sub_10079A9C4();
    sub_100007840(v70, &unk_100ADB5C0);
    v96 = sub_10079AA04();
    (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
  }

LABEL_48:
  v120 = v220;
  return sub_10020B3C8(v214, v120, &qword_100AE2238);
}

uint64_t sub_1005B08D4()
{
  v1[3] = v0;
  v2 = sub_1007A2744();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_1005B0994, 0, 0);
}

uint64_t sub_1005B0994()
{
  sub_1007A2704();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1005B0A4C;
  v2 = *(v0 + 48);

  return sub_100367BF8(v2);
}

uint64_t sub_1005B0A4C(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[6];
  v6 = v4[5];
  v7 = v4[4];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005B0FC8;
  }

  else
  {
    v4[9] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005B0BD4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005B0BD4()
{
  v1 = v0[9];
  v2 = [v1 predicateForPurchasedBooksAssets];
  v0[10] = v2;
  v3 = [objc_opt_self() predicateFor_All_Finished_LibraryAssets];
  v0[11] = v3;
  sub_1001F1160(&unk_100AD8160);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100811360;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  sub_10000A7C4(0, &unk_100AE6940);
  v5 = v2;
  v6 = v3;
  isa = sub_1007A25D4().super.isa;

  v8 = [objc_opt_self() orPredicateWithSubpredicates:isa];
  v0[12] = v8;

  v9 = [v1 assetIDsOfStoreAssetsWithPredicate:v8];
  v10 = sub_1007A25E4();
  v0[13] = v10;

  v11 = swift_task_alloc();
  v0[14] = v11;
  *(v11 + 16) = v1;
  *(v11 + 24) = v10;
  v12 = swift_task_alloc();
  v0[15] = v12;
  v13 = sub_1001F1160(&qword_100AEC0A8);
  *v12 = v0;
  v12[1] = sub_1005B0E04;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000021, 0x80000001008DEEE0, sub_1005B5070, v11, v13);
}

uint64_t sub_1005B0E04()
{

  return _swift_task_switch(sub_1005B0F38, 0, 0);
}

uint64_t sub_1005B0F38()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = *(v0 + 16);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1005B0FC8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005B102C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AEC0B0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1005B5140;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A24398;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  [v14 performBackgroundReadOnlyBlock:v13];
  _Block_release(v13);
}

uint64_t sub_1005B11F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58[1] = a4;
  v67 = sub_10079A324();
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v58 - v8;
  isa = sub_1007A25D4().super.isa;
  v11 = [a2 libraryAssetsWithAssetIDs:isa inManagedObjectContext:a1];

  sub_10000A7C4(0, &qword_100ADA990);
  v12 = sub_1007A25E4();

  if (v12 >> 62)
  {
    goto LABEL_94;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v59 = v12;
  while (v13)
  {
    v14 = 0;
    v15 = v59 & 0xC000000000000001;
    v16 = v59 & 0xFFFFFFFFFFFFFF8;
    v69 = v59 + 32;
    v65 = v70 + 1;
    v66 = (v64 + 32);
    v68 = _swiftEmptyArrayStorage;
    v61 = v59 & 0xC000000000000001;
    v62 = v13;
    v60 = v59 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v15)
      {
        v17 = sub_1007A3784();
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_89;
        }

        v17 = *(v69 + 8 * v14);
      }

      v18 = v17;
      if (__OFADD__(v14++, 1))
      {
        break;
      }

      v20 = [v17 assetID];
      if (!v20)
      {
        goto LABEL_5;
      }

      v12 = v20;
      v21 = sub_1007A2254();
      v23 = v22;

      v24 = HIBYTE(v23) & 0xF;
      v25 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v23 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(v23) & 0xF;
      }

      else
      {
        v26 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (!v26)
      {

        goto LABEL_5;
      }

      if ((v23 & 0x1000000000000000) != 0)
      {
        v71 = 0;
        sub_10063E4AC(v21, v23, 10);
        v12 = v56;
        goto LABEL_76;
      }

      if ((v23 & 0x2000000000000000) != 0)
      {
        v70[0] = v21;
        v70[1] = v23 & 0xFFFFFFFFFFFFFFLL;
        if (v21 == 43)
        {
          if (!v24)
          {
            goto LABEL_90;
          }

          if (--v24)
          {
            v39 = 0;
            v40 = v65;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                break;
              }

              if (!is_mul_ok(v39, 0xAuLL))
              {
                break;
              }

              v32 = __CFADD__(10 * v39, v41);
              v39 = 10 * v39 + v41;
              if (v32)
              {
                break;
              }

              ++v40;
              if (!--v24)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v21 == 45)
        {
          if (!v24)
          {
            goto LABEL_92;
          }

          if (--v24)
          {
            v33 = 0;
            v34 = v65;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                break;
              }

              if (!is_mul_ok(v33, 0xAuLL))
              {
                break;
              }

              v32 = 10 * v33 >= v35;
              v33 = 10 * v33 - v35;
              if (!v32)
              {
                break;
              }

              ++v34;
              if (!--v24)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else if (v24)
        {
          v44 = 0;
          v45 = v70;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              break;
            }

            if (!is_mul_ok(v44, 0xAuLL))
            {
              break;
            }

            v32 = __CFADD__(10 * v44, v46);
            v44 = 10 * v44 + v46;
            if (v32)
            {
              break;
            }

            ++v45;
            if (!--v24)
            {
              goto LABEL_75;
            }
          }
        }

        goto LABEL_74;
      }

      if ((v21 & 0x1000000000000000) != 0)
      {
        v27 = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v27 = sub_1007A37B4();
      }

      v28 = *v27;
      if (v28 == 43)
      {
        if (v25 < 1)
        {
          goto LABEL_91;
        }

        v24 = v25 - 1;
        if (v25 == 1)
        {
          goto LABEL_74;
        }

        v36 = 0;
        if (v27)
        {
          v37 = v27 + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v36, 0xAuLL))
            {
              goto LABEL_74;
            }

            v32 = __CFADD__(10 * v36, v38);
            v36 = 10 * v36 + v38;
            if (v32)
            {
              goto LABEL_74;
            }

            ++v37;
            if (!--v24)
            {
              goto LABEL_75;
            }
          }
        }
      }

      else if (v28 == 45)
      {
        if (v25 < 1)
        {
          goto LABEL_93;
        }

        v24 = v25 - 1;
        if (v25 == 1)
        {
          goto LABEL_74;
        }

        v29 = 0;
        if (v27)
        {
          v30 = v27 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            if (!is_mul_ok(v29, 0xAuLL))
            {
              break;
            }

            v32 = 10 * v29 >= v31;
            v29 = 10 * v29 - v31;
            if (!v32)
            {
              break;
            }

            ++v30;
            if (!--v24)
            {
              goto LABEL_75;
            }
          }

LABEL_74:
          LOBYTE(v24) = 1;
          goto LABEL_75;
        }
      }

      else
      {
        if (!v25)
        {
          goto LABEL_74;
        }

        v42 = 0;
        if (v27)
        {
          do
          {
            v43 = *v27 - 48;
            if (v43 > 9)
            {
              goto LABEL_74;
            }

            if (!is_mul_ok(v42, 0xAuLL))
            {
              goto LABEL_74;
            }

            v32 = __CFADD__(10 * v42, v43);
            v42 = 10 * v42 + v43;
            if (v32)
            {
              goto LABEL_74;
            }

            ++v27;
          }

          while (--v25);
        }
      }

      LOBYTE(v24) = 0;
LABEL_75:
      v71 = v24;
      v12 = v24;
LABEL_76:

      if ((v12 & 1) == 0)
      {
        v47 = [v18 title];
        if (v47)
        {
          v12 = v47;
          sub_1007A2254();

          v48 = [v18 author];
          if (v48)
          {
            v49 = v48;
            sub_1007A2254();

            v50 = v63;
            v51 = v67;
            sub_10079A314();

            v12 = *v66;
            (*v66)(v9, v50, v51);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = sub_10066C324(0, v68[2] + 1, 1, v68);
            }

            v53 = v68[2];
            v52 = v68[3];
            v15 = v61;
            v13 = v62;
            v16 = v60;
            if (v53 >= v52 >> 1)
            {
              v68 = sub_10066C324(v52 > 1, v53 + 1, 1, v68);
            }

            v54 = v67;
            v55 = v68;
            v68[2] = v53 + 1;
            (v12)(v55 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53, v9, v54);
          }

          else
          {
          }

          goto LABEL_6;
        }
      }

LABEL_5:

LABEL_6:
      if (v14 == v13)
      {
        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    v13 = sub_1007A38D4();
    v59 = v12;
  }

  v68 = _swiftEmptyArrayStorage;
LABEL_96:

  v70[0] = v68;
  sub_1001F1160(&qword_100AEC0B0);
  return sub_1007A26B4();
}

uint64_t sub_1005B18A8()
{
  v1[20] = v0;
  v2 = sub_1007A2744();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_1005B1968, 0, 0);
}

uint64_t sub_1005B1968()
{
  sub_1007A2704();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1005B1A20;
  v2 = *(v0 + 184);

  return sub_100367BF8(v2);
}

uint64_t sub_1005B1A20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 168);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_1005B2218;
  }

  else
  {
    v7 = sub_1005B1B94;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005B1B94()
{
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1005B1CB0;
  v2 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AEC0A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1005B227C;
  v0[13] = &unk_100A24348;
  v0[14] = v2;
  [v1 hiddenAssetStoreIDsWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005B1CB0()
{

  return _swift_task_switch(sub_1005B1D90, 0, 0);
}

uint64_t sub_1005B1D90()
{
  v41 = v0;
  v1 = v0[18];

  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 56);
  v5 = (63 - v3) >> 6;
  v6 = v40 + 1;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v4)
  {
LABEL_9:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = (*(v1 + 48) + ((v8 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    v15 = HIBYTE(v14) & 0xF;
    v16 = v13 & 0xFFFFFFFFFFFFLL;
    if ((v14 & 0x2000000000000000) != 0)
    {
      v17 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v17 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      if ((v14 & 0x1000000000000000) != 0)
      {

        v19 = sub_10063E4AC(v13, v14, 10);
        v38 = v34;

        if ((v38 & 1) == 0)
        {
LABEL_73:
          result = swift_isUniquelyReferenced_nonNull_native();
          v39 = v6;
          if ((result & 1) == 0)
          {
            result = sub_10066C34C(0, *(v9 + 2) + 1, 1, v9);
            v9 = result;
          }

          v33 = *(v9 + 2);
          v32 = *(v9 + 3);
          if (v33 >= v32 >> 1)
          {
            result = sub_10066C34C((v32 > 1), v33 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 2) = v33 + 1;
          *&v9[8 * v33 + 32] = v19;
          v6 = v39;
        }
      }

      else
      {
        if ((v14 & 0x2000000000000000) != 0)
        {
          v40[0] = v13;
          v40[1] = v14 & 0xFFFFFFFFFFFFFFLL;
          if (v13 == 43)
          {
            if (!v15)
            {
              goto LABEL_87;
            }

            if (--v15)
            {
              v19 = 0;
              v27 = v6;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v19, 0xAuLL))
                {
                  break;
                }

                v22 = __CFADD__(10 * v19, v28);
                v19 = 10 * v19 + v28;
                if (v22)
                {
                  break;
                }

                ++v27;
                if (!--v15)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else if (v13 == 45)
          {
            if (!v15)
            {
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
              return result;
            }

            if (--v15)
            {
              v19 = 0;
              v23 = v6;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v19, 0xAuLL))
                {
                  break;
                }

                v22 = 10 * v19 >= v24;
                v19 = 10 * v19 - v24;
                if (!v22)
                {
                  break;
                }

                ++v23;
                if (!--v15)
                {
                  goto LABEL_72;
                }
              }
            }
          }

          else if (v15)
          {
            v19 = 0;
            v30 = v40;
            while (1)
            {
              v31 = *v30 - 48;
              if (v31 > 9)
              {
                break;
              }

              if (!is_mul_ok(v19, 0xAuLL))
              {
                break;
              }

              v22 = __CFADD__(10 * v19, v31);
              v19 = 10 * v19 + v31;
              if (v22)
              {
                break;
              }

              ++v30;
              if (!--v15)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

        if ((v13 & 0x1000000000000000) != 0)
        {
          result = (v14 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_1007A37B4();
        }

        v18 = *result;
        if (v18 == 43)
        {
          if (v16 < 1)
          {
            goto LABEL_88;
          }

          v15 = v16 - 1;
          if (v16 == 1)
          {
            goto LABEL_71;
          }

          v19 = 0;
          if (result)
          {
            v25 = (result + 1);
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v19, 0xAuLL))
              {
                goto LABEL_71;
              }

              v22 = __CFADD__(10 * v19, v26);
              v19 = 10 * v19 + v26;
              if (v22)
              {
                goto LABEL_71;
              }

              ++v25;
              if (!--v15)
              {
                goto LABEL_72;
              }
            }
          }
        }

        else if (v18 == 45)
        {
          if (v16 < 1)
          {
            goto LABEL_86;
          }

          v15 = v16 - 1;
          if (v16 == 1)
          {
            goto LABEL_71;
          }

          v19 = 0;
          if (result)
          {
            v20 = (result + 1);
            while (1)
            {
              v21 = *v20 - 48;
              if (v21 > 9)
              {
                break;
              }

              if (!is_mul_ok(v19, 0xAuLL))
              {
                break;
              }

              v22 = 10 * v19 >= v21;
              v19 = 10 * v19 - v21;
              if (!v22)
              {
                break;
              }

              ++v20;
              if (!--v15)
              {
                goto LABEL_72;
              }
            }

LABEL_71:
            v19 = 0;
            LOBYTE(v15) = 1;
            goto LABEL_72;
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_71;
          }

          v19 = 0;
          if (result)
          {
            do
            {
              v29 = *result - 48;
              if (v29 > 9)
              {
                goto LABEL_71;
              }

              if (!is_mul_ok(v19, 0xAuLL))
              {
                goto LABEL_71;
              }

              v22 = __CFADD__(10 * v19, v29);
              v19 = 10 * v19 + v29;
              if (v22)
              {
                goto LABEL_71;
              }

              ++result;
            }

            while (--v16);
          }
        }

        LOBYTE(v15) = 0;
LABEL_72:
        if ((v15 & 1) == 0)
        {
          goto LABEL_73;
        }
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v10 >= v5)
    {
      break;
    }

    v4 = *(v1 + 56 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  v35 = v0[25];

  v36 = sub_10040E40C(v9);

  v37 = v0[1];

  return v37(v36);
}

uint64_t sub_1005B2218()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B227C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  v5 = sub_1007A2834();
  v6 = *(*(v4 + 64) + 40);
  *v6 = v5;
  v6[1] = a3;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t sub_1005B2304(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_1007A2744();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1005B23C4, 0, 0);
}

uint64_t sub_1005B23C4()
{
  sub_1007A2704();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1005B247C;
  v2 = *(v0 + 176);

  return sub_100367BF8(v2);
}

uint64_t sub_1005B247C(uint64_t a1)
{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[22];
  v6 = v4[21];
  v7 = v4[20];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005B2870;
  }

  else
  {
    v4[25] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005B2604;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005B2604()
{
  v1 = v0[25];
  v2 = v0[18];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1005B2720;
  v3 = swift_continuation_init();
  v0[17] = sub_1001F1160(&qword_100AEC0B8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1005B28D4;
  v0[13] = &unk_100A243C0;
  v0[14] = v3;
  [v1 earliestPurchaseTimestampWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1005B2720()
{

  return _swift_task_switch(sub_1005B2800, 0, 0);
}

uint64_t sub_1005B2800()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B2870()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005B28D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = *sub_10000E3E8((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_100796B64();
    v11 = sub_100796BB4();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v12 = sub_100796BB4();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  sub_10020B3C8(v6, v9, &unk_100ADB5C0);
  sub_10020B3C8(v9, *(*(v10 + 64) + 40), &unk_100ADB5C0);
  return swift_continuation_resume();
}

uint64_t sub_1005B2A64(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1007A2744();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1005B2B24, 0, 0);
}

uint64_t sub_1005B2B24()
{
  sub_1007A2704();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1005B2BDC;
  v2 = *(v0 + 56);

  return sub_100367BF8(v2);
}

uint64_t sub_1005B2BDC(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005B3030;
  }

  else
  {
    v4[10] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005B2D64;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005B2D64()
{
  v1 = v0[10];
  v2 = sub_1005AAE74(v0[3]);
  v0[11] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[13] = v4;
  v5 = sub_1001F1160(&qword_100AEC080);
  *v4 = v0;
  v4[1] = sub_1005B2E84;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002DLL, 0x80000001008DEE90, sub_1005B5028, v3, v5);
}

uint64_t sub_1005B2E84()
{

  return _swift_task_switch(sub_1005B2FB8, 0, 0);
}

uint64_t sub_1005B2FB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1005B3030()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005B3094(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1001F1160(&qword_100AEC088);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1005B5030;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A24320;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  [v14 performBackgroundReadOnlyBlock:v13];
  _Block_release(v13);
}

uint64_t sub_1005B3260(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v6 = sub_1001F1160(&qword_100AEC098);
  __chkstk_darwin(v6 - 8);
  v8 = v30 - v7;
  v9 = sub_10079A434();
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v38 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = v30 - v12;
  isa = sub_1007A25D4().super.isa;
  v14 = [a2 libraryAssetsWithAssetIDs:isa inManagedObjectContext:a1];

  sub_10000A7C4(0, &qword_100ADA990);
  v15 = sub_1007A25E4();

  if (v15 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v17 = 0;
    v36 = v15 & 0xFFFFFFFFFFFFFF8;
    v37 = v15 & 0xC000000000000001;
    v18 = (v34 + 48);
    v19 = (v34 + 32);
    v20 = _swiftEmptyArrayStorage;
    v31 = v15;
    v32 = v9;
    v35 = i;
    while (1)
    {
      if (v37)
      {
        v21 = sub_1007A3784();
      }

      else
      {
        if (v17 >= *(v36 + 16))
        {
          goto LABEL_18;
        }

        v21 = *(v15 + 8 * v17 + 32);
      }

      v22 = v21;
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v39 = v21;
      sub_1005B3618(&v39, v8);

      if ((*v18)(v8, 1, v9) == 1)
      {
        sub_100007840(v8, &qword_100AEC098);
      }

      else
      {
        v24 = *v19;
        v25 = v33;
        (*v19)(v33, v8, v9);
        v24(v38, v25, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10066C45C(0, v20[2] + 1, 1, v20);
        }

        v27 = v20[2];
        v26 = v20[3];
        if (v27 >= v26 >> 1)
        {
          v20 = sub_10066C45C(v26 > 1, v27 + 1, 1, v20);
        }

        v20[2] = v27 + 1;
        v28 = v20 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27;
        v9 = v32;
        v24(v28, v38, v32);
        v15 = v31;
      }

      ++v17;
      if (v23 == v35)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_21:

  v39 = v20;
  sub_1001F1160(&qword_100AEC088);
  return sub_1007A26B4();
}

void sub_1005B3618(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 assetID];
  if (!v4)
  {
LABEL_70:
    v38 = 1;
LABEL_71:
    v39 = sub_10079A434();
    (*(*(v39 - 8) + 56))(a2, v38, 1, v39);
    return;
  }

  v5 = v4;
  v6 = sub_1007A2254();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  v10 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    v38 = 1;
    goto LABEL_71;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v44 = 0;
    sub_10063E4AC(v6, v8, 10);
    v32 = v42;
    goto LABEL_66;
  }

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0x1000000000000000) != 0)
    {
      v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v12 = sub_1007A37B4();
    }

    v13 = *v12;
    if (v13 == 43)
    {
      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          v21 = 0;
          if (v12)
          {
            v22 = v12 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_64;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                goto LABEL_64;
              }

              v17 = __CFADD__(10 * v21, v23);
              v21 = 10 * v21 + v23;
              if (v17)
              {
                goto LABEL_64;
              }

              ++v22;
              if (!--v9)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_56;
        }

        goto LABEL_64;
      }

      goto LABEL_80;
    }

    if (v13 != 45)
    {
      if (v10)
      {
        v27 = 0;
        if (v12)
        {
          while (1)
          {
            v28 = *v12 - 48;
            if (v28 > 9)
            {
              goto LABEL_64;
            }

            if (!is_mul_ok(v27, 0xAuLL))
            {
              goto LABEL_64;
            }

            v17 = __CFADD__(10 * v27, v28);
            v27 = 10 * v27 + v28;
            if (v17)
            {
              goto LABEL_64;
            }

            ++v12;
            if (!--v10)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }

LABEL_64:
      LOBYTE(v9) = 1;
      goto LABEL_65;
    }

    if (v10 >= 1)
    {
      v9 = v10 - 1;
      if (v10 != 1)
      {
        v14 = 0;
        if (v12)
        {
          v15 = v12 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_64;
            }

            if (!is_mul_ok(v14, 0xAuLL))
            {
              goto LABEL_64;
            }

            v17 = 10 * v14 >= v16;
            v14 = 10 * v14 - v16;
            if (!v17)
            {
              goto LABEL_64;
            }

            ++v15;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

LABEL_56:
        LOBYTE(v9) = 0;
LABEL_65:
        v44 = v9;
        v32 = v9;
LABEL_66:

        if ((v32 & 1) == 0 && [v3 seriesType] == 2)
        {
          v33 = [v3 seriesID];
          if (v33)
          {
            v34 = v33;
            v35 = sub_1007A2254();
            v37 = v36;

            sub_10063D7E8(v35, v37);
          }

          v40 = [v3 seriesSortKey];
          v41 = v40;
          if (v40)
          {
            [v40 longLongValue];
          }

          [v3 isOwned];
          sub_10079A424();
          v38 = 0;
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      goto LABEL_64;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v43[0] = v6;
  v43[1] = v8 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v9)
      {
        v29 = 0;
        v30 = v43;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            break;
          }

          if (!is_mul_ok(v29, 0xAuLL))
          {
            break;
          }

          v17 = __CFADD__(10 * v29, v31);
          v29 = 10 * v29 + v31;
          if (v17)
          {
            break;
          }

          ++v30;
          if (!--v9)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v9)
    {
      if (--v9)
      {
        v18 = 0;
        v19 = v43 + 1;
        while (1)
        {
          v20 = *v19 - 48;
          if (v20 > 9)
          {
            break;
          }

          if (!is_mul_ok(v18, 0xAuLL))
          {
            break;
          }

          v17 = 10 * v18 >= v20;
          v18 = 10 * v18 - v20;
          if (!v17)
          {
            break;
          }

          ++v19;
          if (!--v9)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_79;
  }

  if (v9)
  {
    if (--v9)
    {
      v24 = 0;
      v25 = v43 + 1;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        if (!is_mul_ok(v24, 0xAuLL))
        {
          break;
        }

        v17 = __CFADD__(10 * v24, v26);
        v24 = 10 * v24 + v26;
        if (v17)
        {
          break;
        }

        ++v25;
        if (!--v9)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_64;
  }

LABEL_81:
  __break(1u);
}

uint64_t sub_1005B3A88(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = sub_1007A2744();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_1005B3B70, 0, 0);
}

uint64_t sub_1005B3B70()
{
  sub_1007A2704();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1005B3C28;
  v2 = *(v0 + 64);

  return sub_100367BF8(v2);
}

uint64_t sub_1005B3C28(uint64_t a1)
{
  v4 = *v2;
  v4[10] = v1;

  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005B5434;
  }

  else
  {
    v4[11] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1005B3DB0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1005B3DB0()
{
  v1 = v0[11];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[13] = v5;
  v6 = sub_1001F1160(&qword_100AEC080);
  *v5 = v0;
  v5[1] = sub_1005B3ECC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000002ELL, 0x80000001008DEE60, sub_1005B4F68, v4, v6);
}

uint64_t sub_1005B3ECC()
{

  return _swift_task_switch(sub_1005B3FE4, 0, 0);
}

uint64_t sub_1005B3FE4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1005B405C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001F1160(&qword_100AEC088);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = aBlock - v12;
  (*(v9 + 16))(aBlock - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  (*(v9 + 32))(v15 + v14, v13, v8);
  *(v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_1005B4F74;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100201C54;
  aBlock[3] = &unk_100A242D0;
  v16 = _Block_copy(aBlock);

  [a2 performBackgroundReadOnlyBlock:v16];
  _Block_release(v16);
}

void sub_1005B423C(void *a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v97 = a1;
  v4 = sub_10079A434();
  v95 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v85 - v8;
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = sub_1007A2214();
  v12 = [v10 initWithEntityName:v11];

  [v12 setReturnsObjectsAsFaults:0];
  sub_10000A7C4(0, &unk_100AE6940);
  sub_1001F1160(&unk_100AD5090);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10080EFF0;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 64) = sub_10000E4C4();
  *(v13 + 32) = 0x4449736569726573;
  *(v13 + 40) = 0xE800000000000000;
  v14 = sub_1005AAE74(a2);
  *(v13 + 96) = sub_1001F1160(&unk_100AD61F0);
  *(v13 + 104) = sub_100005920(&qword_100AEC090, &unk_100AD61F0);
  *(v13 + 72) = v14;
  v15 = sub_1007A2904();
  [v12 setPredicate:v15];

  sub_10000A7C4(0, &qword_100ADA990);
  v16 = sub_1007A2F34();
  v88 = 0;
  v92 = v9;
  v93 = v6;
  v94 = v4;
  v86 = v12;
  v25 = v16;
  if (v16 >> 62)
  {
    v26 = sub_1007A38D4();
  }

  else
  {
    v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = v25;
  if (!v26)
  {
    v97 = _swiftEmptyArrayStorage;
LABEL_11:

    v26 = v86;
    v32 = v97;
    goto LABEL_12;
  }

  v27 = 0;
  v28 = v25 & 0xC000000000000001;
  v29 = v25 & 0xFFFFFFFFFFFFFF8;
  v30 = v25 + 32;
  v89 = v98 + 1;
  v96 = (v95 + 32);
  v97 = _swiftEmptyArrayStorage;
  v31 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
  v91 = v29;
  while (1)
  {
    if (v28)
    {
      v33 = sub_1007A3784();
    }

    else
    {
      if (v27 >= *(v29 + 16))
      {
        goto LABEL_99;
      }

      v33 = *(v30 + 8 * v27);
    }

    v34 = v33;
    if (__OFADD__(v27++, 1))
    {
      break;
    }

    v36 = [v33 v31[467]];
    if (!v36)
    {
      goto LABEL_14;
    }

    v37 = v36;
    v38 = sub_1007A2254();
    v40 = v39;

    v41 = HIBYTE(v40) & 0xF;
    v42 = v38 & 0xFFFFFFFFFFFFLL;
    if ((v40 & 0x2000000000000000) != 0)
    {
      v43 = HIBYTE(v40) & 0xF;
    }

    else
    {
      v43 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      if ((v40 & 0x1000000000000000) == 0)
      {
        if ((v40 & 0x2000000000000000) != 0)
        {
          v98[0] = v38;
          v98[1] = v40 & 0xFFFFFFFFFFFFFFLL;
          if (v38 == 43)
          {
            if (!v41)
            {
              goto LABEL_100;
            }

            if (--v41)
            {
              v56 = 0;
              v57 = v89;
              while (1)
              {
                v58 = *v57 - 48;
                if (v58 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v56, 0xAuLL))
                {
                  break;
                }

                v49 = __CFADD__(10 * v56, v58);
                v56 = 10 * v56 + v58;
                if (v49)
                {
                  break;
                }

                ++v57;
                if (!--v41)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v38 == 45)
          {
            if (!v41)
            {
              goto LABEL_102;
            }

            if (--v41)
            {
              v50 = 0;
              v51 = v89;
              while (1)
              {
                v52 = *v51 - 48;
                if (v52 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v50, 0xAuLL))
                {
                  break;
                }

                v49 = 10 * v50 >= v52;
                v50 = 10 * v50 - v52;
                if (!v49)
                {
                  break;
                }

                ++v51;
                if (!--v41)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v41)
          {
            v61 = 0;
            v62 = v98;
            while (1)
            {
              v63 = *v62 - 48;
              if (v63 > 9)
              {
                break;
              }

              if (!is_mul_ok(v61, 0xAuLL))
              {
                break;
              }

              v49 = __CFADD__(10 * v61, v63);
              v61 = 10 * v61 + v63;
              if (v49)
              {
                break;
              }

              v62 = (v62 + 1);
              if (!--v41)
              {
                goto LABEL_83;
              }
            }
          }
        }

        else
        {
          if ((v38 & 0x1000000000000000) != 0)
          {
            v44 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v44 = sub_1007A37B4();
          }

          v45 = *v44;
          if (v45 == 43)
          {
            if (v42 < 1)
            {
              goto LABEL_101;
            }

            v41 = v42 - 1;
            if (v42 != 1)
            {
              v53 = 0;
              if (!v44)
              {
                goto LABEL_74;
              }

              v54 = v44 + 1;
              while (1)
              {
                v55 = *v54 - 48;
                if (v55 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v53, 0xAuLL))
                {
                  break;
                }

                v49 = __CFADD__(10 * v53, v55);
                v53 = 10 * v53 + v55;
                if (v49)
                {
                  break;
                }

                ++v54;
                if (!--v41)
                {
                  goto LABEL_83;
                }
              }
            }
          }

          else if (v45 == 45)
          {
            if (v42 < 1)
            {
              goto LABEL_103;
            }

            v41 = v42 - 1;
            if (v42 != 1)
            {
              v46 = 0;
              if (v44)
              {
                v47 = v44 + 1;
                while (1)
                {
                  v48 = *v47 - 48;
                  if (v48 > 9)
                  {
                    goto LABEL_82;
                  }

                  if (!is_mul_ok(v46, 0xAuLL))
                  {
                    goto LABEL_82;
                  }

                  v49 = 10 * v46 >= v48;
                  v46 = 10 * v46 - v48;
                  if (!v49)
                  {
                    goto LABEL_82;
                  }

                  ++v47;
                  if (!--v41)
                  {
                    goto LABEL_83;
                  }
                }
              }

LABEL_74:
              LOBYTE(v41) = 0;
LABEL_83:
              v99 = v41;
              v64 = v41;
              goto LABEL_84;
            }
          }

          else
          {
            if (!v42)
            {
              goto LABEL_82;
            }

            v59 = 0;
            if (!v44)
            {
              goto LABEL_74;
            }

            while (1)
            {
              v60 = *v44 - 48;
              if (v60 > 9)
              {
                break;
              }

              if (!is_mul_ok(v59, 0xAuLL))
              {
                break;
              }

              v49 = __CFADD__(10 * v59, v60);
              v59 = 10 * v59 + v60;
              if (v49)
              {
                break;
              }

              ++v44;
              if (!--v42)
              {
                goto LABEL_74;
              }
            }
          }
        }

LABEL_82:
        LOBYTE(v41) = 1;
        goto LABEL_83;
      }

      v99 = 0;
      sub_10063E4AC(v38, v40, 10);
      v64 = v84;
LABEL_84:

      if (v64)
      {
        goto LABEL_14;
      }

      v65 = v26;
      v66 = v30;
      v67 = v28;
      v68 = [v34 seriesID];
      if (v68)
      {
        v69 = v68;
        v70 = sub_1007A2254();
        v72 = v71;

        sub_10063D7E8(v70, v72);
      }

      v73 = [v34 seriesSortKey];
      v74 = v73;
      if (v73)
      {
        [v73 longLongValue];
      }

      [v34 isOwned];
      v75 = v93;
      sub_10079A424();

      v76 = *v96;
      v77 = v92;
      v78 = v94;
      (*v96)(v92, v75, v94);
      v79 = v97;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = sub_10066C45C(0, v79[2] + 1, 1, v79);
      }

      v80 = v95;
      v82 = v97[2];
      v81 = v97[3];
      if (v82 >= v81 >> 1)
      {
        v97 = sub_10066C45C(v81 > 1, v82 + 1, 1, v97);
      }

      v83 = v97;
      v97[2] = v82 + 1;
      v76(&v83[((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v82], v77, v78);
      v28 = v67;
      v29 = v91;
      v30 = v66;
      v26 = v65;
      v31 = &selRef__setupSizeRestrictionsForWindowScene_sceneType_;
      if (v27 == v26)
      {
        goto LABEL_11;
      }
    }

    else
    {

LABEL_14:

      if (v27 == v26)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  swift_once();
  v17 = sub_10079ACE4();
  sub_100008B98(v17, qword_100B23648);
  swift_errorRetain();
  v18 = sub_10079ACC4();
  v19 = sub_1007A29B4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v98[0] = v21;
    *v20 = 136315138;
    swift_getErrorValue();
    v22 = sub_1007A3B84();
    v24 = sub_1000070F4(v22, v23, v98);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed query for books by seriesID: %s", v20, 0xCu);
    sub_1000074E0(v21);
  }

  else
  {
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_12:
  v98[0] = v32;
  sub_1001F1160(&qword_100AEC088);
  sub_1007A26B4();
}

uint64_t sub_1005B4BE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1002104D8;

  return sub_1005ABEC8(a1);
}

uint64_t sub_1005B4C7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002812C;

  return sub_1005B2304(a1);
}

uint64_t sub_1005B4D18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10036D9C0;

  return sub_1005B08D4();
}

uint64_t sub_1005B4DA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10036D9C0;

  return sub_1005B18A8();
}

uint64_t sub_1005B4E38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_1005B2A64(a1);
}

uint64_t sub_1005B4ED0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_1005B3A88(a1);
}

void sub_1005B4F74(void *a1)
{
  v3 = *(sub_1001F1160(&qword_100AEC088) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1005B423C(a1, v4, v5);
}

uint64_t sub_1005B5078(uint64_t *a1)
{
  v2 = sub_1001F1160(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1005B5168(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(sub_1001F1160(a2) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a4(a1, v7, v8, v9);
}

uint64_t sub_1005B521C(uint64_t a1)
{
  v3 = *(sub_10079A3E4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_1001F1160(qword_100AEC0E0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1005AC8A8(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_1005B532C()
{
  sub_1001F1160(qword_100AEC0E0);

  return sub_1005AEA3C();
}

uint64_t sub_1005B53C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B544C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005B5518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v2 = *(a1 + 24);
  v22 = *(a1 + 16);
  v21 = v2;
  v3 = type metadata accessor for PopoverListItem();
  v25 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (v20 - v4);
  v6 = sub_10079C2A4();
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v20 - v7;
  WitnessTable = swift_getWitnessTable();
  v33 = &protocol witness table for _FlexFrameLayout;
  v9 = swift_getWitnessTable();
  v30 = v6;
  v31 = v9;
  v20[1] = &opaque type descriptor for <<opaque return type of View.listRowSeparator(_:edges:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v27 = v22;
  v28 = v21;
  v29 = v23;
  sub_1002E57E0(0, 0, sub_1005B599C, v5);
  sub_10079E474();
  sub_10079DB24();
  (*(v25 + 8))(v5, v3);
  sub_10079BE14();
  sub_10079D864();
  (*(v24 + 8))(v8, v6);
  v30 = v6;
  v31 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10039232C(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v18 = *(v11 + 8);
  v18(v13, OpaqueTypeMetadata2);
  sub_10039232C(v16, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v18)(v16, OpaqueTypeMetadata2);
}

uint64_t sub_1005B58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10039232C(v6, v9, v10);
  sub_10039232C(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1005B59A8(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v4 = HIDWORD(a2);
  sub_1007A0A14();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  sub_1007A02B4();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  sub_10079F914();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  sub_10079EF74();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  sub_1007A3C24(v4 & 1);
  sub_1007A3C24(BYTE1(v4) & 1);
  sub_1007A3C24(BYTE2(v4) & 1);
  sub_1007A3C14(a3);
  sub_1007A0CE4();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1005B5AE8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 1);
  v7 = *v0;
  sub_1007A3C04();
  v8 = 0x1000000;
  if ((v2 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v7 | (v1 << 16) | v8;
  v10 = &_mh_execute_header;
  if ((v3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if ((v4 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000000000;
  if ((v5 & 1) == 0)
  {
    v12 = 0;
  }

  sub_1005B59A8(v14, v9 | v10 | v11 | v12, v6);
  return sub_1007A3C44();
}

uint64_t sub_1005B5BAC(uint64_t a1)
{
  v2 = 0x1000000;
  if ((*(v1 + 3) & 1) == 0)
  {
    v2 = 0;
  }

  v3 = *v1 | (*(v1 + 2) << 16) | v2;
  v4 = &_mh_execute_header;
  if ((v1[2] & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((*(v1 + 5) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x1000000000000;
  if ((v1[3] & 1) == 0)
  {
    v6 = 0;
  }

  return sub_1005B59A8(a1, v3 | v4 | v5 | v6, *(v1 + 1));
}

Swift::Int sub_1005B5C18()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  v6 = *(v0 + 1);
  v7 = *v0;
  sub_1007A3C04();
  v8 = 0x1000000;
  if ((v2 & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v7 | (v1 << 16) | v8;
  v10 = &_mh_execute_header;
  if ((v3 & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if ((v4 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x1000000000000;
  if ((v5 & 1) == 0)
  {
    v12 = 0;
  }

  sub_1005B59A8(v14, v9 | v10 | v11 | v12, v6);
  return sub_1007A3C44();
}

uint64_t sub_1005B5CD8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a1 + 1);
  v6 = *(a1 + 16);
  v7 = *a1 | (*(a1 + 2) << 16);
  v8 = 0x1000000;
  if (*(a1 + 3))
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = v7 | v9;
  v11 = (v2 & 1) == 0;
  v12 = &_mh_execute_header;
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = &_mh_execute_header;
  }

  v11 = (v3 & 1) == 0;
  v14 = 0x10000000000;
  if (v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0x10000000000;
  }

  v11 = (v4 & 1) == 0;
  v16 = 0x1000000000000;
  if (v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0x1000000000000;
  }

  v18 = v10 | v13 | v15;
  if ((*(a2 + 3) & 1) == 0)
  {
    v8 = 0;
  }

  v19 = *a2 | (*(a2 + 2) << 16) | v8;
  if ((a2[2] & 1) == 0)
  {
    v12 = 0;
  }

  if ((*(a2 + 5) & 1) == 0)
  {
    v14 = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v16 = 0;
  }

  return sub_1005B6D88(v18 | v17, v5, v6 & 1, v19 | v12 | v14 | v16, *(a2 + 1));
}

void sub_1005B5DA0(uint64_t a1, uint64_t a2, int a3)
{
  v44 = a1;
  v47 = sub_1007A06A4();
  v4 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v45 = &v37[-v7];
  v8 = sub_10079EF54();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1001F1160(&qword_100AEC200);
  __chkstk_darwin(v12);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v37[-v16];
  __chkstk_darwin(v18);
  v20 = &v37[-v19];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    sub_1005B709C(v44, v20);
    v22 = *(v12 + 48);
    v23 = v20[*(v12 + 64)];
    *v17 = *v20;
    LODWORD(v44) = a3;
    v24 = v8;
    v25 = *(v9 + 32);
    v26 = &v20[v22];
    v27 = v24;
    (v25)(&v17[v22], v26);
    v17[*(v12 + 64)] = v23;
    sub_1005B709C(v17, v14);
    v28 = *v14;
    v29 = *(v12 + 48);
    v41 = v14[*(v12 + 64)];
    v42 = v28;
    v25(v11, &v14[v29], v27);
    v40 = sub_10079EF44();
    LOBYTE(v39) = sub_10079EF04() & 1;
    v39 = v39;
    LOBYTE(v38) = sub_10079EE44() & 1;
    v38 = v38;
    v30 = v45;
    sub_10079EE74();
    v32 = v46;
    v31 = v47;
    (*(v4 + 104))(v46, enum case for MultipleColumnMode.oneColumn(_:), v47);
    sub_100022A5C(&qword_100AEC208, &type metadata accessor for MultipleColumnMode);
    v33 = sub_1007A2124();
    v34 = *(v4 + 8);
    v34(v32, v31);
    v34(v30, v31);
    LOBYTE(v32) = (v33 & 1) == 0;
    LOBYTE(v31) = sub_10079EEF4() & 1;
    v35 = sub_10071E6EC();
    (*(v9 + 8))(v11, v27);
    sub_100007840(v17, &qword_100AEC200);
    v36 = v43;
    v48 = v41;
    v49 = v42;
    v50 = v40;
    v51 = v39;
    v52 = v38;
    v53 = v31;
    v54 = v32;
    v55 = v35;
    v56 = v44 & 1;
    sub_10079B914();
  }
}

char *sub_1005B61C8(unint64_t a1)
{
  swift_getKeyPath();
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    swift_getObjectType();
    sub_1007A08E4();
  }

  v2 = sub_1007A38D4();
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  result = sub_1003BD0CC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        sub_1007A3784();
        swift_getAtKeyPath();
        swift_unknownObjectRelease();
        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        if (v6 >= v5 >> 1)
        {
          sub_1003BD0CC((v5 > 1), v6 + 1, 1);
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v6 + 1;
        v7 = &_swiftEmptyArrayStorage[2 * v6];
        v7[4] = v12;
        v7[5] = v13;
      }

      while (v2 != v4);
    }

    else
    {
      v8 = a1 + 32;
      do
      {

        swift_getAtKeyPath();

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_1003BD0CC((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        v11 = &_swiftEmptyArrayStorage[2 * v10];
        v11[4] = v12;
        v11[5] = v13;
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005B63DC()
{
  v0 = sub_1007A1C54();
  v21 = *(v0 - 8);
  v22 = v0;
  __chkstk_darwin(v0);
  v19 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1007A1CA4();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007A1C64();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10079F8B4();
  sub_10000E3E8(aBlock, v25);
  v8 = sub_10079EBA4();
  result = sub_1000074E0(aBlock);
  if (v8)
  {
    sub_10079F8B4();
    sub_10000E3E8(aBlock, v25);
    v10 = sub_10079ECB4();
    v12 = v11;
    sub_1000074E0(aBlock);
    sub_100017E74();
    (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.utility(_:), v4);
    v13 = sub_1007A2DB4();
    (*(v5 + 8))(v7, v4);
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = v12;
    v26 = sub_1005B708C;
    v27 = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    v25 = &unk_100A246A8;
    v15 = _Block_copy(aBlock);
    sub_1007A1C74();
    v23 = _swiftEmptyArrayStorage;
    sub_100022A5C(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0);
    v16 = v19;
    v17 = v22;
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v15);

    (*(v21 + 8))(v16, v17);
    (*(v18 + 8))(v3, v20);
  }

  return result;
}

id sub_1005B681C()
{
  v0 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v0 - 8);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = objc_opt_self();
  result = [v6 sharedInstance];
  if (!result)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = sub_1007A2214();
  v10 = [v8 storeShortURLForStoreId:v9 dataSource:0];

  if (v10)
  {
    sub_100796974();

    v11 = sub_1007969B4();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  }

  else
  {
    v12 = sub_1007969B4();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_100007840(v5, &unk_100AD5AC0);
  result = [v6 sharedInstance];
  if (!result)
  {
    goto LABEL_11;
  }

  v13 = result;
  v14 = sub_1007A2214();
  v15 = [v13 storeURLForStoreId:v14 dataSource:0];

  if (v15)
  {
    sub_100796974();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1007969B4();
  (*(*(v17 - 8) + 56))(v2, v16, 1, v17);
  return sub_100007840(v2, &unk_100AD5AC0);
}

uint64_t getEnumTagSinglePayload for _BookReaderDataManagerState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 3);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _BookReaderDataManagerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1005B6C60()
{
  result = qword_100AEC1E0;
  if (!qword_100AEC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC1E0);
  }

  return result;
}

uint64_t sub_1005B6CF4()
{
  sub_1001F1160(&qword_100AE8788);
  sub_100005920(&unk_100AEC1F0, &qword_100AE8788);
  return sub_10079BA14();
}

uint64_t sub_1005B6D88(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = sub_1007A0A14();
  v11 = v10;
  if (v9 == sub_1007A0A14() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_1007A3AB4();

    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v14 = sub_1007A02B4();
  v16 = v15;
  if (v14 == sub_1007A02B4() && v16 == v17)
  {
  }

  else
  {
    v18 = sub_1007A3AB4();

    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v19 = sub_10079F914();
  v21 = v20;
  if (v19 != sub_10079F914() || v21 != v22)
  {
    v23 = sub_1007A3AB4();

    if (v23)
    {
      goto LABEL_13;
    }

LABEL_17:
    v31 = 0;
    return v31 & 1;
  }

LABEL_13:
  v42 = a2;
  v43 = a5;
  v24 = sub_10079EF74();
  v26 = v25;
  v28 = HIWORD(a1) & 1 ^ HIWORD(a4) & 1;
  if (v24 == sub_10079EF74() && v26 == v27)
  {
    v29 = (a1 >> 40) & 1;
    v30 = HIDWORD(a1) & 1;

    v31 = 0;
    if ((v30 ^ BYTE4(a4) & 1 | v29 ^ (a4 >> 40) & 1 | v28))
    {
      return v31 & 1;
    }
  }

  else
  {
    v32 = (a4 >> 40) & 1;
    v33 = HIDWORD(a4) & 1;
    v34 = (a1 >> 40) & 1;
    v35 = HIDWORD(a1) & 1;
    v36 = sub_1007A3AB4();

    v31 = 0;
    if ((v35 ^ v33) & 1 | ((v36 & 1) == 0) | ((v34 ^ v32) | v28) & 1)
    {
      return v31 & 1;
    }
  }

  if (v42 == v43)
  {
    v37 = sub_1007A0CE4();
    v39 = v38;
    if (v37 == sub_1007A0CE4() && v39 == v40)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_1007A3AB4();
    }
  }

  return v31 & 1;
}

uint64_t sub_1005B709C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AEC200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005B711C(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_10000B3D8((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656C746974;
  *(v5 + 5) = 0xE500000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10000B3D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_10000B3D8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x726564616568;
    *(v8 + 5) = 0xE600000000000000;
  }

LABEL_12:
  if ((a1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10000B3D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_10000B3D8((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x6165487974706D65;
    *(v11 + 5) = 0xEB00000000726564;
    if ((a1 & 4) == 0)
    {
LABEL_14:
      if ((a1 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000B3D8(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_10000B3D8((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x79726F74736968;
  *(v14 + 5) = 0xE700000000000000;
  if ((a1 & 8) == 0)
  {
LABEL_15:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000B3D8(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_10000B3D8((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x65736F6C63;
  *(v17 + 5) = 0xE500000000000000;
  if ((a1 & 0x10) == 0)
  {
LABEL_16:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10000B3D8(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_10000B3D8((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 1970169197;
  *(v20 + 5) = 0xE400000000000000;
  if ((a1 & 0x20) != 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_10000B3D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_10000B3D8((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0x6E657A6F7266;
    *(v23 + 5) = 0xE600000000000000;
  }

LABEL_43:
  isa = sub_1007A25D4().super.isa;

  v25 = sub_1007A2214();
  v26 = [(objc_class *)isa componentsJoinedByString:v25];

  v27 = sub_1007A2254();
  v29 = v28;

  v31._countAndFlagsBits = v27;
  v31._object = v29;
  sub_1007A23D4(v31);

  v32._countAndFlagsBits = 93;
  v32._object = 0xE100000000000000;
  sub_1007A23D4(v32);
  return 91;
}

uint64_t sub_1005B7578@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1001F0D78();

  *a1 = v2;
  return result;
}

unint64_t sub_1005B75BC()
{
  result = qword_100AEC210;
  if (!qword_100AEC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC210);
  }

  return result;
}

unint64_t sub_1005B7614()
{
  result = qword_100AEC218;
  if (!qword_100AEC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC218);
  }

  return result;
}

unint64_t sub_1005B766C()
{
  result = qword_100AEC220;
  if (!qword_100AEC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC220);
  }

  return result;
}

unint64_t sub_1005B76C4()
{
  result = qword_100AEC228;
  if (!qword_100AEC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC228);
  }

  return result;
}

uint64_t sub_1005B7718()
{
  [objc_opt_self() incrementPostLaunchCacheCount];
  [objc_opt_self() incrementPostLaunchCacheCount];
  sub_10079AD34();
  result = sub_10079AD04();
  if (result)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = result;
      v2 = OBJC_IVAR___BKOfflineCacheLoadingController_cancellable;
      if (*(result + OBJC_IVAR___BKOfflineCacheLoadingController_cancellable))
      {

        sub_10079B874();
      }

      *&v1[v2] = 0;
    }
  }

  return result;
}

id OfflineCacheLoadingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OfflineCacheLoadingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005B7834()
{
  type metadata accessor for ArtworkShadowView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [v0 layer];
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  [v1 setShadowColor:v3];
  v4 = [v0 layer];
  LODWORD(v5) = 1036831949;
  [v4 setShadowOpacity:v5];

  v6 = [v0 layer];
  [v6 shadowOffset];
  [v6 setShadowOffset:?];

  v7 = [v0 layer];
  [v7 setShadowRadius:5.0];

  return v0;
}

double sub_1005B79A4()
{
  v1 = sub_100799234();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v5 = [v0 traitCollection];
    v6 = [v5 horizontalSizeClass];

    result = 7.0;
    if (v6 == 1)
    {
      return 5.0;
    }
  }

  else
  {
    v8 = *(v2 + 104);
    v8(v4, enum case for BooksUIKitFeatureFlag.floatingTabBar(_:), v1);
    v9 = sub_100799134();
    v10 = *(v2 + 8);
    v10(v4, v1);
    result = 8.0;
    if ((v9 & 1) == 0)
    {
      (v8)(v4, enum case for BooksUIKitFeatureFlag.floatingTabBarOnly(_:), v1, 8.0);
      v11 = sub_100799134();
      v10(v4, v1);
      result = 4.0;
      if (v11)
      {
        return 8.0;
      }
    }
  }

  return result;
}

id sub_1005B7B44()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView;
  v2 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView];
  }

  else
  {
    v4 = sub_1005B7BA8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1005B7BA8(void *a1)
{
  v2 = [objc_allocWithZone(UIImageView) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 tertiarySystemGroupedBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = [v4 layer];
  [v6 setCornerRadius:sub_1005B79A4()];

  v7 = [v4 layer];
  [v7 setCornerCurve:kCACornerCurveContinuous];

  [v4 setClipsToBounds:1];
  v8 = [v4 layer];
  v9 = [v3 blackColor];
  v10 = [v9 colorWithAlphaComponent:0.08];

  v11 = [v10 CGColor];
  [v8 setBorderColor:v11];

  v12 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v13 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v12];
  v14 = objc_opt_self();
  [v13 pointSize];
  v15 = [v14 configurationWithPointSize:6 weight:2 scale:?];

  [v4 setPreferredSymbolConfiguration:v15];
  v16 = [v3 bc_booksTertiaryLabelColor];
  [v4 setTintColor:v16];

  if (_UISolariumEnabled())
  {
    v17 = [a1 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 == 1)
    {
      v19 = 30.0;
    }

    else
    {
      v19 = 40.0;
    }
  }

  else
  {
    v19 = 48.0;
  }

  v20 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100811360;
  v22 = [v4 heightAnchor];
  v23 = [v22 constraintEqualToConstant:v19];

  *(v21 + 32) = v23;
  v24 = [v4 widthAnchor];

  v25 = [v24 constraintEqualToConstant:v19];
  *(v21 + 40) = v25;
  sub_10000A7C4(0, &qword_100AE9010);
  isa = sub_1007A25D4().super.isa;

  [v20 activateConstraints:isa];

  return v4;
}

id sub_1005B7FCC()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = sub_10069D3B8(UIFontTextStyleSubheadline, UIContentSizeCategoryAccessibilityLarge);
  [v0 setFont:v1];

  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  v2 = [objc_opt_self() bc_booksLabelColor];
  [v0 setTextColor:v2];

  [v0 setLineBreakMode:2];
  LODWORD(v3) = 1132068864;
  [v0 setContentHuggingPriority:0 forAxis:v3];
  return v0;
}

id sub_1005B80E8()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v1];

  [v0 setAdjustsFontForContentSizeCategory:1];
  [v0 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v2 = [objc_opt_self() bc_booksSecondaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setLineBreakMode:2];
  return v0;
}

char *sub_1005B81EC()
{
  type metadata accessor for NowPlayingTransportButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v1 = [v0 imageView];
  if (v1)
  {
    v3 = v1;
    v4 = [objc_opt_self() bc_booksLabelColor];
    [v3 setTintColor:v4];
  }

  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v2];
  *&v0[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4040000000000000;
  result = *&v0[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (result)
  {
    [result setConstant:32.0];
    [v0 invalidateIntrinsicContentSize];
    v6 = objc_opt_self();
    v7 = v0;
    [v6 easyTouchDefaultHitRectInsets];
    [v7 setHitRectInsets:?];

    v8 = v7;
    v9 = sub_1007A2214();
    [v8 setAccessibilityIdentifier:v9];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1005B8380()
{
  type metadata accessor for NowPlayingTransportButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v1 = [v0 imageView];
  if (v1)
  {
    v3 = v1;
    v4 = [objc_opt_self() bc_booksLabelColor];
    [v3 setTintColor:v4];
  }

  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v2];
  *&v0[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4040000000000000;
  result = *&v0[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (result)
  {
    [result setConstant:32.0];
    [v0 invalidateIntrinsicContentSize];
    v6 = objc_opt_self();
    v7 = v0;
    [v6 easyTouchDefaultHitRectInsets];
    [v7 setHitRectInsets:?];

    v8 = v7;
    v9 = sub_1007A2214();
    [v8 setAccessibilityIdentifier:v9];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1005B8514()
{
  type metadata accessor for NowPlayingTransportButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v1 = [v0 imageView];
  if (v1)
  {
    v3 = v1;
    v4 = [objc_opt_self() bc_booksLabelColor];
    [v3 setTintColor:v4];
  }

  LODWORD(v2) = 1148846080;
  [v0 setContentHuggingPriority:0 forAxis:v2];
  *&v0[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidth] = 0x4040000000000000;
  result = *&v0[OBJC_IVAR____TtC5Books25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (result)
  {
    [result setConstant:32.0];
    [v0 invalidateIntrinsicContentSize];
    v6 = objc_opt_self();
    v7 = v0;
    [v6 easyTouchDefaultHitRectInsets];
    [v7 setHitRectInsets:?];

    v8 = v7;
    v9 = sub_1007A2214();
    [v8 setAccessibilityIdentifier:v9];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1005B86A8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView;
  v126 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView;
  *&v5[v12] = sub_1005B7834();
  *&v5[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView] = 0;
  v13 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer;
  v120 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer;
  v14 = [objc_allocWithZone(MPUMarqueeView) init];
  [v14 setFadeEdgeInsets:{0.0, 10.0, 0.0, 10.0}];
  [v14 setContentGap:24.0];
  [v14 setUserInteractionEnabled:0];
  LODWORD(v15) = 1132068864;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  *&v6[v13] = v14;
  v16 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel;
  *&v6[v16] = sub_1005B7FCC();
  v17 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer;
  v119 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer;
  v18 = [objc_allocWithZone(MPUMarqueeView) init];
  [v18 setFadeEdgeInsets:{0.0, 10.0, 0.0, 10.0}];
  [v18 setContentGap:24.0];
  [v18 setUserInteractionEnabled:0];
  LODWORD(v19) = 1132068864;
  [v18 setContentCompressionResistancePriority:0 forAxis:v19];
  *&v6[v17] = v18;
  v20 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel;
  *&v6[v20] = sub_1005B80E8();
  v21 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton;
  *&v6[v21] = sub_1005B81EC();
  v22 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton;
  *&v6[v22] = sub_1005B8380();
  v23 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton;
  *&v6[v23] = sub_1005B8514();
  v24 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonGuide;
  *&v6[v24] = [objc_allocWithZone(UILayoutGuide) init];
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement] = 0;
  v25 = &v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
  v26 = *(a1 + 80);
  *(v25 + 4) = *(a1 + 64);
  *(v25 + 5) = v26;
  *(v25 + 6) = *(a1 + 96);
  v25[112] = *(a1 + 112);
  v27 = *(a1 + 16);
  *v25 = *a1;
  *(v25 + 1) = v27;
  v28 = *(a1 + 48);
  *(v25 + 2) = *(a1 + 32);
  *(v25 + 3) = v28;
  v29 = objc_allocWithZone(UILayoutGuide);
  v118 = a1;
  sub_10038E0AC(a1, v128);
  v125 = [v29 init];
  v121 = [objc_allocWithZone(UILayoutGuide) init];
  v30 = *&v6[v21];
  v31 = type metadata accessor for NowPlayingVibrancyEffectView();
  v32 = objc_allocWithZone(v31);
  v33 = sub_10060211C(v30, 0);
  v124 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardVibrancyContainerView;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardVibrancyContainerView] = v33;
  v34 = *&v6[v22];
  v35 = objc_allocWithZone(v31);
  v36 = sub_10060211C(v34, 0);
  v123 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingVibrancyContainerView;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingVibrancyContainerView] = v36;
  v37 = *&v6[v23];
  v38 = objc_allocWithZone(v31);
  v39 = sub_10060211C(v37, 0);
  v122 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardVibrancyContainerView;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardVibrancyContainerView] = v39;
  v40 = [v125 leadingAnchor];
  v41 = [*&v6[v126] trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_contentLeadingConstraint] = v42;
  v43 = [*&v6[v24] leadingAnchor];
  v44 = [v125 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_contentTrailingConstraint] = v45;
  sub_1001F1160(&unk_100AD8160);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_100811390;
  v47 = [*&v6[v120] bottomAnchor];
  v48 = [*&v6[v119] topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v46 + 32) = v49;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleVisibleConstraints] = v46;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100811390;
  v51 = [*&v6[v120] bottomAnchor];
  v52 = [v125 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v50 + 32) = v53;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleHiddenConstraints] = v50;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_100811390;
  v55 = [*&v6[v24] widthAnchor];
  v56 = [v55 constraintEqualToConstant:0.0];

  *(v54 + 32) = v56;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonHiddenConstraints] = v54;
  v57 = [*&v6[v24] heightAnchor];
  v58 = [v57 constraintEqualToConstant:0.0];

  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonHeightConstraint] = v58;
  v59 = [v121 leadingAnchor];
  v60 = [*&v6[v24] trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonTrailingConstraint] = v61;
  v62 = [v121 heightAnchor];
  v63 = [v62 constraintEqualToConstant:0.0];

  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_controlHeightConstraint] = v63;
  v64 = [*&v6[v122] leadingAnchor];
  v65 = [*&v6[v123] trailingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardLeadingConstraint] = v66;
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_100811390;
  v68 = [v121 trailingAnchor];
  v69 = [*&v6[v122] trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v67 + 32) = v70;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardVisibleConstraints] = v67;
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100811390;
  v72 = [v121 trailingAnchor];
  v73 = [*&v6[v123] trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v71 + 32) = v74;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardHiddenConstraints] = v71;
  v75 = [*&v6[v123] leadingAnchor];
  v76 = [*&v6[v124] trailingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardTrailingConstraint] = v77;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_100811390;
  v79 = [v121 leadingAnchor];
  v80 = [*&v6[v124] leadingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  *(v78 + 32) = v81;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardVisibleConstraints] = v78;
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_100811390;
  v83 = [v121 leadingAnchor];
  v84 = [*&v6[v123] leadingAnchor];
  v85 = [v83 constraintEqualToAnchor:v84];

  *(v82 + 32) = v85;
  *&v6[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardHiddenConstraints] = v82;
  v127.receiver = v6;
  v127.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  v86 = objc_msgSendSuper2(&v127, "initWithFrame:", a2, a3, a4, a5);
  v87 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView;
  v88 = *&v86[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView];
  v89 = v86;
  v90 = v88;
  v91 = v89;
  [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v91 addSubview:v90];

  v92 = *&v86[v87];
  v93 = sub_1005B7B44();
  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v92 addSubview:v93];

  [v91 addLayoutGuide:v125];
  v94 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer;
  v95 = *&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer];
  [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v91 addSubview:v95];

  v96 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer;
  v97 = *&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer];
  [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v91 addSubview:v97];

  [v91 addLayoutGuide:*&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonGuide]];
  [v91 addLayoutGuide:v121];
  v98 = *&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardVibrancyContainerView];
  [v98 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v91 addSubview:v98];

  v99 = *&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingVibrancyContainerView];
  [v99 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v91 addSubview:v99];

  v100 = *&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardVibrancyContainerView];
  [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v91 addSubview:v100];

  [v91 layoutMargins];
  [v91 setLayoutMargins:8.0];

  [v91 layoutMargins];
  [v91 setLayoutMargins:?];

  result = [*&v91[v94] contentView];
  if (result)
  {
    v102 = result;
    v103 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel;
    v104 = *&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel];
    [v104 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v102 addSubview:v104];

    [*&v91[v94] setViewForContentSize:*&v91[v103]];
    result = [*&v91[v96] contentView];
    if (result)
    {
      v105 = result;
      v106 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel;
      v107 = *&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel];
      [v107 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v105 addSubview:v107];

      [*&v91[v96] setViewForContentSize:*&v91[v106]];
      v108 = objc_opt_self();
      sub_1005B9ADC(v125, v121);
      sub_10000A7C4(0, &qword_100AE9010);
      isa = sub_1007A25D4().super.isa;

      [v108 activateConstraints:isa];

      v110 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton;
      [*&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton] addTarget:v91 action:"skipBackwardStart" forControlEvents:17];
      [*&v91[v110] addTarget:v91 action:"skipBackwardEnd" forControlEvents:352];
      [*&v91[v110] setTranslatesAutoresizingMaskIntoConstraints:0];
      v111 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton;
      v112 = *&v91[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton];
      v113 = v91;
      [v112 addTarget:v113 action:"togglePlaying" forControlEvents:64];
      [*&v91[v111] setTranslatesAutoresizingMaskIntoConstraints:0];
      v114 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton;
      v115 = *&v113[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton];
      [v115 addTarget:v113 action:"skipForwardStart" forControlEvents:17];

      [*&v113[v114] addTarget:v113 action:"skipForwardEnd" forControlEvents:352];
      [*&v113[v114] setTranslatesAutoresizingMaskIntoConstraints:0];
      sub_1005BACA8();
      v116 = v113;
      [v116 setAccessibilityContainerType:4];
      v117 = sub_1007A2214();
      [v116 setAccessibilityIdentifier:v117];

      [v116 setInsetsLayoutMarginsFromSafeArea:0];
      [v116 setPreservesSuperviewLayoutMargins:0];

      sub_10000A7C4(0, &qword_100AE15B0);
      sub_1007A2E04();
      sub_1007A3104();

      swift_unknownObjectRelease();

      sub_10038DFDC(v118);

      return v116;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1005B97F8()
{
  v1 = sub_100799234();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v5 = [v0 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1)
    {
      v7 = 16.0;
    }

    else
    {
      v7 = 20.0;
    }

    v8 = [*&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView] leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:v7];
    goto LABEL_9;
  }

  v11 = *(v2 + 104);
  v11(v4, enum case for BooksUIKitFeatureFlag.floatingTabBar(_:), v1);
  v12 = sub_100799134();
  v13 = *(v2 + 8);
  v13(v4, v1);
  if (v12 & 1) != 0 || (v11(v4, enum case for BooksUIKitFeatureFlag.floatingTabBarOnly(_:), v1), v14 = sub_100799134(), v13(v4, v1), (v14))
  {
    v8 = [*&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView] leadingAnchor];
    v9 = [v0 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:10.0];
LABEL_9:
    v15 = v10;

    return v15;
  }

  v17 = [*&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView] leadingAnchor];
  v18 = [v0 layoutMarginsGuide];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  return v20;
}

uint64_t sub_1005B9ADC(void *a1, void *a2)
{
  sub_1001F1160(&unk_100AD8160);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100833260;
  v5 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView];
  v6 = [v5 topAnchor];
  v7 = [v2 layoutMarginsGuide];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintGreaterThanOrEqualToAnchor:v8];
  *(v4 + 32) = v9;
  v10 = [v5 bottomAnchor];
  v11 = [v2 layoutMarginsGuide];
  v12 = [v11 bottomAnchor];

  v13 = [v10 constraintLessThanOrEqualToAnchor:v12];
  *(v4 + 40) = v13;
  *(v4 + 48) = sub_1005B97F8();
  v14 = [v5 centerYAnchor];
  v15 = [v2 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  v17 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_contentLeadingConstraint];
  *(v4 + 56) = v16;
  *(v4 + 64) = v17;
  v18 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_contentTrailingConstraint];
  *(v4 + 72) = v18;
  v19 = v17;
  v20 = v18;
  v21 = sub_1005B7B44();
  v22 = [v21 leadingAnchor];

  v23 = [v5 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v4 + 80) = v24;
  v25 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView;
  v26 = [*&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView] topAnchor];
  v27 = [v5 topAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v4 + 88) = v28;
  v29 = [*&v2[v25] bottomAnchor];
  v30 = [v5 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v4 + 96) = v31;
  v32 = [*&v2[v25] trailingAnchor];
  v33 = [v5 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v4 + 104) = v34;
  v35 = [a1 centerYAnchor];
  v36 = [v2 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v4 + 112) = v37;
  v38 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer];
  v39 = [v38 topAnchor];
  v40 = [a1 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v4 + 120) = v41;
  v42 = [v38 leadingAnchor];
  v43 = [a1 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:-10.0];

  *(v4 + 128) = v44;
  v45 = [v38 trailingAnchor];
  v46 = [a1 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v4 + 136) = v47;
  v48 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel];
  v49 = [v48 leadingAnchor];
  v50 = [a1 leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v4 + 144) = v51;
  v52 = [v48 centerYAnchor];
  v53 = [v38 centerYAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v4 + 152) = v54;
  v55 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer];
  v56 = [v55 leadingAnchor];
  v57 = [a1 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:-10.0];

  *(v4 + 160) = v58;
  v59 = [v55 trailingAnchor];
  v60 = [a1 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v4 + 168) = v61;
  v62 = [v55 bottomAnchor];
  v63 = [a1 bottomAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v4 + 176) = v64;
  v65 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel];
  v66 = [v65 leadingAnchor];
  v67 = [a1 leadingAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v4 + 184) = v68;
  v69 = [v65 centerYAnchor];
  v70 = [v55 centerYAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(v4 + 192) = v71;
  v72 = [*&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonGuide] centerYAnchor];
  v73 = [v2 centerYAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  v75 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonHeightConstraint];
  *(v4 + 200) = v74;
  *(v4 + 208) = v75;
  v76 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonTrailingConstraint];
  *(v4 + 216) = v76;
  v77 = v75;
  v78 = v76;
  v79 = [a2 centerYAnchor];
  v80 = [v2 centerYAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  v82 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_controlHeightConstraint];
  *(v4 + 224) = v81;
  *(v4 + 232) = v82;
  v83 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardVibrancyContainerView];
  v84 = v82;
  v85 = [v83 centerYAnchor];
  v86 = [a2 centerYAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v4 + 240) = v87;
  v88 = [v83 heightAnchor];
  v89 = [a2 heightAnchor];
  v90 = [v88 constraintEqualToAnchor:v89];

  *(v4 + 248) = v90;
  v91 = [v83 widthAnchor];
  v92 = [*&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton] heightAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];

  v94 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardTrailingConstraint];
  *(v4 + 256) = v93;
  *(v4 + 264) = v94;
  v95 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingVibrancyContainerView];
  v96 = v94;
  v97 = [v95 centerYAnchor];
  v98 = [a2 centerYAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v4 + 272) = v99;
  v100 = [v95 heightAnchor];
  v101 = [a2 heightAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v4 + 280) = v102;
  v103 = [v95 widthAnchor];
  v104 = [*&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton] heightAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  v106 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardLeadingConstraint];
  *(v4 + 288) = v105;
  *(v4 + 296) = v106;
  v107 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardVibrancyContainerView];
  v108 = v106;
  v109 = [v107 centerYAnchor];
  v110 = [a2 centerYAnchor];
  v111 = [v109 constraintEqualToAnchor:v110];

  *(v4 + 304) = v111;
  v112 = [v107 heightAnchor];
  v113 = [a2 heightAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];

  *(v4 + 312) = v114;
  v115 = [v107 widthAnchor];
  v116 = [*&v2[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton] heightAnchor];
  v117 = [v115 constraintEqualToAnchor:v116];

  *(v4 + 320) = v117;
  v118 = [v2 layoutMarginsGuide];
  v119 = [v118 trailingAnchor];

  v120 = [a2 trailingAnchor];
  v121 = [v119 constraintEqualToAnchor:v120];

  *(v4 + 328) = v121;
  return v4;
}

uint64_t sub_1005BA7E4(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005BA868(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1005BA8DC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v2];
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor:v3];

    v4 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100811370;
    v6 = [v2 leadingAnchor];
    v7 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonGuide];
    v8 = [v7 leadingAnchor];
    v9 = [v6 constraintGreaterThanOrEqualToAnchor:v8];

    *(v5 + 32) = v9;
    v10 = [v2 trailingAnchor];
    v11 = [v7 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v5 + 40) = v12;
    v13 = [v2 centerYAnchor];
    v14 = [v7 centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v5 + 48) = v15;
    sub_10000A7C4(0, &qword_100AE9010);
    isa = sub_1007A25D4().super.isa;

    [v4 activateConstraints:isa];

    v17 = sub_1007A25D4().super.isa;
    [v4 deactivateConstraints:v17];

    v18 = 24.0;
    if (v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 56])
    {
      v18 = 10.0;
    }

    [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonTrailingConstraint] setConstant:v18];
  }

  else
  {
    v19 = objc_opt_self();
    sub_10000A7C4(0, &qword_100AE9010);
    v20 = sub_1007A25D4().super.isa;
    [v19 activateConstraints:v20];

    [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonTrailingConstraint] setConstant:0.0];
  }

  v21 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonHeightConstraint];
  v22 = v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 56];
  v23 = _UISolariumEnabled();
  v24 = 48.0;
  if (v22)
  {
    v24 = 32.0;
  }

  v25 = 50.0;
  if (v22)
  {
    v25 = 44.0;
  }

  if (!v23)
  {
    v24 = v25;
  }

  [v21 setConstant:v24];
  swift_unknownObjectWeakAssign();

  sub_1005BC0C8();
}

void sub_1005BACA8()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AE2138);
  __chkstk_darwin(v2 - 8);
  v4 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v95 - v6;
  v8 = &v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state];
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins:?];
  _UISolariumEnabled();
  [v0 directionalLayoutMargins];
  [v0 setDirectionalLayoutMargins:?];
  v9 = sub_1005B7B44();
  v10 = *(v8 + 5);
  v109[4] = *(v8 + 4);
  v109[5] = v10;
  v109[6] = *(v8 + 6);
  v110 = v8[112];
  v11 = *(v8 + 1);
  v109[0] = *v8;
  v109[1] = v11;
  v12 = *(v8 + 3);
  v109[2] = *(v8 + 2);
  v109[3] = v12;
  v13 = *&v109[0];
  v100 = v4;
  v101 = v7;
  if (*&v109[0])
  {
    v14 = *&v109[0];
  }

  else
  {
    sub_10038E0AC(v109, v115);
    v15 = sub_1007A2214();
    v14 = [objc_opt_self() systemImageNamed:v15];

    if (!v14)
    {
LABEL_54:
      __break(1u);
      return;
    }

    sub_10038DFDC(v109);
    v13 = 0;
  }

  v16 = v13;
  [v9 setImage:v14];

  if (*v8)
  {
    v17 = 2;
  }

  else
  {
    v17 = 4;
  }

  [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView] setContentMode:v17];
  if (v8[56])
  {
    v18 = 12.0;
  }

  else
  {
    v18 = 16.0;
  }

  [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_contentLeadingConstraint] setConstant:v18];
  if (v8[56])
  {
    v19 = 12.0;
  }

  else
  {
    v19 = 16.0;
  }

  [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_contentTrailingConstraint] setConstant:v19];
  v20 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel];

  v21 = sub_1007A2214();

  [v20 setText:v21];

  v22 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel];

  v23 = sub_1007A2214();

  [v22 setText:v23];

  v24 = sub_1007A2214();

  [v22 setAccessibilityLabel:v24];

  [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer] setHidden:v8[57]];
  v25 = objc_opt_self();
  sub_10000A7C4(0, &qword_100AE9010);
  isa = sub_1007A25D4().super.isa;
  [v25 deactivateConstraints:isa];

  v27 = sub_1007A25D4().super.isa;
  [v25 activateConstraints:v27];

  v28 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_controlHeightConstraint];
  v29 = v8[56];
  v30 = _UISolariumEnabled();
  v31 = 48.0;
  if (v29)
  {
    v31 = 32.0;
  }

  v32 = 50.0;
  if (v29)
  {
    v32 = 44.0;
  }

  if (!v30)
  {
    v31 = v32;
  }

  [v28 setConstant:v31];
  if (v8[56])
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 8.0;
  }

  [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardTrailingConstraint] setConstant:v33];
  if (v8[56])
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 8.0;
  }

  [*&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardLeadingConstraint] setConstant:v34];
  v35 = v8[88];
  v97 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton];
  [v97 setHidden:v35];
  v36 = objc_opt_self();
  v37 = sub_1007A25D4().super.isa;
  [v36 deactivateConstraints:v37];

  v38 = sub_1007A25D4().super.isa;
  [v36 activateConstraints:v38];

  v39 = v8[64];
  v96 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton];
  [v96 setHidden:v39];
  v40 = objc_opt_self();
  v41 = sub_1007A25D4().super.isa;
  [v40 deactivateConstraints:v41];

  v42 = sub_1007A25D4().super.isa;
  [v40 activateConstraints:v42];

  v43 = *(v8 + 6);
  v107[5] = *(v8 + 5);
  v107[6] = v43;
  v44 = *(v8 + 4);
  v108 = v8[112];
  v45 = *(v8 + 1);
  v107[0] = *v8;
  v107[1] = v45;
  v46 = *(v8 + 3);
  v107[2] = *(v8 + 2);
  v107[3] = v46;
  v107[4] = v44;
  v47 = v43;
  v48 = BYTE1(v43);
  v49 = *(&v43 + 1);
  sub_10038E0AC(v107, v115);
  if (*(sub_100796C54() + 16))
  {

    v50 = v101;
    sub_100796C14();
    v51 = 0;
  }

  else
  {

    v51 = 1;
    v50 = v101;
  }

  v52 = sub_100796CF4();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v98 = v53 + 56;
  v99 = v54;
  v54(v50, v51, 1, v52);
  if (qword_100AD1580 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (v48)
  {
    v55 = 256;
  }

  else
  {
    v55 = 0;
  }

  sub_10040029C(v50, &qword_100AE2130, v55 | v47, v49);
  v57 = v56;
  swift_endAccess();
  sub_1005BD728(v50);
  if (!v57)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v95 = v52;
  sub_10038DFDC(v107);
  v58 = sub_1007A2214();

  v101 = objc_opt_self();
  v59 = [v101 systemImageNamed:v58];

  if (v59)
  {
    v60 = *(v8 + 5);
    v115[4] = *(v8 + 4);
    v115[5] = v60;
    v115[6] = *(v8 + 6);
    v116 = v8[112];
    v61 = *(v8 + 1);
    v115[0] = *v8;
    v115[1] = v61;
    v62 = *(v8 + 3);
    v115[2] = *(v8 + 2);
    v115[3] = v62;
    v63 = sub_10038E0AC(v115, v113);
    v64 = sub_10074E558(v63);
    sub_10038DFDC(v115);
    v65 = [v59 imageWithConfiguration:v64];
  }

  else
  {
    v65 = 0;
  }

  [v97 setImage:v65 forState:0];

  v66 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton];
  v67 = sub_1007A2214();

  v68 = [v101 systemImageNamed:v67];

  if (v68)
  {
    v69 = *(v8 + 5);
    v113[4] = *(v8 + 4);
    v113[5] = v69;
    v113[6] = *(v8 + 6);
    v114 = v8[112];
    v70 = *(v8 + 1);
    v113[0] = *v8;
    v113[1] = v70;
    v71 = *(v8 + 3);
    v113[2] = *(v8 + 2);
    v113[3] = v71;
    sub_10038E0AC(v113, v111);
    v72 = sub_10074DB28();
    sub_10038DFDC(v113);
    v73 = [v68 imageWithConfiguration:v72];
  }

  else
  {
    v73 = 0;
  }

  [v66 setImage:v73 forState:0];

  v74 = *(v8 + 4);
  v75 = *(v8 + 6);
  v104 = *(v8 + 5);
  v105 = v75;
  v76 = *(v8 + 1);
  v103[0] = *v8;
  v77 = *(v8 + 2);
  v78 = *(v8 + 3);
  v103[1] = v76;
  v103[2] = v77;
  v106 = v8[112];
  v103[3] = v78;
  v103[4] = v74;
  v79 = BYTE8(v74);
  v80 = BYTE9(v74);
  v81 = v104;
  sub_10038E0AC(v103, v111);
  if (*(sub_100796C54() + 16))
  {

    v82 = v100;
    sub_100796C14();
    v83 = 0;
  }

  else
  {

    v83 = 1;
    v82 = v100;
  }

  v99(v82, v83, 1, v95);
  swift_beginAccess();
  if (v80)
  {
    v84 = 256;
  }

  else
  {
    v84 = 0;
  }

  sub_10040029C(v82, &qword_100AE2130, v84 | v79, v81);
  v86 = v85;
  swift_endAccess();
  sub_1005BD728(v82);
  if (!v86)
  {
    goto LABEL_53;
  }

  sub_10038DFDC(v103);
  v87 = sub_1007A2214();

  v88 = [v101 systemImageNamed:v87];

  if (v88)
  {
    v89 = *(v8 + 5);
    v111[4] = *(v8 + 4);
    v111[5] = v89;
    v111[6] = *(v8 + 6);
    v112 = v8[112];
    v90 = *(v8 + 1);
    v111[0] = *v8;
    v111[1] = v90;
    v91 = *(v8 + 3);
    v111[2] = *(v8 + 2);
    v111[3] = v91;
    v92 = sub_10038E0AC(v111, &v102);
    v93 = sub_10074DC50(v92);
    sub_10038DFDC(v111);
    v94 = [v88 imageWithConfiguration:v93];
  }

  else
  {
    v94 = 0;
  }

  [v96 setImage:v94 forState:0];

  sub_1005BC0C8();
}

void sub_1005BB808()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AudiobookNowPlayingMiniTouchView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  if (_UISolariumEnabled())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardVibrancyContainerView];
    }

    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 userInterfaceLayoutDirection];

    if (v3 == 1)
    {
      [*&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView] frame];
      MinX = CGRectGetMinX(v9);
      v5 = Strong;
    }

    else
    {
      [Strong frame];
      MinX = CGRectGetMinX(v10);
      v5 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView];
    }

    [v5 frame];
    MaxX = CGRectGetMaxX(v11);
    v7 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer];
    if (MinX - MaxX >= 75.0)
    {
      [v7 setHidden:0];
      [*&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer] setHidden:v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 57]];
    }

    else
    {
      [v7 setHidden:1];
      [*&v0[OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer] setHidden:1];
    }
  }
}

uint64_t sub_1005BB9E0()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100AEC290 = v16;
  *algn_100AEC298 = v18;
  return result;
}

void sub_1005BBE54()
{
  sub_1001F1160(&qword_100AD7FB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  sub_1005BC0C8();
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement);
  if (v2)
  {
    *(v1 + 56) = sub_10000A7C4(0, &unk_100AEDDA0);
    *(v1 + 32) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    v4 = v2;
    if (Strong)
    {
      if ([Strong isHidden])
      {
      }

      else
      {
        v20 = sub_10000A7C4(0, &qword_100AD7620);
        *&v19 = Strong;
        v1 = sub_10066A640(1, 2, 1, v1);
        *(v1 + 16) = 2;
        sub_1000076D4(&v19, (v1 + 64));
      }
    }

    v5 = v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state;
    if ((*(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 88) & 1) == 0)
    {
      v6 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton);
      v20 = type metadata accessor for NowPlayingTransportButton();
      *&v19 = v6;
      v7 = *(v1 + 16);
      v8 = *(v1 + 24);
      v9 = v6;
      if (v7 >= v8 >> 1)
      {
        v1 = sub_10066A640((v8 > 1), v7 + 1, 1, v1);
      }

      *(v1 + 16) = v7 + 1;
      sub_1000076D4(&v19, (v1 + 32 * v7 + 32));
    }

    v10 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton);
    v11 = type metadata accessor for NowPlayingTransportButton();
    v20 = v11;
    *&v19 = v10;
    v12 = *(v1 + 16);
    v13 = *(v1 + 24);
    v14 = v12 + 1;
    v15 = v10;
    if (v12 >= v13 >> 1)
    {
      v1 = sub_10066A640((v13 > 1), v12 + 1, 1, v1);
    }

    *(v1 + 16) = v14;
    sub_1000076D4(&v19, (v1 + 32 * v12 + 32));
    if ((*(v5 + 64) & 1) == 0)
    {
      v16 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton);
      v20 = v11;
      *&v19 = v16;
      v17 = *(v1 + 24);
      v18 = v16;
      if ((v12 + 2) > (v17 >> 1))
      {
        v1 = sub_10066A640((v17 > 1), v12 + 2, 1, v1);
      }

      *(v1 + 16) = v12 + 2;
      sub_1000076D4(&v19, (v1 + 32 * v14 + 32));
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1005BC0C8()
{
  v1 = v0;
  v119 = sub_100796CF4();
  v2 = *(v119 - 8);
  __chkstk_darwin(v119);
  v121 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v122 = &v115 - v5;
  v6 = sub_1007A21D4();
  v123 = *(v6 - 8);
  v124 = v6;
  __chkstk_darwin(v6);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v120 = &v115 - v10;
  v11 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement;
  if (!*(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement))
  {
    v12 = [objc_allocWithZone(UIAccessibilityElement) initWithAccessibilityContainer:v0];
    v13 = *(v0 + v11);
    *(v0 + v11) = v12;
    v14 = v12;

    if (v14)
    {
      v15 = v8;
      v16 = v120;
      sub_1007A2154();
      v17 = v122;
      sub_100796C94();
      v18 = v119;
      v19 = v121;
      (*(v123 + 16))(v15, v16, v124);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v2 + 16))(v19, v17, v18);
      sub_1007A22D4();
      (*(v2 + 8))(v17, v18);
      v22 = v16;
      v8 = v15;
      (*(v123 + 8))(v22, v124);
      v23 = sub_1007A2214();

      [v14 setAccessibilityHint:v23];
    }
  }

  v118 = v2;
  v24 = v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state;
  v25 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 8);
  v26 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16);

  v27 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  v30 = v29 + 1;
  if (v29 >= v28 >> 1)
  {
    v27 = sub_10000B3D8((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v30;
  v31 = &v27[16 * v29];
  *(v31 + 4) = v25;
  *(v31 + 5) = v26;
  v32 = *(v24 + 24);
  v33 = *(v24 + 32);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = v11;
    v36 = v24;
    v116 = v8;
    v37 = v1;
    v38 = v35;
    v39 = *(v27 + 3);
    v40 = v29 + 2;

    if ((v29 + 2) > (v39 >> 1))
    {
      v27 = sub_10000B3D8((v39 > 1), v29 + 2, 1, v27);
    }

    v41 = v118;
    *(v27 + 2) = v40;
    v42 = &v27[16 * v30];
    *(v42 + 4) = v32;
    *(v42 + 5) = v33;
    v43 = v38;
    v1 = v37;
    v8 = v116;
    v24 = v36;
    v11 = v43;
    v44 = *(v1 + v43);
    if (v44)
    {
      goto LABEL_12;
    }

LABEL_15:

    goto LABEL_18;
  }

  v41 = v118;
  v44 = *(v1 + v11);
  if (!v44)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (*(v27 + 2))
  {
    aBlock[0] = v27;
    v45 = v44;
    sub_1001F1160(&unk_100AD61F0);
    sub_10000B4E4();
    sub_1007A20B4();

    v46 = sub_1007A2214();
  }

  else
  {
    v45 = v44;

    v46 = 0;
  }

  [v45 setAccessibilityLabel:v46];

LABEL_18:
  [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel) accessibilityFrame];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel) accessibilityFrame];
  v134.origin.x = v55;
  v134.origin.y = v56;
  v134.size.width = v57;
  v134.size.height = v58;
  v126.origin.x = v48;
  v126.origin.y = v50;
  v126.size.width = v52;
  v126.size.height = v54;
  v127 = CGRectUnion(v126, v134);
  x = v127.origin.x;
  y = v127.origin.y;
  width = v127.size.width;
  height = v127.size.height;
  v63 = sub_1005B7B44();
  [v63 accessibilityFrame];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;

  v128.origin.x = x;
  v128.origin.y = y;
  v128.size.width = width;
  v128.size.height = height;
  v135.origin.x = v65;
  v135.origin.y = v67;
  v135.size.width = v69;
  v135.size.height = v71;
  v129 = CGRectUnion(v128, v135);
  v72 = v129.origin.x;
  v73 = v129.origin.y;
  v74 = v129.size.width;
  v75 = v129.size.height;
  [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton) accessibilityFrame];
  MinX = CGRectGetMinX(v130);
  if ((*(v24 + 88) & 1) == 0)
  {
    [*(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton) accessibilityFrame];
    v77 = CGRectGetMinX(v131);
    if (v77 < MinX)
    {
      MinX = v77;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v79 = Strong;
    if ([Strong isHidden])
    {
    }

    else
    {
      [v79 accessibilityFrame];
      v80 = CGRectGetMinX(v132);

      if (v80 < MinX)
      {
        MinX = v80;
      }
    }
  }

  v81 = MinX - v72;
  v133.origin.x = v72;
  v133.origin.y = v73;
  v133.size.width = v74;
  v133.size.height = v75;
  v82 = CGRectGetHeight(v133);
  [*(v1 + v11) setAccessibilityFrame:{v72, v73, v81, v82}];
  sub_1001F1160(&unk_100AE0B30);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_10080B690;
  if (qword_100AD18D0 != -1)
  {
    swift_once();
  }

  v84 = *algn_100AEC298;
  *(v83 + 32) = qword_100AEC290;
  *(v83 + 40) = v84;
  v85 = *(v1 + v11);
  v117 = v11;
  if (v85)
  {

    v86 = [v85 accessibilityLabel];
    if (v86)
    {
      v87 = v86;
      v88 = sub_1007A2254();
      v90 = v89;

      v92 = *(v83 + 16);
      v91 = *(v83 + 24);
      if (v92 >= v91 >> 1)
      {
        v83 = sub_10000B3D8((v91 > 1), v92 + 1, 1, v83);
      }

      *(v83 + 16) = v92 + 1;
      v93 = v83 + 16 * v92;
      *(v93 + 32) = v88;
      *(v93 + 40) = v90;
    }

    v94 = *(v1 + v11);
    if (v94)
    {
      v95 = v94;
      isa = sub_1007A25D4().super.isa;

      [v95 setAccessibilityUserInputLabels:isa];

      goto LABEL_37;
    }
  }

  else
  {
  }

LABEL_37:
  v97 = v120;
  sub_1007A2154();
  v98 = v122;
  sub_100796C94();
  v100 = v123;
  v99 = v124;
  (*(v123 + 16))(v8, v97, v124);
  type metadata accessor for BundleFinder();
  v101 = swift_getObjCClassFromMetadata();
  v102 = [objc_opt_self() bundleForClass:v101];
  v103 = v119;
  (*(v41 + 16))(v121, v98, v119);
  sub_1007A22D4();
  (*(v41 + 8))(v98, v103);
  (*(v100 + 8))(v97, v99);
  v104 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = swift_allocObject();
  *(v105 + 16) = v104;
  *(v105 + 24) = v72;
  *(v105 + 32) = v73;
  *(v105 + 40) = v81;
  *(v105 + 48) = v82;
  v106 = objc_allocWithZone(UIAccessibilityCustomAction);

  v107 = sub_1007A2214();

  aBlock[4] = sub_1005BD710;
  aBlock[5] = v105;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005BD6B8;
  aBlock[3] = &unk_100A24770;
  v108 = _Block_copy(aBlock);
  v109 = [v106 initWithName:v107 actionHandler:v108];

  _Block_release(v108);

  v110 = *(v1 + v117);
  if (v110)
  {
    sub_1001F1160(&unk_100AD8160);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_100811390;
    *(v111 + 32) = v109;
    sub_10000A7C4(0, &qword_100AEC3F0);
    v112 = v110;
    v113 = v109;
    v114 = sub_1007A25D4().super.isa;

    [v112 setAccessibilityCustomActions:v114];
  }
}

id sub_1005BCB84(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  v11 = [v9 bkaxAccessibilityShowContextMenuAtPoint:{MidX, CGRectGetMidY(v14)}];

  return v11;
}

void sub_1005BD35C()
{
  v1 = [v0 subviews];
  sub_10000A7C4(0, &qword_100AD7620);
  v2 = sub_1007A25E4();

  if (v2 >> 62)
  {
    if (sub_1007A38D4())
    {
      goto LABEL_3;
    }

LABEL_8:

    v7 = 0.0;
    goto LABEL_9;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1007A3784();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;

  v5 = [v4 layer];

  [v5 cornerRadius];
  v7 = v6;

LABEL_9:
  v8 = [v0 layer];
  [v0 bounds];
  v13 = [objc_opt_self() bezierPathWithRoundedRect:v9 cornerRadius:{v10, v11, v12, v7}];
  v14 = [v13 CGPath];

  [v8 setShadowPath:v14];
}

id sub_1005BD65C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1005BD6B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_1005BD728(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE2138);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005BD790(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state;
  v4 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 64);
  v5 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 96);
  v18 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 80);
  v19 = v5;
  v20 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 112);
  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 16);
  v17[0] = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state);
  v7 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 32);
  v8 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_state + 48);
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v17[4] = v4;
  v23[2] = v7;
  v23[3] = v8;
  v23[0] = v17[0];
  v23[1] = v6;
  v24 = v20;
  v23[5] = v18;
  v23[6] = v5;
  v23[4] = v4;
  v9 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v9;
  *(v3 + 112) = *(a1 + 112);
  v10 = *(a1 + 96);
  *(v3 + 80) = *(a1 + 80);
  *(v3 + 96) = v10;
  v11 = *(a1 + 64);
  *(v3 + 48) = *(a1 + 48);
  *(v3 + 64) = v11;
  *(v3 + 32) = *(a1 + 32);
  sub_10038E0AC(v17, v21);
  sub_10038E0AC(v2, v21);
  sub_10038DFDC(v23);
  v12 = *(v3 + 80);
  v21[4] = *(v3 + 64);
  v21[5] = v12;
  v21[6] = *(v3 + 96);
  v22 = *(v3 + 112);
  v13 = *(v3 + 16);
  v21[0] = *v3;
  v21[1] = v13;
  v14 = *(v3 + 48);
  v21[2] = *(v3 + 32);
  v21[3] = v14;
  sub_10038E0AC(v21, v16);
  LOBYTE(v2) = sub_10074E264(v17, v21);
  sub_10038DFDC(v21);
  if ((v2 & 1) == 0)
  {
    sub_1005BACA8();
  }

  return sub_10038DFDC(v17);
}

void sub_1005BD8B0()
{
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_artworkWrapperView;
  *(v0 + v1) = sub_1005B7834();
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView____lazy_storage___artworkImageView) = 0;
  v2 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleContainer;
  v3 = [objc_allocWithZone(MPUMarqueeView) init];
  [v3 setFadeEdgeInsets:{0.0, 10.0, 0.0, 10.0}];
  [v3 setContentGap:24.0];
  [v3 setUserInteractionEnabled:0];
  LODWORD(v4) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  *(v0 + v2) = v3;
  v5 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_titleLabel;
  *(v0 + v5) = sub_1005B7FCC();
  v6 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleContainer;
  v7 = [objc_allocWithZone(MPUMarqueeView) init];
  [v7 setFadeEdgeInsets:{0.0, 10.0, 0.0, 10.0}];
  [v7 setContentGap:24.0];
  [v7 setUserInteractionEnabled:0];
  LODWORD(v8) = 1132068864;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];
  *(v0 + v6) = v7;
  v9 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_subtitleLabel;
  *(v0 + v9) = sub_1005B80E8();
  v10 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipBackwardButton;
  *(v0 + v10) = sub_1005B81EC();
  v11 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_togglePlayingButton;
  *(v0 + v11) = sub_1005B8380();
  v12 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_skipForwardButton;
  *(v0 + v12) = sub_1005B8514();
  v13 = OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_buyButtonGuide;
  *(v0 + v13) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingMiniTouchView_cachedGroupedLabelsAXElement) = 0;
  sub_1007A38A4();
  __break(1u);
}

uint64_t type metadata accessor for ThemeOptionsContainerViewModifier()
{
  result = qword_100AEC450;
  if (!qword_100AEC450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005BDB60()
{
  sub_100247C8C();
  if (v0 <= 0x3F)
  {
    sub_1002B3658();
    if (v1 <= 0x3F)
    {
      sub_1005BDC1C();
      if (v2 <= 0x3F)
      {
        sub_1005BDC80();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1005BDC1C()
{
  result = qword_100AEC460;
  if (!qword_100AEC460)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AEC460);
  }

  return result;
}

void sub_1005BDC80()
{
  if (!qword_100AEC468)
  {
    type metadata accessor for ThemeOptionsContainerViewModel(255);
    sub_1005C08C0(&qword_100AE65A0, type metadata accessor for ThemeOptionsContainerViewModel);
    v0 = sub_10079C054();
    if (!v1)
    {
      atomic_store(v0, &qword_100AEC468);
    }
  }
}

uint64_t sub_1005BDD30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10079C824();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&unk_100ADB730);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ThemeOptionsContainerViewModifier();
  sub_1005C0D10(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10079BC44();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1007A29C4();
    v13 = sub_10079D244();
    sub_10079AB44();

    sub_10079C814();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1005BDF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = a1;
  v92 = a2;
  v85 = sub_100796CF4();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = &v62 - v6;
  v81 = sub_1007A21D4();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v62 - v9;
  v10 = type metadata accessor for ThemeOptionsContainerViewModifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  OpaqueTypeConformance2 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = sub_1001F1160(&qword_100AEC4A8);
  __chkstk_darwin(v16 - 8);
  v63 = &v62 - v17;
  v86 = sub_1001F1160(&qword_100AEC4B0);
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v93 = &v62 - v18;
  v19 = sub_1001F1160(&qword_100AEC4B8);
  v90 = *(v19 - 8);
  v91 = v19;
  __chkstk_darwin(v19);
  v82 = &v62 - v20;
  v88 = sub_1001F1160(&qword_100AEC4C0);
  __chkstk_darwin(v88);
  v87 = &v62 - v21;
  sub_1005C0534(v2, v15);
  v74 = sub_1007A26F4();
  v22 = sub_1007A26E4();
  v23 = *(v11 + 80);
  v75 = (v23 + 32) & ~v23;
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = &protocol witness table for MainActor;
  sub_1005C0CA8(v15, v24 + ((v23 + 32) & ~v23), type metadata accessor for ThemeOptionsContainerViewModifier);
  v25 = sub_1007A26E4();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_1001F1160(&qword_100AEC4C8);
  sub_10079E204();
  v70 = v3;
  v72 = v15;
  sub_1005C0534(v3, v15);
  v27 = (v23 + 16) & ~v23;
  v71 = v12;
  v28 = swift_allocObject();
  v73 = type metadata accessor for ThemeOptionsContainerViewModifier;
  sub_1005C0CA8(v15, v28 + v27, type metadata accessor for ThemeOptionsContainerViewModifier);
  v29 = OpaqueTypeConformance2;
  sub_1005C0534(v3, OpaqueTypeConformance2);
  v30 = swift_allocObject();
  sub_1005C0CA8(v29, v30 + v27, type metadata accessor for ThemeOptionsContainerViewModifier);
  v66 = sub_1001F1160(&qword_100AEC4D0);
  v65 = sub_1001F1160(&qword_100AF26C0);
  v64 = sub_1001F1160(&qword_100AEC4D8);
  v67 = sub_100005920(&qword_100AEC4E0, &qword_100AEC4D0);
  v68 = sub_100005920(&qword_100AEC4E8, &qword_100AF26C0);
  v31 = sub_1001F1234(&qword_100AEC4F0);
  v32 = sub_10079CE84();
  v33 = sub_1005C0694();
  v95 = v31;
  v96 = v32;
  v97 = v33;
  v98 = &protocol witness table for PagePresentationSizing;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v63;
  sub_10079DB54();

  sub_100007840(v34, &qword_100AEC4A8);
  v35 = v77;
  sub_1007A2154();
  v36 = v80;
  sub_100796C94();
  v37 = v79;
  v38 = v81;
  (*(v79 + 16))(v78, v35, v81);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v41 = v84;
  v42 = v85;
  (*(v84 + 16))(v83, v36, v85);
  v43 = sub_1007A22D4();
  v45 = v44;
  (*(v41 + 8))(v36, v42);
  (*(v37 + 8))(v35, v38);
  v101 = v43;
  v102 = v45;
  v46 = v70;
  v47 = v72;
  sub_1005C0534(v70, v72);
  v48 = sub_1007A26E4();
  v49 = v75;
  v50 = swift_allocObject();
  *(v50 + 16) = v48;
  *(v50 + 24) = &protocol witness table for MainActor;
  sub_1005C0CA8(v47, v50 + v49, v73);
  v51 = sub_1007A26E4();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = &protocol witness table for MainActor;
  sub_10079E204();
  v94 = v46;
  sub_1001F1160(&qword_100ADB788);
  v95 = v66;
  v96 = v65;
  v97 = v64;
  v98 = v67;
  v99 = v68;
  v100 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100206ECC();
  v53 = v82;
  sub_100005920(&qword_100ADB7C8, &qword_100ADB788);
  v54 = v86;
  v55 = v93;
  sub_10079DB04();

  (*(v89 + 8))(v55, v54);
  v56 = sub_1005BFF74();
  v93 = *v46;
  if (v93)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = v93;
    v58 = v87;
    (*(v90 + 32))(v87, v53, v91);
    v59 = v58 + *(v88 + 36);
    *v59 = v56 & 1;
    *(v59 + 8) = sub_100318740;
    *(v59 + 16) = v57;
    sub_100042D68(v58, v92);
    v60 = v93;

    return v60;
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1005C08C0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BEAE8()
{
  v1 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v1 - 8);
  v28 = &v26 - v2;
  v3 = sub_1001F1160(&qword_100AE65A8);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_1001F1160(&qword_100AF26C0);
  v29 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for ThemeOptionsContainerViewModifier();
  v27 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v13 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v5, 1, v13) == 1)
  {
    return sub_100007840(v5, &qword_100AE65A8);
  }

  v16 = v29;
  (*(v29 + 16))(v8, v5, v6);
  sub_1005C0D80(v5);
  (*(v16 + 32))(v11, v8, v6);
  if (sub_1007A0874())
  {
    v17 = v29;
    v18 = sub_100664AD8(v30);
    v20 = v19;
    if (!v14(v19, 1, v13))
    {
      v20[*(v13 + 20)] = 1;
    }

    (v18)(v30, 0);
    return (*(v17 + 8))(v11, v6);
  }

  else
  {
    v21 = *sub_10000E3E8((v27 + *(v12 + 28)), *(v27 + *(v12 + 28) + 24));
    v22 = sub_1007A2744();
    v23 = v28;
    (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
    sub_1007A26F4();

    v24 = sub_1007A26E4();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v21;
    sub_1003457A0(0, 0, v23, &unk_100833428, v25);

    return (*(v29 + 8))(v11, v6);
  }
}

uint64_t sub_1005BEEE4@<X0>(void **a1@<X1>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_10079CE84();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThemeOptionsView();
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1001F1160(&qword_100AEC518);
  __chkstk_darwin(v26);
  v9 = &v25 - v8;
  v10 = sub_1001F1160(&qword_100AEC508);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_1001F1160(&qword_100AEC4F0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  sub_1001F1160(&qword_100AF26C0);
  sub_1007A0864();
  v16 = *a1;
  if (*a1)
  {
    type metadata accessor for ChromeStyle();
    sub_1005C08C0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    v17 = v16;
    v18 = sub_10079B8A4();
    sub_1005C0CA8(v7, v9, type metadata accessor for ThemeOptionsView);
    v19 = &v9[*(v26 + 36)];
    *v19 = v18;
    v19[1] = v16;
    v20 = *(v10 + 36);
    sub_1005BDD30(&v12[v20]);
    v21 = sub_10079BC44();
    (*(*(v21 - 8) + 56))(&v12[v20], 0, 1, v21);
    sub_10020B3C8(v9, v12, &qword_100AEC518);
    sub_10020B3C8(v12, v15, &qword_100AEC508);
    v15[*(v13 + 36)] = 1;
    v22 = v27;
    sub_10079C9D4();
    sub_1005C0694();
    v23 = v30;
    sub_10079D914();
    (*(v29 + 8))(v22, v23);
    return sub_100007840(v15, &qword_100AEC4F0);
  }

  else
  {
    type metadata accessor for ChromeStyle();
    sub_1005C08C0(&qword_100ADB6A0, type metadata accessor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005BF2F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v85 = a1;
  v79 = a2;
  v2 = type metadata accessor for ThemeOptionsContainerViewModifier();
  v74 = *(v2 - 8);
  v84 = *(v74 + 8);
  __chkstk_darwin(v2 - 8);
  v82 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&qword_100ADB858);
  __chkstk_darwin(v4 - 8);
  v81 = v61 - v5;
  v80 = sub_100796CF4();
  v6 = *(v80 - 8);
  __chkstk_darwin(v80);
  v8 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v61 - v10;
  v12 = sub_1007A21D4();
  v86 = *(v12 - 8);
  v13 = v86;
  __chkstk_darwin(v12);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v61 - v17;
  v73 = sub_1001F1160(&qword_100ADB860);
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v77 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v76 = v61 - v21;
  __chkstk_darwin(v22);
  v75 = v61 - v23;
  __chkstk_darwin(v24);
  v83 = v61 - v25;
  sub_1007A2154();
  sub_100796C94();
  v72 = *(v13 + 16);
  v61[0] = v15;
  v26 = v12;
  v72(v15, v18, v12);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v71 = ObjCClassFromMetadata;
  v70 = objc_opt_self();
  v28 = [v70 bundleForClass:ObjCClassFromMetadata];
  v69 = *(v6 + 16);
  v62 = v8;
  v29 = v80;
  v69(v8, v11, v80);
  v30 = sub_1007A22D4();
  v32 = v31;
  v33 = *(v6 + 8);
  v67 = v6 + 8;
  v68 = v33;
  v33(v11, v29);
  v34 = *(v86 + 8);
  v86 += 8;
  v66 = v34;
  v35 = v26;
  v34(v18, v26);
  v87 = v30;
  v88 = v32;
  v36 = v81;
  sub_10079BB44();
  v64 = sub_10079BB84();
  v37 = *(v64 - 8);
  v63 = *(v37 + 56);
  v65 = v37 + 56;
  v63(v36, 0, 1, v64);
  v38 = v82;
  sub_1005C0534(v85, v82);
  v39 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v40 = swift_allocObject();
  v74 = type metadata accessor for ThemeOptionsContainerViewModifier;
  sub_1005C0CA8(v38, v40 + v39, type metadata accessor for ThemeOptionsContainerViewModifier);
  v61[1] = sub_100206ECC();
  sub_10079E074();
  sub_1007A2154();
  sub_100796C94();
  v72(v61[0], v18, v35);
  v41 = [v70 bundleForClass:v71];
  v42 = v11;
  v43 = v80;
  v69(v62, v11, v80);
  v44 = sub_1007A22D4();
  v46 = v45;
  v68(v42, v43);
  v66(v18, v35);
  v87 = v44;
  v88 = v46;
  v47 = v81;
  sub_10079BB64();
  v63(v47, 0, 1, v64);
  v48 = v82;
  sub_1005C0534(v85, v82);
  v49 = swift_allocObject();
  sub_1005C0CA8(v48, v49 + v39, v74);
  v50 = v75;
  sub_10079E074();
  v51 = v78;
  v52 = *(v78 + 16);
  v53 = v76;
  v54 = v83;
  v55 = v73;
  v52(v76, v83, v73);
  v56 = v77;
  v52(v77, v50, v55);
  v57 = v79;
  v52(v79, v53, v55);
  v58 = sub_1001F1160(&qword_100ADB868);
  v52(&v57[*(v58 + 48)], v56, v55);
  v59 = *(v51 + 8);
  v59(v50, v55);
  v59(v54, v55);
  v59(v56, v55);
  return (v59)(v53, v55);
}

uint64_t sub_1005BFB54()
{
  v1 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_1001F1160(&qword_100AE65A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for ThemeOptionsContainerViewModifier();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4();

  v8 = type metadata accessor for ThemeOptionsContainerViewModel.ThemeOptions(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8))
  {
    return sub_100007840(v6, &qword_100AE65A8);
  }

  v10 = v6[*(v8 + 20)];
  result = sub_100007840(v6, &qword_100AE65A8);
  if (v10 == 1)
  {
    v11 = *sub_10000E3E8((v0 + *(v7 + 28)), *(v0 + *(v7 + 28) + 24));
    v12 = sub_1007A2744();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_1007A26F4();

    v13 = sub_1007A26E4();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = v11;
    sub_1003457A0(0, 0, v3, &unk_10082A4B0, v14);
  }

  return result;
}