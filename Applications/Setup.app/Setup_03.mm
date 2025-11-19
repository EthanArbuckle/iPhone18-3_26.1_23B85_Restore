void sub_100055900(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((v1 - 1) >= 2)
    {
      if (v1)
      {
        sub_100056884();
      }

      else
      {
        sub_100056674();
      }
    }

    else
    {
      sub_1000569B8();
    }
  }
}

void sub_100055984(unsigned __int8 *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (v6 == 4)
    {
LABEL_12:

      return;
    }

    static Logger.purpleBuddyAppearance.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = v48;
      *v11 = 136315650;
      *(v11 + 4) = sub_100063F14(0x4C64694477656976, 0xED0000292864616FLL, &v49);
      *(v11 + 12) = 2048;
      *(v11 + 14) = 151;
      *(v11 + 22) = 2080;
      v12 = sub_10000CB10(v6);
      v47 = v10;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v46 = v9;
      v19 = v18;
      v20 = sub_10000B790(v12, v14 & 1, v18, v16 & 1);
      v22 = v21;

      v23 = sub_100063F14(v20, v22, &v49);

      *(v11 + 24) = v23;
      v24 = v46;
      _os_log_impl(&_mh_execute_header, v46, v47, "   %s: %ld\n   currentConfiguration: %s", v11, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    v25 = &v8[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView];
    v26 = *&v8[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView];
    if (v26)
    {
      if (*&v8[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel])
      {
        v27 = *(v25 + 1);

        v28 = v26;
        v29 = sub_100011E34();
        v31 = v30;

        if ((v31 & 1) == 0)
        {
LABEL_11:
          ObjectType = swift_getObjectType();
          (*(v27 + 16))(v29, ObjectType, v27);

          v38 = *&v8[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationView];
          v39 = *&v8[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_layoutDirection] == 1;
          v40 = [v8 traitCollection];
          sub_10000B950(v38, v39, v40);
          v42 = v41;

          v43 = *&v8[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationController];
          *&v8[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationController] = v42;
          v44 = v42;

          [v44 startAnimation];
          v8 = v44;
          goto LABEL_12;
        }

        v32 = *v25;
        if (*v25)
        {
          v33 = *(v25 + 1);
          v34 = swift_getObjectType();
          v35 = *(v33 + 8);
          v36 = v32;
          v29 = v35(v34, v33);

          goto LABEL_11;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

void sub_100055D70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel);
    v2 = Strong;

    if (v1)
    {
      sub_100013250();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100055E30(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BuddyAppearanceController();
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  if (!*&v2[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel])
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_100013518();

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 type];

  if (v5 != 1)
  {
    return;
  }

  v6 = [v2 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 layoutIfNeeded];
}

void sub_100056084()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000597F8(0, &qword_1003A0430);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = sub_100056310();

    if (v6)
    {
    }

    else
    {
      v7 = [objc_opt_self() defaultCenter];
      v8 = swift_allocObject();
      *(v8 + 16) = sub_100059060;
      *(v8 + 24) = v5;
      aBlock[4] = sub_1000590A0;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100053BB8;
      aBlock[3] = &unk_10032A768;
      v9 = _Block_copy(aBlock);

      v10 = [v7 addObserverForName:@"BuddyCloudConfigManagerSkipKeysDidChangeNotification" object:0 queue:0 usingBlock:v9];

      _Block_release(v9);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100056310()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_cloudConfigManager];
    if (!v6)
    {
LABEL_16:

      return v6;
    }

    v7 = Strong;
    v5 = v6;
    v8 = [v7 navigationController];
    if (v8)
    {
      v9 = v8;
      v10 = *&v7[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_delegate];
      if (!v10)
      {

LABEL_14:
        v6 = 0;
        v9 = v7;
        v5 = v7;
        goto LABEL_15;
      }

      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      swift_unknownObjectRetain();
      if ([v5 cloudConfigWantsToSkipControllerClass:ObjCClassFromMetadata])
      {
        v12 = [v9 topViewController];
        if (v12)
        {
          v13 = v12;
          sub_1000597F8(0, &qword_1003A1218);
          v14 = static NSObject.== infix(_:_:)();

          if (v14)
          {
            static Logger.purpleBuddyAppearance.getter();
            v15 = v7;
            v16 = Logger.logObject.getter();
            v17 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v31 = v17;
              v19 = v18;
              v30 = swift_slowAlloc();
              v32 = v30;
              *v19 = 136315138;
              v20 = _typeName(_:qualified:)();
              v22 = sub_100063F14(v20, v21, &v32);
              v29 = v16;
              v23 = v15;
              v24 = v22;

              *(v19 + 4) = v24;
              v15 = v23;
              v25 = v29;
              _os_log_impl(&_mh_execute_header, v29, v31, "Advancing from %s due to cloud configuration...", v19, 0xCu);
              sub_100059768(v30);
            }

            else
            {
            }

            (*(v1 + 8))(v3, v0);
            v27 = v15;
            [v10 flowItemDone:v27];

            swift_unknownObjectRelease();
            v6 = 1;
            goto LABEL_15;
          }
        }

        else
        {
        }

        swift_unknownObjectRelease();
        v6 = 0;
LABEL_15:

        goto LABEL_16;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  return 0;
}

void sub_100056674()
{
  v1 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v1 setHidden:0];
  [*&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationView] setHidden:0];
  v2 = [v0 buttonTray];
  v3 = [v2 allButtons];

  sub_1000597F8(0, &unk_1003A1F48);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_revertButton;
  v6 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_revertButton];
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v4;
  v8 = v6;

  v16 = v8;
  __chkstk_darwin(v9);
  v15[2] = &v16;
  v10 = sub_100053CAC(sub_100058FC0, v15, v7);

  if (v10)
  {
    v11 = [v0 buttonTray];
    if (*&v0[v5])
    {
      v12 = v11;
      [v11 removeButton:?];

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
  v13 = [v0 headerView];
  if (qword_10039F9E8 != -1)
  {
    swift_once();
  }

  v14 = String._bridgeToObjectiveC()();
  [v13 setDetailText:v14];
}

void sub_100056884()
{
  v1 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  [v1 setHidden:1];
  [*&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationView] setHidden:1];
  v2 = [v0 headerView];
  if (qword_10039F9F0 != -1)
  {
    swift_once();
  }

  v3 = String._bridgeToObjectiveC()();
  [v2 setDetailText:v3];

  v4 = [v0 buttonTray];
  if (!*&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_revertButton])
  {
    goto LABEL_9;
  }

  v5 = v4;
  [v4 addButton:?];
}

void sub_1000569B8()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    [v3 setUserInteractionEnabled:0];
  }

  sub_100056674();
  v4 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_continueButton;
  v5 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_continueButton];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 mainBundle];
  v25._object = 0xE000000000000000;
  v9._object = 0x800000010029DAF0;
  v9._countAndFlagsBits = 0xD000000000000012;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v25);

  v11 = String._bridgeToObjectiveC()();

  [v7 setTitle:v11 forState:0];

  v12 = *&v0[v4];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v12 setEnabled:0];
  v13 = [v0 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 navigationBar];
    v16 = [objc_opt_self() tertiaryLabelColor];
    [v15 setTintColor:v16];
  }

  v17 = objc_opt_self();
  v18 = [v17 accessibilityViewController];
  if (v18)
  {

    v19 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_featureFlags];
    if (v19)
    {
      if (([v19 isSolariumEnabled] & 1) == 0)
      {
        v20 = [v17 navigationBarButton];
        v21 = [objc_opt_self() tertiaryLabelColor];
        [v20 setTintColor:v21];

        v22 = [v0 navigationItem];
        v23 = [v17 navigationBarButtonItemWithButton:v20];
        [v22 setRightBarButtonItem:v23];
      }

      return;
    }

LABEL_18:
    __break(1u);
  }
}

void sub_100056CD8()
{
  v1 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationViewWrapper];
  v2 = [v1 topAnchor];
  v3 = [v0 headerView];
  v4 = [v3 topAnchor];

  v66 = [v2 constraintEqualToAnchor:v4 constant:100.0];
  LODWORD(v5) = 1132068864;
  [v66 setPriority:v5];
  v6 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_animationView];
  v7 = [v6 topAnchor];
  v8 = [v0 headerView];
  v9 = [v8 bottomAnchor];

  v10 = [v7 constraintGreaterThanOrEqualToAnchor:v9 constant:16.0];
  LODWORD(v11) = 1148846080;
  [v10 setPriority:v11];
  v12 = [v0 headerView];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v13];

  LODWORD(v14) = 1132068864;
  [v1 setContentCompressionResistancePriority:1 forAxis:v14];
  sub_100006410(&qword_1003A1400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100298450;
  v16 = [v6 topAnchor];
  v17 = [v1 topAnchor];
  v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17];

  *(inited + 32) = v18;
  *(inited + 40) = v10;
  v65 = v10;
  v19 = [v6 heightAnchor];
  v20 = [v1 heightAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20 multiplier:0.75];

  *(inited + 48) = v21;
  v22 = [v6 bottomAnchor];
  v23 = [v1 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(inited + 56) = v24;
  v25 = [v6 leadingAnchor];
  v26 = [v1 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(inited + 64) = v27;
  v28 = [v6 trailingAnchor];
  v29 = [v1 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(inited + 72) = v30;
  *(inited + 80) = v66;
  v67 = v66;
  v31 = [v1 leadingAnchor];
  v32 = [v0 contentView];
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintEqualToAnchor:v33];
  *(inited + 88) = v34;
  v35 = [v1 trailingAnchor];
  v36 = [v0 contentView];
  v37 = [v36 trailingAnchor];

  v38 = [v35 constraintEqualToAnchor:v37];
  *(inited + 96) = v38;
  v39 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_featureFlags];
  if (!v39)
  {
    __break(1u);
    goto LABEL_11;
  }

  v64 = [v39 isSolariumEnabled];
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1002977D0;
  v41 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView;
  v42 = *&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView];
  if (!v42)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v43 = [v42 leadingAnchor];
  v44 = [v0 contentView];
  v45 = [v44 leadingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v40 + 32) = v46;
  v47 = *&v0[v41];
  if (!v47)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = [v47 trailingAnchor];
  v49 = [v0 contentView];
  v50 = [v49 trailingAnchor];

  v51 = [v48 constraintEqualToAnchor:v50];
  *(v40 + 40) = v51;
  v52 = *&v0[v41];
  if (!v52)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v53 = [v52 bottomAnchor];
  v54 = [v0 contentView];
  v55 = [v54 bottomAnchor];

  v56 = [v53 constraintEqualToAnchor:v55];
  *(v40 + 48) = v56;
  v57 = *&v0[v41];
  if (!v57)
  {
LABEL_14:
    __break(1u);
    return;
  }

  if (v64)
  {
    v58 = 16.0;
  }

  else
  {
    v58 = 0.0;
  }

  v59 = [v57 topAnchor];
  v60 = [v1 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:v58];

  *(v40 + 56) = v61;
  v62 = objc_opt_self();
  sub_100058A54(inited);
  sub_1000597F8(0, &qword_1003A0BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v62 activateConstraints:isa];

  sub_100057498();
}

void sub_100057498()
{
  v1 = objc_opt_self();
  v2 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_constraintsToButtonTray;
  sub_1000597F8(0, &qword_1003A0BF0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 deactivateConstraints:isa];

  *&v0[v2] = _swiftEmptyArrayStorage;

  sub_100006410(&qword_1003A1400);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100298CC0;
  v5 = [v0 contentView];
  v6 = [v5 bottomAnchor];

  v7 = [v0 buttonTray];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8];
  *(v4 + 32) = v9;
  *&v0[v2] = v4;

  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:v10];
}

void sub_100057674()
{
  if (!*(v0 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel))
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v0 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView;
  v2 = *(v0 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView);
  if (!v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);

  v6 = v2;
  v7 = v5(ObjectType, v3);

  sub_100011EB4(v7, 0);
}

void sub_100057884()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v54 - v7;
  v9 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel;
  if (!*&v0[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel])
  {
    __break(1u);
    goto LABEL_19;
  }

  CurrentValueSubject.value.getter();

  v10 = v59;
  if (v59 != 4)
  {
    static Logger.purpleBuddyAppearance.getter();
    v19 = v0;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v56 = v21;
      v57 = v2;
      v58 = v9;
      v22 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v59 = v55;
      *v22 = 136315906;
      *(v22 + 4) = sub_100063F14(0xD000000000000010, 0x800000010029DAD0, &v59);
      *(v22 + 12) = 2048;
      *(v22 + 14) = 363;
      *(v22 + 22) = 2080;
      v23 = *&v19[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_appearanceModeProvider];
      if (v23)
      {
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 defaultController];
        v27 = [v26 currentDisplayZoomMode];

        v54 = [v27 displayZoomOption];
        v28 = v25;
        LOBYTE(v27) = [*&v25[OBJC_IVAR____TtC5Setup22AppearanceModeProvider_homeScreenService] isLargeIconLayoutEnabled];
        v29 = sub_100046B84();
        v30 = _AXSEnhanceTextLegibilityEnabled();

        v31 = sub_10000B790(v54, v27, v29, v30 != 0);
        v33 = v32;
      }

      else
      {
        v33 = 0xE800000000000000;
        v31 = 0x74657320746F6E20;
      }

      v34 = sub_100063F14(v31, v33, &v59);

      *(v22 + 24) = v34;
      *(v22 + 32) = 2080;
      v35 = sub_10000CB10(v10);
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = sub_10000B790(v35, v37 & 1, v41, v39 & 1);
      v44 = v43;

      v45 = sub_100063F14(v42, v44, &v59);

      *(v22 + 34) = v45;
      _os_log_impl(&_mh_execute_header, v20, v56, "    %s: %ld\n    currentConfiguration: %s\n    sliderConfiguration: %s", v22, 0x2Au);
      swift_arrayDestroy();

      (*(v3 + 8))(v8, v57);
      v9 = v58;
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    goto LABEL_14;
  }

  static Logger.purpleBuddyAppearance.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "User selected a custom configuration", v13, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v14 = *&v1[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = *&v1[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_selectionView + 8];
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 8);
  v18 = v14;
  v17(ObjectType, v15);

  if (*&v1[v9])
  {
LABEL_14:
    v46 = *&v1[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_analyticsEventAppearance];
    if (v46)
    {
      v47 = v46;
      v48 = String._bridgeToObjectiveC()();

      v49 = *&v1[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_flowItemDispositionProvider];
      if (v49)
      {
        [v47 didChooseAppearanceModeName:v48 forDisposition:{objc_msgSend(v49, "dispositions")}];

        v50 = [objc_opt_self() buddyPreferencesExcludedFromBackup];
        v51 = String._bridgeToObjectiveC()();

        v52 = String._bridgeToObjectiveC()();
        [v50 setObject:v51 forKey:v52 persistImmediately:1];

        if (*&v1[v9])
        {
          swift_unknownObjectWeakInit();

          sub_1000122E8(v53);

          swift_unknownObjectWeakDestroy();
          return;
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

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_100058110()
{
  if (!*(v0 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_runState))
  {
    return 0;
  }

  if ([swift_unknownObjectRetain() hasCompletedInitialRun])
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_appearanceModeProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_displayZoomExecutor);
    if (v3)
    {
      v4 = v0;
      v5 = *(v0 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_deviceProvider);
      if (v5)
      {
        v6 = v2;
        v7 = v3;
        v8 = [v5 type];
        type metadata accessor for BuddyAppearanceControllerViewModel();
        swift_allocObject();
        v9 = v6;
        v10 = v7;
        v11 = sub_10001412C(v9, v10, v8);
        swift_unknownObjectRelease();

        *(v4 + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_viewModel) = v11;

        return 1;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000582C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100006410(&qword_1003A0110);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000583A0, v8, v7);
}

uint64_t sub_1000583A0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_10002BF04();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v7 = v5;

  v8 = v3;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v10[5] = v5;
  v10[6] = v4;
  v10[7] = v2;
  sub_100022A78(0, 0, v1, &unk_100298D60, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000584F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005858C, v9, v8);
}

void sub_10005858C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Setup25BuddyAppearanceController_analyticsEventAppearance);
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v4 = v1;

    [v4 setChildAge:v2];

    v3(1);
    v5 = v0[1];

    v5();
  }

  else
  {
    __break(1u);
  }
}

id sub_1000586B4()
{
  v1 = OBJC_IVAR____TtC5Setup25BuddyAppearanceController_presentationDismissalObserver;
  swift_beginAccess();
  sub_1000598A0(v0 + v1, &v5);
  if (v6)
  {
    sub_100015B18(&v5, &v7);
    v2 = [objc_opt_self() defaultCenter];
    sub_1000171F4(&v7, v8);
    [v2 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    sub_100059768(&v7);
  }

  else
  {
    sub_100059840(&v5, &qword_1003A04B8);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for BuddyAppearanceController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100058958(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_100058A54(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100058B44(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100058BE4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100058B44(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_100058BE4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100059644(&qword_1003A1F40, &qword_1003A1F38);
          for (i = 0; i != v6; ++i)
          {
            sub_100006410(&qword_1003A1F38);
            v9 = sub_100058D98(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000597F8(0, &qword_1003A0BF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100058D98(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100058E18;
  }

  __break(1u);
  return result;
}

id sub_100058E20(uint64_t a1)
{
  v2 = type metadata accessor for BuddyAppearanceControllerViewModel();
  v15[3] = v2;
  v15[4] = &off_100328290;
  v15[0] = a1;
  v3 = type metadata accessor for BuddyAppearanceCheckboxContainerView();
  v4 = objc_allocWithZone(v3);
  v5 = sub_10000B500(v15, v2);
  __chkstk_darwin(v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v14[3] = v2;
  v14[4] = &off_100328290;
  v14[0] = v9;
  v10 = OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_stackView;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  *&v4[OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_checkboxViews] = _swiftEmptyArrayStorage;
  sub_100059704(v14, &v4[OBJC_IVAR____TtC5Setup36BuddyAppearanceCheckboxContainerView_viewModel]);
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10000AA18();

  sub_100059768(v14);
  sub_100059768(v15);
  return v11;
}

uint64_t sub_100059028()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100059068()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000590C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000590E0(char *a1, void (**a2)(void, void))
{
  v4 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  result = swift_allocObject();
  *(result + 16) = a2;
  v8 = *&a1[OBJC_IVAR____TtC5Setup25BuddyAppearanceController_flowItemDispositionProvider];
  if (v8)
  {
    v9 = result;
    _Block_copy(a2);
    if (([v8 dispositions] & 0x10) != 0)
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      type metadata accessor for MainActor();
      v11 = a1;

      v12 = static MainActor.shared.getter();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = &protocol witness table for MainActor;
      v13[4] = v11;
      v13[5] = sub_100059304;
      v13[6] = v9;
      sub_100022A78(0, 0, v6, &unk_100298D50, v13);
    }

    else
    {
      a2[2](a2, 1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000592CC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005930C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100059354(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10005941C;

  return sub_1000582C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10005941C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100059510()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100059560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100059914;

  return sub_1000584F0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100059644(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000097E0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100059694(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006410(&qword_1003A04B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100059704(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100059768(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000597B4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000597F8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000597F8(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100059840(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006410(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000598A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006410(&qword_1003A04B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id *sub_10005991C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_10005ADEC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10005AE0C();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_10005ADEC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v7 + 1);
        sub_100015B18(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10005AE0C();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_10005ADEC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = (v11 + 1);
        sub_100015B18(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_100059B68()
{
  *&v0[OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_navigationController] = 0;
  *&v0[OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_presenterSession] = 0;
  *&v0[OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_viewControllerForDisablingInteractions] = 0;
  *&v0[OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_delegate] = 0;
  *&v0[OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_safetySettingsUIProvider] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsFlowItem();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100059CB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_100059CFC()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for MainActor();
  v1[5] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[6] = v3;
  v1[7] = v2;

  return _swift_task_switch(sub_100059D98, v3, v2);
}

uint64_t sub_100059D98()
{
  v1 = v0[3];
  v2 = static MainActor.shared.getter();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v0[9] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = sub_100006410(&qword_1003A2088);
  *v4 = v0;
  v4[1] = sub_100059EB0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v2, &protocol witness table for MainActor, 0xD00000000000001FLL, 0x800000010029DD50, sub_10005B270, v3, v5);
}

uint64_t sub_100059EB0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_10005A010, v3, v2);
}

uint64_t sub_10005A010()
{

  v1 = v0[2];
  if (v1)
  {
    *(v0[3] + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_presenterSession) = v1;
    swift_unknownObjectRelease();
  }

  v2 = v0[1];

  return v2(v1 != 0);
}

uint64_t sub_10005A098(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006410(&unk_1003A2090);
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_safetySettingsUIProvider);
  if (v9)
  {
    v10 = *(a2 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_runState);
    if (v10)
    {
      swift_unknownObjectRetain();
      v11 = [v10 hasCompletedInitialRun];
      (*(v5 + 16))(v8, a1, v4);
      v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v13 = swift_allocObject();
      (*(v5 + 32))(v13 + v12, v8, v4);
      aBlock[4] = sub_10005B30C;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10005A2F4;
      aBlock[3] = &unk_10032A858;
      v14 = _Block_copy(aBlock);

      [v9 shouldPresentSafetySettingsWithHasCompletedInitialRun:v11 delegate:a2 completion:v14];
      _Block_release(v14);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005A2A4()
{
  swift_unknownObjectRetain();
  sub_100006410(&unk_1003A2090);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10005A2F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10005A4C8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005A560, v4, v3);
}

uint64_t sub_10005A560()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10005A610;

  return sub_100059CFC();
}

uint64_t sub_10005A610(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

void sub_10005A7A0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_viewControllerForDisablingInteractions;
  v7 = *(v1 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_viewControllerForDisablingInteractions);
  if (v7)
  {
    v8 = v7;
    static Logger.purpleBuddyGeneral.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Safety settings stopping spinner", v11, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v12 = *(v1 + v6);
    *(v1 + v6) = 0;

    v13 = *(v1 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_navigationController);
    if (v13)
    {
      [v13 removeDelegateObserver:v1];
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v15 = NSStringFromClass(ObjCClassFromMetadata);
      if (!v15)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = String._bridgeToObjectiveC()();
      }

      [objc_opt_self() stopAnimatingSpinnerFor:v15];

      v16 = [v8 view];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 window];

        if (v18)
        {
          [v18 setUserInteractionEnabled:1];

          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_10005A9EC(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Safety settings presentation session did finish", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  sub_10005A7A0();
  if (a1)
  {
    v11 = *(v2 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_delegate);
    if (!v11)
    {
      goto LABEL_9;
    }

    swift_unknownObjectRetain();
    sub_10005991C(a1);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 removeViewControllersOnNextPush:isa];
    swift_unknownObjectRelease();
  }

  v13 = *(v2 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_delegate);
  if (v13)
  {
    [v13 flowItemDone:v2];
    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

id sub_10005ACA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SafetySettingsFlowItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id *sub_10005AD8C(id *a1, int64_t a2, char a3)
{
  result = sub_10005AE58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10005ADAC(id *a1, int64_t a2, char a3)
{
  result = sub_10005AF4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10005ADCC(char *a1, int64_t a2, char a3)
{
  result = sub_10005B050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_10005ADEC(id *a1, int64_t a2, char a3)
{
  result = sub_10005B15C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_10005AE0C()
{
  result = qword_1003A1218;
  if (!qword_1003A1218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003A1218);
  }

  return result;
}

id *sub_10005AE58(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006410(&qword_1003A20A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id *sub_10005AF4C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006410(&qword_1003A20A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10005B050(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006410(&unk_1003A20B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

id *sub_10005B15C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100006410(&qword_1003A1DB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10005B278()
{
  v1 = sub_100006410(&unk_1003A2090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005B30C()
{
  sub_100006410(&unk_1003A2090);

  return sub_10005A2A4();
}

uint64_t sub_10005B388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10005B3A0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Safety settings starting spinner before presentation", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_navigationController;
  v10 = *(v1 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_navigationController);
  if (!v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v11 = [v10 topViewController];
  v12 = OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_viewControllerForDisablingInteractions;
  v13 = *(v1 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_viewControllerForDisablingInteractions);
  *(v1 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_viewControllerForDisablingInteractions) = v11;
  v14 = v11;

  if (!v14)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = [v14 view];

  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = [v15 window];

  if (!v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v16 setUserInteractionEnabled:0];

  v17 = *(v1 + v12);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v17;
  v20 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [objc_opt_self() startAnimatingSpinnerFor:v19 identifier:v20];

  v21 = *(v1 + v9);
  if (!v21)
  {
    goto LABEL_17;
  }

  [v21 addDelegateObserver:v1];
  v22 = *(v1 + OBJC_IVAR____TtC5Setup22SafetySettingsFlowItem_presenterSession);
  if (!v22)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v1 + v9))
  {
    [v22 presentWithNavigationController:?];
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_10005B650()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Safety settings observed navigation controller will show", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_10005A7A0();
}

uint64_t sub_10005B798()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005B7D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005B884;

  return sub_10005A4C8(v2, v3);
}

uint64_t sub_10005B884()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005B97C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t *sub_10005B9C0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Int sub_10005B9F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10005BA6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t *sub_10005BAB0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id sub_10005BAD8()
{
  v1 = OBJC_IVAR____TtC5Setup19LockdownModeManager____lazy_storage___manager;
  v2 = *(v0 + OBJC_IVAR____TtC5Setup19LockdownModeManager____lazy_storage___manager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Setup19LockdownModeManager____lazy_storage___manager);
  }

  else
  {
    v4 = v0;
    type metadata accessor for LockdownModeManager();
    v5 = static LockdownModeManager.shared.getter();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_10005BB78(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = sub_10005BAD8();
  LODWORD(a3) = a3();

  return ~a3 & 1;
}

void sub_10005BBF0(uint64_t a1)
{
  v2 = sub_100006410(&qword_1003A2250);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  v6 = sub_10005BAD8();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  LockdownModeManager.getEnabledInAccount(synchronize:completion:)();
}

uint64_t sub_10005BEBC(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10005BF34, 0, 0);
}

uint64_t sub_10005BF34()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10005C028;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0xD000000000000013, 0x800000010029DE50, sub_10005E0F0, v2, &type metadata for () + 8);
}

uint64_t sub_10005C028()
{

  return _swift_task_switch(sub_10005C140, 0, 0);
}

uint64_t sub_10005C140()
{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005C1B8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_10005C1D8, 0, 0);
}

uint64_t sub_10005C1D8()
{
  v1 = sub_10005BAD8();
  v2 = LockdownModeManager.enabled.getter();

  if (v2)
  {
LABEL_2:
    v3 = v0[1];

    return v3();
  }

  v5 = v0[3];
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      *(v0[4] + OBJC_IVAR____TtC5Setup19LockdownModeManager_hasStagedEnablement) = 1;
      goto LABEL_2;
    }

    v0[2] = v5;

    return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  }

  else
  {
    v6 = v0[4];
    v7 = swift_task_alloc();
    v0[5] = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_10005C388;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }
}

uint64_t sub_10005C388()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10005C4BC;
  }

  else
  {

    v2 = sub_10005C4A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005C4BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10005C520(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006410(&qword_1003A20F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - v6;
  if (a2 >= 3)
  {
    v14[11] = a2;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    sub_100006410(&qword_1003A2100);
    inited = swift_initStackObject();
    *(inited + 32) = 0x746F6F626572;
    *(inited + 16) = xmmword_100297E80;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = 1u >> (a2 & 7);
    *(inited + 56) = 0xD000000000000015;
    *(inited + 64) = 0x800000010029DE30;
    *(inited + 72) = 0;
    v9 = sub_10005D81C(inited);
    swift_setDeallocating();
    sub_100006410(&qword_1003A2108);
    swift_arrayDestroy();
    v10 = sub_10005BAD8();
    sub_10005C780(v9);

    (*(v5 + 16))(v7, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v7, v4);
    LockdownModeManager.setEnabled(enabled:options:completion:)();
  }

  return result;
}

uint64_t sub_10005C780(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100006410(&unk_1003A0690);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100015B18(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100015B18(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~v7[v16 >> 6]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = v7[v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~v7[v16 >> 6])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_100015B18(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10005CBBC(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_10005CC78;

  return sub_10005C1B8(a1);
}

uint64_t sub_10005CC78()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = _convertErrorToNSError(_:)();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(v7, 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_10005CDFC(uint64_t a1)
{
  v2 = sub_100006410(&qword_1003A20F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_10005D81C(&off_100327950);
  sub_10005DADC(&unk_100327970);
  v7 = sub_10005BAD8();
  sub_10005C780(v6);

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  LockdownModeManager.setEnabled(enabled:options:completion:)();
}

uint64_t sub_10005CF90(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_100006410(&qword_1003A20F8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100006410(&qword_1003A20F8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_10005D178(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10005D1F0, 0, 0);
}

uint64_t sub_10005D1F0()
{
  v1 = v0[2];
  *(v1 + OBJC_IVAR____TtC5Setup19LockdownModeManager_hasStagedEnablement) = 0;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10005D2F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10005D2F0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_10005D488;
  }

  else
  {

    v2 = sub_10005D40C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005D40C()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005D488()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

id sub_10005D58C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockdownModeManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockdownModeManager()
{
  return objc_opt_self();
}

{
  return type metadata accessor for LockdownModeManager();
}

unint64_t sub_10005D5FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006410(&qword_1003A2118);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100067E04(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005D700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006410(&unk_1003A0690);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10005E1FC(v4, v13);
      result = sub_100067E7C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100015B18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005D81C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006410(&qword_1003A2110);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100067E04(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10005D930()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005D9DC;

  return sub_10005D178(v2, v3);
}

uint64_t sub_10005D9DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005DADC(uint64_t a1)
{
  v2 = sub_100006410(&qword_1003A2108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005DBB8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005DBF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005E360;

  return sub_10005CBBC(v2, v3, v4);
}

uint64_t sub_10005DCAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005E364;

  return sub_100063764(v2, v3, v4);
}

uint64_t sub_10005DD6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005E368;

  return sub_10006384C(a1, v4, v5, v6);
}

uint64_t sub_10005DE38()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005DE78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10005E36C;

  return sub_10005BEBC(v2, v3);
}

uint64_t sub_10005DF24()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10005E370;

  return sub_100063764(v2, v3, v4);
}

uint64_t sub_10005DFE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005E024(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10005E374;

  return sub_10006384C(a1, v4, v5, v6);
}

uint64_t sub_10005E10C(uint64_t *a1)
{
  v2 = sub_100006410(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_10005E1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006410(&qword_1003A1D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005E290()
{
  result = qword_1003A2120;
  if (!qword_1003A2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A2120);
  }

  return result;
}

unint64_t sub_10005E2E8()
{
  result = qword_1003A2128;
  if (!qword_1003A2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003A2128);
  }

  return result;
}

void sub_10005E478(char a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_chronicle);
    v3 = "recordFeatureShown:";
LABEL_8:

    [v2 v3];
    return;
  }

  if (!*(v1 + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_lastSeenVersion + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_chronicle);
    v3 = "removeRecordForFeature:";
    goto LABEL_8;
  }

  v4 = *(v1 + OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_chronicle);
  v5 = String._bridgeToObjectiveC()();
  [v4 setProductVersion:v5 forFeature:7];
}

id sub_10005E5CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewFeaturesFlowManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10005E694(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_newFeaturesFlowHandler;
  type metadata accessor for NewFeaturesHandler();
  swift_allocObject();
  *&v2[v6] = NewFeaturesHandler.init()();
  *&v2[OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_chronicle] = a1;
  v7 = [a1 entryForFeature:7];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 productVersion];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v3[OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_lastSeenVersion];
  *v13 = v10;
  v13[1] = v12;
  *&v3[OBJC_IVAR____TtC5Setup22NewFeaturesFlowManager_featureFlags] = a2;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for NewFeaturesFlowManager();
  return objc_msgSendSuper2(&v15, "init");
}

id BuddyCameraControlPresentationProvider.__allocating_init(isIntelligenceEnabled:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = [objc_opt_self() buddyPreferences];
  v5 = [v3 initWithIsIntelligenceEnabled:a1 & 1 preferenceController:v4];

  return v5;
}

id BuddyCameraControlPresentationProvider.init(isIntelligenceEnabled:)(char a1)
{
  v3 = [objc_opt_self() buddyPreferences];
  v4 = [v1 initWithIsIntelligenceEnabled:a1 & 1 preferenceController:v3];

  return v4;
}

id BuddyCameraControlPresentationProvider.__allocating_init(isIntelligenceEnabled:preferenceController:)(char a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_isIntelligenceEnabled] = a1;
  *&v5[OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_preferenceController] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id BuddyCameraControlPresentationProvider.init(isIntelligenceEnabled:preferenceController:)(char a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_isIntelligenceEnabled] = a1;
  *&v2[OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_preferenceController] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BuddyCameraControlPresentationProvider();
  return objc_msgSendSuper2(&v4, "init");
}

Swift::Bool __swiftcall BuddyCameraControlPresentationProvider.shouldPresentCameraControlPane()()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_preferenceController);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (!v3)
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) != 1)
  {
    return 0;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = [v1 BOOLForKey:v4];

  return v5 ^ 1;
}

Swift::Bool __swiftcall BuddyCameraControlPresentationProvider.shouldPresentVisualIntelligencePane()()
{
  if (*(v0 + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) != 1)
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_preferenceController);
  v2 = String._bridgeToObjectiveC()();
  LOBYTE(v1) = [v1 BOOLForKey:v2];

  return v1 ^ 1;
}

Swift::Void __swiftcall BuddyCameraControlPresentationProvider.updatePaneVisibilityPreferences(newState:)(Swift::Bool newState)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_preferenceController);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v9];

  if (*(v1 + OBJC_IVAR____TtC5Setup38BuddyCameraControlPresentationProvider_isIntelligenceEnabled) == 1)
  {
    static Logger.purpleBuddyGeneral.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = newState;
      _os_log_impl(&_mh_execute_header, v10, v11, "Update visual intelligence presented to: %{BOOL}d", v12, 8u);
    }

    (*(v4 + 8))(v6, v3);
    v13 = Bool._bridgeToObjectiveC()().super.super.isa;
    v14 = String._bridgeToObjectiveC()();
    [v7 setObject:v13 forKey:v14];
  }

  else if (!newState)
  {
    v15 = Bool._bridgeToObjectiveC()().super.super.isa;
    v18 = String._bridgeToObjectiveC()();
    [v7 setObject:v15 forKey:v18];

    v16 = v18;
  }
}

id BuddyCameraControlPresentationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BuddyCameraControlPresentationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyCameraControlPresentationProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005F02C()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_1003A7578 = v2;
  }

  else
  {
    __break(1u);
  }
}

id sub_10005F0A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();

  return v3;
}

id sub_10005F110(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_passcodeFlowContinuation;
  v12 = type metadata accessor for BuddyChildSetupFlow.FlowContinuation(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&v5[v11], 1, 1, v12);
  v13(&v5[OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_locationServicesFlowContinuation], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_managedConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_featureFlags] = 0;
  *&v5[OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_runState] = 0;
  *&v5[OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_childSetupPresenter] = 0;
  if (a4)
  {
    v18[4] = a4;
    v18[5] = a5;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_10005F0A4;
    v18[3] = &unk_10032AE48;
    v14 = _Block_copy(v18);
  }

  else
  {
    v14 = 0;
  }

  v15 = type metadata accessor for BuddyChildSetupFlow(0);
  v19.receiver = v5;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, "initWithNavigationController:flowDelegate:flowStarter:dependencyInjector:", a1, a2, a3, v14);
  sub_100065B18(a4);

  swift_unknownObjectRelease();
  _Block_release(v14);
  if (v16)
  {
  }

  return v16;
}

uint64_t sub_10005F468(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void *sub_10005F624()
{
  result = *(v0 + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_featureFlags);
  if (result)
  {
    if ([result isAgeAttestationPhase1Enabled])
    {
      return 0;
    }

    else
    {
      result = *(v0 + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_runState);
      if (result)
      {
        return ([result hasCompletedInitialRun] ^ 1);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10005F704(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v50 = a1;
  v3 = type metadata accessor for BuddyChildSetupFlow.FlowContinuation(0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v44 - v8;
  __chkstk_darwin(v7);
  v11 = (&v44 - v10);
  v12 = sub_100006410(&qword_1003A2340);
  v13 = __chkstk_darwin(v12 - 8);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v44 - v16;
  v18 = __chkstk_darwin(v15);
  v47 = &v44 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v44 - v21;
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  v25 = OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_passcodeFlowContinuation;
  swift_beginAccess();
  v51 = v2;
  sub_1000658B8(v2 + v25, v24, &qword_1003A2340);
  v48 = v4;
  v26 = *(v4 + 48);
  v27 = v3;
  if (v26(v24, 1, v3))
  {
    sub_100065920(v24, &qword_1003A2340);
    v28 = v50;
  }

  else
  {
    v44 = v9;
    sub_100065980(v24, v11);
    sub_100065920(v24, &qword_1003A2340);
    v29 = *v11;
    swift_unknownObjectRetain();
    sub_1000659E4(v11);
    swift_unknownObjectRelease();
    v28 = v50;
    if (v29 == v50)
    {
      sub_1000658B8(v51 + v25, v22, &qword_1003A2340);
      v35 = v27;
      if (v26(v22, 1, v27) == 1)
      {
        return sub_100065920(v22, &qword_1003A2340);
      }

      v37 = v44;
      sub_100065A40(v22, v44);
      sub_100006410(&qword_1003A2250);
      v38 = v51;
      CheckedContinuation.resume(returning:)();
      sub_1000659E4(v37);
      v39 = v47;
      (*(v48 + 56))(v47, 1, 1, v35);
      swift_beginAccess();
      sub_10006486C(v39, v38 + v25);
      return swift_endAccess();
    }
  }

  v30 = OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_locationServicesFlowContinuation;
  v31 = v51;
  swift_beginAccess();
  sub_1000658B8(v31 + v30, v17, &qword_1003A2340);
  if (v26(v17, 1, v27))
  {
    sub_100065920(v17, &qword_1003A2340);
LABEL_7:
    v33 = type metadata accessor for BuddyChildSetupFlow(0);
    v52.receiver = v51;
    v52.super_class = v33;
    return objc_msgSendSuper2(&v52, "flowItemDone:nextItem:", v28, v49);
  }

  sub_100065980(v17, v11);
  sub_100065920(v17, &qword_1003A2340);
  v32 = *v11;
  swift_unknownObjectRetain();
  sub_1000659E4(v11);
  swift_unknownObjectRelease();
  if (v32 != v28)
  {
    goto LABEL_7;
  }

  v36 = v46;
  sub_1000658B8(v51 + v30, v46, &qword_1003A2340);
  if (v26(v36, 1, v27) == 1)
  {
    return sub_100065920(v36, &qword_1003A2340);
  }

  v40 = v45;
  sub_100065A40(v36, v45);
  sub_100006410(&qword_1003A2250);
  v41 = v27;
  v42 = v51;
  CheckedContinuation.resume(returning:)();
  sub_1000659E4(v40);
  v43 = v47;
  (*(v48 + 56))(v47, 1, 1, v41);
  swift_beginAccess();
  sub_10006486C(v43, v42 + v30);
  return swift_endAccess();
}

uint64_t sub_10005FE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005FF30, v5, v4);
}

uint64_t sub_10005FF30()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;
  v0[8] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_10005FFF4;

  return sub_1000601D8();
}

uint64_t sub_10005FFF4(char a1)
{
  *(*v1 + 80) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100060138, v3, v2);
}

uint64_t sub_100060138()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  sub_1000615D0(v4);

  v2[2](v2, v1);
  _Block_release(v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000601D8()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v4;
  v1[10] = v3;

  return _swift_task_switch(sub_1000602DC, v4, v3);
}

uint64_t sub_1000602DC()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Presenting passcode pane...", v3, 2u);
  }

  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v0[11] = v8;
  v8(v4, v5);
  sub_1000648DC(0, &qword_1003A2348);
  v9 = [v7 createConditionalFlowItemForClass:swift_getObjCClassFromMetadata()];
  v0[12] = v9;
  if (v9)
  {
    v17 = v9;
    v18 = v0[2];
    v19 = static MainActor.shared.getter();
    v0[13] = v19;
    v20 = swift_task_alloc();
    v0[14] = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v17;
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v9[1] = sub_10006056C;
    v11 = &protocol witness table for MainActor;
    v14 = sub_100064924;
    v12 = 0x7361507075746573;
    v13 = 0xEF292865646F6373;
    v16 = &type metadata for () + 8;
    v10 = v19;
    v15 = v20;

    return withCheckedContinuation<A>(isolation:function:_:)(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v21 = *(v0[2] + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_managedConfiguration);
  if (!v21)
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v9, v10, v11, v12, v13, v14, v15, v16);
  }

  v22 = v21;

  v23 = [v22 isPasscodeSet];

  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_10006056C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1000606CC, v3, v2);
}

uint64_t sub_1000606CC()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Passcode pane completed", v3, 2u);
  }

  v4 = v0[11];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  result = v4(v5, v6);
  v9 = *(v7 + OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_managedConfiguration);
  if (v9)
  {
    v10 = v9;

    v11 = [v10 isPasscodeSet];
    swift_unknownObjectRelease();

    v12 = v0[1];

    return v12(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000609BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100060A5C, v5, v4);
}

uint64_t sub_100060A5C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;
  v0[8] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_100060B20;

  return sub_100060C64();
}

uint64_t sub_100060B20(char a1)
{
  *(*v1 + 80) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100065B78, v3, v2);
}

uint64_t sub_100060C64()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v4;
  v1[10] = v3;

  return _swift_task_switch(sub_100060D68, v4, v3);
}

uint64_t sub_100060D68()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Presenting Location Services pane...", v3, 2u);
  }

  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  v8 = *(v6 + 8);
  v0[11] = v8;
  v8(v4, v5);
  sub_1000648DC(0, &qword_1003A2338);
  v9 = [v7 createConditionalFlowItemForClass:swift_getObjCClassFromMetadata()];
  v0[12] = v9;
  if (v9)
  {
    v10 = v9;
    v11 = v0[2];
    v12 = static MainActor.shared.getter();
    v0[13] = v12;
    v13 = swift_task_alloc();
    v0[14] = v13;
    *(v13 + 16) = v11;
    *(v13 + 24) = v10;
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_100060FCC;

    return withCheckedContinuation<A>(isolation:function:_:)(v14, v12, &protocol witness table for MainActor, 0xD000000000000017, 0x800000010029E110, sub_10006481C, v13, &type metadata for () + 8);
  }

  else
  {

    v15 = [objc_opt_self() locationServicesEnabled];

    v16 = v0[1];

    return v16(v15);
  }
}

uint64_t sub_100060FCC()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_10006112C, v3, v2);
}

uint64_t sub_10006112C()
{

  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Location Services completed", v3, 2u);
  }

  v4 = v0[11];
  v5 = v0[5];
  v6 = v0[3];

  v4(v5, v6);
  v7 = [objc_opt_self() locationServicesEnabled];
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8(v7);
}

void sub_100061270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100006410(&qword_1003A2250);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = aBlock - v13;
  (*(v12 + 16))(aBlock - v13, a1, v11);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  (*(v12 + 32))(v16 + v15, v14, v11);
  aBlock[4] = a5;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E3F8;
  aBlock[3] = a6;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  swift_unknownObjectRetain();

  [v18 pushFlowItem:a3 inFlow:v18 withExtendedInitialization:1 animated:1 willPushFlowItem:v17];
  _Block_release(v17);
}

uint64_t sub_100061444(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = sub_100006410(&qword_1003A2340);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  if (a1)
  {
    v13 = type metadata accessor for BuddyChildSetupFlow.FlowContinuation(0);
    v14 = *(v13 + 20);
    v15 = sub_100006410(&qword_1003A2250);
    (*(*(v15 - 8) + 16))(&v12[v14], a4, v15);
    *v12 = a3;
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
    v16 = *a5;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_10006486C(v12, a2 + v16);
    return swift_endAccess();
  }

  else
  {
    sub_100006410(&qword_1003A2250);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1000615D0(void *a1)
{
  v2 = v1;
  v4 = sub_100006410(&qword_1003A0110);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Starting spinner for next child setup task", v13, 2u);
  }

  (*(v8 + 8))(v10, v7);
  v14 = [v2 navigationController];
  if (!v14)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v14 topViewController];

  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = [v16 view];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 setUserInteractionEnabled:0];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = v16;
  v21 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  [objc_opt_self() startAnimatingSpinnerFor:v20 identifier:v21];

  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  type metadata accessor for MainActor();
  v23 = v20;
  v24 = a1;
  v25 = v2;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v24;
  v27[5] = v25;
  v27[6] = v23;
  sub_100022A78(0, 0, v6, &unk_100299168, v27);
}

uint64_t sub_100061920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = type metadata accessor for Logger();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[26] = v9;
  v6[27] = v8;

  return _swift_task_switch(sub_100061A24, v9, v8);
}

uint64_t sub_100061A24()
{
  static Logger.purpleBuddyGeneral.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Will wait for next child setup task", v3, 2u);
  }

  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[18];

  v8 = *(v6 + 8);
  v0[28] = v8;
  v8(v4, v5);
  v0[2] = v0;
  v0[3] = sub_100061BE0;
  v9 = swift_continuation_init();
  v0[17] = sub_100006410(&qword_1003A2330);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100061EA0;
  v0[13] = &unk_10032ABA0;
  v0[14] = v9;
  [v7 waitUntilLoadedWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100061BE0()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return _swift_task_switch(sub_100061CE8, v2, v1);
}

id sub_100061CE8()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = v0[20];
  [objc_opt_self() stopAnimatingSpinnerFor:v2];

  result = [v3 view];
  if (result)
  {
    v5 = result;

    [v5 setUserInteractionEnabled:1];

    static Logger.purpleBuddyGeneral.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Did finish waiting for next child setup task", v8, 2u);
    }

    v9 = v0[28];
    v10 = v0[23];
    v11 = v0[21];

    v9(v10, v11);

    v12 = v0[1];

    return v12();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100061EA0(uint64_t a1)
{
  v1 = *sub_1000171F4((a1 + 32), *(a1 + 56));

  return _swift_continuation_resume(v1);
}

uint64_t sub_100061ED4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_100061FD8, v5, v4);
}

uint64_t sub_100061FD8()
{
  v42 = v0;
  v1 = sub_1000625B0(*(v0 + 24));
  *(v0 + 96) = v1;
  static Logger.purpleBuddyGeneral.getter();
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v40 = v7;
    v41 = swift_slowAlloc();
    v9 = v41;
    *v8 = 136315138;
    v10 = [v1 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v5;
    v13 = v12;

    v14 = sub_100063F14(v11, v13, &v41);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "Initializing sign in task with flags: %s", v8, 0xCu);
    sub_10000A420(v9);

    v15 = *(v6 + 8);
    v15(v39, v40);
  }

  else
  {

    v15 = *(v6 + 8);
    v15(v5, v7);
  }

  v16 = [objc_opt_self() sharedBuddyAccountTools];
  if (!v16)
  {
    __break(1u);
    goto LABEL_12;
  }

  v24 = v16;
  v25 = *(v0 + 24);
  v26 = objc_allocWithZone(BuddyAppleIDSignInTask);
  swift_unknownObjectRetain();
  v27 = [v26 initWithFeatureFlags:v1 accountTools:v24];
  *(v0 + 104) = v27;

  swift_unknownObjectRelease();
  v16 = [v25 navigationController];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v16, v17, v18, v19, v20, v21, v22, v23);
  }

  v28 = v16;
  [v27 setNavigationController:v16];

  [v27 setEnableFindMy:0];
  [v27 setRestoreFromBackupMode:0];
  static Logger.purpleBuddyGeneral.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Beginning sign-in...", v31, 2u);
  }

  v32 = *(v0 + 48);
  v33 = *(v0 + 32);
  v34 = *(v0 + 16);

  v15(v32, v33);
  v35 = static MainActor.shared.getter();
  *(v0 + 112) = v35;
  v36 = swift_task_alloc();
  *(v0 + 120) = v36;
  *(v36 + 16) = v27;
  *(v36 + 24) = v34;
  v37 = swift_task_alloc();
  *(v0 + 128) = v37;
  *v37 = v0;
  v37[1] = sub_1000623BC;
  v18 = &protocol witness table for MainActor;
  v23 = &type metadata for Bool;
  v21 = sub_10006375C;
  v16 = (v0 + 136);
  v20 = 0x800000010029E0F0;
  v17 = v35;
  v19 = 0xD00000000000001DLL;
  v22 = v36;

  return withCheckedContinuation<A>(isolation:function:_:)(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1000623BC()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10006251C, v3, v2);
}

uint64_t sub_10006251C()
{
  v1 = *(v0 + 104);
  swift_unknownObjectRelease();

  v2 = *(v0 + 136);

  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_1000625B0(char *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_featureFlags])
  {
    v6 = *&a1[OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_featureFlags];
  }

  else
  {
    static Logger.purpleBuddyGeneral.getter();
    v7 = a1;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      ObjectType = swift_getObjectType();
      sub_100006410(&unk_1003A2320);
      v12 = String.init<A>(describing:)();
      v14 = sub_100063F14(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: Feature flag property was not set. Falling back to BuddyFeatureFlags.current.", v10, 0xCu);
      sub_10000A420(v11);
    }

    (*(v3 + 8))(v5, v2);
    v6 = [objc_opt_self() currentFlags];
  }

  swift_unknownObjectRetain();
  return v6;
}

void sub_1000627CC(uint64_t a1, void *a2)
{
  v4 = sub_100006410(&unk_1003A2300);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  sub_100006410(&unk_1003A2310);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100064554;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100062C54;
  aBlock[3] = &unk_10032AB50;
  v11 = _Block_copy(aBlock);

  [a2 signInToAllServicesWithAuthenticationResults:isa completion:v11];
  _Block_release(v11);
}

uint64_t sub_1000629BC(char a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  if (a1)
  {
    static Logger.purpleBuddyGeneral.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Sign-in succeeded!", v13, 2u);
      v8 = v10;
LABEL_10:

      goto LABEL_11;
    }

    v8 = v10;
  }

  else
  {
    static Logger.purpleBuddyGeneral.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v17 = _swift_stdlib_bridgeErrorToNSError();
        v18 = v17;
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      *(v15 + 4) = v17;
      *v16 = v18;
      _os_log_impl(&_mh_execute_header, v11, v14, "Sign-in failed: %@", v15, 0xCu);
      sub_100065920(v16, &qword_1003A0320);

      goto LABEL_10;
    }
  }

LABEL_11:

  (*(v5 + 8))(v8, v4);
  v20[15] = a1 & 1;
  sub_100006410(&unk_1003A2300);
  return CheckedContinuation.resume(returning:)();
}

void sub_100062C54(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100062E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100062EF0, v5, v4);
}

uint64_t sub_100062EF0()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  sub_100006410(&unk_1003A2310);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v0[7] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100062FE4;

  return sub_100061ED4(v3);
}

uint64_t sub_100062FE4(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

id sub_100063218()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyChildSetupFlow(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10006332C()
{
  sub_1000633CC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000633CC()
{
  if (!qword_1003A2248)
  {
    type metadata accessor for BuddyChildSetupFlow.FlowContinuation(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1003A2248);
    }
  }
}

uint64_t sub_100063444(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100063490(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100006410(&qword_1003A2250);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100063560(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100006410(&qword_1003A2250);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100063610()
{
  sub_100063694();
  if (v0 <= 0x3F)
  {
    sub_1000636F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100063694()
{
  result = qword_1003A22C0;
  if (!qword_1003A22C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1003A22C0);
  }

  return result;
}

void sub_1000636F8()
{
  if (!qword_1003A22C8)
  {
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1003A22C8);
    }
  }
}

uint64_t sub_100063764(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100065B58;

  return v6();
}

uint64_t sub_10006384C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100063934;

  return v7();
}

uint64_t sub_100063934()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100063A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100006410(&qword_1003A0110);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_1000658B8(a3, v22 - v9, &qword_1003A0110);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100065920(v10, &qword_1003A0110);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = String.utf8CString.getter() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_100065920(a3, &qword_1003A0110);

    return v20;
  }

LABEL_8:
  sub_100065920(a3, &qword_1003A0110);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100063D24(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100063E1C;

  return v6(a1);
}

uint64_t sub_100063E1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100063F14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100063FE0(v11, 0, 0, 1, a1, a2);
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
    sub_10000A46C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A420(v11);
  return v7;
}

unint64_t sub_100063FE0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000640EC(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_1000640EC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100064138(a1, a2);
  sub_100064268(&off_100327798);
  return v3;
}

char *sub_100064138(uint64_t a1, unint64_t a2)
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

  v6 = sub_100064354(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100064354(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100064268(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000643C8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100064354(uint64_t a1, uint64_t a2)
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

  sub_100006410(&qword_1003A22F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000643C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100006410(&qword_1003A22F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

uint64_t sub_1000644C0()
{
  v1 = sub_100006410(&unk_1003A2300);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064554(char a1, uint64_t a2)
{
  sub_100006410(&unk_1003A2300);

  return sub_1000629BC(a1, a2);
}

uint64_t sub_1000645E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000645F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100064648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100064710;

  return sub_100061920(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100064710()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10006486C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006410(&qword_1003A2340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000648DC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100064964()
{
  v1 = sub_100006410(&qword_1003A2250);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100064ACC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    static Logger.purpleBuddyGeneral.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Starting child flow...", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v11 = OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_childSetupPresenter;
    v12 = *&v1[OBJC_IVAR____TtC5Setup19BuddyChildSetupFlow_childSetupPresenter];
    if (v12)
    {
      [v12 setDelegate:v1];
      v13 = *&v1[v11];
      if (v13)
      {
        [v13 startFlowWithNavigationController:v7];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  v14 = [v1 delegate];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    return;
  }

  [v14 flow:v1 finishedWithLastItem:v1 nextItem:0];

  swift_unknownObjectRelease();
}

id sub_100064CDC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Child setup completed", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  result = [v1 delegate];
  if (result)
  {
    [result flow:v1 finishedWithLastItem:v1 nextItem:0];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100064E60()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.purpleBuddyGeneral.getter();
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
    _os_log_impl(&_mh_execute_header, v6, v7, "Child setup failed: %@", v8, 0xCu);
    sub_100065920(v9, &qword_1003A0320);
  }

  (*(v3 + 8))(v5, v2);
  result = [v1 delegate];
  if (result)
  {
    [result flow:v1 finishedWithLastItem:v1 nextItem:0];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006505C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100065B5C;

  return sub_100062E54(v2, v3, v4);
}

uint64_t sub_100065114()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006514C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100065B7C;

  return sub_100063D24(a1, v4);
}

uint64_t sub_100065204(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000652BC;

  return sub_100063D24(a1, v4);
}

uint64_t sub_1000652BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000653B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100065B60;

  return sub_1000609BC(v2, v3, v4);
}

uint64_t sub_100065464()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100065B64;

  return sub_100063764(v2, v3, v4);
}

uint64_t sub_100065524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100065B68;

  return sub_10006384C(a1, v4, v5, v6);
}

uint64_t sub_1000655F0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100065638()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100065B6C;

  return sub_10005FE90(v2, v3, v4);
}

uint64_t sub_1000656EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100065B70;

  return sub_100063764(v2, v3, v4);
}

uint64_t sub_1000657AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000657EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100065B74;

  return sub_10006384C(a1, v4, v5, v6);
}

uint64_t sub_1000658B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100006410(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065920(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006410(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100065980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuddyChildSetupFlow.FlowContinuation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000659E4(uint64_t a1)
{
  v2 = type metadata accessor for BuddyChildSetupFlow.FlowContinuation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100065A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuddyChildSetupFlow.FlowContinuation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065AA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100065ADC()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_100065B18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id BuddyControlCenterVisualIntelligencePresentationManager.init(preferenceController:deviceProvider:chronicle:)(void *a1, id a2, void *a3)
{
  if (([a2 hasCameraButton] & 1) != 0 || objc_msgSend(a2, "mgProductType") == 1260109173 || objc_msgSend(a2, "type"))
  {

    swift_unknownObjectRelease();
    type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v3[OBJC_IVAR____TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager_preferenceController] = a1;
    *&v3[OBJC_IVAR____TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager_chronicle] = a3;
    v9.receiver = v3;
    v9.super_class = type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager();
    v8 = objc_msgSendSuper2(&v9, "init");
    swift_unknownObjectRelease();
    return v8;
  }
}

Swift::Bool __swiftcall BuddyControlCenterVisualIntelligencePresentationManager.shouldPresentVisualIntelligencePane()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager_chronicle) entryForFeature:4];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 productVersion];
    if (!v3)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = String._bridgeToObjectiveC()();
    }

    v4 = objc_opt_self();
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 compareProductVersion:v3 toProductVersion:v5];

    if (v6 == -1)
    {
      v7 = *(v0 + OBJC_IVAR____TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager_preferenceController);
      v8 = String._bridgeToObjectiveC()();
      LOBYTE(v7) = [v7 BOOLForKey:v8];

      LOBYTE(v1) = v7 ^ 1;
    }

    else
    {

      LOBYTE(v1) = 0;
    }
  }

  return v1;
}

Swift::Void __swiftcall BuddyControlCenterVisualIntelligencePresentationManager.updatePresentedKey(newState:)(Swift::Bool newState)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC5Setup55BuddyControlCenterVisualIntelligencePresentationManager_preferenceController);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 BOOLForKey:v8];

  if ((v9 & 1) == 0)
  {
    static Logger.purpleBuddyGeneral.getter();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = newState;
      _os_log_impl(&_mh_execute_header, v10, v11, "Updating visual intelligence (control center) pane visibility preference to %{BOOL}d", v12, 8u);
    }

    (*(v4 + 8))(v6, v3);
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v14 = String._bridgeToObjectiveC()();
    [v7 setObject:isa forKey:v14 persistImmediately:1];
  }
}

id BuddyControlCenterVisualIntelligencePresentationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BuddyControlCenterVisualIntelligencePresentationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyControlCenterVisualIntelligencePresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10006621C()
{
  *&v0[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_runState] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_buddyPreferencesExcludedFromBackup] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_proximitySetupController] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_analyticsManager] = 0;
  *&v0[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_capabilities] = 0;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 modelSpecificLocalizedStringKeyForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = objc_opt_self();
    v8 = [v7 mainBundle];
    v22._object = 0xE000000000000000;
    v9._countAndFlagsBits = v4;
    v9._object = v6;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v22);

    v11 = String._bridgeToObjectiveC()();
    v12 = [v1 modelSpecificLocalizedStringKeyForKey:v11];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = [v7 mainBundle];
      v23._object = 0xE000000000000000;
      v17._countAndFlagsBits = v13;
      v17._object = v15;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v23._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v23);

      v19 = String._bridgeToObjectiveC()();

      v20 = String._bridgeToObjectiveC()();

      v21.receiver = v0;
      v21.super_class = type metadata accessor for BuddyPostActivationAppStateController();
      objc_msgSendSuper2(&v21, "initWithTitle:detailText:icon:contentLayout:", v19, v20, 0, 2);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000664B4()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for BuddyPostActivationAppStateController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v11._object = 0xE000000000000000;
  v3._object = 0x800000010029E2B0;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v5 = String._bridgeToObjectiveC()();

  [v0 addBoldButton:v5 action:"eraseTapped"];

  v6 = [v1 mainBundle];
  v12._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x800000010029E2D0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v12);

  v9 = String._bridgeToObjectiveC()();

  [v0 addLinkButton:v9 action:"continueSetupTapped"];
}

void sub_100066708()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = [v0 navigationController];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = *&v0[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_proximitySetupController];
  if (!v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = *&v0[OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_analyticsManager];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = [objc_opt_self() alertControllerWithWindow:v3 navigationController:v4 proximitySetupController:v5 analyticsManager:v6];

  [v0 presentViewController:v8 animated:1 completion:0];
}

uint64_t sub_100066A0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_100066ACC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_runState);
  if (!v6)
  {
    return 0;
  }

  v7 = *(v0 + OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_capabilities);
  if (v7)
  {
    swift_unknownObjectRetain();
    if ([v7 mgIsHactivated])
    {
      static Logger.purpleBuddyGeneral.getter();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Skipping app states comparison", v10, 2u);
      }

      swift_unknownObjectRelease();
      (*(v2 + 8))(v5, v1);
      return 0;
    }

    v11 = [v6 hasCompletedInitialRun];
    swift_unknownObjectRelease();
    return v11 ^ 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100066CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Logger();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100066DA8, v9, v8);
}

void sub_100066DA8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC5Setup37BuddyPostActivationAppStateController_buddyPreferencesExcludedFromBackup);
  if (v1)
  {
    v2 = v1;

    v3 = sub_100015964(v2);

    if (v3)
    {
      v4 = sub_10001544C();
      v5 = sub_100066F2C(v4, v3);

      v6 = v5 ^ 1;
    }

    else
    {
      static Logger.purpleBuddyGeneral.getter();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Found no original app states", v9, 2u);
      }

      v11 = *(v0 + 48);
      v10 = *(v0 + 56);
      v12 = *(v0 + 40);

      (*(v11 + 8))(v10, v12);
      v6 = 1;
    }

    (*(v0 + 24))(v6 & 1);

    v13 = *(v0 + 8);

    v13();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100066F2C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v11 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v12 = v4;
        do
        {
          v4 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_156;
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v13 = *(v5 + 8 * v4);
          ++v12;
        }

        while (!v13);
        v10 = __clz(__rbit64(v13));
        v11 = (v13 - 1) & v13;
LABEL_13:
        v14 = 16 * (v10 | (v4 << 6));
        v15 = (*(v3 + 48) + v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*(v3 + 56) + v14);
        v20 = *v18;
        v19 = v18[1];

        sub_100015910(v20, v19);
        result = v17 == 0;
        if (!v17)
        {
          return result;
        }

        v90 = v11;
        v22 = sub_100067E04(v16, v17);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_152;
        }

        v25 = (*(v2 + 56) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v27 >> 62;
        v29 = v19 >> 62;
        if (v27 >> 62 == 3)
        {
          if (v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v27 == 0xC000000000000000;
          }

          v31 = 0;
          v32 = v30 && v19 >> 62 == 3;
          if (v32 && !v20 && v19 == 0xC000000000000000)
          {
            v33 = 0;
            v34 = 0xC000000000000000;
            goto LABEL_55;
          }

LABEL_36:
          if (v29 <= 1)
          {
LABEL_37:
            if (!v29)
            {
              v38 = BYTE6(v19);
              goto LABEL_43;
            }

            LODWORD(v38) = HIDWORD(v20) - v20;
            if (!__OFSUB__(HIDWORD(v20), v20))
            {
              v38 = v38;
              goto LABEL_43;
            }

LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
          }
        }

        else if (v28 > 1)
        {
          if (v28 == 2)
          {
            v40 = *(v26 + 16);
            v39 = *(v26 + 24);
            v37 = __OFSUB__(v39, v40);
            v31 = v39 - v40;
            if (!v37)
            {
              goto LABEL_36;
            }

            goto LABEL_158;
          }

          v31 = 0;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else if (v28)
        {
          LODWORD(v31) = HIDWORD(v26) - v26;
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_159;
          }

          v31 = v31;
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v31 = BYTE6(v27);
          if (v29 <= 1)
          {
            goto LABEL_37;
          }
        }

        if (v29 != 2)
        {
          if (v31)
          {
            goto LABEL_152;
          }

          goto LABEL_54;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        v37 = __OFSUB__(v35, v36);
        v38 = v35 - v36;
        if (v37)
        {
          goto LABEL_157;
        }

LABEL_43:
        if (v31 != v38)
        {
LABEL_152:
          sub_100011804(v20, v19);
          return 0;
        }

        if (v31 >= 1)
        {
          break;
        }

LABEL_54:
        v33 = v20;
        v34 = v19;
LABEL_55:
        sub_100011804(v33, v34);
        v8 = v90;
      }

      if (v28 > 1)
      {
        break;
      }

      if (!v28)
      {
        __s1[0] = v26;
        LOWORD(__s1[1]) = v27;
        BYTE2(__s1[1]) = BYTE2(v27);
        BYTE3(__s1[1]) = BYTE3(v27);
        BYTE4(__s1[1]) = BYTE4(v27);
        BYTE5(__s1[1]) = BYTE5(v27);
        if (v29)
        {
          v88 = v26;
          if (v29 == 1)
          {
            v80 = ((v20 >> 32) - v20);
            if (v20 >> 32 < v20)
            {
              goto LABEL_164;
            }

            sub_100015910(v26, v27);
            v41 = __DataStorage._bytes.getter();
            if (!v41)
            {
              goto LABEL_183;
            }

            v42 = v41;
            v43 = __DataStorage._offset.getter();
            if (__OFSUB__(v20, v43))
            {
              goto LABEL_168;
            }

            v44 = (v20 - v43 + v42);
            result = __DataStorage._length.getter();
            v8 = v90;
            if (!v44)
            {
              goto LABEL_190;
            }

            goto LABEL_75;
          }

          v67 = *(v20 + 16);
          v84 = *(v20 + 24);
          sub_100015910(v26, v27);
          v64 = __DataStorage._bytes.getter();
          v87 = v2;
          if (v64)
          {
            v68 = __DataStorage._offset.getter();
            if (__OFSUB__(v67, v68))
            {
              goto LABEL_174;
            }

            v64 += v67 - v68;
          }

          v66 = &v84[-v67];
          if (__OFSUB__(v84, v67))
          {
            goto LABEL_166;
          }

          result = __DataStorage._length.getter();
          v8 = v90;
          if (!v64)
          {
            goto LABEL_184;
          }

          goto LABEL_117;
        }

        goto LABEL_79;
      }

      v86 = v2;
      v49 = v26;
      if (v26 > v26 >> 32)
      {
        goto LABEL_160;
      }

      v88 = v26;
      sub_100015910(v26, v27);
      v50 = __DataStorage._bytes.getter();
      if (v50)
      {
        v51 = v50;
        v52 = __DataStorage._offset.getter();
        if (__OFSUB__(v49, v52))
        {
          goto LABEL_162;
        }

        v82 = (v49 - v52 + v51);
      }

      else
      {
        v82 = 0;
      }

      __DataStorage._length.getter();
      v3 = a1;
      if (v29 == 2)
      {
        v76 = *(v20 + 16);
        v75 = *(v20 + 24);
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v77 = __DataStorage._offset.getter();
          if (__OFSUB__(v76, v77))
          {
            goto LABEL_176;
          }

          v44 += v76 - v77;
        }

        v37 = __OFSUB__(v75, v76);
        v78 = v75 - v76;
        if (v37)
        {
          goto LABEL_172;
        }

        v79 = __DataStorage._length.getter();
        if (v79 >= v78)
        {
          v60 = v78;
        }

        else
        {
          v60 = v79;
        }

        v8 = v90;
        result = v82;
        if (!v82)
        {
          goto LABEL_194;
        }

        v2 = v86;
        if (!v44)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v82;
          v2 = v86;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v90;
          if (!v82)
          {
            goto LABEL_191;
          }

          goto LABEL_148;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_171;
        }

        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v61 = __DataStorage._offset.getter();
          if (__OFSUB__(v20, v61))
          {
            goto LABEL_178;
          }

          v44 += v20 - v61;
        }

        v2 = v86;
        v62 = __DataStorage._length.getter();
        if (v62 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v62;
        }

        result = v82;
        if (!v82)
        {
          goto LABEL_182;
        }

        v8 = v90;
        if (!v44)
        {
          goto LABEL_181;
        }
      }

LABEL_142:
      if (result != v44)
      {
        v56 = v60;
        goto LABEL_145;
      }

      sub_100011804(v88, v27);
      sub_100011804(v20, v19);
      v3 = a1;
    }

    if (v28 == 2)
    {
      v85 = v2;
      v88 = v26;
      v45 = *(v26 + 16);
      sub_100015910(v26, v27);
      v46 = __DataStorage._bytes.getter();
      if (v46)
      {
        v47 = v46;
        v48 = __DataStorage._offset.getter();
        if (__OFSUB__(v45, v48))
        {
          goto LABEL_161;
        }

        v81 = (v45 - v48 + v47);
      }

      else
      {
        v81 = 0;
      }

      __DataStorage._length.getter();
      v3 = a1;
      if (v29 == 2)
      {
        v71 = *(v20 + 16);
        v70 = *(v20 + 24);
        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v72 = __DataStorage._offset.getter();
          if (__OFSUB__(v71, v72))
          {
            goto LABEL_175;
          }

          v44 += v71 - v72;
        }

        v37 = __OFSUB__(v70, v71);
        v73 = v70 - v71;
        if (v37)
        {
          goto LABEL_170;
        }

        v74 = __DataStorage._length.getter();
        if (v74 >= v73)
        {
          v60 = v73;
        }

        else
        {
          v60 = v74;
        }

        v8 = v90;
        result = v81;
        if (!v81)
        {
          goto LABEL_187;
        }

        v2 = v85;
        if (!v44)
        {
          goto LABEL_186;
        }
      }

      else
      {
        if (v29 != 1)
        {
          result = v81;
          v2 = v85;
          __s1[0] = v20;
          LOWORD(__s1[1]) = v19;
          BYTE2(__s1[1]) = BYTE2(v19);
          BYTE3(__s1[1]) = BYTE3(v19);
          BYTE4(__s1[1]) = BYTE4(v19);
          BYTE5(__s1[1]) = BYTE5(v19);
          v8 = v90;
          if (!v81)
          {
            goto LABEL_185;
          }

LABEL_148:
          v57 = memcmp(result, __s1, BYTE6(v19));
          sub_100011804(v88, v27);
          sub_100011804(v20, v19);
          goto LABEL_149;
        }

        if (v20 >> 32 < v20)
        {
          goto LABEL_167;
        }

        v44 = __DataStorage._bytes.getter();
        if (v44)
        {
          v58 = __DataStorage._offset.getter();
          if (__OFSUB__(v20, v58))
          {
            goto LABEL_177;
          }

          v44 += v20 - v58;
        }

        v2 = v85;
        v59 = __DataStorage._length.getter();
        if (v59 >= (v20 >> 32) - v20)
        {
          v60 = (v20 >> 32) - v20;
        }

        else
        {
          v60 = v59;
        }

        result = v81;
        if (!v81)
        {
          goto LABEL_189;
        }

        v8 = v90;
        if (!v44)
        {
          goto LABEL_188;
        }
      }

      goto LABEL_142;
    }

    memset(__s1, 0, 14);
    if (v29 == 2)
    {
      v63 = *(v20 + 16);
      v83 = *(v20 + 24);
      v88 = v26;
      sub_100015910(v26, v27);
      v64 = __DataStorage._bytes.getter();
      v87 = v2;
      if (v64)
      {
        v65 = __DataStorage._offset.getter();
        if (__OFSUB__(v63, v65))
        {
          goto LABEL_173;
        }

        v64 += v63 - v65;
      }

      v66 = &v83[-v63];
      if (__OFSUB__(v83, v63))
      {
        goto LABEL_165;
      }

      result = __DataStorage._length.getter();
      v8 = v90;
      if (!v64)
      {
        goto LABEL_192;
      }

LABEL_117:
      if (result >= v66)
      {
        v69 = v66;
      }

      else
      {
        v69 = result;
      }

      v57 = memcmp(__s1, v64, v69);
      sub_100011804(v88, v27);
      sub_100011804(v20, v19);
      v2 = v87;
      goto LABEL_146;
    }

    if (v29 == 1)
    {
      break;
    }

LABEL_79:
    __s2 = v20;
    v92 = v19;
    v93 = BYTE2(v19);
    v94 = BYTE3(v19);
    v95 = BYTE4(v19);
    v96 = BYTE5(v19);
    v57 = memcmp(__s1, &__s2, BYTE6(v19));
    sub_100011804(v20, v19);
    v8 = v90;
LABEL_149:
    result = 0;
    if (v57)
    {
      return result;
    }
  }

  v80 = ((v20 >> 32) - v20);
  if (v20 >> 32 < v20)
  {
    goto LABEL_163;
  }

  v88 = v26;
  sub_100015910(v26, v27);
  v53 = __DataStorage._bytes.getter();
  if (v53)
  {
    v54 = v53;
    v55 = __DataStorage._offset.getter();
    if (__OFSUB__(v20, v55))
    {
      goto LABEL_169;
    }

    v44 = (v20 - v55 + v54);
    result = __DataStorage._length.getter();
    v8 = v90;
    if (!v44)
    {
      goto LABEL_180;
    }

LABEL_75:
    if (result >= v80)
    {
      v56 = v80;
    }

    else
    {
      v56 = result;
    }

    result = __s1;
LABEL_145:
    v57 = memcmp(result, v44, v56);
    sub_100011804(v88, v27);
    sub_100011804(v20, v19);
LABEL_146:
    v3 = a1;
    goto LABEL_149;
  }

  __DataStorage._length.getter();
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  result = __DataStorage._length.getter();
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
  return result;
}

id sub_100067ADC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyPostActivationAppStateController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100067BB0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100067C00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100067C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100067D10;

  return sub_100066CB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100067D10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100067E04(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100067EC0(a1, a2, v4);
}

unint64_t sub_100067E7C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100067F78(a1, v4);
}

unint64_t sub_100067EC0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100067F78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100015ABC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100051A50(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_100068040(void *a1, uint64_t a2, char a3)
{
  v7 = objc_allocWithZone(v3);
  swift_getObjectType();
  v8 = sub_100068AA0(a1, a2, a3, v7);

  swift_unknownObjectRelease();
  return v8;
}

void sub_1000681BC()
{
  v46.receiver = v0;
  v46.super_class = type metadata accessor for EnclosingViewController();
  objc_msgSendSuper2(&v46, "viewDidLoad");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = [Strong hasBlackBackground], swift_unknownObjectRelease(), !v2))
  {
LABEL_5:
    v8 = *&v0[OBJC_IVAR____TtC5Setup23EnclosingViewController_enclosedViewController];
    [v0 addChildViewController:v8];
    v9 = [v0 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 view];
      if (v11)
      {
        v12 = v11;
        [v10 addSubview:v11];

        [v8 didMoveToParentViewController:v0];
        v13 = [v8 view];
        if (v13)
        {
          v14 = v13;
          [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

          sub_100006410(&qword_1003A1400);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1002977D0;
          v16 = [v8 view];
          if (v16)
          {
            v17 = v16;
            v18 = [v16 topAnchor];

            v19 = [v0 view];
            if (v19)
            {
              v20 = v19;
              v21 = [v19 topAnchor];

              v22 = [v18 constraintEqualToAnchor:v21];
              *(v15 + 32) = v22;
              v23 = [v8 view];
              if (v23)
              {
                v24 = v23;
                v25 = [v23 leftAnchor];

                v26 = [v0 view];
                if (v26)
                {
                  v27 = v26;
                  v28 = [v26 leftAnchor];

                  v29 = [v25 constraintEqualToAnchor:v28];
                  *(v15 + 40) = v29;
                  v30 = [v8 view];
                  if (v30)
                  {
                    v31 = v30;
                    v32 = [v30 widthAnchor];

                    v33 = [v0 view];
                    if (v33)
                    {
                      v34 = v33;
                      v35 = [v33 widthAnchor];

                      v36 = [v32 constraintEqualToAnchor:v35];
                      *(v15 + 48) = v36;
                      v37 = [v8 view];
                      if (v37)
                      {
                        v38 = v37;
                        v39 = [v37 heightAnchor];

                        v40 = [v0 view];
                        if (v40)
                        {
                          v41 = v40;
                          v42 = objc_opt_self();
                          v43 = [v41 heightAnchor];

                          v44 = [v39 constraintEqualToAnchor:v43];
                          *(v15 + 56) = v44;
                          sub_10002BE84();
                          isa = Array._bridgeToObjectiveC()().super.isa;

                          [v42 activateConstraints:isa];

                          return;
                        }

                        goto LABEL_27;
                      }

LABEL_26:
                      __break(1u);
LABEL_27:
                      __break(1u);
                      goto LABEL_28;
                    }

LABEL_25:
                    __break(1u);
                    goto LABEL_26;
                  }

LABEL_24:
                  __break(1u);
                  goto LABEL_25;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() systemBackgroundColor];
    v6 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
    v7 = [v5 resolvedColorWithTraitCollection:v6];

    [v4 setBackgroundColor:v7];
    goto LABEL_5;
  }

LABEL_28:
  __break(1u);
}

void sub_1000687BC(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for EnclosingViewController();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC5Setup23EnclosingViewController_overrideBackButton) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if ([Strong respondsToSelector:"usesWhiteBackButton"])
      {
        v5 = [v4 usesWhiteBackButton];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = [v1 navigationController];
          if (v6)
          {
            v7 = v6;
            v8 = [v6 navigationBar];

            v9 = [objc_opt_self() whiteColor];
            [v8 setTintColor:v9];
          }
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_1000689FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnclosingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100068AA0(void *a1, uint64_t a2, char a3, _BYTE *a4)
{
  swift_unknownObjectWeakInit();
  *&a4[OBJC_IVAR____TtC5Setup23EnclosingViewController_enclosedViewController] = a1;
  swift_unknownObjectWeakAssign();
  a4[OBJC_IVAR____TtC5Setup23EnclosingViewController_overrideBackButton] = a3;
  v9.receiver = a4;
  v9.super_class = type metadata accessor for EnclosingViewController();
  v7 = a1;
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

void sub_100068F90(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if (*(a1 + 32))
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32));
  }

  objc_storeStrong(&location, 0);
}

void sub_100069A88(uint64_t a1)
{
  sleep(2u);
  v2 = [*(a1 + 32) delegate];
  [v2 proximitySetupCompletedWithResult:*(a1 + 40)];
}

uint64_t start(int a1, char **a2)
{
  v2 = objc_autoreleasePoolPush();
  UIApplicationMain(a1, a2, @"Application", @"Application");
  objc_autoreleasePoolPop(v2);
  return 0;
}

void sub_10006A1D4(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v1 = [location[0] delegate];
  [v1 flowItemDone:location[0]];

  objc_storeStrong(location, 0);
}

id sub_10006AA70()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A6FB0;
  v13 = qword_1003A6FB0;
  if (!qword_1003A6FB0)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_10006C9D0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_10006C9D0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_10006AB84(NSObject *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 0;
    v14 = 0;
    if (_BYIsInternalInstall())
    {
      v5 = v20;
    }

    else if (v20)
    {
      v17 = [v20 domain];
      v16 = 1;
      v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v17, [v20 code]);
      v15 = v5;
      v14 = 1;
    }

    else
    {
      v5 = 0;
    }

    sub_10006AE18(buf, v5);
    _os_log_impl(&_mh_execute_header, oslog[0], v18, "Pre-warm of posterboard completed with error %@", buf, 0xCu);
    if (v14)
    {
    }

    if (v16)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  v6 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_10006AE2C;
  v11 = &unk_10032AFD0;
  v12 = a1[4].isa;
  v13 = a1[5].isa;
  dispatch_async(v6, &block);

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

double sub_10006AE18(uint64_t a1, uint64_t a2)
{
  *&result = 138412290;
  *a1 = 138412290;
  *(a1 + 4) = a2;
  return result;
}

void sub_10006AE2C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  objc_initWeak(location, a1[4]);
  if ([a1[4] style] == 3)
  {
    v2 = [_TtC5Setup36BuddyFinishedControllerPresenterData alloc];
    v3 = a1[4];
    v4 = [v3 _navigationController];
    v16 = _NSConcreteStackBlock;
    v17 = -1073741824;
    v18 = 0;
    v19 = sub_10006B110;
    v20 = &unk_10032AF80;
    objc_copyWeak(&v23, location);
    v21 = a1[4];
    v22 = a1[5];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_10006B1D0;
    v13 = &unk_10032AFA8;
    objc_copyWeak(&v15, location);
    v14 = a1[4];
    v24 = [(BuddyFinishedControllerPresenterData *)v2 initWithController:v3 navigationController:v4 readyHandler:&v16 getStartedHandler:&v9];

    v5 = [_TtC5Setup32BuddyFinishedControllerPresenter alloc];
    v6 = [a1[4] deviceProvider];
    v7 = [(BuddyFinishedControllerPresenter *)v5 initWithDeviceProvider:v6 animationData:v24];
    [a1[4] setBookendAnimator:v7];

    v8 = [a1[4] bookendAnimator];
    [v8 animateToWelcomeScreen];

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(&v15);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_destroyWeak(&v23);
  }

  else
  {
    (*(a1[5] + 2))();
  }

  objc_destroyWeak(location);
}

void sub_10006B110(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  if (location[0])
  {
    v2 = +[UIApplication sharedApplication];
    v3 = [(UIApplication *)v2 applicationState];

    if (v3 == UIApplicationStateActive)
    {
      [*(a1 + 32) _startWelcomeAnimationAutoPauseTimer];
    }

    [location[0] _observeAppLifecycleNotifications];
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

void sub_10006B1D0(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 5);
  if (location[0])
  {
    [a1[4] _invalidateWelcomeAnimationAutoStopTimer];
    [location[0] _cleanUpAppLifecycleNotifications];
    v2 = [location[0] delegate];
    [v2 flowItemDone:location[0]];
  }

  objc_storeStrong(location, 0);
}

uint64_t sub_10006B4C4(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 32) setStyle:v3];
  return (*(*(a1 + 40) + 16))();
}

void sub_10006BE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9, char a10, char a11, int a12, _Unwind_Exception *exception_object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  if (a11)
  {
    objc_destroyWeak(v19);
  }

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006BE74(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 4);
  v10 = 0;
  v3 = 0;
  if (v12[0])
  {
    v11 = [v12[0] bookendAnimator];
    v10 = 1;
    v3 = v11 != 0;
  }

  if (v10)
  {
  }

  if (v3)
  {
    oslog = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v8;
      sub_10006AA68(v7);
      _os_log_impl(&_mh_execute_header, v4, v5, "Welcome animation timer fired, pause animation", v7, 2u);
    }

    objc_storeStrong(&oslog, 0);
    v6 = [v12[0] bookendAnimator];
    [v6 pauseAnimation];
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
}

void sub_10006C9D0(NSAssertionHandler *a1)
{
  sub_10006CB14();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("PRSService");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getPRSServiceClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"BuddyFinishedController.m" lineNumber:55 description:@"Unable to find class %s", "PRSService"];

    __break(1u);
  }

  qword_1003A6FB0 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_10006CB14()
{
  if (!sub_10006CC3C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *PosterBoardServicesLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"BuddyFinishedController.m" lineNumber:54 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_10006CC3C()
{
  if (!qword_1003A6FB8)
  {
    sub_10006CCF0();
  }

  return qword_1003A6FB8;
}

uint64_t sub_10006CCF0()
{
  result = _sl_dlopen();
  qword_1003A6FB8 = result;
  return result;
}

void sub_10006D1A0(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 flowItemDone:*(a1 + 32)];
}

void sub_10006E0B0(id *a1, void *a2)
{
  v9[3] = a1;
  v9[2] = a2;
  v9[1] = a1;
  v3 = &_dispatch_main_q;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10006E18C;
  v8 = &unk_10032B0D0;
  v9[0] = a1[4];
  dispatch_async(v3, &v4);

  objc_storeStrong(v9, 0);
}

void sub_10006E18C(uint64_t a1)
{
  [*(a1 + 32) setHasIntent:{1, a1, a1}];
  if ([*(a1 + 32) didAppear])
  {
    v2 = [*(a1 + 32) delegate];
    [v2 flowItemDone:*(a1 + 32)];
  }
}

uint64_t sub_10006E9B4(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))(*(result + 32), 1);
  }

  return result;
}

void sub_100071220(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] _menuButtonPressed];
  objc_storeStrong(location, 0);
}

void sub_100071264(id *a1, uint64_t a2, id obj)
{
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v4[1] = a1;
  v4[0] = objc_loadWeakRetained(a1 + 4);
  [v4[0] _showModalWiFiSettingsWithDismissalTriggers:v6 completionHandler:location];
  objc_storeStrong(v4, 0);
  objc_storeStrong(&location, 0);
}

void sub_1000712DC(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] _writeGreenInformedDefaultPlistIfNecessary];
  objc_storeStrong(location, 0);
}

uint64_t sub_100071320(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  v1 = [location[0] _doesRestartFlowCauseErase];
  objc_storeStrong(location, 0);
  return v1 & 1;
}

void sub_100071374(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] _prepareForCloudRestoreReboot];
  objc_storeStrong(location, 0);
}

void sub_1000713B8(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] _exitBuddyForDemoSetUp];
  objc_storeStrong(location, 0);
}

void sub_1000713FC(uint64_t a1, char a2)
{
  v6 = a1;
  v5 = a2;
  v4 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _prepareForDeviceMigrationAfterSoftwareUpdate:{v5 & 1, WeakRetained, v4}];
  objc_storeStrong(&v3, 0);
}

void sub_10007144C(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] _startDeviceMigration];
  objc_storeStrong(location, 0);
}

void sub_100071490(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] _persistAnalyticsForSoftwareUpdate];
  objc_storeStrong(location, 0);
}

void sub_100071500(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] setShouldRereadCloudConfigurationForControllersToSkip:1];
  objc_storeStrong(location, 0);
}

void sub_100071558(uint64_t a1)
{
  v1 = [*(a1 + 32) environment];
  v2 = [v1 managedConfiguration];
  [v2 waitForMigrationIncludingPostRestoreMigration:1 completion:&stru_10032B208];
}

void sub_1000715D4(id a1)
{
  v1 = &_dispatch_main_q;
  dispatch_async(v1, &stru_10032B228);
}

void sub_100071630(id a1)
{
  v1 = [BuddyCloudConfigManager sharedManager:a1];
  [v1 cloudConfigMayHaveChanged];
}

double sub_100071CBC(uint64_t a1, uint64_t a2)
{
  *&result = 138543362;
  *a1 = 138543362;
  *(a1 + 4) = a2;
  return result;
}

double sub_100073058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138543618;
  *a1 = 138543618;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  return result;
}

void sub_100073078(id a1, NSException *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

void sub_1000730C0(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  v4 = a1;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _preflightDispositionValidationWithControllerClass:{v5, WeakRetained, v4}];
  objc_storeStrong(&v3, 0);
}

double sub_10007310C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *&result = 67109634;
  *a1 = 67109634;
  *(a1 + 4) = a2;
  *(a1 + 8) = 2114;
  *(a1 + 10) = a3;
  *(a1 + 18) = 2114;
  *(a1 + 20) = a4;
  return result;
}

id sub_100073134(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v30 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    location = [*(a1 + 32) _stringForStartupCause:{objc_msgSend(*(a1 + 32), "startupCause")}];
    sub_100071CBC(buf, location);
    _os_log_impl(&_mh_execute_header, oslog[0], v30, "Start up cause: %{public}@", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(oslog, 0);
  v2 = [_TtC5Setup25SolariumOnBoardingManager alloc];
  v3 = [*(a1 + 32) environment];
  v4 = [v3 chronicle];
  v5 = [*(a1 + 32) environment];
  v6 = [v5 featureFlags];
  v7 = [(SolariumOnBoardingManager *)v2 initWithChronicle:v4 featureFlags:v6];
  [(SolariumOnBoardingManager *)v7 recordUserWasOnBoardedToSolarium];

  if ([*(a1 + 32) startupCause] == 5)
  {
    v8 = [_TtC5Setup22NewFeaturesFlowManager alloc];
    v9 = [*(a1 + 32) environment];
    v10 = [v9 chronicle];
    v11 = [*(a1 + 32) environment];
    v12 = [v11 featureFlags];
    v28 = [(NewFeaturesFlowManager *)v8 initWithChronicle:v10 featureFlags:v12];

    v13 = [_TtC5Setup27NewFeaturesFlowAssetManager alloc];
    v14 = +[BYNetworkMonitor sharedInstance];
    v15 = [(NewFeaturesFlowAssetManager *)v13 initWithManager:v28 networkMonitor:v14];
    [*(a1 + 32) setMobileAssetsNewFeaturesAssetManager:v15];

    v16 = [*(a1 + 32) mobileAssetsNewFeaturesAssetManager];
    [v16 downloadAssetsWhenNetworkIsAvailable];

    objc_storeStrong(&v28, 0);
  }

  if (*(a1 + 48) & 1) != 0 && (*(a1 + 49))
  {
    v17 = [*(a1 + 32) environment];
    v18 = [v17 buddyPreferences];
    v19 = [*(a1 + 40) objectForKey:@"Language"];
    [v18 setObject:v19 forKey:@"Language"];

    [*(a1 + 40) removeObjectForKey:@"Language"];
  }

  if (*(*(a1 + 32) + 40))
  {
    [*(*(a1 + 32) + 8) setUserInteractionEnabled:0];
    v27 = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v27;
      v21 = v26;
      sub_10006AA68(v25);
      _os_log_impl(&_mh_execute_header, v20, v21, "Locale screen prepped for swap. Waiting for setupsnapshotremoved...", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
  }

  v22 = [*(a1 + 32) navigationFlowController];
  v23 = [v22 wifiController];
  [v23 startScanningIfNecessary];

  return [*(a1 + 32) _setupAndStartMDMEnrollmentIfNeeded];
}

double sub_100073590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 138543874;
  *a1 = 138543874;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2114;
  *(a1 + 24) = a4;
  return result;
}

void sub_1000735BC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = [*(a1 + 32) environment];
    v3 = [v2 proximitySetupController];
    [v3 resumeSession];
  }
}

double sub_100073FE4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12)
{
  *&result = 67111680;
  *a1 = 67111680;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  *(a1 + 14) = 1024;
  *(a1 + 16) = a4;
  *(a1 + 20) = 1024;
  *(a1 + 22) = a5;
  *(a1 + 26) = 1024;
  *(a1 + 28) = a6;
  *(a1 + 32) = 1024;
  *(a1 + 34) = a7;
  *(a1 + 38) = 1024;
  *(a1 + 40) = a8;
  *(a1 + 44) = 1024;
  *(a1 + 46) = a9;
  *(a1 + 50) = 1024;
  *(a1 + 52) = a10;
  *(a1 + 56) = 1024;
  *(a1 + 58) = a11;
  *(a1 + 62) = 1024;
  *(a1 + 64) = a12;
  return result;
}

void sub_100075918(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _menuButtonPressed];
}

void sub_100075960(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_alloc_init(RadiosPreferences);
  v2 = [a1[4] _isBackInBuddyForActivationOnly] & 1;
  if (([location[0] airplaneMode] & 1) != 0 && (v2 & 1) == 0)
  {
    [location[0] setAirplaneMode:0];
  }

  objc_storeStrong(location, 0);
}

void sub_1000759E0(id a1)
{
  v1 = [AKURLBag sharedBag:a1];
  [v1 isPhoneNumberSupportedConfig];
}

double sub_100075A38(uint64_t a1, int a2, int a3)
{
  *&result = 67109376;
  *a1 = 67109376;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  return result;
}

void sub_100075A58(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _networkPathChanged];
  objc_storeStrong(location, 0);
}

void sub_100075B50(NSObject *a1, char a2)
{
  v17 = a1;
  v16 = a2;
  oslog[1] = a1;
  if ((a2 & 1) == 0)
  {
    oslog[0] = _BYLoggingFacility();
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog[0];
      v4 = v14;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v3, v4, "Preheating software update cache...", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
    v5 = [(objc_class *)a1[4].isa softwareUpdateCache];
    [v5 scanUsingCache:0 withCompletion:&stru_10032B3A8];

    v6 = &_dispatch_main_q;
    block = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_100075FE8;
    v11 = &unk_10032B0D0;
    v12 = a1[4].isa;
    dispatch_async(v6, &block);

    objc_storeStrong(&v12, 0);
  }
}

void sub_100075CD0(id a1, SUDescriptor *a2, SUDescriptor *a3, SUDescriptor *a4, NSError *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v22 = 0;
  objc_storeStrong(&v22, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  oslog[1] = a1;
  if (v20)
  {
    oslog[0] = _BYLoggingFacility();
    v18 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v16 = 0;
      v14 = 0;
      if (_BYIsInternalInstall())
      {
        v9 = v20;
      }

      else if (v20)
      {
        v17 = [v20 domain];
        v16 = 1;
        v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v17, [v20 code]);
        v15 = v9;
        v14 = 1;
      }

      else
      {
        v9 = 0;
      }

      sub_100071CBC(buf, v9);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v18, "Preheating software update cache failed: %{public}@", buf, 0xCu);
      if (v14)
      {
      }

      if (v16)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v13 = _BYLoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (location[0])
      {
        v10 = @"did";
      }

      else
      {
        v10 = @"did not";
      }

      if (v22)
      {
        v11 = @"did";
      }

      else
      {
        v11 = @"did not";
      }

      if (v21)
      {
        v12 = @"did";
      }

      else
      {
        v12 = @"did not";
      }

      sub_100075FC0(v24, v10, v11, v12);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Software update preheating succeeded and %{public}@ find preferred update, and %{public}@ find alternate update, and %{public}@ find latest update", v24, 0x20u);
    }

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

double sub_100075FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 138543874;
  *a1 = 138543874;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2114;
  *(a1 + 24) = a4;
  return result;
}

void sub_100075FE8(uint64_t a1)
{
  v1 = [*(a1 + 32) suspendTask];
  [v1 preheat];
}

void sub_100076038(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationFlowController];
  [v1 handleDebugGesture];
}

void sub_100076088(uint64_t a1)
{
  v2 = [*(a1 + 32) safetyAndHandlingManager];
  [v2 persistStateForReboot];

  v3 = [*(a1 + 32) environment];
  v4 = [v3 buddyPreferencesExcludedFromBackup];
  [v4 setObject:&__kCFBooleanTrue forKey:@"DisplayZoomRestart" persistImmediately:1];
}

void sub_100076618(uint64_t a1)
{
  v1 = [*(a1 + 32) environment];
  v2 = [v1 suspendTask];
  [v2 preheat];
}

void sub_100076758(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Failed to check for updated carrier bundles: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully checked for updated carrier bundles", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_100077670(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v20 = 0;
  objc_storeStrong(&v20, a3);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = oslog[0];
    v6 = v18;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v5, v6, "Doing return to service, setting language & locale...", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v7 = &_dispatch_main_q;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_10007783C;
  v12 = &unk_10032B410;
  v13 = *(a1 + 32);
  v14 = location[0];
  v15 = v20;
  v16 = *(a1 + 40) & 1;
  dispatch_async(v7, &v8);

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void sub_10007783C(uint64_t a1)
{
  v8 = a1;
  oslog[1] = a1;
  [*(a1 + 32) userSelectedLanguageWithLocale:*(v8 + 40) countryCode:*(v8 + 48) localePaneScrollOffset:0.0];
  if (*(a1 + 56))
  {
    oslog[0] = _BYLoggingFacility();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog[0];
      v3 = v6;
      sub_10006AA68(v5);
      _os_log_impl(&_mh_execute_header, v2, v3, "Proceeding past language locale pane", v5, 2u);
    }

    objc_storeStrong(oslog, 0);
    v4 = [*(a1 + 32) navigationFlowController];
    [v4 proceedPastLanguageLocalePane];
  }
}

void sub_10007791C(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = 0;
  v1 = a1[4];
  obj = 0;
  [v1 installWiFiProfileIfNeeded:&obj];
  objc_storeStrong(location, obj);
  if (location[0])
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Failed to install Wi-Fi profile with error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

double sub_100077E48(uint64_t a1, uint64_t a2)
{
  *&result = 134217984;
  *a1 = 134217984;
  *(a1 + 4) = a2;
  return result;
}

double sub_100078180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  return result;
}

void sub_100079148(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v14;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "Applying express settings cache if needed", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v5 = [(objc_class *)a1[4].isa environment];
  v6 = [v5 expressSettingsCache];
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = sub_1000792B8;
  v11 = &unk_10032B460;
  v12 = location[0];
  [v6 applyHandlers:&v7];

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void sub_1000792B8(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v9 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v12 = [location[0] domain];
        v11 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v12, [location[0] code]);
        v10 = v3;
        v9 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v13, "Finished applying settings with error: %{public}@", buf, 0xCu);
      if (v9)
      {
      }

      if (v11)
      {
      }
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Finished applying settings", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  (*(a1[4].isa + 2))();
  objc_storeStrong(location, 0);
}

void sub_1000797F0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] environment];
  v4 = [v3 managedConfiguration];
  [v4 setupAssistantDidFinish];

  v5 = [a1[4] environment];
  v6 = [v5 enrollmentCoordinator];
  [v6 returnToServiceFlowCompleted];

  (*(location[0] + 2))();
  objc_storeStrong(location, 0);
}

void sub_1000798D0(uint64_t a1)
{
  v1 = [*(a1 + 32) mobileAssetsNewFeaturesAssetManager];
  [v1 removeAssetsWithCompletionHandler:&stru_10032B4A8];
}

void sub_100079928(id a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v1 = oslog[0];
    v2 = v4;
    sub_10006AA68(v3);
    _os_log_impl(&_mh_execute_header, v1, v2, "Request to remove new feature assets completed successfully...", v3, 2u);
  }

  objc_storeStrong(oslog, 0);
}

id sub_10007AC5C(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10007AC94(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 40));
  if (location[0])
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;

    dispatch_group_leave(*(location[0] + 18));
  }

  objc_storeStrong(location, 0);
}

void sub_10007AD04(uint64_t a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = *(a1 + 40);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10007ADF4;
  v7 = &unk_10032B4F8;
  objc_copyWeak(v9, (a1 + 56));
  v8[1] = *(a1 + 48);
  v8[0] = *(a1 + 32);
  (*(v2 + 16))(v2, &v3);
  objc_storeStrong(v8, 0);
  objc_destroyWeak(v9);
}

void sub_10007ADF4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 48));
  if (location[0])
  {
    v2 = location[0];
    objc_sync_enter(v2);
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
      oslog = _BYLoggingFacility();
      v4 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(buf, *(a1 + 32));
        _os_log_impl(&_mh_execute_header, oslog, v4, "Pretermination task completed: %@", buf, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      v3 = _BYLoggingFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        sub_10006AE18(v7, *(a1 + 32));
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Pretermination task completed after timeout: %@", v7, 0xCu);
      }

      objc_storeStrong(&v3, 0);
    }

    objc_sync_exit(v2);
  }

  objc_storeStrong(location, 0);
}

void sub_10007AFF4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 64));
  if (location[0])
  {
    v2 = location[0];
    objc_sync_enter(v2);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
      oslog = _BYLoggingFacility();
      v10 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v3 = *(a1 + 32);
        [*(a1 + 40) doubleValue];
        sub_10007B2CC(buf, v3, v4);
        _os_log_error_impl(&_mh_execute_header, oslog, v10, "Force complete pretermination task %@, after waiting %f seconds", buf, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      if (os_variant_has_internal_ui())
      {
        v5 = +[NSAssertionHandler currentHandler];
        v6 = *(a1 + 72);
        v7 = *(a1 + 48);
        v8 = [NSString stringWithFormat:@"pretermination task %@ did not complete in time", *(a1 + 32)];
        [(NSAssertionHandler *)v5 handleFailureInMethod:v6 object:v7 file:@"SetupController.m" lineNumber:1796 description:v8];
      }
    }

    else
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10006AE18(v13, *(a1 + 32));
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Pretermination task completion already called: %@", v13, 0xCu);
      }

      objc_storeStrong(&v9, 0);
    }

    objc_sync_exit(v2);
  }

  objc_storeStrong(location, 0);
}

double sub_10007B2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138412546;
  *a1 = 138412546;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  return result;
}

uint64_t sub_10007B55C(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = oslog[0];
    v3 = v6;
    sub_10006AA68(v5);
    _os_log_impl(&_mh_execute_header, v2, v3, "Pretermination tasks finished", v5, 2u);
  }

  objc_storeStrong(oslog, 0);
  return (*(a1[4].isa + 2))();
}

void sub_10007C85C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v12;
    sub_10006AA68(buf);
    _os_log_impl(&_mh_execute_header, v3, v4, "User requested Emergency Call", buf, 2u);
  }

  objc_storeStrong(oslog, 0);
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = sub_10007C9B0;
  v9 = &unk_10032B570;
  v10 = a1[4].isa;
  [EmergencyDialer requestEmergencyCallControllerWithCompletion:&v5];
  objc_storeStrong(a1[4].isa + 2, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void sub_10007C9B0(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(a1[4] + 6, location[0]);
  [*(a1[4] + 6) setDelegate:a1[4]];
  v3 = [a1[4] navigationController];
  v4 = [v3 topViewController];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___BuddyProximityAdvertisingFlow];

  if (v5)
  {
    v6 = [a1[4] navigationController];
    v7 = [v6 topViewController];
    [v7 endAdvertisingForProximitySetup];
  }

  v8 = [a1[4] navigationController];
  v9 = [v8 presentedViewController];

  v10 = [a1[4] navigationController];
  if (v9)
  {
    v11 = [v10 presentedViewController];
    [v11 presentViewController:*(a1[4] + 6) animated:1 completion:0];
  }

  else
  {
    [v10 presentViewController:*(a1[4] + 6) animated:1 completion:0];
  }

  objc_storeStrong(location, 0);
}

void sub_10007CB80(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "User requested Accessibility Options", v7, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa _removeSBAlertItemsSupressionAssertion];
  v5 = [(objc_class *)a1[4].isa navigationController];
  [v5 presentViewController:a1[5].isa animated:1 completion:0];

  objc_storeStrong(a1[4].isa + 2, 0);
  v6 = +[BuddySIMManager sharedManager];
  [v6 allowSIMUnlock];

  objc_storeStrong(location, 0);
}

void sub_10007CCB0(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "User requested Wi-Fi Options", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa _removeSBAlertItemsSupressionAssertion];
  [(objc_class *)a1[4].isa presentWiFiSettingsModally];
  objc_storeStrong(a1[4].isa + 2, 0);
  v5 = +[BuddySIMManager sharedManager];
  [v5 allowSIMUnlock];

  objc_storeStrong(location, 0);
}

void sub_10007CDB4(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v17;
    sub_10006AA68(v16);
    _os_log_impl(&_mh_execute_header, v3, v4, "User requested Start Over", v16, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa _removeSBAlertItemsSupressionAssertion];
  v5 = [(objc_class *)a1[4].isa navigationFlowController];
  [v5 restartFlow];

  v6 = [(objc_class *)a1[4].isa environment];
  v7 = [v6 analyticsManager];
  v8 = [(objc_class *)a1[4].isa navigationController];
  v9 = [v8 topViewController];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [_TtC5Setup23BuddyStartOverAnalytics addRestartEventWithAnalyticsManager:v7 paneIdentifier:v11];

  v12 = [(objc_class *)a1[4].isa environment];
  v13 = [v12 multilingualFlowManager];
  [v13 setDidMakeSelection:0];

  v14 = [(objc_class *)a1[4].isa environment];
  v15 = [v14 analyticsManager];
  [v15 removeNonPersistentEvents];

  objc_storeStrong(a1[4].isa + 2, 0);
  objc_storeStrong(location, 0);
}

void sub_10007CFE8(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "User requested shut down UI...", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  SBSPresentPowerDownUI();
  [(objc_class *)a1[4].isa _removeSBAlertItemsSupressionAssertion];
  objc_storeStrong(a1[4].isa + 2, 0);
  v5 = +[BuddySIMManager sharedManager];
  [v5 allowSIMUnlock];

  objc_storeStrong(location, 0);
}

void sub_10007D0E8(id a1, UIAlertAction *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "User requested log out...", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  v5 = +[BYManagedAppleIDBootstrap sharedManager];
  [v5 switchToLoginWindowDueToError:0 completion:&stru_10032B620];

  objc_storeStrong(location, 0);
}

void sub_10007D1D0(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 0;
    v4 = 0;
    if (_BYIsInternalInstall())
    {
      v3 = location[0];
    }

    else if (location[0])
    {
      v7 = [location[0] domain];
      v6 = 1;
      v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v7, [location[0] code]);
      v5 = v3;
      v4 = 1;
    }

    else
    {
      v3 = 0;
    }

    sub_100071CBC(buf, v3);
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_DEFAULT, "Switch to login window finished with error: %{public}@", buf, 0xCu);
    if (v4)
    {
    }

    if (v6)
    {
    }
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

void sub_10007D37C(id a1, UIAlertAction *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = +[BYPreferencesController buddyPreferencesEphemeral];
  [v2 setObject:&__kCFBooleanFalse forKey:@"showInternalUI"];

  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 postNotificationName:@"BYShowInternalUIChanged" object:0];

  objc_storeStrong(location, 0);
}

void sub_10007D438(id a1, UIAlertAction *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = +[BYPreferencesController buddyPreferencesEphemeral];
  [v2 setObject:&__kCFBooleanTrue forKey:@"showInternalUI"];

  v3 = +[NSNotificationCenter defaultCenter];
  [(NSNotificationCenter *)v3 postNotificationName:@"BYShowInternalUIChanged" object:0];

  objc_storeStrong(location, 0);
}

void sub_10007D4F4(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _removeSBAlertItemsSupressionAssertion];
  objc_storeStrong(a1[4] + 2, 0);
  v3 = +[BuddySIMManager sharedManager];
  [v3 allowSIMUnlock];

  objc_storeStrong(location, 0);
}

id sub_10007DB98()
{
  v4 = sub_100088904();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getWFNetworkListControllerAssociationDidFinishNotification(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"SetupController.m" lineNumber:205 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_10007DCA0()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A6FD8;
  v13 = qword_1003A6FD8;
  if (!qword_1003A6FD8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100088CE0;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100088CE0(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_10007DDB4()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A6FE8;
  v13 = qword_1003A6FE8;
  if (!qword_1003A6FE8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100089094;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100089094(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

id sub_10007E284()
{
  v4 = sub_1000891D8();
  if (!v4)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"NSString *getWFNetworkListControllerAssociationErrorKey(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"SetupController.m" lineNumber:207 description:@"%s", dlerror()];

    __break(1u);
  }

  v2 = *v4;

  return v2;
}

id sub_10007E98C(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setUserInteractionEnabled:{1, a1, a1}];
  if (*(*(a1 + 32) + 40))
  {
    v2 = [*(a1 + 32) navigationFlowController];
    [v2 proceedPastLanguageLocalePane];
  }

  else if ([*(a1 + 32) shouldProceedFromAppearancePane])
  {
    v3 = [*(a1 + 32) navigationFlowController];
    [v3 proceedPastAppearancePane];
  }

  *(*(a1 + 32) + 40) = 0;
  return [*(a1 + 32) setShouldProceedFromAppearancePane:0];
}

void sub_10007EB18(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  v2 = +[BYSetupStateManager sharedManager];
  v3 = 1;
  if (([v2 didSetupUsingiTunes] & 1) == 0)
  {
    v3 = [*(a1 + 32) _didRestoreIniTunes];
  }

  v16 = v3 & 1;
  v4 = +[BuddyActivationConfiguration currentConfiguration];
  v5 = [v4 isActivated];

  v15 = v5 & 1;
  if (_BYLoggingEnabled())
  {
    oslog = _BYLoggingFacility();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      sub_100075A38(buf, v16 & 1, v15 & 1);
      _os_log_impl(&_mh_execute_header, oslog, v13, "SetupState changed, restored=%d, activated=%d", buf, 0xEu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if (v16 & 1) != 0 && (v15)
  {
    v6 = &_dispatch_main_q;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10007ED38;
    v11 = &unk_10032B0D0;
    v12 = *(a1 + 32);
    dispatch_async(v6, &v7);

    objc_storeStrong(&v12, 0);
  }
}

void sub_10007ED38(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationFlowController];
  [v1 setUpByComputer];
}

id *sub_10007F0B4(id *result)
{
  if (result[5])
  {
    return [result[4] _languageChangeAlertDone];
  }

  return result;
}

id sub_10007F2C8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = qword_1003A6FF8;
  v13 = qword_1003A6FF8;
  if (!qword_1003A6FF8)
  {
    v2.super.isa = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100089340;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100089340(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v0;
}

void sub_10007F3DC(id a1, BOOL a2, NSError *a3)
{
  v12 = a1;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  oslog[1] = a1;
  if (v11)
  {
    oslog[0] = _BYLoggingFacility();
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v8;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully set up QR code control center module", buf, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006AE18(v13, location);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to set up QR code control center module: %@", v13, 0xCu);
    }

    objc_storeStrong(&v6, 0);
  }

  objc_storeStrong(&location, 0);
}

double sub_10007F718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 138543618;
  *a1 = 138543618;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  return result;
}

double sub_100080778(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *&result = 138543874;
  *a1 = 138543874;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2114;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  return result;
}

id sub_100082294(uint64_t a1)
{
  [*(a1 + 32) setApplyingProximitySettings:{1, a1, a1}];
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 topViewController];
  [BFFViewControllerSpinnerManager startAnimatingSpinnerFor:v3 identifier:@"SETUP_CONTROLLER"];

  return [*(*(a1 + 32) + 8) setUserInteractionEnabled:0];
}

void sub_100082454(uint64_t a1)
{
  v2 = [*(a1 + 32) proximityPairingController];
  [v2 prepareForLanguageChange:*(a1 + 40)];
}

void sub_1000825BC(uint64_t a1)
{
  v16 = a1;
  v15 = a1;
  [*(a1 + 32) setApplyingProximitySettings:0];
  v2 = [*(a1 + 32) setupAnalytics];
  [v2 setUsedProximitySetup:1];

  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_CONTROLLER"];
  [*(*(a1 + 32) + 8) setUserInteractionEnabled:1];
  v3 = *(a1 + 32);
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_10008277C;
  v12 = &unk_10032B120;
  v13 = *(a1 + 40);
  if (!([v3 updateLanguageLocale:&v9] & 1))
  {
    if (*(a1 + 40))
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), 0, v4, v5);
    }

    v6 = [*(a1 + 32) proximityPairingController];
    v7 = [v6 delegate];
    v8 = [*(a1 + 32) proximityPairingController];
    [v7 flowItemDone:v8];
  }

  [*(a1 + 32) setProximityPairingController:{0, v9, v10, v11, v12}];
  objc_storeStrong(&v13, 0);
}

uint64_t sub_10008277C(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 32) + 16))(*(result + 32), 1);
  }

  return result;
}

void sub_100082888(uint64_t a1)
{
  [BFFViewControllerSpinnerManager stopAnimatingSpinnerFor:@"SETUP_CONTROLLER", a1, a1];
  [*(*(a1 + 32) + 8) setUserInteractionEnabled:1];
  v2 = [*(a1 + 32) navigationController];
  v3 = [v2 topViewController];
  v4 = [*(a1 + 32) proximityPairingController];

  if (v3 == v4)
  {
    v5 = [*(a1 + 32) navigationController];
    v6 = [v5 popViewControllerAnimated:1];

    [*(a1 + 32) setProximityPairingController:0];
  }
}

double sub_100082D54(_DWORD *a1, int a2)
{
  *&result = 67109120;
  *a1 = 67109120;
  a1[1] = a2;
  return result;
}

void sub_100082D68(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [*(a1 + 32) navigationFlowController];
  v3 = 0;
  if (([v2 currentlyShowingActivationFlow] & 1) == 0)
  {
    v3 = [*(a1 + 32) shouldEndLifecycleForCause:0];
  }

  if (v3)
  {
    oslog[0] = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v10;
      sub_10006AA68(v9);
      _os_log_impl(&_mh_execute_header, v4, v5, "Terminating due to activation state change...", v9, 2u);
    }

    objc_storeStrong(oslog, 0);
    [*(a1 + 32) willEndLifecycleDueToCause:0 allowDismissal:1];
    [*(a1 + 32) endLifecycleDueToCause:0];
    [*(a1 + 32) _waitForBuddyTerminationTasksToFinish];
  }

  else
  {
    v6 = [*(a1 + 32) navigationFlowController];
    v7 = [v6 wifiController];
    [v7 updateNextButton];

    if (*(a1 + 40))
    {
      v8 = [*(a1 + 32) inactivityTimer];
      [v8 stop];
    }
  }
}

void sub_100083C48(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  [location[0] _prepareForMigrationReboot];
  objc_storeStrong(location, 0);
}

void sub_100083C8C(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v9 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = oslog[0];
      v4 = v9;
      sub_10006AA68(v8);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "Keychain data transfer failed; not starting preflight", v8, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa environment];
    v6 = [v5 miscState];
    v7 = [v6 migrationManager];
    [v7 startPreflight];
  }

  objc_storeStrong(location, 0);
}

void sub_100084150(NSObject *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v9 = 16;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      v3 = oslog[0];
      v4 = v9;
      sub_10006AA68(v8);
      _os_log_error_impl(&_mh_execute_header, v3, v4, "Not starting keychain data import as keychain data transfer failed", v8, 2u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    v5 = [(objc_class *)a1[4].isa environment];
    v6 = [v5 miscState];
    v7 = [v6 migrationManager];
    [v7 startKeychainDataImport];
  }

  objc_storeStrong(location, 0);
}

void sub_100084D9C(uint64_t a1)
{
  v2 = [*(a1 + 32) environment];
  v3 = [v2 buddyPreferencesExcludedFromBackup];
  v4 = [NSNumber numberWithDouble:*(a1 + 40)];
  [v3 setObject:v4 forKey:@"localeScrollOffset" persistImmediately:1];
}

void sub_1000856AC(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v30 = 0;
  objc_storeStrong(&v30, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28[1] = a1;
  if (v30)
  {
    v18 = _NSConcreteStackBlock;
    v19 = -1073741824;
    v20 = 0;
    v21 = sub_100085930;
    v22 = &unk_10032B0D0;
    v23 = a1[4];
    v24 = objc_retainBlock(&v18);
    v9 = +[NSThread currentThread];
    v10 = [(NSThread *)v9 isMainThread];

    if (v10)
    {
      (*(v24 + 2))();
    }

    else
    {
      v11 = &_dispatch_main_q;
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_100085A10;
      v16 = &unk_10032B120;
      v17 = v24;
      dispatch_sync(v11, &v12);

      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    v25 = 0;
  }

  else
  {
    v28[0] = _BYLoggingFacility();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28[0], OS_LOG_TYPE_DEFAULT))
    {
      v7 = v28[0];
      v8 = v27;
      sub_10006AA68(buf);
      _os_log_impl(&_mh_execute_header, v7, v8, "Ignoring display layout observation; no layout given...", buf, 2u);
    }

    objc_storeStrong(v28, 0);
    v25 = 1;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

id sub_100085930(NSObject *a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  v2 = [(objc_class *)a1[4].isa monitor];
  [v2 invalidate];

  [(objc_class *)a1[4].isa setMonitor:0];
  oslog[0] = _BYLoggingFacility();
  v7 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = oslog[0];
    v4 = v7;
    sub_10006AA68(v6);
    _os_log_impl(&_mh_execute_header, v3, v4, "Handling display layout update...", v6, 2u);
  }

  objc_storeStrong(oslog, 0);
  [(objc_class *)a1[4].isa markBuddyComplete];
  return [(objc_class *)a1[4].isa didMarkBuddyComplete];
}

double sub_10008685C(uint64_t a1, int a2, int a3, int a4)
{
  *&result = 67109632;
  *a1 = 67109632;
  *(a1 + 4) = a2;
  *(a1 + 8) = 1024;
  *(a1 + 10) = a3;
  *(a1 + 14) = 1024;
  *(a1 + 16) = a4;
  return result;
}

void sub_100086884(uint64_t a1)
{
  v1 = [*(a1 + 32) environment];
  v2 = [v1 lockdownModeProvider];
  [v2 enableWithStrategy:0 completionHandler:&stru_10032B760];
}

void sub_1000868FC(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  if (location[0])
  {
    oslog[0] = _BYLoggingFacility();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      sub_100071CBC(buf, location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v10, "Failed to enable lockdown: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    v9 = [[FBSShutdownOptions alloc] initWithReason:@"Failed Lockdown Reboot"];
    [v9 setRebootType:1];
    v3 = +[FBSSystemService sharedService];
    [v3 shutdownWithOptions:v9];

    objc_storeStrong(&v9, 0);
  }

  else
  {
    v8 = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v8;
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Lockdown enabled", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
}

void sub_100086B18(id a1, NSError *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = &_dispatch_main_q;
  dispatch_async(v2, &stru_10032B7A0);

  objc_storeStrong(location, 0);
}

void sub_100086B90(id a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = _BYLoggingFacility();
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v1 = oslog[0];
    v2 = v5;
    sub_10006AA68(v4);
    _os_log_impl(&_mh_execute_header, v1, v2, "Suspending...", v4, 2u);
  }

  objc_storeStrong(oslog, 0);
  v3 = +[UIApplication sharedApplication];
  [(UIApplication *)v3 suspend];
}

void sub_100086EB4(uint64_t a1)
{
  v33 = a1;
  v32 = a1;
  v31[8] = 0;
  v2 = +[BYSetupStateManager sharedManager];
  v3 = [v2 didRestoreFromBackup];

  *v31 = v3 & 1;
  v30 = BYSetupAssistantHasCompletedInitialRun() & 1;
  v4 = +[BuddyCloudConfigManager sharedManager];
  v5 = [v4 isMultiUser];

  v29 = v5 & 1;
  if ([*(a1 + 32) initialAnimateLanguageChoiceValue])
  {
    *&v31[1] = 1;
  }

  else if ([*(a1 + 32) initialDisplayZoomRestartValue])
  {
    *&v31[1] = 2;
  }

  else if ([*(a1 + 32) _isBackInBuddyForActivationOnly])
  {
    if (*(*(a1 + 32) + 171))
    {
      *&v31[1] = 7;
    }

    else
    {
      *&v31[1] = 3;
    }
  }

  else if ([*(a1 + 32) launchedForMigration])
  {
    *&v31[1] = 6;
  }

  else if ([*(a1 + 32) _isBackInBuddyAfterRestoreFromBackup:v31[0] & 1])
  {
    *&v31[1] = 4;
  }

  else if (*(*(a1 + 32) + 171))
  {
    *&v31[1] = 7;
  }

  else
  {
    v6 = [*(a1 + 32) environment];
    v7 = [v6 featureFlags];
    v27 = 0;
    v25 = 0;
    v8 = 0;
    if ([v7 isMDMEnrollmentFlowControllerAdoptionEnabled])
    {
      v28 = [*(a1 + 32) environment];
      v27 = 1;
      v26 = [v28 enrollmentCoordinator];
      v25 = 1;
      v8 = 0;
      if ([v26 isMDMMigrationMode])
      {
        v8 = [*(a1 + 32) launchedToShowMDMMigrationAfterSoftwareUpdate] ^ 1;
      }
    }

    if (v25)
    {
    }

    if (v27)
    {
    }

    if (v8)
    {
      oslog = _BYLoggingFacility();
      v23 = 2;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v9 = oslog;
        v10 = v23;
        sub_10006AA68(buf);
        _os_log_debug_impl(&_mh_execute_header, v9, v10, "Launched to do MDM migration.", buf, 2u);
      }

      objc_storeStrong(&oslog, 0);
      *&v31[1] = 9;
    }

    else
    {
      v11 = [*(a1 + 32) environment];
      v12 = [v11 threatNotificationProvider];
      v13 = [v12 isRequired];

      if (v13)
      {
        *&v31[1] = 10;
      }

      else if (v30 & 1) == 0 || (v29)
      {
        *&v31[1] = 0;
      }

      else
      {
        *&v31[1] = 5;
      }
    }
  }

  [*(a1 + 32) setCachedStartupCause:*&v31[1]];
  v14 = &_dispatch_main_q;
  block = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_1000872CC;
  v19 = &unk_10032B7C8;
  v20 = *(a1 + 32);
  v21[1] = *&v31[1];
  v21[0] = *(a1 + 40);
  dispatch_async(v14, &block);

  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
}

uint64_t sub_100088904()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A6FC8;
  v13 = qword_1003A6FC8;
  if (!qword_1003A6FC8)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_100088A00;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_100088A00(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_100088A00(uint64_t a1)
{
  v2 = sub_100088A6C();
  result = dlsym(v2, "WFNetworkListControllerAssociationDidFinishNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A6FC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100088A6C()
{
  v3 = sub_100088B98();
  if (!v3)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *WiFiKitLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"SetupController.m" lineNumber:199 description:@"%s", 0];

    __break(1u);
  }

  return v3;
}

uint64_t sub_100088B98()
{
  if (!qword_1003A6FD0)
  {
    sub_100088C4C();
  }

  return qword_1003A6FD0;
}

uint64_t sub_100088C4C()
{
  result = _sl_dlopen();
  qword_1003A6FD0 = result;
  return result;
}

void sub_100088CE0(NSAssertionHandler *a1)
{
  sub_100088E24();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("WFBuddyViewController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getWFBuddyViewControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"SetupController.m" lineNumber:201 description:@"Unable to find class %s", "WFBuddyViewController"];

    __break(1u);
  }

  qword_1003A6FD8 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100088E24()
{
  if (!sub_100088F4C())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *WiFiKitUILibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"SetupController.m" lineNumber:200 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_100088F4C()
{
  if (!qword_1003A6FE0)
  {
    sub_100089000();
  }

  return qword_1003A6FE0;
}

uint64_t sub_100089000()
{
  result = _sl_dlopen();
  qword_1003A6FE0 = result;
  return result;
}

void sub_100089094(NSAssertionHandler *a1)
{
  sub_100088A6C();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("WFNetworkListController");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getWFNetworkListControllerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"SetupController.m" lineNumber:203 description:@"Unable to find class %s", "WFNetworkListController"];

    __break(1u);
  }

  qword_1003A6FE8 = *(*(a1[4].super.isa + 1) + 24);
}

uint64_t sub_1000891D8()
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v8 = qword_1003A6FF0;
  v13 = qword_1003A6FF0;
  if (!qword_1003A6FF0)
  {
    v2 = _NSConcreteStackBlock;
    v3 = -1073741824;
    v4 = 0;
    v5 = sub_1000892D4;
    v6 = &unk_10032B070;
    v7 = &v9;
    sub_1000892D4(&v2);
  }

  v0 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v0;
}

void *sub_1000892D4(uint64_t a1)
{
  v2 = sub_100088A6C();
  result = dlsym(v2, "WFNetworkListControllerAssociationErrorKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1003A6FF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100089340(NSAssertionHandler *a1)
{
  sub_100089484();
  *(*(a1[4].super.isa + 1) + 24) = objc_getClass("BCSConfigurationManager");
  if (!*(*(a1[4].super.isa + 1) + 24))
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"Class getBCSConfigurationManagerClass(void)_block_invoke"];
    [(NSAssertionHandler *)a1 handleFailureInFunction:v2 file:@"SetupController.m" lineNumber:220 description:@"Unable to find class %s", "BCSConfigurationManager"];

    __break(1u);
  }

  qword_1003A6FF8 = *(*(a1[4].super.isa + 1) + 24);
}

void sub_100089484()
{
  if (!sub_1000895AC())
  {
    v0 = +[NSAssertionHandler currentHandler];
    v1 = [NSString stringWithUTF8String:"void *BarcodeSupportLibrary(void)"];
    [(NSAssertionHandler *)v0 handleFailureInFunction:v1 file:@"SetupController.m" lineNumber:219 description:@"%s", 0];

    __break(1u);
  }
}

uint64_t sub_1000895AC()
{
  if (!qword_1003A7000)
  {
    sub_100089660();
  }

  return qword_1003A7000;
}