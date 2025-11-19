char *sub_1000ECABC(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for HeartbeatIconView();
  __chkstk_darwin(v6 - 8);
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressViewVerticalPadding] = 0x403A000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressViewHorizontalPadding] = 0x4046000000000000;
  v7 = OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView;
  type metadata accessor for BaseProgressView();
  *&v2[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_startingProgress] = 0;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v9 = result;
    v10 = MobileGestalt_copy_serialNumber_obj();

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = &v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_serialNumber];
    *v14 = v11;
    v14[1] = v13;
    v15 = &v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
    *v15 = 0;
    *(v15 + 1) = 0;
    *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteManager] = a1;
    *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID] = a2;
    v16 = a2;
    v17 = a1;
    if (_UISolariumEnabled())
    {
      v18 = 2;
    }

    else
    {
      v18 = 3;
    }

    if (v17[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint] <= 1u)
    {
      if (v17[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint])
      {
        sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000023, 0x80000001001914D0);
        v19 = String._bridgeToObjectiveC()();

        sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000026, 0x8000000100191500);
        v20 = String._bridgeToObjectiveC()();

        v63.receiver = v2;
        v63.super_class = type metadata accessor for SuiteInProgressViewController();
        v21 = objc_msgSendSuper2(&v63, "initWithTitle:detailText:icon:contentLayout:", v19, v20, 0, v18);

        HeartbeatIconView.init()();
        v22 = objc_allocWithZone(sub_10003C49C(&qword_1002010D0));
        v23 = UIHostingController.init(rootView:)();
        v24 = [v23 view];
        if (v24)
        {
          v25 = v24;
          v26 = [v21 headerView];
          v27 = [v26 customIconContainerView];

          if (v27)
          {
            [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
            [v27 addSubview:v25];

            v28 = *&v21[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView];
            *&v21[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView] = v25;

            return v21;
          }
        }

        return v21;
      }

LABEL_20:
      _StringGuts.grow(_:)(31);
      DeviceClass = GestaltGetDeviceClass();
      v51 = sub_100100580(DeviceClass);
      v53 = v52;

      v65 = v51;
      v66 = v53;
      v54._countAndFlagsBits = 0xD00000000000001DLL;
      v54._object = 0x8000000100191490;
      String.append(_:)(v54);
      v55 = String._bridgeToObjectiveC()();
      v56 = objc_opt_self();
      v57 = [v56 _systemImageNamed:v55];

      if (v57)
      {
      }

      else
      {
        v58 = String._bridgeToObjectiveC()();

        v57 = [v56 imageNamed:v58];
      }

      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x80000001001914B0);
      v59 = String._bridgeToObjectiveC()();

      v64.receiver = v3;
      v64.super_class = type metadata accessor for SuiteInProgressViewController();
      v21 = objc_msgSendSuper2(&v64, "initWithTitle:detailText:icon:contentLayout:", v59, 0, v57, v18);

      return v21;
    }

    if (v17[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint] != 2)
    {
      goto LABEL_20;
    }

    v61 = v16;
    v29 = [objc_opt_self() systemBlueColor];
    v30 = objc_opt_self();
    v31 = [v30 configurationWithHierarchicalColor:v29];

    v32 = [v30 configurationWithScale:3];
    v33 = [v31 configurationByApplyingConfiguration:v32];

    v34 = v33;
    v35 = String._bridgeToObjectiveC()();
    v36 = [objc_opt_self() _systemImageNamed:v35 withConfiguration:v34];

    v60 = v36;
    v37 = [objc_allocWithZone(UIImageView) initWithImage:v36];
    [v37 setContentMode:1];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    v65 = 0xD00000000000001FLL;
    v66 = 0x8000000100191550;
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v38 = result;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {
        v40 = 0x4E414C575FLL;
      }

      else
      {
        v40 = 0x494649575FLL;
      }

      v41 = 0xE500000000000000;
      String.append(_:)(*&v40);
      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x8000000100191570);
      v42 = String._bridgeToObjectiveC()();

      v43 = sub_100049C98(v65);
      v45 = v44;

      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v43, v45);

      v46 = String._bridgeToObjectiveC()();

      v62.receiver = v3;
      v62.super_class = type metadata accessor for SuiteInProgressViewController();
      v21 = objc_msgSendSuper2(&v62, "initWithTitle:detailText:icon:contentLayout:", v42, v46, 0, v18);

      v47 = [v21 headerView];
      v48 = [v47 customIconContainerView];

      if (v48)
      {
        [v48 addSubview:v37];

        v49 = *&v21[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView];
        *&v21[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView] = v37;
      }

      else
      {
      }

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000ED360()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteManager];
  v4 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint;
  v5 = *(v3 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint);
  if (v5 == 3)
  {
    if (!*&v0[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID])
    {
      goto LABEL_10;
    }

    v6 = [v0 navigationItem];
    sub_10003E110(0, &qword_1001FD3B8);
    sub_10003E110(0, &qword_1002023B0);
    *(swift_allocObject() + 16) = v0;
    v7 = v0;
    v49.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v49.is_nil = 0;
    isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v49, v51).super.super.isa;
    [v6 setLeftBarButtonItem:isa];

    v5 = *(v3 + v4);
  }

  if (v5 == 1)
  {
    v9 = [v1 navigationController];
    if (v9)
    {
      v10 = v9;
      [v9 setNavigationBarHidden:0 animated:1];
    }

    sub_10003E110(0, &qword_1001FD3B8);
    sub_10003E110(0, &qword_1002023B0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v50.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v50.is_nil = 0;
    v11.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v50, v52).super.super.isa;
    v12 = OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton;
    v13 = *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton];
    *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton] = v11;

    v14 = _UISolariumEnabled();
    v15 = [v1 navigationItem];
    v16 = *&v1[v12];
    v17 = &selRef_setLeftBarButtonItem_;
    if (!v14)
    {
      v17 = &selRef_setRightBarButtonItem_;
    }

    [v15 *v17];
  }

LABEL_10:
  v18 = *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = *&v1[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID];
  if (v19)
  {
    v20 = qword_1001FC738;
    v21 = v19;
    v22 = v21;
    if (v20 != -1)
    {
      v21 = swift_once();
    }

    v24 = qword_1001FEED0;
    v23 = qword_1001FEED8;
    if (qword_1001FEED8)
    {
      __chkstk_darwin(v21);
      v25 = v22;
      sub_10003C49C(&qword_1001FDF90);
      OS_dispatch_queue.sync<A>(execute:)();
      if (v48)
      {
        v47 = v4;
        v26 = [v48 suiteNameLocalizedString];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = HIBYTE(v29) & 0xF;
        if ((v29 & 0x2000000000000000) == 0)
        {
          v30 = v27 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v31 = &v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleText];
          *v31 = v27;
          v31[1] = v29;

          v32 = *&v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_titleLabel];

          v33 = v32;
          v34 = String._bridgeToObjectiveC()();

          [v33 setText:v34];
        }

        else
        {
        }

        v4 = v47;
      }

      else
      {
      }
    }

    else
    {
    }

    v35 = sub_100096060(v22, v24, v23);
    if (v36)
    {
      v37 = v36;
      if (*(v3 + v4) == 3)
      {
        v38 = v35;
        sub_10003C49C(&unk_1001FEAD0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_10017EC00;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = sub_10003DFBC();
        *(v39 + 32) = v38;
        *(v39 + 40) = v37;
        v40 = sub_1000494C8(0, 0, v39, 0xD000000000000023, 0x8000000100191590);
        v42 = v41;

        v43 = &v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleText];
        *v43 = v40;
        v43[1] = v42;

        v44 = *&v18[OBJC_IVAR____TtC11Diagnostics16BaseProgressView_subtitleLabel];

        v45 = v44;
        v46 = String._bridgeToObjectiveC()();

        [v45 setText:v46];
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1000ED978(int a1, id a2)
{
  v2 = [a2 navigationItem];
  v3 = [v2 leftBarButtonItem];

  if (v3)
  {
    [v3 setEnabled:0];
  }

  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  sub_100094F00(qword_1001FEED0, qword_1001FEED8);
}

void sub_1000EDA40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000EC128(4);
    *(swift_allocObject() + 16) = v1;
    *(swift_allocObject() + 16) = v1;
    v2 = v1;
    v3 = [v2 navigationItem];
    v4 = [v3 rightBarButtonItem];

    sub_100088E48(0, v4);

    v5 = *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton];
    if (v5)
    {
      v6 = v5;
      [v6 setEnabled:0];
    }
  }
}

uint64_t sub_1000EDBA4()
{
  v0 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  sub_1000EC128(5);
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] == 6 && (v3 = objc_msgSend(*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow), "serialNumber")) != 0 || objc_msgSend(*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow), "destination") == 1 && (v3 = objc_msgSend(*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow), "serialNumber")) != 0)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_1000F6DA8();
    sub_100094F00(v5, v7);
  }

  else
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    sub_1000EC574(0, 0, v2, &unk_100183F80, v11);
  }
}

void sub_1000EDDE8()
{
  if (_UISolariumEnabled())
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 44.0;
  }

  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017ED60;
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView];
  v5 = [v4 leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:v1];
  *(v3 + 32) = v8;
  v9 = [v4 trailingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-v1];
  *(v3 + 40) = v12;
  v13 = [v4 centerXAnchor];
  v14 = [v0 contentView];
  v15 = [v14 centerXAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  v17 = v2;
  *(v3 + 48) = v16;
  v18 = [v4 topAnchor];
  v19 = [v0 contentView];
  v20 = [v19 topAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:26.0];
  *(v3 + 56) = v21;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];

  v23 = [v0 headerView];
  v41 = [v23 customIconContainerView];

  v24 = v41;
  if (v41)
  {
    v25 = *&v0[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_customIconView];
    if (v25)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10017ED60;
      v27 = v25;
      v28 = [v27 heightAnchor];
      v29 = [(objc_class *)v41 heightAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];

      *(v26 + 32) = v30;
      v31 = [v27 widthAnchor];
      v32 = [(objc_class *)v41 widthAnchor];
      v33 = [v31 constraintEqualToAnchor:v32];

      *(v26 + 40) = v33;
      v34 = [v27 centerXAnchor];
      v35 = [(objc_class *)v41 centerXAnchor];
      v36 = [v34 constraintEqualToAnchor:v35];

      *(v26 + 48) = v36;
      v37 = [v27 centerYAnchor];
      v38 = [(objc_class *)v41 centerYAnchor];
      v39 = [v37 constraintEqualToAnchor:v38];

      *(v26 + 56) = v39;
      v40 = Array._bridgeToObjectiveC()().super.isa;

      [v17 activateConstraints:v40];

      v24 = v40;
    }
  }
}

void sub_1000EE328(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for SuiteInProgressViewController();
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  *(*&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001C5838;
  swift_unknownObjectWeakAssign();
  v4 = *&v2[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  if (v4)
  {

    v4(v5);
    sub_10003C52C(v4);
  }

  if (os_variant_has_internal_content())
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 BOOLForKey:v7];

    if (v8)
    {
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = v2;
      v14[4] = sub_1000F0160;
      v14[5] = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_100072168;
      v14[3] = &unk_1001C5A50;
      v11 = _Block_copy(v14);
      v12 = v2;

      v13 = [v9 scheduledTimerWithTimeInterval:1 repeats:v11 block:1.0];
      _Block_release(v11);
    }
  }

  sub_1000EBDFC(1);
}

void sub_1000EE534(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView);
  v4 = OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress;
  v5 = *(v3 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress) + 0.1;
  *(v3 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress) = v5;
  *(*(v3 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView) + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget) = v5;
  sub_1000FB158();
  if (*(v3 + v4) >= 1.0)
  {
    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    sub_10009617C(qword_1001FEED0, qword_1001FEED8);

    [a1 invalidate];
  }
}

id sub_1000EE6F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuiteInProgressViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000EE7F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID);
  if (qword_1001FC738 == -1)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!v1)
    {
      return 0;
    }
  }

  result = qword_1001FEED0;
  if (!qword_1001FEED8)
  {
    return result;
  }

  __chkstk_darwin(qword_1001FEED0);
  v3 = v1;
  sub_10003C49C(&qword_1001FDF90);
  OS_dispatch_queue.sync<A>(execute:)();
  if (v6)
  {
    v4 = [v6 suiteNameLocalizedString];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  return 0;
}

void sub_1000EE95C(void *a1, uint64_t a2)
{
  [a1 floatValue];
  v4 = v3 / 100.0;
  if (*(a2 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_startingProgress) < v4)
  {
    v5 = *(a2 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_progressView);
    *(v5 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progress) = v4;
    *(*(v5 + OBJC_IVAR____TtC11Diagnostics16BaseProgressView_progressView) + OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget) = v4;
    sub_1000FB158();
  }
}

void sub_1000EE9E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v66 = a4;
  v75 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v73 = *(v6 - 1);
  v74 = v6;
  __chkstk_darwin(v6);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v70 = *(v72 - 1);
  __chkstk_darwin(v72);
  v69 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for DispatchTime();
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v65 - v17;
  v19 = type metadata accessor for DispatchQoS.QoSClass();
  v20 = *(v19 - 8);
  *&v21 = __chkstk_darwin(v19).n128_u64[0];
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint) == 1)
  {
    if (qword_10020A548)
    {
      sub_10003E110(0, &qword_1001FD040);
      (*(v20 + 104))(v23, enum case for DispatchQoS.QoSClass.default(_:), v19);
      v75 = static OS_dispatch_queue.global(qos:)();
      (*(v20 + 8))(v23, v19);
      static DispatchTime.now()();
      *v12 = 5;
      (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v9);
      + infix(_:_:)();
      (*(v10 + 8))(v12, v9);
      v24 = v68;
      v25 = *(v67 + 8);
      v25(v15, v68);
      aBlock[4] = sub_1000EF3A4;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C5938;
      v26 = _Block_copy(aBlock);
      v27 = v69;
      static DispatchQoS.unspecified.getter();
      v76 = _swiftEmptyArrayStorage;
      sub_10005BD2C();
      sub_10003C49C(&unk_1001FD050);
      sub_1000446A0();
      v28 = v71;
      v29 = v74;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v30 = v75;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v26);

      (v73)[1](v28, v29);
      (*(v70 + 8))(v27, v72);
      v25(v18, v24);
    }

    return;
  }

  if (a2)
  {
    swift_errorRetain();
    v31 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v32 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      swift_errorRetain();
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 4) = v35;
      *v34 = v35;
      _os_log_impl(&_mh_execute_header, v32, v31, "Error occurred upon suite finish: %@", v33, 0xCu);
      sub_10003DD84(v34, &qword_1001FF0C0);
    }

    v36 = [v75 navigationController];
    if (!v36)
    {

      return;
    }

    v75 = v36;
    v37 = [v36 popViewControllerAnimated:1];

LABEL_39:
    v62 = v75;
    goto LABEL_40;
  }

  if (!v66)
  {
LABEL_37:
    v61 = [v75 navigationController];
    if (!v61)
    {
      return;
    }

    v75 = v61;

    goto LABEL_39;
  }

  v38 = v66;
  v39 = [v38 results];
  if (!v39)
  {
    v40 = v38;
LABEL_36:

    goto LABEL_37;
  }

  v40 = v39;
  v73 = v38;
  v41 = &selRef_btManagerAvailableSemaphore;
  v42 = [v39 components];
  sub_10003E110(0, &qword_1001FD530);
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v43 >> 62)
  {
    goto LABEL_34;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v44)
  {
LABEL_35:

    goto LABEL_36;
  }

  while (1)
  {
    v45 = [v40 v41[26]];
    v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v46 >> 62)
    {
      break;
    }

    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v72 = v40;
    if (!v47)
    {
      goto LABEL_44;
    }

LABEL_16:
    v48 = 0;
    v74 = (v46 & 0xC000000000000001);
    v41 = (v46 & 0xFFFFFFFFFFFFFF8);
    v49 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v74)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v50 = *(v46 + 8 * v48 + 32);
      }

      v51 = v50;
      v52 = (v48 + 1);
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v40 = v47;
      v53 = [v50 assetLocator];
      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v55;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1000D4ECC(0, *(v49 + 2) + 1, 1, v49);
      }

      v58 = *(v49 + 2);
      v57 = *(v49 + 3);
      if (v58 >= v57 >> 1)
      {
        v49 = sub_1000D4ECC((v57 > 1), v58 + 1, 1, v49);
      }

      *(v49 + 2) = v58 + 1;
      v59 = &v49[16 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      ++v48;
      v47 = v40;
      if (v52 == v40)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v60 = _CocoaArrayWrapper.endIndex.getter();

    if (!v60)
    {
      goto LABEL_35;
    }
  }

  v47 = _CocoaArrayWrapper.endIndex.getter();
  v72 = v40;
  if (v47)
  {
    goto LABEL_16;
  }

LABEL_44:
  v49 = _swiftEmptyArrayStorage;
LABEL_45:

  if (qword_1001FC820 != -1)
  {
    swift_once();
  }

  v63 = qword_10020A588;
  v74 = v73;
  v64 = v75;
  sub_10010E4E4(v49, v63, v64, v74);

  v62 = v74;
LABEL_40:
}

void sub_1000EF3A4()
{
  if (qword_10020A548)
  {
    v1 = qword_10020A548;
    OS_dispatch_semaphore.signal()();

    v0 = vars8;
  }

  sub_1000F7F54();
}

void *sub_1000EF3F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_suiteID);
  v2 = v1;
  return v1;
}

void sub_1000EF43C(void *a1)
{
  v29 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!os_variant_has_internal_content() || (v8 = [objc_opt_self() standardUserDefaults], v9 = v6, v10 = v4, v11 = v1, v12 = v5, v13 = v2, v14 = String._bridgeToObjectiveC()(), v15 = objc_msgSend(v8, "BOOLForKey:", v14), v8, v14, v2 = v13, v5 = v12, v1 = v11, v4 = v10, v6 = v9, (v15 & 1) == 0))
  {
    v16 = String.lowercased()();
    if (*&v31[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_serialNumber + 8])
    {
      v17 = String.lowercased()();
      if (v16._countAndFlagsBits == v17._countAndFlagsBits && v16._object == v17._object)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          return;
        }
      }

      sub_10003E110(0, &qword_1001FD040);
      v20 = v31;
      v21 = static OS_dispatch_queue.main.getter();
      v22 = swift_allocObject();
      v23 = v29;
      *(v22 + 16) = v29;
      *(v22 + 24) = v20;
      aBlock[4] = sub_1000EF894;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C58C0;
      v24 = _Block_copy(aBlock);
      v25 = v23;
      v26 = v20;

      v27 = v30;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10005BD2C();
      sub_10003C49C(&unk_1001FD050);
      sub_1000446A0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v24);

      (*(v2 + 8))(v4, v1);
      (*(v6 + 8))(v27, v5);
      return;
    }
  }
}

uint64_t sub_1000EF854()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000EF89C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EF8B4(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v10 = *(v22 - 8);
  __chkstk_darwin(v22);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v21 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a3;
  v13[4] = v3;
  v13[5] = a2;
  aBlock[4] = sub_1000EFBBC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5910;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  swift_errorRetain();
  v16 = a2;
  v17 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v23 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v22);
}

uint64_t sub_1000EFB6C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000EFBC8(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v8 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    v9 = result - v8;
    if (__OFSUB__(result, v8))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = _CocoaArrayWrapper.endIndex.getter();
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v9 <= v10)
    {
      v11 = v9 & ~(v9 >> 63);
    }

    else
    {
      v11 = v10;
    }

    if (v10 < 0 || v9 < 1)
    {
      v5 = v9 & ~(v9 >> 63);
    }

    else
    {
      v5 = v11;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v5)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = (v4 - result) & ~((v4 - result) >> 63);
  if (v4 < v5)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0 && v5)
  {
    sub_10003E110(0, &qword_1001FDE30);

    v6 = 0;
    do
    {
      v7 = v6 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v6);
      v6 = v7;
    }

    while (v5 != v7);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

void sub_1000EFD24(void *a1, void *a2)
{
  v3 = [a1 navigationController];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  objc_allocWithZone(type metadata accessor for SelfServiceSuiteResultsViewController());
  v5 = sub_1000A4BC0(a2);
  v6 = [v4 viewControllers];
  sub_10003E110(0, &qword_1001FDE30);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = sub_1000EFBC8(1, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_3;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v18 = v17[2];

  if (__OFSUB__(v14 >> 1, v12))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v18 != (v14 >> 1) - v12)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_3:
    sub_100098BE8(v8, v10, v12, v14);
    v16 = v15;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v16)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

LABEL_11:
  v19 = v5;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setViewControllers:isa animated:1];
}

uint64_t sub_1000EFF5C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EFF9C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000EFFE4()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_1000F000C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F0044()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

uint64_t sub_1000F00F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FFE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F018C(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057B68();
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1000F0A44;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5AA0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000F1934(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  (*(v6 + 8))(v8, v18);
}

NSString sub_1000F0508()
{
  result = String._bridgeToObjectiveC()();
  qword_1002010E0 = result;
  return result;
}

NSString sub_1000F0540()
{
  result = String._bridgeToObjectiveC()();
  qword_1002010E8 = result;
  return result;
}

uint64_t sub_1000F0578(void (*a1)(uint64_t))
{
  v20 = a1;
  v1 = type metadata accessor for URLResourceValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(fileURLWithPath:isDirectory:)();
  sub_10003C49C(&qword_1001FF8C8);
  inited = swift_initStackObject();
  v19 = xmmword_10017EC00;
  *(inited + 16) = xmmword_10017EC00;
  *(inited + 32) = NSURLVolumeAvailableCapacityKey;
  v10 = NSURLVolumeAvailableCapacityKey;
  sub_10014FB04(inited);
  swift_setDeallocating();
  sub_1000F18D8(inited + 32);
  URL.resourceValues(forKeys:)();

  v11 = URLResourceValues.volumeAvailableCapacity.getter();
  v13 = v12;
  (*(v2 + 8))(v4, v1);
  if (v13)
  {
LABEL_12:
    v15 = 1;
    goto LABEL_13;
  }

  if (qword_1001FC7D8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000F145C(qword_1002010E0);
  if ((v11 & 0x8000000000000000) != 0 || v11 < v14)
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10017EC10;
    if (qword_1001FC7E0 != -1)
    {
      swift_once();
    }

    v17 = sub_1000F145C(qword_1002010E8);
    *(v16 + 56) = &type metadata for UInt64;
    *(v16 + 64) = &protocol witness table for UInt64;
    *(v16 + 32) = v17;
    *(v16 + 96) = &type metadata for Int;
    *(v16 + 104) = &protocol witness table for Int;
    *(v16 + 72) = v11;
    os_log(_:dso:log:type:_:)();

    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:
  v20(v15);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F0A0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F0A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unsigned __int8 *sub_1000F0A64(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000F0FE8();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000F0FE8()
{
  v0 = String.subscript.getter();
  v4 = sub_1000F1068(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1000F1068(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100056FBC(v9, 0), v12 = sub_1000F11C0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000F11C0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000F13E0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000F13E0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1000F13E0(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_1000F145C(const __CFString *a1)
{
  CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
  v2 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    type metadata accessor for CFString(0);
    if (qword_1001FC7D8 != -1)
    {
      swift_once();
    }

    sub_1000F1934(&unk_1001FDFB0, type metadata accessor for CFString);
    if (static _CFObject.== infix(_:_:)())
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x200000;
    }
  }

  v4 = CFPreferencesCopyAppValue(a1, @"com.apple.Diagnostics");
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  v32 = v4;
  swift_unknownObjectRetain();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_74;
  }

  result = v31;
  v7 = HIBYTE(v31) & 0xF;
  v8 = v30 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v31) & 0xF;
  }

  else
  {
    v9 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_74;
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v13 = sub_1000F0A64(v30, v31, 10);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_78;
    }

LABEL_74:
    v30 = v5;
    if (swift_dynamicCast())
    {
      return v32;
    }

    return v3;
  }

  if ((v31 & 0x2000000000000000) == 0)
  {
    if ((v30 & 0x1000000000000000) != 0)
    {
      v10 = ((v31 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v10 = _StringObject.sharedUTF8.getter();
      result = v31;
    }

    v11 = *v10;
    if (v11 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_73;
          }

          v20 = v10 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = __CFADD__(10 * v13, v21);
            v13 = 10 * v13 + v21;
            if (v16)
            {
              break;
            }

            ++v20;
            if (!--v19)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_72;
      }

      goto LABEL_83;
    }

    if (v11 == 45)
    {
      if (v8 >= 1)
      {
        v12 = v8 - 1;
        if (v8 != 1)
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_73;
          }

          v14 = v10 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            if (!is_mul_ok(v13, 0xAuLL))
            {
              break;
            }

            v16 = 10 * v13 >= v15;
            v13 = 10 * v13 - v15;
            if (!v16)
            {
              break;
            }

            ++v14;
            if (!--v12)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v8)
    {
      v13 = 0;
      if (!v10)
      {
        goto LABEL_73;
      }

      while (1)
      {
        v24 = *v10 - 48;
        if (v24 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v24);
        v13 = 10 * v13 + v24;
        if (v16)
        {
          break;
        }

        ++v10;
        if (!--v8)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_72;
  }

  v31 &= 0xFFFFFFFFFFFFFFuLL;
  if (v30 != 43)
  {
    if (v30 == 45)
    {
      if (!v7)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v10 = (v7 - 1);
      if (v7 != 1)
      {
        v13 = 0;
        v17 = &v30 + 1;
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (!is_mul_ok(v13, 0xAuLL))
          {
            break;
          }

          v16 = 10 * v13 >= v18;
          v13 = 10 * v13 - v18;
          if (!v16)
          {
            break;
          }

          ++v17;
          if (!--v10)
          {
            goto LABEL_73;
          }
        }
      }
    }

    else if (v7)
    {
      v13 = 0;
      v25 = &v30;
      while (1)
      {
        v26 = *v25 - 48;
        if (v26 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v26);
        v13 = 10 * v13 + v26;
        if (v16)
        {
          break;
        }

        v25 = (v25 + 1);
        if (!--v7)
        {
LABEL_71:
          LOBYTE(v10) = 0;
          goto LABEL_73;
        }
      }
    }

LABEL_72:
    v13 = 0;
    LOBYTE(v10) = 1;
LABEL_73:
    LOBYTE(v32) = v10;
    v27 = v10;

    if (v27)
    {
      goto LABEL_74;
    }

LABEL_78:
    swift_unknownObjectRelease();
    return v13;
  }

  if (v7)
  {
    v10 = (v7 - 1);
    if (v7 != 1)
    {
      v13 = 0;
      v22 = &v30 + 1;
      while (1)
      {
        v23 = *v22 - 48;
        if (v23 > 9)
        {
          break;
        }

        if (!is_mul_ok(v13, 0xAuLL))
        {
          break;
        }

        v16 = __CFADD__(10 * v13, v23);
        v13 = 10 * v13 + v23;
        if (v16)
        {
          break;
        }

        ++v22;
        if (!--v10)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_1000F18D8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F1934(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000F1B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000F1B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000B7C9C(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v8 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v22 = *(a1 + 36);
    v9 = (*(a1 + 48) + 16 * v5);
    v10 = v9[1];
    v23 = *v9;
    v11 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];

    if (v11 >= v12 >> 1)
    {
      result = sub_1000B7C9C((v12 > 1), v11 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v11 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v11];
    v13[4] = v23;
    v13[5] = v10;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v8);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v22 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_1000B2714(v5, v22, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_1000B2714(v5, v22, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v21)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000F1D80()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC740 != -1)
  {
    swift_once();
  }

  sub_10009E188();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = 10;
  sub_10003E110(0, &qword_1001FD040);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1000F73A4;
  *(v10 + 24) = v8;
  aBlock[4] = sub_1000F73E4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5B40;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v5 + 8))(v7, v14);
}

unint64_t sub_1000F208C(char a1)
{
  result = 0x22656D6F4822;
  switch(a1)
  {
    case 1:
      result = 0x6572676173694422;
      break;
    case 2:
      result = 0x7373696D73694422;
      break;
    case 3:
      result = 0x226C65636E614322;
      break;
    case 4:
      result = 0x22656E6F4422;
      break;
    case 5:
      result = 0x76697463616E4922;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x656C7469746E4522;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
    case 11:
    case 20:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x65657246206F4E22;
      break;
    case 12:
      result = 0x64726143206F4E22;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
    case 15:
    case 17:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0x6C20686374615722;
      break;
    case 22:
      result = 0xD00000000000001DLL;
      break;
    case 23:
      result = 0xD00000000000001CLL;
      break;
    case 24:
    case 28:
      result = 0xD000000000000020;
      break;
    case 25:
      result = 0xD00000000000001ALL;
      break;
    case 26:
      result = 0xD000000000000031;
      break;
    case 27:
      result = 0xD00000000000002ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F2424(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000F208C(*a1);
  v5 = v4;
  if (v3 == sub_1000F208C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000F24AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000F208C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F2510()
{
  sub_1000F208C(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000F2564()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000F208C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F25C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F80A0();
  *a1 = result;
  return result;
}

unint64_t sub_1000F25F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000F208C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1000F2620()
{
  static os_log_type_t.error.getter();
  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  swift_getErrorValue();
  v1 = Error.localizedDescription.getter();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_10003DFBC();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_10003E110(0, &qword_1001FD6F0);
  v4 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

void sub_1000F271C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000F2784()
{
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A380;

  return [v1 setNeedsStatusBarAppearanceUpdate];
}

void sub_1000F2840(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount;
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount);
  if (v3 != a1)
  {
    v4 = v1;
    if (!a1 && v3 >= 1)
    {
      v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController);
      if (!sub_1000660CC() || (v6 = *(v5 + OBJC_IVAR___DARootViewController_hostAppBundleIdentifier + 8)) == 0 || (aBlock = *(v5 + OBJC_IVAR___DARootViewController_hostAppBundleIdentifier), v34 = v6, v31 = 0xD000000000000015, v32 = 0x8000000100191E60, sub_100079A64(), StringProtocol.caseInsensitiveCompare<A>(_:)()))
      {
        [*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:-1 completion:{0, v31, v32, aBlock, v34}];
        sub_1000F6794();
      }
    }

    if (*(v4 + v2) < 1)
    {
      if (qword_1001FC6B8 == -1)
      {
LABEL_14:
        v16 = qword_10020A368;
        v17 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
        v18 = swift_allocObject();
        *(v18 + 16) = v16;
        v19 = swift_allocObject();
        *(v19 + 16) = sub_1000FB140;
        *(v19 + 24) = v18;
        v37 = sub_10003E41C;
        v38 = v19;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_100060C48;
        v36 = &unk_1001C61F8;
        v20 = _Block_copy(&aBlock);
        v21 = v16;

        dispatch_sync(v17, v20);
        _Block_release(v20);
        LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

        if (v17)
        {
          __break(1u);
          return;
        }

        v22 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
        v21[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v21[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
        v23 = sub_100050814();
        [v23 setNearbySharingEnabled:(v21[v22] & 1) == 0];

        v24 = sub_100050814();
        [v24 setDiscoverableMode:*&v21[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

        v25 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
        v26 = *&v21[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion];
        if (v26)
        {
          [v26 invalidate];
        }

        *&v21[v25] = 0;
        swift_unknownObjectRelease();
        [*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) stopWithCompletion:0];
        v27 = *(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_lockButtonConsumer);
        if (v27)
        {
          [v27 invalidate];
        }

        v28 = [objc_opt_self() sharedApplication];
        v29 = [v28 applicationState];

        if (v29 == 2)
        {
          sub_1000F6FF8(12);
        }

        v13 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (qword_1001FC6B8 != -1)
      {
        swift_once();
      }

      v7 = qword_10020A368;
      v8 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_10003E468;
      *(v10 + 24) = v9;
      v37 = sub_10003E41C;
      v38 = v10;
      aBlock = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100060C48;
      v36 = &unk_1001C6270;
      v11 = _Block_copy(&aBlock);
      v12 = v7;

      dispatch_sync(v8, v11);
      _Block_release(v11);
      v13 = 1;
      LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        v14 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
        v12[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
        v15 = sub_100050814();
        [v15 setNearbySharingEnabled:(v12[v14] & 1) == 0];

        sub_1000508A4();
        sub_100050C28();
        sub_1000F68C0();
LABEL_22:
        v30 = [objc_opt_self() standardUserDefaults];
        [v30 setInteger:v13 forKey:@"InCurrentSession"];

        return;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_14;
  }
}

void sub_1000F2D90(char a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground;
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground) != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_100066608();
    type metadata accessor for DashboardViewController();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
    }

    if (*(v4 + v3) != 1)
    {
      p_opt_inst_meths = &OBJC_PROTOCOL___DKAssetResponder.opt_inst_meths;
      v10 = &unk_10020A000;
      isEscapingClosureAtFileLocation = &unk_10017E000;
      if (*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount) < 1)
      {
        goto LABEL_18;
      }

      if (qword_1001FC6B8 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    v7 = qword_10020A368;
    sub_10004FAD4();
    sub_100050198();
    sub_1000F68C0();
    v8 = *&v7[OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleQueue];
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000FADE4;
    *(v10 + 24) = v9;
    v44 = sub_10003E41C;
    v45 = v10;
    v40 = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_100060C48;
    v43 = &unk_1001C6018;
    v11 = _Block_copy(&v40);
    v12 = v7;

    dispatch_sync(v8, v11);
    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
LABEL_26:
      swift_once();
      while (1)
      {
        v32 = *(v10 + 872);
        v33 = *&v32[OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue];
        v4 = swift_allocObject();
        *(v4 + 16) = v32;
        v34 = swift_allocObject();
        *(v34 + 16) = sub_100099D24;
        *(v34 + 24) = v4;
        v44 = sub_10003E41C;
        v45 = v34;
        v40 = _NSConcreteStackBlock;
        v41 = *(isEscapingClosureAtFileLocation + 3104);
        v42 = sub_100060C48;
        v43 = &unk_1001C5F28;
        v35 = _Block_copy(&v40);
        v36 = v32;

        dispatch_sync(v33, v35);
        _Block_release(v35);
        isEscapingClosureAtFileLocation = 1;
        v10 = swift_isEscapingClosureAtFileLocation();

        if ((v10 & 1) == 0)
        {
          sub_10004FE88();
          sub_100050510();
          v37 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
          v36[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v36[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
          v38 = sub_100050814();
          [v38 setNearbySharingEnabled:(v36[v37] & 1) == 0];

          v39 = sub_100050814();
          [v39 setDiscoverableMode:*&v36[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

          goto LABEL_23;
        }

        __break(1u);
LABEL_28:
        swift_once();
LABEL_15:
        v23 = *(v10 + 872);
        v24 = *&v23[OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleQueue];
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        v26 = swift_allocObject();
        *(v26 + 16) = sub_1000FADDC;
        *(v26 + 24) = v25;
        v44 = sub_10003E41C;
        v45 = v26;
        v40 = _NSConcreteStackBlock;
        v27 = isEscapingClosureAtFileLocation;
        v41 = *(isEscapingClosureAtFileLocation + 3104);
        v42 = sub_100060C48;
        v43 = &unk_1001C5FA0;
        v28 = _Block_copy(&v40);
        v29 = v23;

        dispatch_sync(v24, v28);
        _Block_release(v28);
        LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

        if (v24)
        {
          break;
        }

        isEscapingClosureAtFileLocation = v27;
        v10 = &unk_10020A000;
        if (v6)
        {
          v30 = *&v6[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager];
          sub_100104F24();
        }

LABEL_18:
        [*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) stopWithCompletion:0];
        v31 = *(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_lockButtonConsumer);
        if (v31)
        {
          [v31 invalidate];
        }

        if (p_opt_inst_meths[215] != -1)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }

    else
    {
      if (v6)
      {
        v14 = *&v6[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager];
        sub_100104F30();
      }

      if (*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount) < 1)
      {
        goto LABEL_23;
      }

      [*(v4 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:-1 completion:0];
      sub_1000F6794();
      v15 = *&v12[OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue];
      v16 = swift_allocObject();
      *(v16 + 16) = v12;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_10003DA8C;
      *(v17 + 24) = v16;
      v44 = sub_10003E41C;
      v45 = v17;
      v40 = _NSConcreteStackBlock;
      v41 = 1107296256;
      v42 = sub_100060C48;
      v43 = &unk_1001C6090;
      v18 = _Block_copy(&v40);
      v19 = v12;

      dispatch_sync(v15, v18);
      _Block_release(v18);
      v20 = swift_isEscapingClosureAtFileLocation();

      if ((v20 & 1) == 0)
      {
        v21 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
        v19[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
        v22 = sub_100050814();
        [v22 setNearbySharingEnabled:(v19[v21] & 1) == 0];

        sub_1000508A4();
LABEL_23:

        return;
      }
    }

    __break(1u);
  }
}

void sub_1000F3504(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  *&v10 = 0xD000000000000012;
  *(&v10 + 1) = 0x800000010018BB50;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_100064B74(v9), (v6 & 1) == 0))
  {

    sub_10003DB48(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_10003E010(*(v4 + 56) + 32 * v5, &v10);
  sub_10003DB48(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_10003DD84(&v10, &unk_1001FD720);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = v9[0];
LABEL_11:
  v8 = *(a2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount);
  *(a2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount) = v7;
  sub_1000F2840(v8);
}

id sub_1000F362C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for URL();
  v70 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  if (qword_1001FC6B8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v71 = v12;
    v16 = *(a1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController);
    result = [v16 view];
    if (!result)
    {
      break;
    }

    v18 = result;
    v19 = v16;
    sub_1000F896C(v18, v19);

    v20 = [a2 URLContexts];
    sub_10003E110(0, &qword_100201298);
    sub_1000AC8BC(&qword_1002012A0, &qword_100201298);
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = sub_10012570C(v21);

    if (v22)
    {
      v23 = [v22 URL];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v70;
      v25 = v71;
      v26 = *(v70 + 32);
      v26(v71, v6, v4);
      v27 = *(v24 + 56);
      v27(v25, 0, 1, v4);
      v26(v15, v25, v4);
      v27(v15, 0, 1, v4);
      goto LABEL_35;
    }

    v64 = v4;
    v65 = a1;
    v62 = *(v70 + 56);
    v63 = v70 + 56;
    v62(v71, 1, 1, v4);
    v28 = [a2 userActivities];
    v29 = sub_10003E110(0, &qword_1002012B8);
    a2 = sub_1000AC8BC(&unk_1002012C0, &qword_1002012B8);
    v30 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v15;
    v67 = v29;
    v59 = v9;
    v61 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v31 = v74;
      v15 = v75;
      v32 = v76;
      v4 = v77;
      v6 = v78;
    }

    else
    {
      v33 = -1 << *(v30 + 32);
      v31 = v30;
      v15 = (v30 + 56);
      v32 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v6 = (v35 & *(v30 + 56));

      v4 = 0;
    }

    v60 = v32;
    v12 = ((v32 + 64) >> 6);
    v69 = NSUserActivityTypeBrowsingWeb;
    if (v31 < 0)
    {
      while (1)
      {
        v40 = __CocoaSet.Iterator.next()();
        if (!v40)
        {
          break;
        }

        v72 = v40;
        swift_dynamicCast();
        v39 = v73;
        v9 = v4;
        v38 = v6;
        if (!v73)
        {
          break;
        }

LABEL_20:
        a2 = v12;
        v68 = v6;
        a1 = v31;
        v41 = v39;
        v42 = [v39 activityType];
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;

        if (v43 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
        {

LABEL_29:
          sub_10004A320();

          v51 = [v41 webpageURL];

          if (v51)
          {
            v52 = v59;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v53 = 0;
            v15 = v66;
            v49 = v64;
            v50 = v71;
          }

          else
          {
            v53 = 1;
            v15 = v66;
            v49 = v64;
            v50 = v71;
            v52 = v59;
          }

          v62(v52, v53, 1, v49);
          sub_1000FAE44(v52, v15);
          goto LABEL_33;
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v48)
        {
          goto LABEL_29;
        }

        v4 = v9;
        v6 = v38;
        v31 = a1;
        v12 = a2;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_27:
      sub_10004A320();

      v15 = v66;
      v49 = v64;
      v62(v66, 1, 1, v64);
      v50 = v71;
LABEL_33:
      if ((*(v70 + 48))(v50, 1, v49) != 1)
      {
        sub_10003DD84(v50, &qword_1001FDF40);
      }

LABEL_35:
      sub_1000F51C4(v15);
      v54 = objc_allocWithZone(NSURLCache);
      v55 = String._bridgeToObjectiveC()();
      v56 = [v54 initWithMemoryCapacity:104857600 diskCapacity:104857600 diskPath:v55];

      [objc_opt_self() setSharedURLCache:v56];
      v57 = [objc_opt_self() sharedInstance];
      [v57 syncASTDefaultsToNVRam];

      return sub_10003DD84(v15, &qword_1001FDF40);
    }

LABEL_12:
    v36 = v4;
    v37 = v6;
    v9 = v4;
    if (v6)
    {
LABEL_16:
      v38 = (v37 - 1) & v37;
      v39 = *(*(v31 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v37)))));
      if (v39)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v9 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v9 >= v12)
      {
        goto LABEL_27;
      }

      v37 = *&v15[8 * v9];
      ++v36;
      if (v37)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  __break(1u);
  return result;
}

void sub_1000F41B4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v24 - 8);
  __chkstk_darwin(v24);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v21[-v10];
  if (qword_10020A548)
  {
    v12 = qword_1001FC7B0;
    v26 = qword_10020A548;
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_10020A4F8;
    static os_log_type_t.default.getter();
    v23 = v13;
    os_log(_:dso:log:type:_:)();
    v14 = qword_100201128;
    if (qword_100201128 < 0)
    {
      __break(1u);
    }

    else if (qword_100201128)
    {
      v22 = enum case for DispatchTimeInterval.seconds(_:);
      v15 = (v2 + 104);
      v16 = (v2 + 8);
      v17 = (v6 + 8);
      do
      {
        static DispatchTime.now()();
        v18 = v24;
        *v4 = v25;
        (*v15)(v4, v22, v18);
        + infix(_:_:)();
        (*v16)(v4, v18);
        v19 = *v17;
        (*v17)(v9, v5);
        OS_dispatch_semaphore.wait(timeout:)();
        v19(v11, v5);
        static DispatchTimeoutResult.== infix(_:_:)();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();
        --v14;
      }

      while (v14);
    }

    else
    {
      v20 = v26;
    }
  }
}

id sub_1000F44E8(void (*a1)(void))
{
  v2 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  if (!sub_1000660CC())
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 applicationState];

    if (v6 != 2)
    {
      result = UIApp;
      if (UIApp)
      {
        (a1)([UIApp suspend]);
        v8 = type metadata accessor for TaskPriority();
        (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
        type metadata accessor for MainActor();
        v9 = static MainActor.shared.getter();
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = &protocol witness table for MainActor;
        sub_1000539D8(0, 0, v4, &unk_100184008, v10);
      }

      goto LABEL_10;
    }
  }

  a1();
  result = UIApp;
  if (!UIApp)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  return [result terminateWithSuccess];
}

uint64_t sub_1000F46C8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000F4778;

  return static Task<>.sleep(nanoseconds:)(500000000);
}

uint64_t sub_1000F4778()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000FB154;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1000F48FC;
  }

  return _swift_task_switch(v4, v1, v3);
}

void sub_1000F48FC()
{
  if (UIApp)
  {
    v1 = UIApp;

    [v1 terminateWithSuccess];

    v2 = *(v0 + 8);

    v2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000F4990(char a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (sub_1000660CC())
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = &protocol witness table for MainActor;
    *(v7 + 32) = a1;
    sub_1000539D8(0, 0, v4, &unk_100184018, v7);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v11 = sub_1000B95A8(sub_1000F7984, v8);

    [v11 showOnTopWithAnimated:1 completion:0];
    v9 = v11;
  }
}

uint64_t sub_1000F4B3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_1000F4BD4, v6, v5);
}

uint64_t sub_1000F4BD4()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000F4C98;

  return sub_100137348();
}

uint64_t sub_1000F4C98()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  return _swift_task_switch(sub_1000FB104, v3, v4);
}

uint64_t sub_1000F4DBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = a3;
  sub_1000539D8(0, 0, v6, &unk_100184028, v9);
}

uint64_t sub_1000F4ED8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_1000F4F70, v6, v5);
}

uint64_t sub_1000F4F70()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000F5034;

  return sub_100137348();
}

uint64_t sub_1000F5034()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1000FB104;
  }

  else
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1000F5158;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000F5158()
{
  v1 = *(v0 + 48);

  sub_1000F6FF8(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1000F51C4(uint64_t a1)
{
  v54 = type metadata accessor for LaunchURL();
  __chkstk_darwin(v54);
  v59 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v58 = &v51 - v8;
  v9 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v9 - 8);
  v57 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v56 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10017EC10;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_10003DFBC();
  *(v14 + 64) = v15;
  strcpy((v14 + 32), "handle(url:)");
  *(v14 + 45) = 0;
  *(v14 + 46) = -5120;
  v16 = a1;
  sub_1000FAD5C(a1, v13);
  v17 = v5;
  v18 = *(v5 + 48);
  v19 = v18(v13, 1, v4);
  v55 = v5;
  if (v19 == 1)
  {
    sub_10003DD84(v13, &qword_1001FDF40);
    v20 = (v14 + 72);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    v21 = v59;
  }

  else
  {
    v52 = v1;
    v22 = URL.absoluteString.getter();
    v24 = v23;
    (*(v17 + 8))(v13, v4);
    v20 = (v14 + 72);
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    if (v24)
    {
      *v20 = v22;
      v1 = v52;
      v21 = v59;
      goto LABEL_9;
    }

    v1 = v52;
    v21 = v59;
  }

  *v20 = 7104878;
  v24 = 0xE300000000000000;
LABEL_9:
  *(v14 + 80) = v24;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v25 = v57;
  sub_1000FAD5C(v16, v57);
  v26 = &selRef_btManagerAvailableSemaphore;
  if (v18(v25, 1, v4) == 1)
  {
    sub_10003DD84(v25, &qword_1001FDF40);
  }

  else
  {
    v27 = v55;
    v28 = v58;
    (*(v55 + 32))(v58, v25, v4);
    v29 = v53;
    (*(v27 + 16))(v53, v28, v4);
    sub_1000B0044(v29, v21);
    v30 = v54;
    v31 = *(v21 + *(v54 + 36));
    if ([v31 destination] - 1 > 3)
    {
      v59 = v4;
      v38 = *(v21 + *(v30 + 32));
      v39 = v1;
      *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions) = v38;

      if (v38)
      {
        if (*(v38 + 16))
        {
          Hasher.init(_seed:)();
          String.hash(into:)();
          v40 = Hasher._finalize()();
          v41 = -1 << *(v38 + 32);
          v42 = v40 & ~v41;
          if ((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
          {
            v43 = ~v41;
            while (*(*(v38 + 48) + v42) != 1)
            {
              v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v44)
              {
                goto LABEL_24;
              }

              v42 = (v42 + 1) & v43;
              if (((*(v38 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
              {
                goto LABEL_25;
              }
            }

LABEL_24:
            v45 = [objc_opt_self() defaultCenter];
            v46 = String._bridgeToObjectiveC()();
            [v45 postNotificationName:v46 object:0];
          }
        }
      }

LABEL_25:
      v1 = v39;
      sub_1000F590C(v21);
      (*(v55 + 8))(v58, v59);
      v26 = &selRef_btManagerAvailableSemaphore;
    }

    else
    {
      v32 = v21;
      v33 = v4;
      if (qword_1001FC6A0 != -1)
      {
        swift_once();
      }

      v34 = *(v27 + 8);
      v35 = qword_10020A358;
      v34(v58, v33);
      v36 = *&v35[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow];
      *&v35[OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow] = v31;
      v37 = v31;

      v21 = v32;
    }

    sub_1000FACAC(v21);
  }

  if (qword_1001FC708 != -1)
  {
    swift_once();
  }

  v47 = qword_10020A3A8;
  v48 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter + 8);
  v49 = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter + 16);
  *(qword_10020A3A8 + 16) = *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter);
  *(v47 + 24) = v48;
  *(v47 + 32) = v49;

  v50 = [objc_opt_self() defaultCenter];
  if (qword_1001FC710 != -1)
  {
    swift_once();
  }

  [v50 v26[339]];

  if (*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_firstActionTaken))
  {
    sub_1000F8F98();
  }

  else
  {
    sub_1000F6048();
  }
}

uint64_t sub_1000F590C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LaunchURL();
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + *(v7 + 28));
  v9 = v8[1];
  if (!v9)
  {
    v16 = objc_opt_self();
    v17 = [v16 standardUserDefaults];
    v18 = [v17 stringForKey:@"currentTicketNumber"];

    if (v18)
    {
      v55 = v2;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      sub_10003C49C(&unk_1001FEAD0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_10017EC10;
      *(v22 + 56) = &type metadata for String;
      v23 = sub_10003DFBC();
      *(v22 + 64) = v23;
      *(v22 + 32) = v19;
      *(v22 + 40) = v21;

      v24 = URL.absoluteString.getter();
      *(v22 + 96) = &type metadata for String;
      *(v22 + 104) = v23;
      *(v22 + 72) = v24;
      *(v22 + 80) = v25;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v26 = [v16 standardUserDefaults];

      [v26 removeObjectForKey:@"currentTicketNumber"];

      v2 = v55;
    }

    else
    {
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      sub_10003C49C(&unk_1001FEAD0);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10017EC00;
      v51 = URL.absoluteString.getter();
      v53 = v52;
      *(v50 + 56) = &type metadata for String;
      *(v50 + 64) = sub_10003DFBC();
      *(v50 + 32) = v51;
      *(v50 + 40) = v53;
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }

    sub_1000FAC48(a1, v6);
    v54 = *&v6[*(v4 + 20)];
    v48 = *&v6[*(v4 + 24)];

    sub_1000FACAC(v6);
    v49 = v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter;
    *(v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter) = v54;
    goto LABEL_27;
  }

  v10 = *v8;
  if (qword_10020A508 && (v10 == qword_10020A500 ? (v11 = v9 == qword_10020A508) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10017EC00;
    v13 = URL.absoluteString.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_10003DFBC();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_10017EC00;
    v28 = URL.absoluteString.getter();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_10003DFBC();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v31 = [objc_opt_self() standardUserDefaults];
    v32 = String._bridgeToObjectiveC()();
    [v31 setObject:v32 forKey:@"currentTicketNumber"];
  }

  qword_10020A500 = v10;
  qword_10020A508 = v9;

  if ((sub_1000E6AB8() & 1) == 0)
  {
    v38 = [objc_allocWithZone(DADeviceLocal) init];
    v39 = [v38 state];

    v40 = [v39 serialNumber];
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    sub_10003C49C(&qword_100201290);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EC00;
    *(inited + 32) = v41;
    v45 = inited + 32;
    *(inited + 40) = v43;
    v46 = sub_1000F7AB4(inited);
    swift_setDeallocating();
    sub_1000FAD08(v45);
    v47 = sub_1000F1B58(v46);

    v48 = sub_1000F7A18(v47);

    v49 = v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter;
    *(v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter) = &_swiftEmptySetSingleton;
LABEL_27:
    *(v49 + 8) = v48;
    *(v49 + 16) = 1;
  }

  v33 = sub_1000F7AB4(&off_1001BE0A0);
  sub_1000FAD08(&unk_1001BE0C0);
  v34 = sub_1000F1B58(v33);

  v35 = sub_1000F7A18(v34);

  v36 = v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter;
  *v36 = &_swiftEmptySetSingleton;
  *(v36 + 8) = v35;
  *(v36 + 16) = 1;
}

void sub_1000F6048()
{
  v1 = v0;
  sub_10003C49C(&unk_1001FEAD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  v4 = sub_10003E110(0, &qword_1001FD6F0);
  *(v2 + 56) = v4;
  v5 = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
  *(v2 + 64) = v5;
  *(v2 + 32) = v3;
  v6 = v3;
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  *(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_firstActionTaken) = 1;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.status.getter();
    v8 = SessionStatus.rawValue.getter();
    if (v8 == SessionStatus.rawValue.getter())
    {
      v9 = 0;
    }

    else
    {
      if (qword_1001FC7C0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = off_100200F00;
      off_100200F00 = 0x8000000000000000;
      v9 = 3;
      sub_100142160(3, 0x6C6172656E6567, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      off_100200F00 = v24;
      swift_endAccess();
    }

    sub_1000F9154(v9);
  }

  if (sub_1000F9498())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10017EC00;
    *(v11 + 56) = v4;
    *(v11 + 64) = v5;
    *(v11 + 32) = v6;
    v12 = v6;
    v13 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    *(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) = 1;
    v14 = sub_100066608();
    type metadata accessor for DashboardViewController();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = [v15 navigationController];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 view];

        if (v18)
        {
          [v18 alpha];
          if (v19 == 0.0)
          {
            v20 = swift_allocObject();
            *(v20 + 16) = v18;
            v21 = objc_opt_self();
            aBlock[4] = sub_10003D8B8;
            aBlock[5] = v20;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100031FA8;
            aBlock[3] = &unk_1001C5CA8;
            v22 = _Block_copy(aBlock);
            v23 = v18;

            [v21 animateWithDuration:0x10000 delay:v22 options:0 animations:0.375 completion:0.0];
            _Block_release(v22);

LABEL_22:
            sub_1000F8F98();
            return;
          }
        }
      }
    }

    goto LABEL_22;
  }
}

void sub_1000F64F4(unsigned __int8 a1, void *a2)
{
  v3 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 1)
  {
    sub_10003E110(0, &qword_1001FD040);
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    aBlock[4] = sub_1000FAB84;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C5CF8;
    v14 = _Block_copy(aBlock);
    v15 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_1000F6794()
{
  v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v1 & 1) == 0)
  {
    v2 = [objc_opt_self() sharedInstance];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 homeButtonType];

      if (v4 == 2)
      {
        v5 = [objc_opt_self() sharedInstance];
        v6 = [v5 beginConsumingPressesForButtonKind:2 eventConsumer:v0 priority:0];

        *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_lockButtonConsumer) = v6;

        swift_unknownObjectRelease();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000F68C0()
{
  v1 = v0;
  sub_10003C49C(&unk_1001FEAD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0);
  *(v2 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_inactivityTimer;
  [*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_inactivityTimer) invalidate];
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;
}

id sub_1000F6A28()
{
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_enhancedLoggingLaunchActions] = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController;
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A380;
  *&v0[v1] = qword_10020A380;
  v3 = &v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter];
  *v3 = &_swiftEmptySetSingleton;
  *(v3 + 1) = &_swiftEmptySetSingleton;
  v3[16] = 1;
  v4 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor;
  v5 = objc_allocWithZone(DSHardwareButtonEventMonitor);
  v6 = v2;
  *&v0[v4] = [v5 init];
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_lockButtonConsumer] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_inactivityTimer] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_inactivityTimeInterval] = 0x407E000000000000;
  v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_firstActionTaken] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_wasEverInForeground] = 0;
  v7 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_launcherServiceManager;
  *&v0[v7] = [objc_opt_self() sharedInstance];
  *&v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_1000F6BBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000F6DA8()
{
  if (__OFADD__(qword_100201128, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = v1;
  ++qword_100201128;
  v2 = qword_10020A548;
  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  if (v2)
  {
    if (qword_1001FC7B0 == -1)
    {
LABEL_4:
      v3 = qword_10020A4F8;
      *(v0 + 56) = sub_10003E110(0, &qword_1001FD6F0);
      *(v0 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
      *(v0 + 32) = v3;
      v4 = v3;
      v10 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v5 = v10;
      goto LABEL_8;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v6 = qword_10020A4F8;
  *(v0 + 56) = sub_10003E110(0, &qword_1001FD6F0);
  *(v0 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
  *(v0 + 32) = v6;
  v7 = v6;
  v8 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = dispatch_semaphore_create(0);
  v5 = qword_10020A548;
  qword_10020A548 = v9;
LABEL_8:
}

void sub_1000F6FF8(char a1)
{
  LOBYTE(v1) = a1;
  if (qword_1001FC7B0 != -1)
  {
    goto LABEL_37;
  }

  while (2)
  {
    sub_10003C49C(&unk_1001FEAD0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10017EC00;
    v3 = sub_1000F208C(v1);
    v5 = v4;
    *(v2 + 56) = &type metadata for String;
    *(v2 + 64) = sub_10003DFBC();
    *(v2 + 32) = v3;
    *(v2 + 40) = v5;
    static os_log_type_t.default.getter();
    v6 = 2;
    os_log(_:dso:log:type:_:)();

    v7 = [objc_opt_self() sharedInstance];
    v8 = 0;
    v13 = v7;
    switch(v1)
    {
      case 5:
      case 23:
        v8 = 5;
        goto LABEL_8;
      case 7:
      case 10:
      case 12:
      case 16:
      case 25:
        v8 = 6;
        goto LABEL_8;
      case 8:
      case 11:
      case 24:
        v8 = 4;
        goto LABEL_8;
      case 9:
      case 28:
        v8 = 1;
        goto LABEL_8;
      case 15:
        v6 = 7;
        goto LABEL_25;
      case 17:
        v6 = 12;
        goto LABEL_25;
      case 18:
        v6 = 8;
        goto LABEL_25;
      case 19:
        v6 = 9;
        goto LABEL_25;
      case 20:
        v6 = 10;
        goto LABEL_25;
      case 21:
        v6 = 11;
        goto LABEL_25;
      case 22:
LABEL_25:
        [v7 informExitingForReason:v6];
        goto LABEL_26;
      case 26:
      case 27:
        v8 = 3;
        goto LABEL_8;
      default:
LABEL_8:
        [v7 informExitingForReason:v8];
        if (v1 > 6u)
        {
          if (((1 << v1) & 0x1FFFF600) != 0)
          {
LABEL_26:
            if (sub_1000660CC())
            {
LABEL_11:
              if (sub_1000660CC())
              {
                type metadata accessor for RootViewController();
                sub_100060770(v1);
              }

              else
              {
                v9 = UIApp;
                if (!UIApp)
                {
                  __break(1u);
                  JUMPOUT(0x1000F7320);
                }

LABEL_14:
                v10 = v9;
                [v10 suspend];
              }

              goto LABEL_28;
            }
          }

          else if (((1 << v1) & 0x900) != 0)
          {
            goto LABEL_11;
          }

          type metadata accessor for AppDelegate();
          sub_1000F1D80();
          goto LABEL_28;
        }

        if (v1 - 1 < 5)
        {
          goto LABEL_26;
        }

        if (!v1)
        {
          v1 = objc_opt_self();
          v11 = [objc_msgSend(v1 "currentPlatform")];
          swift_unknownObjectRelease();
          if (v11)
          {
            v12 = [v1 currentPlatform];
            goto LABEL_32;
          }

          if (sub_1000660CC())
          {
            sub_100066220();
            goto LABEL_28;
          }

          v9 = UIApp;
          if (UIApp)
          {
            goto LABEL_14;
          }

          __break(1u);
LABEL_37:
          swift_once();
          continue;
        }

        v12 = [objc_opt_self() currentPlatform];
LABEL_32:
        [v12 exitCheckerBoard];
        swift_unknownObjectRelease();
LABEL_28:

        return;
    }
  }
}

uint64_t sub_1000F73AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F73EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F7404()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F743C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000F46C8();
}

void sub_1000F74E8(unsigned __int8 a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 0xFu)
  {
    if (a1 == 14)
    {
      if (qword_1001FC840 != -1)
      {
        swift_once();
      }

      v18 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
      if (v18)
      {
        [v18 setResultCode:-4];
      }

      v11 = 14;
      goto LABEL_27;
    }

    if (a1 == 15)
    {
      v11 = 15;
LABEL_27:

      sub_1000F6FF8(v11);
      return;
    }

LABEL_12:
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v17 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    if (v17)
    {
      [v17 setResultCode:-1];
    }

    v11 = a1;
    goto LABEL_27;
  }

  if (a1 == 18)
  {
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v19 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    if (v19)
    {
      [v19 setResultCode:-2];
    }

    v11 = 18;
    goto LABEL_27;
  }

  if (a1 != 16)
  {
    goto LABEL_12;
  }

  if (qword_1001FC840 != -1)
  {
    v20 = v8;
    swift_once();
    v8 = v20;
  }

  v12 = v8;
  v13 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v13)
  {
    [v13 setResultCode:-1];
  }

  sub_10003E110(0, &qword_1001FD040);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = 16;
  aBlock[4] = sub_1000F797C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C5BB8;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v10, v12);
}

uint64_t sub_1000F798C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1000681EC(v4, v5);
      sub_100108B3C(v6, v5);
      sub_10003DB48(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000F7A18(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000AF790();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100078568(v6, *v4);
      sub_100108EC8(v7, v6, v5);
      sub_1000784F0(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000F7AB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100109418(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000F7B4C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000F2784;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C6298;
  v9 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000F7DB4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000F7DEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000494BC;

  return sub_1000F4B3C(a1, v4, v5, v6);
}

uint64_t sub_1000F7EA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_1000F4ED8(a1, v4, v5, v6);
}

void sub_1000F7F54()
{
  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A4F8;
  *(v0 + 56) = sub_10003E110(0, &qword_1001FD6F0);
  *(v0 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
  *(v0 + 32) = v1;
  v2 = v1;
  v3 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v4 = qword_10020A548;
  qword_10020A548 = 0;

  qword_100201128 = 0;
}

uint64_t sub_1000F80A0()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

void sub_1000F80F4()
{
  if (qword_100201120 != 2)
  {
LABEL_7:
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    [qword_10020A380 setNeedsUpdateOfSupportedInterfaceOrientations];
    return;
  }

  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (!v1)
  {
    return;
  }

  type metadata accessor for AppDelegate();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_window);
    if (v3)
    {
      v4 = [v3 windowScene];
      if (v4)
      {
        v5 = v4;
        v6 = [objc_allocWithZone(UIWindowSceneGeometryPreferencesIOS) initWithInterfaceOrientations:2];
        v8[4] = sub_1000F2620;
        v8[5] = 0;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_1000F271C;
        v8[3] = &unk_1001C6350;
        v7 = _Block_copy(v8);
        [v5 requestGeometryUpdateWithPreferences:v6 errorHandler:v7];
        _Block_release(v7);
        swift_unknownObjectRelease();

        goto LABEL_7;
      }
    }
  }

  swift_unknownObjectRelease();
}

id sub_1000F82D4(uint64_t a1, void *a2)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017EC10;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10003DFBC();
  *(v4 + 32) = 0xD00000000000001FLL;
  *(v4 + 40) = 0x8000000100191E20;
  *(v4 + 96) = sub_10003E110(0, &qword_1002012A8);
  *(v4 + 104) = sub_1000AC8BC(&qword_1002012B0, &qword_1002012A8);
  *(v4 + 72) = a2;
  v5 = a2;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v6 = qword_10020A368;
  v7 = qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_motionCuesUserSetting;
  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_motionCuesUserSetting + 4) == 1)
  {
    *v7 = _AXSMotionCuesMode();
    *(v7 + 4) = 0;
  }

  _AXSSetMotionCuesModeAndShowBanner();
  v8 = OBJC_IVAR____TtC11Diagnostics10Assertions_assistiveTouchUserSetting;
  if (v6[OBJC_IVAR____TtC11Diagnostics10Assertions_assistiveTouchUserSetting] == 2)
  {
    v6[v8] = _AXSAssistiveTouchEnabled() != 0;
  }

  _AXSAssistiveTouchSetEnabled();
  v9 = [objc_opt_self() sharedApplication];
  [v9 setIdleTimerDisabled:1];

  v10 = v6[OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled];
  v6[OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled] = 0;
  if (v10 == 1)
  {
    SBSSpringBoardServerPort();
    SBSetVoiceControlEnabled();
  }

  v11 = *&v6[OBJC_IVAR____TtC11Diagnostics10Assertions_preventProxCardsQueue];
  v12 = swift_allocObject();
  v12[2] = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000FADEC;
  *(v13 + 24) = v12;
  v36 = sub_10003E41C;
  v37 = v13;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100060C48;
  v35 = &unk_1001C6108;
  v14 = _Block_copy(&v32);
  v15 = v6;

  dispatch_sync(v11, v14);
  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v12 = [objc_opt_self() defaultCenter];
    if (qword_1001FC850 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v16 = qword_10020A650;
  v17 = [objc_opt_self() mainQueue];
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  v36 = sub_1000FADF4;
  v37 = v18;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100060B2C;
  v35 = &unk_1001C6158;
  v19 = _Block_copy(&v32);
  v20 = v2;

  v21 = [v12 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();

  LOBYTE(v17) = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v17 & 1) == 0)
  {
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v23 = result;
    v24 = [result homeButtonType];

    if (v24 != 2)
    {
      [*&v20[OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor] addTarget:v20 action:"consume:" forButtonEvents:62914563 propagate:0];
    }
  }

  objc_opt_self();
  v25 = [objc_allocWithZone(UIWindow) initWithWindowScene:swift_dynamicCastObjCClassUnconditional()];
  v26 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_window;
  v27 = *&v20[OBJC_IVAR____TtC11Diagnostics11AppDelegate_window];
  *&v20[OBJC_IVAR____TtC11Diagnostics11AppDelegate_window] = v25;
  v28 = v25;

  if (v28)
  {
    [v28 setRootViewController:*&v20[OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController]];
  }

  [*&v20[v26] makeKeyAndVisible];
  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  *(v29 + 24) = v5;
  v30 = v5;
  v31 = v20;
  sub_100061268(sub_1000FAE3C);
}

void sub_1000F896C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() _configurationWithPhysicalButton:3 behavior:1 behaviorOptions:0];
  sub_10003C49C(&unk_1001FD020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EBF0;
  *(inited + 32) = v4;
  v6 = v4;
  sub_100150354(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = objc_allocWithZone(_UIPhysicalButtonInteraction);
  sub_10003E110(0, &qword_1002012D0);
  sub_1000AC8BC(&qword_1002012D8, &qword_1002012D0);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithConfigurations:isa delegate:a2];

  [a1 addInteraction:v9];
}

void sub_1000F8AF8()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100066608();
  v9 = type metadata accessor for DashboardViewController();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    v10 = [objc_allocWithZone(v9) initWithStyle:1];
  }

  v11 = sub_100066608();
  sub_10003E110(0, &qword_1001FDE30);
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    v26 = v1;
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    sub_10003E110(0, &qword_1001FD040);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    v31 = sub_10003E0BC;
    v32 = v14;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100031FA8;
    v30 = &unk_1001C5D70;
    v15 = _Block_copy(&aBlock);
    v16 = v10;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v26 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }

  v17 = [v10 navigationController];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 view];

    if (v19)
    {
      [v19 alpha];
      if (v20 == 0.0)
      {
        v21 = swift_allocObject();
        *(v21 + 16) = v19;
        v22 = objc_opt_self();
        v31 = sub_10003E440;
        v32 = v21;
        aBlock = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_100031FA8;
        v30 = &unk_1001C5DC0;
        v23 = _Block_copy(&aBlock);
        v24 = v19;

        [v22 animateWithDuration:0x10000 delay:v23 options:0 animations:0.375 completion:0.0];
        _Block_release(v23);

        return;
      }
    }
  }
}

void sub_1000F8F98()
{
  v7 = sub_100066608();
  type metadata accessor for DashboardViewController();
  v0 = swift_dynamicCastClass();
  if (v0 && *(*(v0 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager) + OBJC_IVAR____TtC11Diagnostics11CardManager_persistentOnly) == 1)
  {
    v1 = v0;
    sub_10003C49C(&unk_1001FEAD0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v3 = qword_10020A4F8;
    *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v2 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
    *(v2 + 32) = v3;
    v4 = v3;
    v5 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v6 = v7;
    sub_1000E8994(0, 0, v1);
  }
}

uint64_t sub_1000F9154(uint64_t result)
{
  if (result == 3)
  {
    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 >= 6)
    {
      if (qword_1001FC7E8 != -1)
      {
        swift_once();
      }

      result = SessionManager.currentSession.getter();
      if (result)
      {
        if ((Session.status.getter() & 0xFFFFFFFFFFFFFFFELL) == 6)
        {
          if (qword_1001FC7B0 != -1)
          {
            swift_once();
          }

          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();
          if (qword_1001FC6C8 != -1)
          {
            swift_once();
          }

          v1 = qword_10020A380;
          v2 = sub_100060D74();
          v3 = [v2 navigationItem];

          [v3 setHidesBackButton:1];
          v4 = OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController;
          [*&v1[OBJC_IVAR___DARootViewController____lazy_storage___enhancedLoggingCompletedNavigationController] setModalPresentationStyle:0];
          [v1 presentViewController:*&v1[v4] animated:0 completion:0];
          v5 = qword_10020A358;
          *(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason) = 3;
          v6 = v5;
          v7 = sub_100030C9C();
          v8 = swift_allocObject();
          *(v8 + 16) = v6;
          v9 = v6;
          sub_100039B84(v7, 0, sub_10003E1B0, v8);
        }

        else
        {
          sub_1000F8AF8();
          sub_1000F8F98();
        }
      }
    }

    else
    {
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      static os_log_type_t.default.getter();

      return os_log(_:dso:log:type:_:)();
    }
  }

  return result;
}

uint64_t sub_1000F9498()
{
  v0 = objc_opt_self();
  v1 = [objc_msgSend(v0 "currentPlatform")];
  swift_unknownObjectRelease();
  if (v1)
  {
    return 1;
  }

  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = [v3 BOOLForKey:@"SkipTermsAndConditions"];

  if (v4)
  {
    return 1;
  }

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 BOOLForKey:v8];

    if (v9)
    {
      return 1;
    }
  }

  v10 = [v2 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  if (v12)
  {
    return 1;
  }

  v14 = [objc_msgSend(v0 "currentPlatform")];
  swift_unknownObjectRelease();
  return v14;
}

void *sub_1000F9680(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10017EC00;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_10003DFBC();
  *(v12 + 32) = 0xD000000000000019;
  *(v12 + 40) = 0x8000000100191DE0;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  result = sub_10012570C(a1);
  if (result)
  {
    v14 = result;
    v15 = [result URL];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(v11, v8, v5);
    (*(v6 + 16))(v4, v11, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    sub_1000F51C4(v4);
    sub_10003DD84(v4, &qword_1001FDF40);
    return (*(v6 + 8))(v11, v5);
  }

  return result;
}

void sub_1000F994C()
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017EC00;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_10003DFBC();
  *(v1 + 32) = 0xD00000000000001CLL;
  *(v1 + 40) = 0x8000000100191DC0;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground) = 1;
  sub_1000F2D90(v2);
  sub_100061268(0);
  if ((*(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_wasEverInForeground) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_wasEverInForeground) = 1;
    if (qword_1001FC708 != -1)
    {
      swift_once();
    }

    v3 = qword_10020A3A8;
    v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter + 8);
    v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter + 16);
    *(qword_10020A3A8 + 16) = *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_nativeCardFilter);
    *(v3 + 24) = v4;
    *(v3 + 32) = v5;

    v6 = [objc_opt_self() defaultCenter];
    if (qword_1001FC710 != -1)
    {
      swift_once();
    }

    [v6 postNotificationName:qword_10020A3B0 object:0];
  }

  sub_1000F8F98();
}

void sub_1000F9B80()
{
  v1 = v0;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_10003DFBC();
  *(v2 + 32) = 0xD00000000000001BLL;
  *(v2 + 40) = 0x8000000100191DA0;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_isApplicationInForeground) = 0;
  sub_1000F2D90(v3);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100125DD8(0, 0);
  swift_endAccess();
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A368;
  v5 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
  *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled) = (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState) & 1) == 0;
  v6 = sub_100050814();
  [v6 setNearbySharingEnabled:(*(v4 + v5) & 1) == 0];

  v7 = sub_100050814();
  [v7 setDiscoverableMode:*(v4 + OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting)];

  [*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_launcherServiceManager) informExitingForReason:0];
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_activeCardCount) <= 0)
  {
    sub_1000F6FF8(12);
  }
}

void sub_1000F9F38()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  [v1 setInteger:0 forKey:@"InCurrentSession"];

  v2 = [v0 standardUserDefaults];
  v3 = [v2 stringForKey:@"currentTicketNumber"];

  if (v3)
  {

    v4 = [v0 standardUserDefaults];
    [v4 removeObjectForKey:@"currentTicketNumber"];
  }
}

void sub_1000FA658(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 BOOLForKey:v2];

    if ((v3 & 1) == 0)
    {
      v4 = [objc_msgSend(objc_opt_self() "currentPlatform")];
      swift_unknownObjectRelease();
      if ((v4 & 1) == 0)
      {
        sub_10003C49C(&unk_1001FEAD0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_10017EC00;
        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        v6 = qword_10020A4F8;
        *(v5 + 56) = sub_10003E110(0, &qword_1001FD6F0);
        *(v5 + 64) = sub_1000AC8BC(&qword_100201280, &qword_1001FD6F0);
        *(v5 + 32) = v6;
        v7 = v6;
        v8 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        sub_100088E48(0, 0);
      }
    }
  }
}

void sub_1000FA868(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 BOOLForKey:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [objc_msgSend(objc_opt_self() "currentPlatform")];
      swift_unknownObjectRelease();
      if ((v13 & 1) == 0)
      {
        sub_10003E110(0, &qword_1001FD040);
        v14 = static OS_dispatch_queue.main.getter();
        aBlock[4] = sub_1000F6CCC;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031FA8;
        aBlock[3] = &unk_1001C5C58;
        v15 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10005BD2C();
        sub_10003C49C(&unk_1001FD050);
        sub_1000446A0();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v15);

        (*(v3 + 8))(v5, v2);
        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

uint64_t sub_1000FABC8()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FAC10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FAC48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchURL();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FACAC(uint64_t a1)
{
  v2 = type metadata accessor for LaunchURL();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FAD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FDF40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FADFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FAE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FDF40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExitReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FB008()
{
  result = qword_1002012E0;
  if (!qword_1002012E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002012E0);
  }

  return result;
}

void sub_1000FB158()
{
  v1 = OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget];
  [v0 progress];
  if (v3 < v2)
  {
    v4 = *&v0[v1];
    v5 = OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTimer;
    [*&v0[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTimer] invalidate];
    if (v4 >= 1.0)
    {
      LODWORD(v6) = *&v0[v1];

      [v0 setProgress:1 animated:v6];
    }

    else
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v4;
      v13[4] = sub_1000FB660;
      v13[5] = v9;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 1107296256;
      v13[2] = sub_100072168;
      v13[3] = &unk_1001C63C8;
      v10 = _Block_copy(v13);

      v11 = [v7 scheduledTimerWithTimeInterval:1 repeats:v10 block:0.0166666667];
      _Block_release(v10);
      v12 = *&v0[v5];
      *&v0[v5] = v11;
    }
  }
}

void sub_1000FB314(float a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressSpeed] * 0.016667;
    if (Strong[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_asymptotic] == 1)
    {
      v4 = Strong;
      [Strong progress];
      Strong = v4;
      v3 = v3 * ((a1 - v5) * 10.0);
    }

    v6 = Strong;
    [v6 progress];
    *&v8 = v3 + v7;
    [v6 setProgress:v8];
  }
}

id sub_1000FB4A8(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressSpeed] = 1007192201;
  v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_asymptotic] = 1;
  *&v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTimer] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_timerUpdateInterval] = 0x3F91111111111111;
  *&v1[OBJC_IVAR____TtC11Diagnostics17FluidProgressView_progressTarget] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FluidProgressView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000FB588()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FluidProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000FB5F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FB628()
{

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_1000FB66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FB684@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003C49C(&qword_100201340);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  sub_100044704(v1 + *(v10 + 20), v9, &qword_100201340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_1000FB88C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView() + 24);
  v7 = *v5;
  v6 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    return *v5;
  }

  static os_log_type_t.fault.getter();
  v9 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000FD264(v7, v6, 0);
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t sub_1000FB9F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = 0x4044000000000000;
  v10 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  v11 = v10[5];
  *(a5 + v11) = swift_getKeyPath();
  sub_10003C49C(&qword_100201340);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[6];
  *v12 = swift_getKeyPath();
  *(v12 + 1) = 0;
  v12[16] = 0;
  *(a5 + v10[8]) = a1;
  if (a1 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 <= a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = a2;
  }

  v15 = a5 + v10[10];
  *(a5 + v10[9]) = v14;
  *v15 = a3;
  v15[8] = a4 & 1;
  if ((a4 & 1) != 0 || a3 > 0x18 || ((1 << a3) & 0x1010100) == 0)
  {
    v16 = v10[7];
  }

  else
  {
    v16 = v10[7];
  }

  State.init(wrappedValue:)();
  v17 = a5 + v16;
  *v17 = v19;
  *(v17 + 1) = v20;
  [objc_msgSend(objc_opt_self() "currentPlatform")];
  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for SelfServiceInstructionsFullScreenViewerView()
{
  result = qword_1002013A8;
  if (!qword_1002013A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1000FBBE0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v30 = static Color.black.getter();
  v29 = static SafeAreaRegions.all.getter();
  v28 = static Edge.Set.all.getter();
  v7 = static Alignment.center.getter();
  v9 = v8;
  v26 = v2;
  sub_1000FBF58(v2, &v32);
  v46[10] = v42;
  v46[11] = v43;
  v46[6] = v38;
  v46[7] = v39;
  v46[8] = v40;
  v46[9] = v41;
  v46[2] = v34;
  v46[3] = v35;
  v46[4] = v36;
  v46[5] = v37;
  v46[0] = v32;
  v46[1] = v33;
  *(&v45[10] + 7) = v42;
  *(&v45[11] + 7) = v43;
  *(&v45[6] + 7) = v38;
  *(&v45[7] + 7) = v39;
  *(&v45[8] + 7) = v40;
  *(&v45[9] + 7) = v41;
  *(&v45[2] + 7) = v34;
  *(&v45[3] + 7) = v35;
  *(&v45[4] + 7) = v36;
  *(&v45[5] + 7) = v37;
  *(v45 + 7) = v32;
  *&v47 = v44;
  *(&v47 + 1) = v7;
  *(&v45[1] + 7) = v33;
  *(&v45[12] + 7) = v47;
  v49[10] = v42;
  v49[11] = v43;
  v49[6] = v38;
  v49[7] = v39;
  v49[9] = v41;
  v49[8] = v40;
  v49[2] = v34;
  v49[3] = v35;
  v49[4] = v36;
  v49[5] = v37;
  v48 = v9;
  *(&v45[13] + 7) = v9;
  v49[0] = v32;
  v49[1] = v33;
  v50 = v44;
  v51 = v7;
  v52 = v9;
  sub_100044704(v46, &v31, &qword_100201420);
  sub_1000FD194(v49);
  v10 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FD1FC(v2, v10);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = swift_allocObject();
  sub_1000FD270(v10, v27 + v11);
  v12 = [objc_opt_self() defaultCenter];
  v13 = sub_10003C49C(&qword_100201428);
  NSNotificationCenter.publisher(for:object:)();

  sub_1000FD1FC(v26, v10);
  v14 = swift_allocObject();
  sub_1000FD270(v10, v14 + v11);
  v15 = v45[11];
  *(a1 + 177) = v45[10];
  *(a1 + 193) = v15;
  *(a1 + 209) = v45[12];
  *(a1 + 224) = *(&v45[12] + 15);
  v16 = v45[7];
  *(a1 + 113) = v45[6];
  *(a1 + 129) = v16;
  v17 = v45[9];
  *(a1 + 145) = v45[8];
  *(a1 + 161) = v17;
  v18 = v45[3];
  *(a1 + 49) = v45[2];
  *(a1 + 65) = v18;
  v19 = v45[5];
  *(a1 + 81) = v45[4];
  *(a1 + 97) = v19;
  result = *v45;
  v21 = v45[1];
  *(a1 + 17) = v45[0];
  v22 = v29;
  *a1 = v30;
  *(a1 + 8) = v22;
  *(a1 + 16) = v28;
  *(a1 + 33) = v21;
  v23 = v27;
  *(a1 + 240) = sub_1000FD2D4;
  *(a1 + 248) = v23;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v24 = (a1 + *(v13 + 56));
  *v24 = sub_1000FD2EC;
  v24[1] = v14;
  return result;
}

uint64_t sub_1000FBF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_1000FD1FC(a1, &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_1000FD270(&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = v5[12];
  v11 = *(a1 + v5[11]);
  v12 = *(a1 + v10);
  v13 = *(a1 + v10 + 8);

  sub_10012C6B0(v14, sub_1000FD3C8, v9, v11, 0, v12, v13, v39);
  v33 = static SafeAreaRegions.all.getter();
  v32 = static Edge.Set.all.getter();
  v15 = a1 + v5[9];
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v36) = *v15;
  *(&v36 + 1) = v17;
  sub_10003C49C(&qword_100201430);
  State.wrappedValue.getter();
  v18 = v34;
  sub_1000FB88C();
  if (v18 == 1 && qword_1001FC828 != -1)
  {
    swift_once();
  }

  LOBYTE(v36) = v16;
  *(&v36 + 1) = v17;
  State.wrappedValue.getter();
  v19 = v34;
  v20 = sub_1000FB88C();
  if ((v19 & 1) == 0 && qword_1001FC828 != -1)
  {
    v31 = v20;
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v35[7] = v36;
  *&v35[23] = v37;
  *&v35[39] = v38;
  if (v13)
  {
    goto LABEL_8;
  }

  if (v12 == 8 || v12 == 24)
  {
    v21 = 0xBFF921FB54442D18;
    goto LABEL_14;
  }

  if (v12 != 16)
  {
LABEL_8:
    v21 = 0;
  }

  else
  {
    v21 = 0x3FF921FB54442D18;
  }

LABEL_14:
  result = static UnitPoint.center.getter();
  v23 = v39[5];
  *(a2 + 64) = v39[4];
  *(a2 + 80) = v23;
  *(a2 + 96) = v39[6];
  v24 = v39[1];
  *a2 = v39[0];
  *(a2 + 16) = v24;
  v25 = v39[3];
  *(a2 + 32) = v39[2];
  *(a2 + 48) = v25;
  *(a2 + 112) = v33;
  *(a2 + 120) = v32;
  v26 = *v35;
  v27 = *&v35[16];
  v28 = *&v35[32];
  *(a2 + 168) = *&v35[47];
  *(a2 + 153) = v28;
  *(a2 + 137) = v27;
  *(a2 + 121) = v26;
  *(a2 + 176) = v21;
  *(a2 + 184) = v29;
  *(a2 + 192) = v30;
  return result;
}

double sub_1000FC2F0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_1000FD1FC(a1, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1000FD270(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v12 = a1;
  sub_10003C49C(&qword_100201440);
  sub_1000FD62C();
  Button.init(action:label:)();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v9 = a2 + *(sub_10003C49C(&qword_1002014B0) + 36);
  *v9 = a1;
  result = 0.0;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 1;
  return result;
}

uint64_t sub_1000FC474(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  __chkstk_darwin(v6);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[3] = v9;
  v10 = sub_10005BAD0(v14);
  sub_1000FD1FC(a1, v10);
  sub_10003E010(v14, v13);
  if (swift_dynamicCast())
  {
    sub_1000FD36C(v8);
    qword_100201120 = 2;
    sub_1000F80F4();
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v11 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  sub_100044554(v14);
  [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  sub_1000FB684(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

double sub_1000FC69C@<D0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v5 = static Color.white.getter();
  v6 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = static Color.black.getter();
  v8 = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v10;
  *(a1 + 56) = v11;
  result = *&v12;
  *(a1 + 72) = v12;
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  return result;
}

uint64_t sub_1000FC78C(uint64_t a1)
{
  v2 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  __chkstk_darwin(v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003E110(0, &qword_100201438);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [ObjCClassFromMetadata appearance];
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  [v6 setCurrentPageIndicatorTintColor:v8];

  v9 = [ObjCClassFromMetadata appearance];
  v10 = [v7 whiteColor];
  v11 = [v10 colorWithAlphaComponent:0.5];

  [v9 setPageIndicatorTintColor:v11];
  v16[3] = v2;
  v12 = sub_10005BAD0(v16);
  sub_1000FD1FC(a1, v12);
  sub_10003E010(v16, v15);
  if (swift_dynamicCast())
  {
    sub_1000FD36C(v4);
    qword_100201120 = 30;
    sub_1000F80F4();
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  return sub_100044554(v16);
}

void sub_1000FC9D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView() + 40) + 8) == 1)
  {
    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 connectedScenes];

    sub_10003E110(0, &qword_1001FD3F0);
    sub_10004A2B8();
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = a2;
    if ((v5 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v7 = v25;
      v6 = v26;
      v8 = v27;
      v9 = v28;
      v10 = v29;
    }

    else
    {
      v11 = -1 << *(v5 + 32);
      v6 = v5 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(v5 + 56);

      v9 = 0;
      v7 = v5;
    }

    v14 = (v8 + 64) >> 6;
    if (v7 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (v10)
    {
LABEL_13:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (v19)
      {
        while ([v19 activationState])
        {

          v9 = v17;
          v10 = v18;
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          if (__CocoaSet.Iterator.next()())
          {
            swift_dynamicCast();
            v19 = v24;
            v17 = v9;
            v18 = v10;
            if (v24)
            {
              continue;
            }
          }

          goto LABEL_20;
        }

        sub_10004A320();

        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = [v20 effectiveGeometry];
          v22 = [v21 interfaceOrientation];

          sub_1000FD35C(v22);

          sub_10003C49C(&qword_100201430);
          State.wrappedValue.setter();
        }
      }

      else
      {
LABEL_20:
        sub_10004A320();
      }
    }

    else
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          goto LABEL_20;
        }

        v16 = *(v6 + 8 * v17);
        ++v15;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1000FCD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003C49C(&qword_100201348);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000FCE20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003C49C(&qword_100201348);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_1000FCEE8()
{
  sub_1000FD05C(319, &qword_1002013B8, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000FD05C(319, &qword_1002013C0, type metadata accessor for CGSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000FD0C0();
      if (v2 <= 0x3F)
      {
        sub_1000FD110();
        if (v3 <= 0x3F)
        {
          sub_1000FD05C(319, &unk_1002013D8, type metadata accessor for UIInterfaceOrientationMask, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000FD05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000FD0C0()
{
  if (!qword_1002013C8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1002013C8);
    }
  }
}

void sub_1000FD110()
{
  if (!qword_1002013D0)
  {
    sub_10003E110(255, &unk_100202950);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1002013D0);
    }
  }
}

uint64_t sub_1000FD194(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_100201420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FD1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FD264(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000FD270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000FD2EC(uint64_t a1)
{
  v3 = *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1000FC9D0(a1, v4);
}

uint64_t sub_1000FD36C(uint64_t a1)
{
  v2 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000FD3C8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000FC2F0(v4, a1);
}

uint64_t sub_1000FD448()
{
  v1 = type metadata accessor for SelfServiceInstructionsFullScreenViewerView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v1 + 20);
  sub_10003C49C(&qword_100201340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_1000FD264(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8), *(v5 + *(v1 + 24) + 16));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000FD5B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SelfServiceInstructionsFullScreenViewerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000FD62C()
{
  result = qword_100201448;
  if (!qword_100201448)
  {
    sub_10003C4E4(&qword_100201440);
    sub_1000FD6E4();
    sub_10005C71C(&qword_1002014A0, &qword_1002014A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201448);
  }

  return result;
}

unint64_t sub_1000FD6E4()
{
  result = qword_100201450;
  if (!qword_100201450)
  {
    sub_10003C4E4(&qword_100201458);
    sub_1000FD79C();
    sub_10005C71C(&qword_1002000A0, &qword_1002000A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201450);
  }

  return result;
}

unint64_t sub_1000FD79C()
{
  result = qword_100201460;
  if (!qword_100201460)
  {
    sub_10003C4E4(&qword_100201468);
    sub_1000FD828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201460);
  }

  return result;
}

unint64_t sub_1000FD828()
{
  result = qword_100201470;
  if (!qword_100201470)
  {
    sub_10003C4E4(&qword_100201478);
    sub_1000FD8E0();
    sub_10005C71C(&qword_1001FF210, &qword_1001FF218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201470);
  }

  return result;
}

unint64_t sub_1000FD8E0()
{
  result = qword_100201480;
  if (!qword_100201480)
  {
    sub_10003C4E4(&qword_100201488);
    sub_10005C71C(&qword_100201490, &qword_100201498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201480);
  }

  return result;
}

uint64_t sub_1000FD9F8()
{
  type metadata accessor for SessionManager();
  swift_allocObject();
  result = SessionManager.init()();
  qword_10020A550 = result;
  return result;
}

id sub_1000FDACC()
{
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_delegate] = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state;
  sub_1000D59EC(_swiftEmptyArrayStorage);
  v2 = objc_allocWithZone(DADeviceState);
  v3 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithSerialNumber:v3 attributes:isa];

  *&v0[v1] = v5;
  v0[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_isLocal] = 1;
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateInterval] = 0x403E000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for DeviceEnhancedLogging();
  v6 = objc_msgSendSuper2(&v10, "init");
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    sub_1000FEEC4(&qword_100201510, v7, type metadata accessor for DeviceEnhancedLogging);
    v6;
    Session.delegate.setter();
    v8 = Session.status.getter();
    sub_1000FDD58(v8);
  }

  return v6;
}

void sub_1000FDD58(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v30 - v11;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
        v36 = sub_1000FE4BC;
        v37 = 0;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v14 = &unk_1001C65A8;
      }

      else
      {
        if (a1 != 7)
        {
          goto LABEL_19;
        }

        v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
        v36 = sub_1000FE4CC;
        v37 = 0;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v14 = &unk_1001C6580;
      }
    }

    else
    {
      v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
      if (a1 == 4)
      {
        v36 = sub_1000FEFA0;
        v37 = 0;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v14 = &unk_1001C65F8;
      }

      else
      {
        v36 = sub_1000FE4AC;
        v37 = 0;
        aBlock = _NSConcreteStackBlock;
        v33 = 1107296256;
        v14 = &unk_1001C65D0;
      }
    }
  }

  else if (a1 > 1)
  {
    v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
    if (a1 == 2)
    {
      v36 = sub_1000FE48C;
      v37 = 0;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v14 = &unk_1001C6648;
    }

    else
    {
      v36 = sub_1000FEFA0;
      v37 = 0;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v14 = &unk_1001C6620;
    }
  }

  else
  {
    if (!a1)
    {
      v15 = &v30 - v11;
      v16 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer;
      [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer] invalidate];
      v17 = *&v1[v16];
      *&v1[v16] = 0;
      v12 = v15;

      goto LABEL_19;
    }

    if (a1 != 1)
    {
      goto LABEL_19;
    }

    v13 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
    v36 = sub_1000FE47C;
    v37 = 0;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v14 = &unk_1001C6670;
  }

  v34 = sub_100072168;
  v35 = v14;
  v18 = _Block_copy(&aBlock);
  [v13 transactionWithBlock:v18];
  _Block_release(v18);
LABEL_19:
  v19 = SessionStatus.rawValue.getter();
  if (v19 == SessionStatus.rawValue.getter())
  {
    v20 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v36 = sub_1000FEEAC;
    v37 = v21;
    v31 = v8;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100072168;
    v35 = &unk_1001C6508;
    v22 = _Block_copy(&aBlock);
    v30 = v7;
    v23 = v1;

    [v20 transactionWithBlock:v22];
    _Block_release(v22);
    sub_100057B68();
    v24 = static OS_dispatch_queue.main.getter();
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v36 = sub_1000FEEB4;
    v37 = v25;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_100031FA8;
    v35 = &unk_1001C6558;
    v26 = _Block_copy(&aBlock);
    v27 = v23;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000FEEC4(&qword_1001FDE60, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v26);

    (*(v4 + 8))(v6, v3);
    (*(v31 + 8))(v12, v30);
  }

  else
  {
    v28 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer;
    [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer] invalidate];
    v29 = *&v1[v28];
    *&v1[v28] = 0;
  }
}

void sub_1000FE4DC(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v8[4] = sub_1000FEEBC;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100072168;
  v8[3] = &unk_1001C66C0;
  v4 = _Block_copy(v8);
  v5 = a1;

  v6 = [v2 scheduledTimerWithTimeInterval:1 repeats:v4 block:30.0];
  _Block_release(v4);
  v7 = *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer];
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer] = v6;
}

void sub_1000FE5F0(uint64_t a1, char *a2)
{
  v3 = *&a2[OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state];
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_1000FEFDC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100072168;
  v7[3] = &unk_1001C6710;
  v5 = _Block_copy(v7);
  v6 = a2;

  [v3 transactionWithBlock:v5];
  _Block_release(v5);
}

id sub_1000FE6D4(void *a1)
{
  v2 = sub_10003C49C(&unk_1001FD540);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  v5 = 0.0;
  if (SessionManager.currentSession.getter())
  {
    Session.projectedCollectionEndDate.getter();

    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_10003DD84(v4, &unk_1001FD540);
    }

    else
    {
      Date.timeIntervalSinceNow.getter();
      v5 = v8;
      (*(v7 + 8))(v4, v6);
    }
  }

  return [a1 setDurationRemaining:v5];
}

id sub_1000FE864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceEnhancedLogging();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000FE918()
{
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 1);
}

void sub_1000FE97C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_state);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v7);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1000FEDE0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100072168;
  aBlock[3] = &unk_1001C64B8;
  v11 = _Block_copy(aBlock);

  [v8 transactionWithBlock:v11];
  _Block_release(v11);
}

uint64_t sub_1000FEB30(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_1000FEB60(uint64_t a1)
{
  v2 = v1;
  if (qword_1001FC7D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10003DAAC(v4, qword_10020A528);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      v10 = v9;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v7 + 4) = v9;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Enhanced logging session ended with error: %@", v7, 0xCu);
    sub_10003DD84(v8, &qword_1001FF0C0);
  }

  v11 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer;
  [*(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer) invalidate];
  v12 = *(v2 + v11);
  *(v2 + v11) = 0;

  if (a1)
  {
    swift_errorRetain();
    v13 = sub_1000B99C8(a1, sub_1000FE918, 0);
    [v13 showOnTopWithAnimated:1 completion:0];
  }
}

uint64_t sub_1000FED58()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

id sub_1000FEDE0(void *a1)
{
  type metadata accessor for Date();
  Date.timeIntervalSinceNow.getter();

  return [a1 setDurationRemaining:?];
}

uint64_t sub_1000FEE5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FEE74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FEEC4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1000FEF20()
{
  result = qword_100201518;
  if (!qword_100201518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201518);
  }

  return result;
}

uint64_t sub_1000FF0D4()
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  result = SessionManager.currentSession.getter();
  if (result)
  {
    Session.attachConsentForm(data:)();
  }

  return result;
}

id sub_1000FF2D0(void *a1, uint64_t a2)
{
  if (a1[1])
  {
    v3 = a1[3];
    v4 = a1[4];
    v5 = a1[2];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v17 = objc_opt_self();
    sub_1001003A0(a1, v29);
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v17 _systemImageNamed:v18 fallback:v19];

    if (!v20)
    {
      goto LABEL_14;
    }

    v9 = [v20 imageWithTintColor:v3];

    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    v21 = [objc_opt_self() configurationWithFont:v5];
    v22 = [v9 imageWithConfiguration:v21];

    return v22;
  }

  if (qword_1001FC808 != -1)
  {
    v28 = a2;
    swift_once();
    a2 = v28;
  }

  v10 = qword_10020A570;
  if (!*(qword_10020A570 + 16) || (v11 = sub_100068EB8(a2), (v12 & 1) == 0))
  {
    sub_10003C49C(&unk_1001FEAD0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v25 = qword_10020A4F8;
    *(v24 + 56) = sub_1000AF424();
    *(v24 + 64) = sub_1000516BC();
    *(v24 + 32) = v25;
    v26 = v25;
    v27 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  v13 = (*(v10 + 56) + 40 * v11);
  v14 = v13[2];
  v15 = v13[3];
  v4 = v13[4];
  v16 = v4;

  v5 = v14;
  v3 = v15;
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v6 = v4;
  sub_1001003A0(a1, v29);
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() systemImageNamed:v7];

  if (!v8)
  {

    goto LABEL_19;
  }

  v9 = [v8 imageWithTintColor:v6 renderingMode:1];

  if (v9)
  {
    goto LABEL_13;
  }

LABEL_14:

LABEL_19:

  return 0;
}

id sub_1000FF634()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  qword_10020A558 = result;
  return result;
}

id sub_1000FF67C()
{
  result = [objc_allocWithZone(UIColor) initWithWhite:0.607843137 alpha:1.0];
  qword_10020A560 = result;
  return result;
}

id sub_1000FF6BC()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.584313725 blue:0.0 alpha:1.0];
  qword_10020A568 = result;
  return result;
}

void *sub_1000FF704()
{
  result = sub_1000FF724();
  qword_10020A570 = result;
  return result;
}

void *sub_1000FF724()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 userInterfaceLayoutDirection];

  v2 = 0;
  v3 = 0xD00000000000001CLL;
  if (!v1)
  {
    v3 = 0xD00000000000001DLL;
  }

  v107 = v3;
  if (v1)
  {
    v4 = "Failed to load glyph attributes";
  }

  else
  {
    v4 = "arrow.uturn.left.circle.fill";
  }

  v106 = v4 | 0x8000000000000000;
  if (v1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (v1)
  {
    v6 = "arrow.uturn.right.circle.fill";
  }

  else
  {
    v6 = "chevron.left.circle.fill";
  }

  v104 = v6 | 0x8000000000000000;
  v105 = v5;
  while (1)
  {
    v11 = *(&off_1001BDA48 + v2 + 32);
    v12 = objc_opt_self();
    if (v11 > 2)
    {
      break;
    }

    if (v11)
    {
      if (v11 == 1)
      {
        v13 = [v12 systemFontOfSize:22.0];
        v14 = [objc_opt_self() whiteColor];
        if (qword_1001FC7F8 != -1)
        {
          swift_once();
        }

        v15 = qword_10020A560;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = sub_100068EB8(1);
        v27 = *(&_swiftEmptyDictionarySingleton + 2);
        v28 = (v26 & 1) == 0;
        v9 = __OFADD__(v27, v28);
        v29 = v27 + v28;
        if (v9)
        {
          goto LABEL_120;
        }

        v30 = v26;
        if (*(&_swiftEmptyDictionarySingleton + 3) < v29)
        {
          sub_10013FE50(v29, isUniquelyReferenced_nonNull_native);
          v25 = sub_100068EB8(1);
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_127;
          }

          goto LABEL_68;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_68:
          if (v30)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v87 = v25;
          sub_100142F88();
          v25 = v87;
          if (v30)
          {
LABEL_69:
            v78 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v25);
            v79 = v78[2];
            v80 = v78[3];
            v81 = v78[4];
            *v78 = 0xD000000000000010;
            v82 = 0x80000001001922A0;
            goto LABEL_88;
          }
        }

        *(&_swiftEmptyDictionarySingleton + (v25 >> 6) + 8) |= 1 << v25;
        *(*(&_swiftEmptyDictionarySingleton + 6) + v25) = 1;
        v88 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v25);
        *v88 = 0xD000000000000010;
        v88[1] = 0x80000001001922A0;
        v88[2] = v13;
        v88[3] = v14;
        v88[4] = v15;
        v89 = *(&_swiftEmptyDictionarySingleton + 2);
        v9 = __OFADD__(v89, 1);
        v10 = v89 + 1;
        if (v9)
        {
          goto LABEL_123;
        }

        goto LABEL_14;
      }

      v13 = [v12 systemFontOfSize:22.0];
      v14 = [objc_opt_self() whiteColor];
      if (qword_1001FC7F0 != -1)
      {
        swift_once();
      }

      v15 = qword_10020A558;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_100068EB8(2);
      v53 = *(&_swiftEmptyDictionarySingleton + 2);
      v54 = (v52 & 1) == 0;
      v9 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v9)
      {
        goto LABEL_117;
      }

      v56 = v52;
      if (*(&_swiftEmptyDictionarySingleton + 3) < v55)
      {
        sub_10013FE50(v55, v51);
        v17 = sub_100068EB8(2);
        if ((v56 & 1) != (v57 & 1))
        {
          goto LABEL_127;
        }

        goto LABEL_71;
      }

      if (v51)
      {
LABEL_71:
        if (v56)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v90 = v17;
        sub_100142F88();
        v17 = v90;
        if (v56)
        {
          goto LABEL_77;
        }
      }

      *(&_swiftEmptyDictionarySingleton + (v17 >> 6) + 8) |= 1 << v17;
      *(*(&_swiftEmptyDictionarySingleton + 6) + v17) = 2;
      v83 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v17);
      *v83 = 0xD000000000000014;
      v83[1] = 0x8000000100192280;
      v83[2] = v13;
      v83[3] = v14;
      v83[4] = v15;
      v84 = *(&_swiftEmptyDictionarySingleton + 2);
      v9 = __OFADD__(v84, 1);
      v10 = v84 + 1;
      if (v9)
      {
        goto LABEL_125;
      }

      goto LABEL_14;
    }

    v40 = [v12 systemFontOfSize:22.0];
    v41 = [objc_opt_self() whiteColor];
    if (qword_1001FC7F0 != -1)
    {
      swift_once();
    }

    v42 = qword_10020A558;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v44 = sub_100068EB8(0);
    v46 = *(&_swiftEmptyDictionarySingleton + 2);
    v47 = (v45 & 1) == 0;
    v9 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v9)
    {
      goto LABEL_119;
    }

    v49 = v45;
    if (*(&_swiftEmptyDictionarySingleton + 3) >= v48)
    {
      if ((v43 & 1) == 0)
      {
        v86 = v44;
        sub_100142F88();
        v44 = v86;
        if (v49)
        {
LABEL_66:
          v74 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v44);
          v75 = v74[2];
          v76 = v74[3];
          v77 = v74[4];
          *v74 = 0xD000000000000010;
          v74[1] = 0x80000001001922A0;
          v74[2] = v40;
          v74[3] = v41;
          v74[4] = v42;

          goto LABEL_15;
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_10013FE50(v48, v43);
      v44 = sub_100068EB8(0);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_127;
      }
    }

    if (v49)
    {
      goto LABEL_66;
    }

LABEL_13:
    *(&_swiftEmptyDictionarySingleton + (v44 >> 6) + 8) |= 1 << v44;
    *(*(&_swiftEmptyDictionarySingleton + 6) + v44) = 0;
    v7 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v44);
    *v7 = 0xD000000000000010;
    v7[1] = 0x80000001001922A0;
    v7[2] = v40;
    v7[3] = v41;
    v7[4] = v42;
    v8 = *(&_swiftEmptyDictionarySingleton + 2);
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      goto LABEL_121;
    }

LABEL_14:
    *(&_swiftEmptyDictionarySingleton + 2) = v10;
LABEL_15:
    if (++v2 == 7)
    {
      return &_swiftEmptyDictionarySingleton;
    }
  }

  if (v11 > 4)
  {
    if (v11 == 5)
    {
      v13 = [v12 systemFontOfSize:32.0];
      v14 = [objc_opt_self() whiteColor];
      if (qword_1001FC7F8 != -1)
      {
        swift_once();
      }

      v15 = qword_10020A560;
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v33 = sub_100068EB8(5);
      v35 = *(&_swiftEmptyDictionarySingleton + 2);
      v36 = (v34 & 1) == 0;
      v9 = __OFADD__(v35, v36);
      v37 = v35 + v36;
      if (v9)
      {
        goto LABEL_116;
      }

      v38 = v34;
      if (*(&_swiftEmptyDictionarySingleton + 3) < v37)
      {
        sub_10013FE50(v37, v32);
        v33 = sub_100068EB8(5);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_127;
        }

        goto LABEL_79;
      }

      if (v32)
      {
LABEL_79:
        if (v38)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v94 = v33;
        sub_100142F88();
        v33 = v94;
        if (v38)
        {
LABEL_80:
          v78 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v33);
          v79 = v78[2];
          v80 = v78[3];
          v81 = v78[4];
          *v78 = 0xD000000000000011;
          v82 = 0x800000010018CF60;
          goto LABEL_88;
        }
      }

      *(&_swiftEmptyDictionarySingleton + (v33 >> 6) + 8) |= 1 << v33;
      *(*(&_swiftEmptyDictionarySingleton + 6) + v33) = 5;
      v95 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v33);
      *v95 = 0xD000000000000011;
      v95[1] = 0x800000010018CF60;
      v95[2] = v13;
      v95[3] = v14;
      v95[4] = v15;
      v96 = *(&_swiftEmptyDictionarySingleton + 2);
      v9 = __OFADD__(v96, 1);
      v10 = v96 + 1;
      if (v9)
      {
        goto LABEL_124;
      }

      goto LABEL_14;
    }

    v13 = [v12 systemFontOfSize:32.0];
    v14 = [objc_opt_self() whiteColor];
    if (qword_1001FC800 != -1)
    {
      swift_once();
    }

    v15 = qword_10020A568;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v67 = sub_100068EB8(6);
    v69 = *(&_swiftEmptyDictionarySingleton + 2);
    v70 = (v68 & 1) == 0;
    v9 = __OFADD__(v69, v70);
    v71 = v69 + v70;
    if (v9)
    {
      goto LABEL_118;
    }

    v72 = v68;
    if (*(&_swiftEmptyDictionarySingleton + 3) >= v71)
    {
      if ((v66 & 1) == 0)
      {
        v100 = v67;
        sub_100142F88();
        v67 = v100;
        if (v72)
        {
LABEL_86:
          v78 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v67);
          v79 = v78[2];
          v80 = v78[3];
          v81 = v78[4];
          v82 = v106;
          v85 = v107;
LABEL_87:
          *v78 = v85;
LABEL_88:
          v78[1] = v82;
          v78[2] = v13;
          v78[3] = v14;
          v78[4] = v15;

          goto LABEL_15;
        }

        goto LABEL_110;
      }
    }

    else
    {
      sub_10013FE50(v71, v66);
      v67 = sub_100068EB8(6);
      if ((v72 & 1) != (v73 & 1))
      {
        goto LABEL_127;
      }
    }

    if (v72)
    {
      goto LABEL_86;
    }

LABEL_110:
    *(&_swiftEmptyDictionarySingleton + (v67 >> 6) + 8) |= 1 << v67;
    *(*(&_swiftEmptyDictionarySingleton + 6) + v67) = 6;
    v101 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v67);
    *v101 = v107;
    v101[1] = v106;
    v101[2] = v13;
    v101[3] = v14;
    v101[4] = v15;
    v102 = *(&_swiftEmptyDictionarySingleton + 2);
    v9 = __OFADD__(v102, 1);
    v10 = v102 + 1;
    if (v9)
    {
      __break(1u);
      return &_swiftEmptyDictionarySingleton;
    }

    goto LABEL_14;
  }

  if (v11 != 3)
  {
    v13 = [v12 systemFontOfSize:32.0];
    v14 = [objc_opt_self() whiteColor];
    if (qword_1001FC7F0 != -1)
    {
      swift_once();
    }

    v15 = qword_10020A558;
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v59 = sub_100068EB8(4);
    v61 = *(&_swiftEmptyDictionarySingleton + 2);
    v62 = (v60 & 1) == 0;
    v9 = __OFADD__(v61, v62);
    v63 = v61 + v62;
    if (v9)
    {
      goto LABEL_115;
    }

    v64 = v60;
    if (*(&_swiftEmptyDictionarySingleton + 3) >= v63)
    {
      if ((v58 & 1) == 0)
      {
        v97 = v59;
        sub_100142F88();
        v59 = v97;
        if (v64)
        {
LABEL_83:
          v78 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v59);
          v79 = v78[2];
          v80 = v78[3];
          v81 = v78[4];
          v82 = v104;
          v85 = v105;
          goto LABEL_87;
        }

LABEL_106:
        *(&_swiftEmptyDictionarySingleton + (v59 >> 6) + 8) |= 1 << v59;
        *(*(&_swiftEmptyDictionarySingleton + 6) + v59) = 4;
        v98 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v59);
        *v98 = v105;
        v98[1] = v104;
        v98[2] = v13;
        v98[3] = v14;
        v98[4] = v15;
        v99 = *(&_swiftEmptyDictionarySingleton + 2);
        v9 = __OFADD__(v99, 1);
        v10 = v99 + 1;
        if (v9)
        {
          goto LABEL_122;
        }

        goto LABEL_14;
      }
    }

    else
    {
      sub_10013FE50(v63, v58);
      v59 = sub_100068EB8(4);
      if ((v64 & 1) != (v65 & 1))
      {
        goto LABEL_127;
      }
    }

    if (v64)
    {
      goto LABEL_83;
    }

    goto LABEL_106;
  }

  v13 = [v12 systemFontOfSize:22.0];
  v14 = [objc_opt_self() whiteColor];
  if (qword_1001FC7F8 != -1)
  {
    swift_once();
  }

  v15 = qword_10020A560;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v17 = sub_100068EB8(3);
  v19 = *(&_swiftEmptyDictionarySingleton + 2);
  v20 = (v18 & 1) == 0;
  v9 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (!v9)
  {
    v22 = v18;
    if (*(&_swiftEmptyDictionarySingleton + 3) < v21)
    {
      sub_10013FE50(v21, v16);
      v17 = sub_100068EB8(3);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_127;
      }

      goto LABEL_76;
    }

    if (v16)
    {
LABEL_76:
      if (v22)
      {
        goto LABEL_77;
      }
    }

    else
    {
      v91 = v17;
      sub_100142F88();
      v17 = v91;
      if (v22)
      {
LABEL_77:
        v78 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v17);
        v79 = v78[2];
        v80 = v78[3];
        v81 = v78[4];
        *v78 = 0xD000000000000014;
        v82 = 0x8000000100192280;
        goto LABEL_88;
      }
    }

    *(&_swiftEmptyDictionarySingleton + (v17 >> 6) + 8) |= 1 << v17;
    *(*(&_swiftEmptyDictionarySingleton + 6) + v17) = 3;
    v92 = (*(&_swiftEmptyDictionarySingleton + 7) + 40 * v17);
    *v92 = 0xD000000000000014;
    v92[1] = 0x8000000100192280;
    v92[2] = v13;
    v92[3] = v14;
    v92[4] = v15;
    v93 = *(&_swiftEmptyDictionarySingleton + 2);
    v9 = __OFADD__(v93, 1);
    v10 = v93 + 1;
    if (v9)
    {
      goto LABEL_126;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
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
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001003A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100100410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100100458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001004C4()
{
  result = qword_100201528;
  if (!qword_100201528)
  {
    sub_10003C4E4(&qword_100201530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201528);
  }

  return result;
}

unint64_t sub_10010052C()
{
  result = qword_100201538;
  if (!qword_100201538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201538);
  }

  return result;
}

uint64_t sub_100100580(int a1)
{
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        return 0x7674656C707061;
      case 6:
        return 0x6863746177;
      case 11:
        return 0x6E6F69736976;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x656E6F687069;
  }

  result = 1684107369;
  if (a1 == 2)
  {
    return 1685024873;
  }

  if (a1 != 3)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

id sub_100100644()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView);
  [v1 hide];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView);
  v3 = [objc_opt_self() labelColor];
  [v2 setBackgroundColor:v3];

  return [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
}

id sub_1001006FC()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView];

  return [v0 addSubview:v1];
}

void sub_100100758()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100180E60;
  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView];
  v5 = [v4 centerXAnchor];
  v6 = [v1 centerXAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 centerYAnchor];
  v9 = [v1 centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:1.0];

  *(v3 + 40) = v10;
  v11 = [v4 widthAnchor];
  v12 = [v1 widthAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:-12.0];

  *(v3 + 48) = v13;
  v14 = [v4 heightAnchor];
  v15 = [v1 heightAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-12.0];

  *(v3 + 56) = v16;
  v17 = *&v1[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView];
  v18 = [v17 topAnchor];
  v19 = [v1 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v3 + 64) = v20;
  v21 = [v17 bottomAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v3 + 72) = v23;
  v24 = [v17 leadingAnchor];
  v25 = [v1 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v3 + 80) = v26;
  v27 = [v17 trailingAnchor];
  v28 = [v1 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v3 + 88) = v29;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_100100B34(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_yOffset] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_padding] = 0xC028000000000000;
  v9 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView;
  v10 = [objc_opt_self() systemBackgroundColor];
  v11 = [objc_allocWithZone(DACheckAnimationView) initWithColor:v10 lineWidth:2.5 scale:0.33];

  *&v4[v9] = v11;
  v12 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for CheckmarkView();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100100C70(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_yOffset] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_padding] = 0xC028000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView;
  v4 = [objc_opt_self() systemBackgroundColor];
  v5 = [objc_allocWithZone(DACheckAnimationView) initWithColor:v4 lineWidth:2.5 scale:0.33];

  *&v1[v3] = v5;
  v6 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView;
  *&v1[v6] = [objc_allocWithZone(UIView) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CheckmarkView();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

void sub_100100DAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView);
}

id sub_100100DEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CheckmarkView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100100F64(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics15InstructionList_tableView;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC11Diagnostics15InstructionList_instructions] = _swiftEmptyArrayStorage;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InstructionList();
  v4 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_100101044();
  }

  return v5;
}

void sub_100101044()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics15InstructionList_tableView];
  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setDataSource:v0];
  [v1 setDelegate:v0];
  [v1 setScrollEnabled:0];
  [v1 setAllowsSelection:0];
  [v1 setShowsVerticalScrollIndicator:0];
  [v1 setSeparatorStyle:0];
  [v1 setRowHeight:UITableViewAutomaticDimension];
  [v1 setEstimatedRowHeight:0.0];
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v2];

  type metadata accessor for InstructionListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = String._bridgeToObjectiveC()();
  [v1 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10017ED60;
  v7 = [v1 topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v1 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v1 bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

id sub_10010144C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstructionList();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001014F8(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (v4)
  {
    type metadata accessor for InstructionListCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for InstructionListCell();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC11Diagnostics15InstructionList_instructions);
    if (result < *(v7 + 16))
    {
      v8 = v7 + 24 * result;
      v9 = *(v8 + 48);
      v10 = &v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
      v11 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
      v12 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 8];
      v13 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 16];
      v14 = *(v8 + 32);
      *v10 = v14;
      *(v10 + 2) = v9;
      v15 = v14;
      swift_bridgeObjectRetain_n();
      v16 = v15;
      sub_1000A01EC(v11, v12, v13);
      sub_10009F5E8();

      return v5;
    }
  }

  __break(1u);
  return result;
}

id sub_10010178C()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  return v0;
}

void sub_10010181C(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (v4)
  {
    type metadata accessor for InstructionListCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for InstructionListCell();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  v6 = IndexPath.section.getter();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v1 + OBJC_IVAR____TtC11Diagnostics15InstructionList_instructions);
    if (v6 < *(v7 + 16))
    {
      v8 = v7 + 24 * v6;
      v9 = *(v8 + 48);
      v10 = &v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
      v11 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
      v12 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 8];
      v13 = *&v5[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 16];
      v14 = *(v8 + 32);
      *v10 = v14;
      *(v10 + 2) = v9;
      v15 = v14;
      swift_bridgeObjectRetain_n();
      v16 = v15;
      sub_1000A01EC(v11, v12, v13);
      sub_10009F5E8();

      [v5 setNeedsLayout];
      [v5 layoutIfNeeded];
      v17 = [v5 contentView];
      [a1 frame];
      Width = CGRectGetWidth(v21);
      LODWORD(v19) = 1148846080;
      LODWORD(v20) = 1112014848;
      [v17 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v19, v20}];

      return;
    }
  }

  __break(1u);
}

id sub_100101BF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100101C50()
{
  v1 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  [*(v0 + v1) setEstimatedRowHeight:60.0];
  [*(v0 + v1) setRowHeight:UITableViewAutomaticDimension];
  [*(v0 + v1) setSeparatorStyle:1];
  [*(v0 + v1) setDelegate:v0];
  v6 = *(v0 + v1);

  return [v6 setScrollEnabled:0];
}

void sub_100101D4C()
{
  v1 = [v0 contentView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView]];
}

void sub_100101DB0()
{
  v1 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  [*&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 safeAreaLayoutGuide];

  v6 = [v5 topAnchor];
  v7 = [v3 constraintEqualToAnchor:v6];

  *(v2 + 32) = v7;
  v8 = [*&v0[v1] bottomAnchor];
  v9 = [v0 contentView];
  v10 = [v9 safeAreaLayoutGuide];

  v11 = [v10 bottomAnchor];
  v12 = [v8 constraintEqualToAnchor:v11];

  *(v2 + 40) = v12;
  v13 = sub_10014FCF8(&off_1001BDBA8);
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];

  LOBYTE(v14) = sub_1000743A4(v15, v13);

  if (v14)
  {
    v16 = sub_100102050(v0);
  }

  else
  {
    v16 = sub_1001021C8(v0);
  }

  v17 = v16;
  v18 = objc_opt_self();
  sub_100074470(v17);
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];
}

id sub_100102050(char *a1)
{
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  v4 = [*&a1[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] widthAnchor];
  v5 = [a1 contentView];
  v6 = [v5 widthAnchor];

  v7 = [v4 constraintEqualToAnchor:v6 multiplier:0.666666667];
  *(v2 + 32) = v7;
  v8 = [*&a1[v3] centerXAnchor];
  result = [a1 view];
  if (result)
  {
    v10 = result;
    v11 = [result centerXAnchor];

    v12 = [v8 constraintEqualToAnchor:v11];
    *(v2 + 40) = v12;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001021C8(char *a1)
{
  sub_10003C49C(&unk_1001FD020);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017ED90;
  v3 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  v4 = [*&a1[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] leadingAnchor];
  v5 = [a1 contentView];
  v6 = [v5 safeAreaLayoutGuide];

  v7 = [v6 leadingAnchor];
  v8 = [v4 constraintEqualToAnchor:v7 constant:18.0];

  *(v2 + 32) = v8;
  v9 = [*&a1[v3] trailingAnchor];
  v10 = [a1 contentView];
  v11 = [v10 safeAreaLayoutGuide];

  v12 = [v11 trailingAnchor];
  v13 = [v9 constraintEqualToAnchor:v12 constant:-18.0];

  *(v2 + 40) = v13;
  return v2;
}

id sub_100102894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableViewPadding] = 0x4032000000000000;
  *&v7[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_cellHeight] = 0x404E000000000000;
  *&v7[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_fontSizeTableCell] = 0x4031000000000000;
  *&v7[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_fontSizeTableCellDetail] = 0x402A000000000000;
  v11 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  *&v7[v11] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = type metadata accessor for ConsentNoticeTableViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v12, v13, v14, a7);

  return v15;
}

id sub_100102AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableViewPadding] = 0x4032000000000000;
  *&v6[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_cellHeight] = 0x404E000000000000;
  *&v6[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_fontSizeTableCell] = 0x4031000000000000;
  *&v6[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_fontSizeTableCellDetail] = 0x402A000000000000;
  v10 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  *&v6[v10] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v6;
  v15.super_class = type metadata accessor for ConsentNoticeTableViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:icon:contentLayout:", v11, v12, a5, a6);

  return v13;
}

id sub_100102C98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConsentNoticeTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100102D00()
{
  v0 = objc_allocWithZone(UITableViewCell);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithStyle:3 reuseIdentifier:v1];

  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemGroupedBackgroundColor];
  [v4 setBackgroundColor:v5];

  v6 = objc_opt_self();
  v7 = [v6 defaultMetrics];
  v8 = objc_opt_self();
  v9 = [v8 systemFontOfSize:17.0 weight:UIFontWeightBold];
  v10 = [v7 scaledFontForFont:v9];

  v11 = [v4 textLabel];
  if (v11)
  {
    v12 = v11;
    [v11 setFont:v10];
  }

  v13 = [v6 defaultMetrics];
  v14 = [v8 systemFontOfSize:13.0];
  v15 = [v13 scaledFontForFont:v14];

  v16 = [v4 detailTextLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setFont:v15];
  }

  v18 = [v4 detailTextLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [v3 secondaryLabelColor];
    [v19 setTextColor:v20];
  }

  return v4;
}

uint64_t sub_100102FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  result = swift_beginAccess();
  v9 = *(v3 + v7);
  if (*(v9 + 16))
  {

    v10 = sub_100064AFC(a1, a2);
    if ((v11 & 1) == 0)
    {
    }

    v12 = *(*(v9 + 56) + 8 * v10);
    swift_unknownObjectRetain();

    v13 = [v12 state];
    v14 = [v13 phase];

    if (!v14 || (v15 = [v12 state], v16 = objc_msgSend(v15, "phase"), v15, v16 == 1))
    {
      v17 = [v12 state];
      v18 = [v17 phase];

      if (v18 == 1)
      {
        sub_10003E110(0, &qword_1001FD6F0);
        v19 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        v20 = [v12 state];
        [v20 resetState];
      }

      v21 = [v12 state];
      [v21 setPhase:2];

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRetain();
        sub_1000E78B0(0, 0, a3, v12);
        return swift_unknownObjectRelease_n();
      }

      if (a3)
      {
        if ([v12 respondsToSelector:"startInOperationMode:"])
        {
          [v12 startInOperationMode:a3];
        }
      }

      else
      {
        [v12 start];
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10010321C()
{
  v1 = *v0;

  return v1;
}

NSString sub_100103258()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A578 = result;
  return result;
}

NSString sub_100103290()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A580 = result;
  return result;
}

void sub_1001032C8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices;
  v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices);
  if (a1[2] <= v5[2] >> 3)
  {
    v65[0] = v5;

    sub_100106A4C(a1);
    v6 = v5;
  }

  else
  {

    v6 = sub_100105FC0(a1, v5);
  }

  v7 = *(v2 + v4);
  if (*(v7 + 16) <= a1[2] >> 3)
  {
    v65[0] = a1;

    sub_100106A4C(v7);

    v56 = a1;
  }

  else
  {

    v56 = sub_100105FC0(v7, a1);
  }

  v8 = 0;
  v9 = v6 + 7;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v6[7];
  v63 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  v13 = (v10 + 63) >> 6;
  v54 = v13;
  v55 = v2;
  v57 = v6;
  while (v12)
  {
LABEL_15:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_1000681EC(v6[6] + 40 * (v15 | (v8 << 6)), v65);
    sub_10003C49C(&qword_100201820);
    if (swift_dynamicCast())
    {
      v16 = v64;
      v17 = swift_dynamicCastObjCProtocolConditional();
      if (!v17)
      {
        goto LABEL_27;
      }

      v18 = v17;
      swift_unknownObjectRetain();
      if ([v18 delegate])
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_27;
      }

      v19 = [objc_opt_self() sharedApplication];
      v20 = [v19 delegate];

      if (!v20)
      {
        goto LABEL_26;
      }

      type metadata accessor for AppDelegate();
      v21 = swift_dynamicCastClass();
      if (!v21)
      {
        swift_unknownObjectRelease();
LABEL_26:
        swift_unknownObjectRelease();
        v2 = v55;
        goto LABEL_27;
      }

      v22 = v21;
      if (qword_1001FC6D8 != -1)
      {
        swift_once();
      }

      v23 = qword_10020A390;
      [v18 setViewControllerDelegate:{qword_10020A390, v54}];
      [v18 setStatusBarResponder:v23];
      v24 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController;
      [v18 setBrightnessResponder:*(v22 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_rootViewController)];
      [v18 setVolumeHUDResponder:*(v22 + v24)];
      [v18 setUserAlertResponder:*(v22 + v24)];
      v2 = v55;
      [v18 setDelegate:v55];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_27:
      ObjectType = swift_getObjectType();
      v25 = [v64 state];
      v26 = v2;
      v27 = [v25 serialNumber];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = *(v26 + v63);
      *(v26 + v63) = 0x8000000000000000;
      sub_100142710(v16, v28, v30, isUniquelyReferenced_nonNull_native);

      *(v26 + v63) = v64;
      swift_endAccess();
      v32 = [objc_opt_self() defaultCenter];
      if (qword_1001FC810 != -1)
      {
        swift_once();
      }

      v59 = qword_10020A578;
      sub_10003C49C(&qword_1002018D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC10;
      AnyHashable.init<A>(_:)();
      v34 = [v16 state];
      *(inited + 96) = sub_10003E110(0, &qword_1001FF0E0);
      *(inited + 72) = v34;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = ObjectType;
      *(inited + 144) = v16;
      swift_unknownObjectRetain();
      sub_1000D57AC(inited);
      swift_setDeallocating();
      sub_10003C49C(&qword_1001FE6C0);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v32 postNotificationName:v59 object:v26 userInfo:isa];

      [v16 connect];
      swift_unknownObjectRelease();
      v2 = v26;
      v6 = v57;
      v13 = v54;
    }
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = v9[v14];
    ++v8;
    if (v12)
    {
      v8 = v14;
      goto LABEL_15;
    }
  }

  v36 = 0;
  v37 = v56;
  v38 = 1 << *(v56 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v56[7];
  v41 = (v38 + 63) >> 6;
  while (v40)
  {
LABEL_38:
    v43 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    sub_1000681EC(v37[6] + 40 * (v43 | (v36 << 6)), v65);
    sub_10003C49C(&qword_100201820);
    if (swift_dynamicCast())
    {
      v62 = swift_getObjectType();
      v44 = [v64 state];
      v45 = [v44 phase];

      if ((v45 - 2) <= 2)
      {
        [v64 end];
      }

      v46 = [v64 state];
      v47 = [v46 serialNumber];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      swift_beginAccess();
      sub_100155C78(v48, v50);
      swift_endAccess();

      swift_unknownObjectRelease();
      v60 = [objc_opt_self() defaultCenter];
      if (qword_1001FC818 != -1)
      {
        swift_once();
      }

      v58 = qword_10020A580;
      sub_10003C49C(&qword_1002018D0);
      v51 = swift_initStackObject();
      *(v51 + 16) = xmmword_10017EC10;
      AnyHashable.init<A>(_:)();
      v52 = [v64 state];
      *(v51 + 96) = sub_10003E110(0, &qword_1001FF0E0);
      *(v51 + 72) = v52;
      AnyHashable.init<A>(_:)();
      *(v51 + 168) = v62;
      *(v51 + 144) = v64;
      swift_unknownObjectRetain();
      sub_1000D57AC(v51);
      swift_setDeallocating();
      sub_10003C49C(&qword_1001FE6C0);
      swift_arrayDestroy();
      v53 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v60 postNotificationName:v58 object:v55 userInfo:v53];
      swift_unknownObjectRelease();

      v37 = v56;
    }
  }

  while (1)
  {
    v42 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v42 >= v41)
    {

      return;
    }

    v40 = v56[v42 + 7];
    ++v36;
    if (v40)
    {
      v36 = v42;
      goto LABEL_38;
    }
  }

LABEL_46:
  __break(1u);
}

uint64_t sub_100103D48()
{
  v1 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_activeDevicesBySerialNumber;
  swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + v1);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  do
  {
    if (!v6)
    {
      do
      {
        v8 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_18;
        }

        if (v8 >= v7)
        {
          sub_10003E110(0, &qword_1001FD6F0);
          v14 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          if (qword_1001FC6B8 != -1)
          {
            goto LABEL_19;
          }

          goto LABEL_14;
        }

        v6 = *(v3 + 64 + 8 * v8);
        ++v2;
      }

      while (!v6);
      v2 = v8;
    }

    v6 &= v6 - 1;
    type metadata accessor for DeviceEnhancedLogging();
  }

  while (swift_dynamicCastClass());
  sub_10003E110(0, &qword_1001FD6F0);

  swift_unknownObjectRetain();
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  if (qword_1001FC6B8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v10 = qword_10020A368;
    v11 = getpid();
    v12 = [objc_opt_self() mainBundle];
    v13 = [v12 bundleIdentifier];

    if (v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v22 = *&v10[OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendQueue];
    v23 = swift_allocObject();
    *(v23 + 16) = v10;
    *(v23 + 24) = v11;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_10010755C;
    *(v24 + 24) = v23;
    v31 = sub_10003DAA4;
    v32 = v24;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100060C48;
    v30 = &unk_1001C6A90;
    v25 = _Block_copy(&aBlock);
    v26 = v10;

    dispatch_sync(v22, v25);
    _Block_release(v25);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();
    swift_unknownObjectRelease();

    if ((v22 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
LABEL_14:
    v15 = qword_10020A368;
    v16 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendQueue);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1000FADD4;
    *(v18 + 24) = v17;
    v31 = sub_10003E41C;
    v32 = v18;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100060C48;
    v30 = &unk_1001C6B08;
    v19 = _Block_copy(&aBlock);
    v20 = v15;

    dispatch_sync(v16, v19);
    _Block_release(v19);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  return result;
}

char *sub_100104234()
{
  v1 = &v0[OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics13DeviceManager_activeDevicesBySerialNumber] = _swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC11Diagnostics13DeviceManager_monitor] = 0;
  v35.receiver = v0;
  v35.super_class = type metadata accessor for DeviceManager();
  v2 = objc_msgSendSuper2(&v35, "init");
  sub_100105A70();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001845E0;
  *(inited + 32) = sub_10003E110(0, &qword_100201828);
  *(inited + 40) = sub_10003E110(0, &qword_100201830);
  *(inited + 48) = sub_10003E110(0, &qword_100201838);
  *(inited + 56) = sub_10003E110(0, &qword_100201840);
  v4 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v4 & 1) == 0)
  {
    v5 = sub_10003E110(0, &qword_100201848);
    inited = sub_1000D5228(1, 5, 1, inited);
    *(inited + 16) = 5;
    *(inited + 64) = v5;
    v6 = *(inited + 24);
    if (v6 <= 0xB)
    {
      inited = sub_1000D5228((v6 > 1), 6, 1, inited);
    }

    v7 = type metadata accessor for DeviceObserverTimberLorryDevelopment();
    *(inited + 16) = 6;
    *(inited + 72) = v7;
    v8 = *(inited + 24);
    if (v8 <= 0xD)
    {
      inited = sub_1000D5228((v8 > 1), 7, 1, inited);
    }

    v9 = type metadata accessor for DeviceObserverEnhancedLogging();
    *(inited + 16) = 7;
    *(inited + 80) = v9;
  }

  if (os_variant_has_internal_content())
  {
    v11 = *(inited + 16);
    v10 = *(inited + 24);
    if (v11 >= v10 >> 1)
    {
      inited = sub_1000D5228((v10 > 1), v11 + 1, 1, inited);
    }

    v12 = sub_10003E110(0, &unk_100201850);
    *(inited + 16) = v11 + 1;
    *(inited + 8 * v11 + 32) = v12;
  }

  sub_10014B804(inited);

  v13 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithArray:isa];

  aBlock = 0;
  static Set._forceBridgeFromObjectiveC(_:result:)();
  if (!aBlock)
  {
    __break(1u);
  }

  v16 = Set._bridgeToObjectiveC()().super.isa;

  v17 = [objc_opt_self() aggregatorWithObserverClasses:v16];

  v18 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_monitor;
  v19 = *&v2[OBJC_IVAR____TtC11Diagnostics13DeviceManager_monitor];
  *&v2[OBJC_IVAR____TtC11Diagnostics13DeviceManager_monitor] = v17;

  v20 = *&v2[v18];
  if (v20)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    v40 = sub_1001074FC;
    v41 = v21;
    aBlock = _NSConcreteStackBlock;
    v37 = 1107296256;
    v38 = sub_100104AE8;
    v39 = &unk_1001C69C8;
    v22 = _Block_copy(&aBlock);
    v23 = v20;
    v24 = v2;

    v25 = [v23 beginDiscoveringDevicesWithHandler:v22];
    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  v26 = [objc_opt_self() defaultCenter];
  v27 = objc_opt_self();
  v28 = @"com.apple.Diagnostics.deviceStateChangedNotification";
  v29 = [v27 mainQueue];
  v30 = swift_allocObject();
  *(v30 + 16) = v2;
  v40 = sub_10010751C;
  v41 = v30;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_100060B2C;
  v39 = &unk_1001C6A18;
  v31 = _Block_copy(&aBlock);
  v32 = v2;

  v33 = [v26 addObserverForName:v28 object:0 queue:v29 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();

  return v32;
}

uint64_t sub_1001047F4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1001075B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C6B58;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_100104A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices);
  *(a1 + OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices) = a2;

  sub_1001032C8(v2);
}

uint64_t sub_100104AE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

void sub_100104B60(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_100064B74(v32), (v6 & 1) == 0))
  {

    sub_10003DB48(v32);
LABEL_11:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_12;
  }

  sub_10003E010(*(v4 + 56) + 32 * v5, &v33);
  sub_10003DB48(v32);

  if (!*(&v34 + 1))
  {
LABEL_12:
    sub_10003DD84(&v33, &unk_1001FD720);
    return;
  }

  sub_10003E110(0, &unk_100201860);
  if (swift_dynamicCast())
  {
    v7 = v32[0];
    v8 = [v32[0] snapshot];
    v9 = [v8 phase];

    v10 = v9 - 2;
    v11 = [v7 snapshot];
    v12 = [v11 serialNumber];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v10 > 2)
    {
      swift_beginAccess();
      sub_100155C78(v13, v15);
      swift_endAccess();

      swift_unknownObjectRelease();
      sub_100103D48();
LABEL_17:

      return;
    }

    v16 = [v7 snapshot];
    v17 = [v16 serialNumber];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    v22 = *(a2 + v21);
    if (*(v22 + 16) && (, v23 = sub_100064AFC(v18, v20), v25 = v24, , (v25 & 1) != 0))
    {
      v26 = *(*(v22 + 56) + 8 * v23);
      swift_unknownObjectRetain();
    }

    else
    {

      v26 = 0;
    }

    swift_beginAccess();
    sub_10013C484(v26, v13, v15);
    swift_endAccess();
    sub_100103D48();
    if (([v7 changedProperties] & 2) == 0)
    {
      goto LABEL_17;
    }

    v27 = [v7 snapshot];
    v28 = [v27 suiteName];

    if (v28)
    {
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    sub_100106E2C(v29, v31);
  }
}

uint64_t sub_100104F48(SEL *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics13DeviceManager_devices);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        sub_1000681EC(*(v2 + 48) + 40 * (v10 | (v9 << 6)), &v13);
        sub_10003C49C(&qword_100201820);
        result = swift_dynamicCast();
        if (result)
        {
          if ([v12 isLocal])
          {
            [v12 *a1];
          }

          result = swift_unknownObjectRelease();
          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = v9;
          if (!v5)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v9 = v8;
      }
    }
  }

  __break(1u);
  return result;
}