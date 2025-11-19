void sub_1000550A8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000589C(&qword_1000BCA98, &qword_100090FC8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v128 - v10;
  v12 = sub_10000589C(&unk_1000BCAA0, &unk_100090FD0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v128 - v14;
  v16 = type metadata accessor for _Glass._GlassVariant();
  v17 = *(*(v16 - 8) + 64);
  v18 = [a1 viewIfLoaded];
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v20 = [objc_allocWithZone(UIStackView) init];
  v21 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationOptionsContainerView;
  v22 = *&v1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationOptionsContainerView];
  *&v1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationOptionsContainerView] = v20;
  v23 = v20;

  if (!v23)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = *&v1[v21];
  if (!v24)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  [v24 setAxis:1];
  v25 = *&v1[v21];
  if (!v25)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v25 setSpacing:15.0];
  v26 = *&v1[v21];
  if (!v26)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v27 = v26;
  static _Glass._GlassVariant.regular.getter();
  v140[3] = type metadata accessor for _Glass();
  v140[4] = &protocol witness table for _Glass;
  sub_100062040(v140);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();

  v28 = *&v1[v21];
  if (!v28)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v28 setLayoutMarginsRelativeArrangement:1];
  v29 = *&v1[v21];
  if (!v29)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v29 setLayoutMargins:{20.0, 20.0, 20.0, 20.0}];
  v30 = *&v1[v21];
  if (!v30)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v31 = v30;
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  v32 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  sub_100006390(v11, &qword_1000BCA98, &qword_100090FC8);
  v33 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
  UIView.cornerMaskingConfiguration.setter();

  v139 = _swiftEmptyArrayStorage;
  v34 = sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
  *(swift_allocObject() + 16) = v2;
  v35 = v2;
  v134 = v34;
  v36 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v37 = [objc_allocWithZone(UISwitch) initWithFrame:v36 primaryAction:{0.0, 0.0, 0.0, 0.0}];

  v38 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch;
  v39 = *&v35[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch];
  *&v35[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch] = v37;
  v40 = v37;

  if (!v40)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v133 = v7;
  v135 = v19;
  v41 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled;
  [v40 setOn:v35[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled]];

  v42 = *&v35[v38];
  if (!v42)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = v35[v41];
  v44 = v35;
  sub_1000604C4(0x6F6974616D696E41, 0xEA0000000000736ELL, v43, v44, &v139, &OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch, &unk_1000AF990, sub_10006216C);

  v45 = v44[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout];
  v46 = v44;
  sub_1000604C4(5002322, 0xE300000000000000, v45, v46, &v139, &OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_rtlSwitch, &unk_1000AF968, sub_100062164);

  v47 = [objc_allocWithZone(UISlider) init];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v47 setContinuous:0];
  LODWORD(v48) = 1067030938;
  [v47 setValue:v48];
  LODWORD(v49) = 1045220557;
  [v47 setMinimumValue:v49];
  LODWORD(v50) = 15.0;
  [v47 setMaximumValue:v50];
  v51 = [objc_allocWithZone(UILabel) init];
  v52 = String._bridgeToObjectiveC()();
  [v51 setText:v52];

  v53 = sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v54 = swift_allocObject();
  v138 = xmmword_10008F960;
  *(v54 + 16) = xmmword_10008F960;
  *(v54 + 32) = v51;
  *(v54 + 40) = v47;
  v55 = objc_allocWithZone(UIStackView);
  v56 = sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  v57 = v51;
  v137 = v56;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v59 = [v55 initWithArrangedSubviews:isa];

  [v59 setAxis:1];
  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = *&v46[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider];
  v131 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider;
  *&v46[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider] = v47;
  v61 = v47;

  v136 = "sliderValueChanged:";
  [v61 addTarget:v46 action:? forControlEvents:?];
  v62 = v59;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_32:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v63 = [objc_allocWithZone(UISlider) init];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v63 setContinuous:0];
  [v63 setValue:0.0];
  LODWORD(v64) = -1.0;
  [v63 setMinimumValue:v64];
  LODWORD(v65) = 1.0;
  [v63 setMaximumValue:v65];
  v66 = [objc_allocWithZone(UILabel) init];
  v67 = String._bridgeToObjectiveC()();
  [v66 setText:v67];

  v68 = swift_allocObject();
  *(v68 + 16) = v138;
  *(v68 + 32) = v66;
  *(v68 + 40) = v63;
  v69 = objc_allocWithZone(UIStackView);
  v70 = v66;
  v71 = Array._bridgeToObjectiveC()().super.isa;

  v72 = [v69 initWithArrangedSubviews:v71];

  [v72 setAxis:1];
  [v72 setTranslatesAutoresizingMaskIntoConstraints:0];
  v73 = *&v46[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider];
  v130 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider;
  *&v46[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider] = v63;
  v74 = v63;

  [v74 addTarget:v46 action:v136 forControlEvents:4096];
  v75 = v72;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v76 = [objc_allocWithZone(UISlider) init];
  [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v76 setContinuous:0];
  [v76 setValue:0.0];
  LODWORD(v77) = -1.0;
  [v76 setMinimumValue:v77];
  LODWORD(v78) = 1.0;
  [v76 setMaximumValue:v78];
  v79 = [objc_allocWithZone(UILabel) init];
  v80 = String._bridgeToObjectiveC()();
  [v79 setText:v80];

  v132 = v53;
  v81 = swift_allocObject();
  *(v81 + 16) = v138;
  *(v81 + 32) = v79;
  *(v81 + 40) = v76;
  v82 = objc_allocWithZone(UIStackView);
  v83 = v79;
  v84 = Array._bridgeToObjectiveC()().super.isa;

  v85 = [v82 initWithArrangedSubviews:v84];

  [v85 setAxis:1];
  [v85 setTranslatesAutoresizingMaskIntoConstraints:0];
  v86 = *&v46[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSizeSlider];
  *&v46[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSizeSlider] = v76;
  v87 = v76;

  [v87 addTarget:v46 action:v136 forControlEvents:4096];
  v88 = v85;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v94 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v62 = sub_10001A2A8(0, &unk_1000BCAB0, UIButton_ptr);
  static UIButton.Configuration.filled()();
  *(swift_allocObject() + 16) = v46;
  *&v138 = v46;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v53 = UIButton.init(configuration:primaryAction:)();
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v89 = v135;
  if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v62 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v137 = v53;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (!*&v2[v21])
  {
    goto LABEL_60;
  }

  v61 = v139;
  [v89 addSubview:?];
  v129 = v46;
  if (v61 >> 62)
  {
    v90 = _CocoaArrayWrapper.endIndex.getter();
    if (v90)
    {
LABEL_21:
      v91 = 0;
      v46 = (v61 & 0xC000000000000001);
      v57 = (v61 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v46)
        {
          v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v91 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v92 = *(v61 + 8 * v91 + 32);
        }

        v62 = v92;
        v53 = (v91 + 1);
        if (__OFADD__(v91, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v93 = *&v2[v21];
        if (!v93)
        {
          break;
        }

        [v93 addArrangedSubview:v62];

        ++v91;
        if (v53 == v90)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_51;
    }
  }

  else
  {
    v90 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v90)
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  v95 = *(v138 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (v95)
  {
    v96 = qword_1000BB708;
    v97 = v95;
    if (v96 != -1)
    {
      swift_once();
    }

    v99 = qword_1000BF128;
    v98 = qword_1000BF130;
    v100 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v101 = *&v97[v100];

    if (*(v101 + 16))
    {
      v102 = sub_100037A68(v99, v98);
      v104 = v103;

      if (v104)
      {
        v105 = *(*(v101 + 56) + 8 * v102);

        v107 = v129;
        v108 = *&v129[v131];
        if (!v108)
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        LODWORD(v106) = 0.25;
        [v108 setValue:v106];
        v110 = *&v107[v130];
        if (!v110)
        {
LABEL_66:
          __break(1u);
          return;
        }

        LODWORD(v109) = 1045220557;
        [v110 setValue:v109];

        goto LABEL_44;
      }
    }

    else
    {
    }
  }

LABEL_44:
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_100090F10;
  v112 = *&v2[v21];
  if (!v112)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v113 = [v112 widthAnchor];
  v114 = [v113 constraintEqualToConstant:240.0];

  *(v111 + 32) = v114;
  v115 = *&v2[v21];
  v116 = v135;
  if (!v115)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v117 = [v115 trailingAnchor];
  v118 = [v116 trailingAnchor];
  v119 = [v117 constraintEqualToAnchor:v118 constant:-20.0];

  *(v111 + 40) = v119;
  v120 = *&v2[v21];
  if (!v120)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v121 = [v120 bottomAnchor];
  v122 = *(v138 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  if (!v122)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v123 = v121;
  v124 = objc_opt_self();
  v125 = [v122 topAnchor];
  v126 = [v123 constraintEqualToAnchor:v125];

  *(v111 + 48) = v126;
  sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
  v127 = Array._bridgeToObjectiveC()().super.isa;

  [v124 activateConstraints:v127];
}

void sub_100056138(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UITraitOverrides();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout;
  *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout) = (*(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout) & 1) == 0;
  v6 = [objc_opt_self() traitCollectionWithLayoutDirection:1];
  v7 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (v7)
  {
    v8 = *(a2 + v5);
    v10 = v6;
    v9 = v7;
    UIViewController.traitOverrides.getter();
    UIMutableTraits.layoutDirection.setter();
    UIViewController.traitOverrides.setter();
  }

  else
  {
  }
}

void sub_10005627C(uint64_t a1, _BYTE *a2)
{
  if (a2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest] == 1)
  {
    a2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest] = 0;
    v3 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer;
    [*&a2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer] invalidate];
    v5 = *&a2[v3];
    *&a2[v3] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount] = 0;
  }

  else
  {

    sub_10005900C(a2);
  }
}

void sub_1000562FC(uint64_t a1, unint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v2 = type metadata accessor for Logger();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(UIView) init];
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 redColor];
    [v8 setBackgroundColor:v9];
  }

  v10 = [objc_allocWithZone(UIView) init];
  if (v10)
  {
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 blueColor];
    [v12 setBackgroundColor:v13];
  }

  static Logger.UI.getter();
  v14 = v6;
  v15 = v10;
  v16 = v6;
  v17 = v5;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  v20 = os_log_type_enabled(v18, v19);
  v36 = v16;
  v37 = v14;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v21 = 136315650;
    *(v21 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093D10, &v42);
    *(v21 + 12) = 2080;
    v41 = v16;
    v22 = v14;
    sub_10000589C(&qword_1000BCA90, &qword_100090B70);
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, &v42);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2080;
    v41 = v10;
    v26 = v15;
    v27 = v15;
    v28 = String.init<A>(describing:)();
    v30 = sub_100037B98(v28, v29, &v42);

    *(v21 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s iconPortalLayer: %s openIndicatorPortalLayer: %s", v21, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v15;
  }

  (*(v38 + 8))(v17, v39);
  v31 = *(v40 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (v31)
  {
    v32 = v31;
    sub_100045AE4(v34, v35, v10, v36);
  }
}

uint64_t sub_10005679C()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions;
  if (*(v0 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions);
  }

  else
  {
    type metadata accessor for DOCSBLayoutEasingFunctions();
    v2 = swift_allocObject();
    *(v2 + 16) = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseIn];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100056844(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v29 = swift_slowAlloc();
    v31 = v29;
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100093CF0, &v31);
    *(v13 + 12) = 2080;
    v14 = v9;
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v4;
    v17 = v16;
    v19 = v18;

    v20 = sub_100037B98(v17, v19, &v31);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s sender: %s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v8, v28);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v21 = [v9 view];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 restorationIdentifier];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      sub_100056B60(v25, v27);
    }

    else
    {
    }
  }
}

void sub_100056B60(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  v13 = os_log_type_enabled(v11, v12);
  v91 = a2;
  v92 = a1;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100093CD0, v93);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_100037B98(a1, a2, v93);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s identifier: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v10, v6);
  v15 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v16 = *(v3 + v15);
  if (v16 >> 62)
  {
LABEL_34:
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v3;

  if (!v17)
  {
LABEL_29:

    return;
  }

  v18 = 0;
  v3 = v16 & 0xC000000000000001;
  while (!v3)
  {
    if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }

    v19 = *(v16 + 8 * v18 + 32);
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_20;
    }

LABEL_11:
    v6 = v19;
    v22 = [v6 restorationIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v20 = v91;
      if (v24 == v92 && v26 == v91)
      {
        goto LABEL_21;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        v29 = v91;
        goto LABEL_22;
      }
    }

    ++v18;
    if (v21 == v17)
    {
      goto LABEL_29;
    }
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v21 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_11;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  v29 = v20;

LABEL_22:

  [v6 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  v38 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
  v39 = v90;
  v40 = *(v90 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  if (!v40)
  {
    __break(1u);
    goto LABEL_36;
  }

  v41 = [v40 view];
  [v6 convertRect:v41 toView:{v31, v33, v35, v37}];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v50 = *(v39 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  if (!v50)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v51 = v50;
  [v51 bounds];
  v56 = *(v39 + v38);
  if (v56)
  {
    v57 = v52;
    v58 = v53;
    v59 = v54;
    v60 = v55;
    v61 = 0xE900000000000064;
    v89 = 0x6564644165746164;
    v62 = 7233894;
    v63 = [v56 view];
    [v51 convertRect:v63 toView:{v57, v58, v59, v60}];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    v72 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
    swift_beginAccess();
    v73 = *(v39 + v72);
    if (*(v73 + 16))
    {
      v74 = *(v39 + v72);

      v75 = sub_100037A68(v92, v29);
      if (v76)
      {
        v77 = *(*(v73 + 56) + 8 * v75);

        v78 = [*(v77 + 24) identifier];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v79;

        v80 = [*(v77 + 16) identifier];
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        v83 = *(v77 + 32);
        v29 = v91;

        v84 = *(v39 + v38);
        if (!v84)
        {
LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_32;
      }
    }

    v82 = 0xE300000000000000;
    v83 = 1;
    v84 = *(v39 + v38);
    if (!v84)
    {
      goto LABEL_28;
    }

LABEL_32:
    v85 = *(v39 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled);

    v86 = v84;
    v87 = v29;
    v88 = v86;
    sub_10004E9A0(v92, v87, v89, v61, v83, v62, v82, v85, v43, v45, v47, v49, v65, v67, v69, v71, v86, v92, v87);

    return;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_100057174(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100093CD0, &v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100037B98(a2, a3, &v16);
    *(v13 + 22) = 1024;
    *(v13 + 24) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s folder presentation completed for identifier: %s success: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  return (*(v7 + 8))(v10, v6);
}

void sub_10005736C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v95 = a1;
  v96 = a2;
  v5 = type metadata accessor for URL();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = *(v93 + 64);
  __chkstk_darwin(v5);
  v92 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v9 = *(v3 + v8);
  v91 = a3;
  if (v9 >> 62)
  {
LABEL_38:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = v3;

  if (!v10)
  {
LABEL_19:

    return;
  }

  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_38;
      }

      v12 = *(v9 + 8 * v11 + 32);
      v3 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_18;
      }
    }

    v13 = v12;
    v14 = [v13 restorationIdentifier];
    if (v14)
    {
      break;
    }

LABEL_5:

    ++v11;
    if (v3 == v10)
    {
      goto LABEL_19;
    }
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 != v95 || v18 != v96)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_21;
    }

    goto LABEL_5;
  }

LABEL_21:

  [v13 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
  v30 = v90;
  v31 = *(v90 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
  v32 = v91;
  if (!v31)
  {
    goto LABEL_42;
  }

  v33 = [v31 view];
  [v13 convertRect:v33 toView:{v22, v24, v26, v28}];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = *(v30 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
  if (v42)
  {
    v43 = v42;
    [v43 bounds];
    v48 = *(v30 + v29);
    if (v48)
    {
      v49 = v44;
      v50 = v45;
      v51 = v46;
      v52 = v47;
      v53 = [v48 view];
      [v43 convertRect:v53 toView:{v49, v50, v51, v52}];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      v62 = *(v30 + v29);
      if (!v62)
      {
        goto LABEL_41;
      }

      v63 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
      swift_beginAccess();
      v64 = *(v62 + v63);
      if (*(v64 + 16))
      {
        v65 = v30;
        v66 = *(v62 + v63);

        v67 = sub_100037A68(v95, v96);
        if (v68)
        {
          v69 = *(*(v64 + 56) + 8 * v67);

          if (v69)
          {
            v70 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
            swift_beginAccess();
            (*(v93 + 16))(v92, &v69[v70], v94);
            v71 = [*(v32 + 16) identifier];
            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v73;

            if (v72 == 7233894 && v74 == 0xE300000000000000)
            {

              goto LABEL_32;
            }

            v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v75)
            {
LABEL_32:
              v76 = *(v32 + 32);
              v77 = *(v65 + v29);
              if (v77)
              {
                goto LABEL_33;
              }

LABEL_35:

              v88 = v92;
            }

            else
            {
              v76 = *(v32 + 32) ^ 1;
              v77 = *(v65 + v29);
              if (!v77)
              {
                goto LABEL_35;
              }

LABEL_33:
              v78 = *(v32 + 24);
              v79 = v77;
              v80 = [v78 identifier];
              v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v83 = v82;

              v84 = [*(v32 + 16) identifier];
              v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v87 = v86;

              v88 = v92;
              sub_100044594(v95, v96, v92, v81, v83, v76 & 1, v85, v87, v35, v37, v39, v41, v55, v57, v59, v61);
            }

            (*(v93 + 8))(v88, v94);
            return;
          }

LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
LABEL_43:
    __break(1u);
  }

  __break(1u);
}

void sub_10005790C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  v9 = os_log_type_enabled(v7, v8);
  v41 = v6;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093CB0, v43);
    *(v10 + 12) = 2080;
    v42 = *&v41[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window];
    v11 = v42;
    sub_10000589C(&qword_1000BCA88, &unk_100090FB8);
    v12 = String.init<A>(describing:)();
    v14 = sub_100037B98(v12, v13, v43);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s frame object: %s", v10, 0x16u);
    swift_arrayDestroy();

    v6 = v41;
  }

  (*(v2 + 8))(v5, v1);
  v15 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v16 = *&v6[v15];
  if (v16 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = _swiftEmptyArrayStorage;
    if (i)
    {
      break;
    }

LABEL_17:
    v30 = v18[2];
    v31 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
    v32 = v41;
    swift_beginAccess();
    if (!v30)
    {
LABEL_23:

      return;
    }

    v33 = 0;
    v34 = v18 + 5;
    while (v33 < v18[2])
    {
      v35 = *&v32[v31];
      if (!*(v35 + 16))
      {
        goto LABEL_25;
      }

      v36 = *(v34 - 1);
      v16 = *v34;

      v37 = sub_100037A68(v36, v16);
      if ((v38 & 1) == 0)
      {
        goto LABEL_26;
      }

      ++v33;
      v39 = *(*(v35 + 56) + 8 * v37);

      v32 = v41;
      sub_10005736C(v36, v16, v39);

      v34 += 2;
      if (v30 == v33)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v42 = _swiftEmptyArrayStorage;

  v19 = &v42;
  sub_10000F718(0, i & ~(i >> 63), 0);
  if (i < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = 0;
    v18 = v42;
    while (1)
    {
      v21 = (v16 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v16 + 8 * v20 + 32);
      v19 = v21;
      v22 = [v19 restorationIdentifier];
      if (!v22)
      {
        break;
      }

      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      if (!v26)
      {
        goto LABEL_30;
      }

      v42 = v18;
      v28 = v18[2];
      v27 = v18[3];
      if (v28 >= v27 >> 1)
      {
        sub_10000F718((v27 > 1), v28 + 1, 1);
        v18 = v42;
      }

      ++v20;
      v18[2] = v28 + 1;
      v29 = &v18[2 * v28];
      v29[4] = v24;
      v29[5] = v26;
      if (i == v20)
      {

        goto LABEL_17;
      }
    }
  }

LABEL_30:
  __break(1u);
}

void sub_100057D4C(char *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
  v10 = *&v1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (!v10)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = [v10 view];
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v11 frame];
  v14 = v13;

  v15 = *&v1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v15 frame];
  v17 = *&v1[v9];
  if (!v17)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v18 = v14 * 0.5 - v16 * 0.5;
  v19 = [v17 view];
  [a1 translationInView:v19];
  v21 = v20;

  if (v21 >= v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = v21 + 0.0;
  }

  static Logger.UI.getter();
  a1 = v1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  p_cache = &OBJC_METACLASS____TtC21DockFolderViewService20DockFolderDataSource.cache;
  if (!os_log_type_enabled(v23, v24))
  {

    (*(v4 + 8))(v8, v3);
LABEL_12:
    v32 = *(p_cache[284] + a1);
    if (v32)
    {
      [v32 setConstant:v22];
      return;
    }

    goto LABEL_18;
  }

  v26 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v34 = v27;
  *v26 = 136316162;
  *(v26 + 4) = sub_100037B98(0x75747365476E6170, 0xEE00293A5F286572, &v34);
  *(v26 + 12) = 2048;
  v28 = *&a1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_dockCenterXAnchor];
  if (v28)
  {
    v29 = v28;

    [v29 constant];
    v31 = v30;

    *(v26 + 14) = v31;
    *(v26 + 22) = 2048;
    *(v26 + 24) = 0;
    *(v26 + 32) = 2048;
    *(v26 + 34) = v18;
    *(v26 + 42) = 2048;
    *(v26 + 44) = v22;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s dockCenterXAnchor.constant: %f xCenter: %f maxXConstant: %f xConstant: %f", v26, 0x34u);
    sub_1000064E0(v27);

    (*(v4 + 8))(v8, v3);
    p_cache = (&OBJC_METACLASS____TtC21DockFolderViewService20DockFolderDataSource + 16);
    goto LABEL_12;
  }

LABEL_19:

  __break(1u);
}

void sub_1000580E4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider;
  v5 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider);
  if (v5)
  {
    sub_10001A2A8(0, &qword_1000BCA80, UISlider_ptr);
    v6 = a1;
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider);
  if (v9 && (sub_10001A2A8(0, &qword_1000BCA80, UISlider_ptr), v10 = a1, v11 = v9, v12 = static NSObject.== infix(_:_:)(), v11, v10, (v12 & 1) != 0))
  {
LABEL_5:
    v13 = *(v2 + v4);
    if (!v13)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    [v13 value];
    v15 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider);
    if (!v15)
    {
LABEL_31:
      __break(1u);
      return;
    }

    v16 = v14;
    [v15 value];
    v18 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController);
    if (v18)
    {
      v19 = v16;
      v20 = v17;
      v21 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
      swift_beginAccess();
      v22 = 0;
      v23 = *(v18 + v21);
      v24 = *(v23 + 64);
      v25 = 1 << *(v23 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & v24;
      if ((v26 & v24) != 0)
      {
        do
        {
          v28 = v22;
LABEL_16:
          v29 = *(*(v23 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
          v27 &= v27 - 1;
          v30 = v29 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_gridViewAnimationSpecOverride;
          *v30 = v19;
          *(v30 + 8) = v20;
          *(v30 + 16) = xmmword_100090F20;
          *(v30 + 32) = 0x3FC999999999999ALL;
          *(v30 + 40) = v19;
          *(v30 + 48) = v20;
          *(v30 + 56) = xmmword_100090F20;
          *(v30 + 72) = 0x3FC999999999999ALL;
          *(v30 + 80) = 0;
        }

        while (v27);
      }

      while (1)
      {
        v28 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v28 >= ((v25 + 63) >> 6))
        {
          return;
        }

        v27 = *(v23 + 64 + 8 * v28);
        ++v22;
        if (v27)
        {
          v22 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    v31 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_scrollSlider);
    if (v31 && (sub_10001A2A8(0, &qword_1000BCA80, UISlider_ptr), v32 = a1, v33 = v31, v34 = static NSObject.== infix(_:_:)(), v33, v32, (v34 & 1) != 0))
    {
      [v32 value];
      v36 = v35;

      sub_1000584C0(v36);
    }

    else
    {
      v37 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSizeSlider);
      if (v37)
      {
        sub_10001A2A8(0, &qword_1000BCA80, UISlider_ptr);
        v38 = a1;
        v39 = v37;
        v40 = static NSObject.== infix(_:_:)();

        if (v40)
        {
          [v38 value];
          v42 = v41;

          sub_100058880(v42);
        }
      }
    }
  }
}

CGAffineTransform *sub_1000584C0(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconView;
  result = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconView);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  t1.a = 1.0;
  t1.b = 0.0;
  t1.c = 0.0;
  t1.d = 1.0;
  t1.tx = 0.0;
  t1.ty = 0.0;
  [(CGAffineTransform *)result setTransform:&t1, v10];
  result = *(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconPlaygroundContainerView);
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [(CGAffineTransform *)result frame];
  v15 = CGRectGetHeight(v37) * a1;
  static Logger.UI.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218496;
    *(v18 + 4) = a1;
    *(v18 + 12) = 2048;
    *(v18 + 14) = a1;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Slider value changed: %f, yProgress: %f yPosition: %f", v18, 0x20u);
  }

  v19 = *(v5 + 8);
  v19(v12, v4);
  v20 = sub_10005679C();
  v21 = 0.5;
  if (a1 >= 0.5)
  {
    *&v21 = a1;
    [*(v20 + 16) _solveForInput:v21];
  }

  HIDWORD(v22) = 1072273817;
  if (a1 >= 0.8)
  {
    *&v22 = a1;
    [*(*(v2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions) + 16) _solveForInput:v22];
  }

  v23 = sub_100085C24(1, v15, 2775.0);
  v25 = v24;
  static Logger.UI.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134218240;
    *(v28 + 4) = v25;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v26, v27, "rotation: %f, translationX: %f", v28, 0x16u);
  }

  v19(v8, v4);
  CGAffineTransformMakeTranslation(&t1, v23, -v15);
  v32 = *&t1.c;
  v33 = *&t1.a;
  tx = t1.tx;
  ty = t1.ty;
  result = CGAffineTransformMakeRotation(&t1, v25);
  v31 = *(v2 + v13);
  if (v31)
  {
    *&t2.a = v33;
    *&t2.c = v32;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v34, &t1, &t2);
    t1 = v34;
    return [v31 setTransform:&t1];
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100058880(double a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 67.0)
  {
    v8 = 40.0;
  }

  else
  {
    v8 = 68.0;
  }

  if (v8 != *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize))
  {
    *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize) = v8;
    v77 = _swiftEmptyArrayStorage;
    v9 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
    swift_beginAccess();
    v75 = v1;
    v10 = *(v1 + v9);
    if (v10 >> 62)
    {
      if (v10 < 0)
      {
        v39 = *(v1 + v9);
      }

      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_7:
        v67 = v9;
        v71 = v11;
        if (v11 < 1)
        {
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v72 = (v4 + 8);
        v73 = v10 & 0xC000000000000001;

        v12 = 0;
        p_type = (&stru_1000B6FF0 + 16);
        *&v14 = 136315138;
        v68 = v14;
        v15 = v71;
        v69 = v7;
        v70 = v3;
        do
        {
          if (v73)
          {
            v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v16 = *(v10 + 8 * v12 + 32);
          }

          v17 = v16;
          isa = [v17 constraints];
          if (!isa)
          {
            sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            isa = Array._bridgeToObjectiveC()().super.isa;
          }

          [v17 removeConstraints:isa];

          v19 = [v17 widthAnchor];
          v20 = [v19 p_type[391]];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v37 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v71;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v21 = [v17 heightAnchor];

          v22 = [v21 p_type[391]];
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v38 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v71;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v23 = v77;
          static Logger.UI.getter();
          v24 = v17;
          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v76[0] = v28;
            *v27 = v68;
            v29 = [v24 constraints];
            v74 = v23;
            v30 = v29;
            sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
            v31 = v10;
            static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v32 = Array.description.getter();
            v34 = v33;

            v35 = v32;
            v10 = v31;
            v36 = sub_100037B98(v35, v34, v76);
            v23 = v74;
            v7 = v69;

            *(v27 + 4) = v36;
            v15 = v71;
            _os_log_impl(&_mh_execute_header, v25, v26, "Constraints %s", v27, 0xCu);
            sub_1000064E0(v28);

            v3 = v70;
          }

          else
          {
          }

          (*v72)(v7, v3);
          ++v12;
          p_type = &stru_1000B6FF0.type;
        }

        while (v15 != v12);

        v9 = v67;
LABEL_27:
        v40 = objc_opt_self();
        sub_10001A2A8(0, &qword_1000BB900, NSLayoutConstraint_ptr);
        v41 = Array._bridgeToObjectiveC()().super.isa;
        [v40 activateConstraints:v41];

        v42 = v75;
        v43 = *(v75 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView);
        if (!v43)
        {
LABEL_58:
          __break(1u);
          return;
        }

        [v43 updateConstraints];
        v44 = *(v42 + v9);
        if (v44 >> 62)
        {
          goto LABEL_53;
        }

        for (i = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v46 = _swiftEmptyArrayStorage;
          v74 = v23;
          if (i)
          {
            break;
          }

LABEL_42:
          v57 = v46[2];
          v23 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
          v58 = v75;
          swift_beginAccess();
          if (!v57)
          {
LABEL_48:

            return;
          }

          v59 = 0;
          v60 = v46 + 5;
          while (v59 < v46[2])
          {
            v61 = *(v23 + v58);
            if (!*(v61 + 16))
            {
              goto LABEL_51;
            }

            v44 = *(v60 - 1);
            v62 = *v60;

            v63 = sub_100037A68(v44, v62);
            if ((v64 & 1) == 0)
            {
              goto LABEL_52;
            }

            ++v59;
            v65 = *(*(v61 + 56) + 8 * v63);

            v58 = v75;
            sub_10005736C(v44, v62, v65);

            v60 += 2;
            if (v57 == v59)
            {
              goto LABEL_48;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          ;
        }

        v76[0] = _swiftEmptyArrayStorage;

        v1 = v76;
        sub_10000F718(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          goto LABEL_55;
        }

        v47 = 0;
        v46 = v76[0];
        while (1)
        {
          v48 = (v44 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v44 + 8 * v47 + 32);
          v1 = v48;
          v49 = [v1 restorationIdentifier];
          if (!v49)
          {
            break;
          }

          v50 = v49;
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          if (!v53)
          {
            goto LABEL_57;
          }

          v76[0] = v46;
          v55 = v46[2];
          v54 = v46[3];
          if (v55 >= v54 >> 1)
          {
            sub_10000F718((v54 > 1), v55 + 1, 1);
            v46 = v76[0];
          }

          ++v47;
          v46[2] = v55 + 1;
          v56 = &v46[2 * v55];
          v56[4] = v51;
          v56[5] = v53;
          if (i == v47)
          {

            goto LABEL_42;
          }
        }

LABEL_56:

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    v23 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }
}

void sub_10005900C(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest] = 1;
  if (qword_1000BB708 != -1)
  {
    swift_once();
  }

  v2 = *&a1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (v2)
  {
    v4 = qword_1000BF128;
    v3 = qword_1000BF130;
    v5 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
    swift_beginAccess();
    v6 = *&a1[v5];
    if (*(v6 + 16))
    {

      v7 = v2;

      v8 = sub_100037A68(v4, v3);
      if (v9)
      {
        v10 = *(*(v6 + 56) + 8 * v8);

        v11 = *&a1[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider];
        if (v11)
        {
          [v11 value];
          v13 = (v12 * 0.5);
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          v15[2] = a1;
          v15[3] = v4;
          v15[4] = v3;
          v15[5] = v7;
          v15[6] = v10;
          aBlock[4] = sub_100062134;
          aBlock[5] = v15;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100059EB4;
          aBlock[3] = &unk_1000AF930;
          v16 = _Block_copy(aBlock);
          v17 = v7;

          v18 = a1;

          v19 = [v14 scheduledTimerWithTimeInterval:1 repeats:v16 block:v13];

          _Block_release(v16);
          v20 = *&v18[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer];
          *&v18[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer] = v19;
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }
  }
}

void sub_100059260(uint64_t a1, int64_t a2, void *a3, unint64_t a4, void *a5, uint64_t a6)
{
  v95 = a3;
  v96 = a4;
  v10 = type metadata accessor for Logger();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v94 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount;
  v16 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

  *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount) = v18;
  if (v18 >= 12)
  {
LABEL_21:
    *(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest) = 0;
    v31 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer;
    [*(a2 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer) invalidate];
    v32 = *(a2 + v31);
    *(a2 + v31) = 0;

    *(a2 + v15) = 0;
    return;
  }

  v90 = v13;
  v91 = v12;
  v93 = a5;
  v19 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v6 = *(a2 + v19);
  v89 = a6;
  if (v6 >> 62)
  {
    goto LABEL_33;
  }

  v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v92 = a2;

  if (!v20)
  {
LABEL_34:

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  a2 = 0;
  v15 = v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      if (a2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v21 = *(v6 + 8 * a2 + 32);
      v22 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_20;
      }
    }

    v23 = v21;
    v24 = [v23 restorationIdentifier];
    if (!v24)
    {
      goto LABEL_7;
    }

    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == v95 && v28 == v96)
    {
      break;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_23;
    }

LABEL_7:

    ++a2;
    if (v22 == v20)
    {
      goto LABEL_34;
    }
  }

LABEL_23:

  [v23 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = v93;
  v42 = [v93 view];
  [v23 convertRect:v42 toView:{v34, v36, v38, v40}];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v51 = v92;
  v52 = *&v92[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView];
  if (!v52)
  {
    goto LABEL_35;
  }

  v53 = v52;
  [v53 bounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = [v41 view];
  [v53 convertRect:v62 toView:{v55, v57, v59, v61}];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v71 = v94;
  static Logger.UI.getter();
  v72 = v51;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v97 = v76;
    *v75 = 136315394;
    *(v75 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093DA0, &v97);
    *(v75 + 12) = 1024;
    *(v75 + 14) = v72[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen];

    _os_log_impl(&_mh_execute_header, v73, v74, "%s stress test timer tick. animationStressTestIsOpen %{BOOL}d", v75, 0x12u);
    sub_1000064E0(v76);

    v41 = v93;
  }

  else
  {
  }

  (*(v90 + 8))(v71, v91);
  if (v72[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen] == 1)
  {
    v72[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen] = 0;
    v77 = v96;

    sub_100050E40(v95, v77, 1, v41, v95, v77, v44, v46, v48, v50, v64, v66, v68, v70);
  }

  else
  {
    v72[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen] = 1;
    v78 = v89;
    v79 = [*(v89 + 24) identifier];
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    v83 = [*(v78 + 16) identifier];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    LODWORD(v83) = *(v78 + 32);
    v87 = v96;

    sub_1000500C8(v95, v87, v80, v82, v83, v84, v86, 1, v44, v46, v48, v50, v64, v66, v68, v70, v41, v95, v87);
  }
}

uint64_t sub_100059860(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093DA0, &v14);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100037B98(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s folder close presentation completed for identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100059A44(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100037B98(0xD000000000000014, 0x8000000100093DA0, &v16);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100037B98(a2, a3, &v16);
    *(v13 + 22) = 1024;
    *(v13 + 24) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s folder open presentation completed for identifier: %s success: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
  }

  return (*(v7 + 8))(v10, v6);
}

id sub_100059C3C()
{
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSize] = 0x4051000000000000;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isOpened] = 0;
  v1 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
  *&v0[v1] = sub_10007B7D8(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconTapTimer] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconPlaygroundContainerView] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconView] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_scrollSlider] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationOptionsContainerView] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_durationSlider] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_bounceSlider] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationsEnabledSwitch] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled] = 1;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_rtlSwitch] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_useRTLLayout] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconSizeSlider] = 0;
  v2 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_recentsList;
  *&v0[v2] = [objc_opt_self() sharedList];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_frameObserver] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_dockCenterXAnchor] = 0;
  v3 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerView;
  v4 = [objc_allocWithZone(type metadata accessor for DOCSBFolderCollectionHeaderViewBannerStyle()) initWithFrame:{0.0, 0.0, 608.0, 60.0}];
  v5 = &v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionTitle];
  v6 = *&v4[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_actionTitle + 8];
  *v5 = 0xD000000000000077;
  *(v5 + 1) = 0x8000000100093DE0;

  *&v0[v3] = v4;
  v7 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerContainerView;
  *&v0[v7] = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate____lazy_storage___easingFunctions] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_currentAnimationID] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconViewIsOpen] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isRunningAnimationStressTest] = 0;
  v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestIsOpen] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestTimer] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestCount] = 0;
  *&v0[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationStressTestRepeatCount] = 12;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for AppDebugSceneDelegate();
  return objc_msgSendSuper2(&v9, "init");
}

void sub_100059EB4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_100059F58(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

Class sub_10005A140(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v3 = result;
    v4 = [(objc_class *)result restorationIdentifier];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = sub_10005A1E8(v6, v8);

      return v9;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

Class sub_10005A1E8(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 supportedSortOrders];
  type metadata accessor for DOCSBFolderSortOrder();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v3 supportedDisplayModes];
  type metadata accessor for DOCSBFolderDisplayMode();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = v2;
  v8 = *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (v8)
  {
    v9 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v10 = *(v8 + v9);
    if (*(v10 + 16))
    {

      v11 = sub_100037A68(a1, a2);
      if (v12)
      {
        v13 = *(*(v10 + 56) + 8 * v11);

        v14 = v13[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
        if (v5 >> 62)
        {
          v15 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v95 = v7;
        v88 = v13;
        v87 = v14;
        if (v15)
        {
          aBlock[0] = _swiftEmptyArrayStorage;
          result = specialized ContiguousArray.reserveCapacity(_:)();
          if (v15 < 0)
          {
            __break(1u);
LABEL_51:
            __break(1u);
            return result;
          }

          v91 = objc_opt_self();
          v17 = 0;
          v89 = v5 & 0xC000000000000001;
          sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
          v93 = v5;
          do
          {
            if (v89)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v26 = *(v5 + 8 * v17 + 32);
            }

            v27 = v26;

            v28 = [v27 symbolName];
            if (!v28)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = String._bridgeToObjectiveC()();
            }

            ++v17;
            v18 = [v91 systemImageNamed:v28];

            v19 = [v27 localizedName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v20 = swift_allocObject();
            v20[2] = v27;
            v20[3] = v97;
            v20[4] = a1;
            v20[5] = a2;
            v21 = v18;
            v22 = v27;
            v23 = v97;

            v80._rawValue = 0;
            v85 = sub_100060084;
            v86 = v20;
            v84 = 0;
            v24 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            [v24 setSubtitle:{0, 0}];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v25 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v5 = v93;
          }

          while (v15 != v17);

          v30 = aBlock[0];
          v7 = v95;
          if (!(aBlock[0] >> 62))
          {
            goto LABEL_19;
          }
        }

        else
        {

          v30 = _swiftEmptyArrayStorage;
          if (!(_swiftEmptyArrayStorage >> 62))
          {
LABEL_19:

            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
            v31 = v30;
            goto LABEL_20;
          }
        }

        sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

        v31 = _bridgeCocoaArray<A>(_:)();

LABEL_20:

        sub_10001A2A8(0, &unk_1000BC480, UIMenu_ptr);
        v32._countAndFlagsBits = 0;
        v32._object = 0xE000000000000000;
        v102.value.super.isa = 0;
        v102.is_nil = 0;
        v90.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v102, 1, 0xFFFFFFFFFFFFFFFFLL, v31, v80).super.super.isa;
        if (v7 >> 62)
        {
          v33 = _CocoaArrayWrapper.endIndex.getter();
          if (v33)
          {
LABEL_22:
            aBlock[0] = _swiftEmptyArrayStorage;
            result = specialized ContiguousArray.reserveCapacity(_:)();
            if ((v33 & 0x8000000000000000) == 0)
            {
              v94 = objc_opt_self();
              v34 = 0;
              v92 = (v7 & 0xC000000000000001);
              sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
              if (v87)
              {
                v35 = 7233894;
              }

              else
              {
                v35 = 1684632167;
              }

              if (v87)
              {
                v36 = 0xE300000000000000;
              }

              else
              {
                v36 = 0xE400000000000000;
              }

              do
              {
                if (v92)
                {
                  v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v42 = *(v7 + 8 * v34 + 32);
                }

                v43 = v42;
                v44 = [v42 identifier];
                v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v47 = v46;

                if (v35 == v45 && v36 == v47)
                {

                  v50 = 1;
                }

                else
                {
                  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v50 = v49 & 1;
                }

                v51 = [v43 symbolName];
                if (!v51)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v51 = String._bridgeToObjectiveC()();
                }

                ++v34;
                v37 = [v94 systemImageNamed:v51];

                v38 = [v43 localizedName];
                static String._unconditionallyBridgeFromObjectiveC(_:)();

                v39 = swift_allocObject();
                v39[2] = v43;
                v39[3] = v97;
                v39[4] = a1;
                v39[5] = a2;
                v40 = v97;

                preferredElementSize = UIMenuElementSizeSmall;
                v81.super.super.isa = 0;
                v85 = sub_1000600B0;
                v86 = v39;
                v84 = v50;
                UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v41 = *(aBlock[0] + 16);
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v7 = v95;
              }

              while (v33 != v34);

              v52 = aBlock[0];
              if (!(aBlock[0] >> 62))
              {
                goto LABEL_42;
              }

              goto LABEL_49;
            }

            goto LABEL_51;
          }
        }

        else
        {
          v33 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33)
          {
            goto LABEL_22;
          }
        }

        v52 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
LABEL_42:

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
          v53 = v52;
LABEL_43:

          v54._countAndFlagsBits = 0;
          v54._object = 0xE000000000000000;
          v103.value.super.isa = 0;
          v103.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v54, 0, v103, 1, 0xFFFFFFFFFFFFFFFFLL, v53, v81.super.super.isa).super.super.isa;
          v55 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_100060114;
          aBlock[5] = v55;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10005C0E4;
          aBlock[3] = &unk_1000AF778;
          v56 = _Block_copy(aBlock);
          v57 = objc_opt_self();

          v58 = [v57 elementWithProvider:v56];
          _Block_release(v56);

          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_10008F940;
          *(v59 + 32) = v58;
          v60 = v58;
          v61._countAndFlagsBits = 0;
          v61._object = 0xE000000000000000;
          v104.value.super.isa = 0;
          v104.is_nil = 0;
          v62 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v61, 0, v104, 1, 0xFFFFFFFFFFFFFFFFLL, v59, v82).super.super.isa;
          sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
          v63 = String._bridgeToObjectiveC()();
          v64 = [objc_opt_self() imageNamed:v63];

          v65 = swift_allocObject();
          v65[2] = v97;
          v65[3] = a1;
          v65[4] = a2;
          v66 = v97;

          v67 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_10008F940;
          *(v68 + 32) = v67;
          v69 = v67;
          v70._countAndFlagsBits = 0;
          v70._object = 0xE000000000000000;
          v105.value.super.isa = 0;
          v105.is_nil = 0;
          v71 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v70, 0, v105, 1, 0xFFFFFFFFFFFFFFFFLL, v68, 0).super.super.isa;
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_10008F920;
          *(v72 + 32) = v90;
          *(v72 + 40) = isa;
          *(v72 + 48) = v62;
          *(v72 + 56) = v71;
          v73 = v90.super.super.isa;
          v74 = isa;
          v75 = v62;
          v76 = v71;
          v77._countAndFlagsBits = 0;
          v77._object = 0xE000000000000000;
          v106.value.super.isa = 0;
          v106.is_nil = 0;
          v78 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v77, 0, v106, 1, 0xFFFFFFFFFFFFFFFFLL, v72, v83).super.super.isa;

          return v78;
        }

LABEL_49:
        sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

        v53 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_43;
      }
    }
  }

  sub_10001A2A8(0, &unk_1000BC480, UIMenu_ptr);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v101.value.super.isa = 0;
  v101.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v101, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v80).super.super.isa;
}

uint64_t sub_10005AE40()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100093B20, &v21);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_1000064E0(v10);
  }

  (*(v3 + 8))(v6, v2);
  v11 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v12 = *&v1[v11];
  if (v12 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v15 = *(v12 + 8 * j + 32);
      }

      v16 = v15;
      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v20 = v15;
      sub_10005D35C(&v20, v1);

      if (v17 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

uint64_t sub_10005B0FC(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v13 = a1;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v38 = a3;
  v39 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v37 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36 = v8;
    v40[0] = v20;
    *v18 = 136315650;
    *(v18 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100093C90, v40);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    *(v18 + 22) = 2080;
    v21 = v13;
    *(v18 + 24) = sub_100037B98(a2, a3, v40);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s order: %@ identifier: %s", v18, 0x20u);
    sub_100006390(v19, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v4 = v37;

    (*(v9 + 8))(v12, v36);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v22 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
  result = swift_beginAccess();
  v24 = *(v4 + v22);
  if (*(v24 + 16))
  {
    v25 = *(v4 + v22);

    v27 = v38;
    v26 = v39;
    v28 = sub_100037A68(v39, v38);
    if (v29)
    {
      v30 = *(*(v24 + 56) + 8 * v28);

      sub_10001A2A8(0, &unk_1000BCA70, NSObject_ptr);
      v31 = *(v30 + 24);
      v32 = static NSObject.== infix(_:_:)();

      if (v32)
      {
        *(v30 + 32) = (*(v30 + 32) & 1) == 0;
      }

      else
      {
        v33 = *(v30 + 24);
        *(v30 + 24) = v13;
        v34 = v13;
      }

      sub_10005736C(v26, v27, v30);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10005B448(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v13 = a1;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  v16 = os_log_type_enabled(v14, v15);
  v34 = a2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v33 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v8;
    v35[0] = v20;
    *v18 = 136315650;
    *(v18 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100093C60, v35);
    *(v18 + 12) = 2112;
    *(v18 + 14) = v13;
    *v19 = v13;
    *(v18 + 22) = 2080;
    v21 = v13;
    *(v18 + 24) = sub_100037B98(a2, a3, v35);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s mode: %@ identifier: %s", v18, 0x20u);
    sub_100006390(v19, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v4 = v33;

    (*(v9 + 8))(v12, v32);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v22 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_iconStateMap;
  result = swift_beginAccess();
  v24 = *(v4 + v22);
  if (*(v24 + 16))
  {
    v25 = *(v4 + v22);

    v26 = v34;
    v27 = sub_100037A68(v34, a3);
    if (v28)
    {
      v29 = *(*(v24 + 56) + 8 * v27);

      v30 = *(v29 + 16);
      *(v29 + 16) = v13;
      v31 = v13;

      sub_10005736C(v26, a3, v29);
    }

    else
    {
    }
  }

  return result;
}

void sub_10005B744(void (*a1)(void *), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_recentsList);
    v7 = String._bridgeToObjectiveC()();
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = 0xD000000000000016;
    v8[4] = 0x80000001000928F0;
    v8[5] = a1;
    v8[6] = a2;
    aBlock[4] = sub_100060210;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005C070;
    aBlock[3] = &unk_1000AF818;
    v9 = _Block_copy(aBlock);
    v10 = v5;

    [v6 recentsForBundleIdentifier:v7 maxCount:5 completion:v9];
    _Block_release(v9);
  }

  else
  {
    a1(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10005B8D4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v8 = a1;
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    v27 = a5;
    sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
    v11 = 0;
    v28 = v8 & 0xC000000000000001;
    v29 = objc_opt_self();
    v12 = v8;
    do
    {
      if (v28)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v8 + 8 * v11 + 32);
      }

      v14 = v13;
      ++v11;
      v15 = [v13 name];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = String._bridgeToObjectiveC()();
      v17 = [v29 systemImageNamed:v16];

      v18 = swift_allocObject();
      v18[2] = v14;
      v18[3] = a2;
      v18[4] = a3;
      v18[5] = a4;
      v19 = a2;

      v22 = 0;
      v23 = 0;
      v25 = sub_100060270;
      v26 = v18;
      v24 = 0;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 = v12;
    }

    while (v9 != v11);
    a5 = v27;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

    v21 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
    v21 = _swiftEmptyArrayStorage;
  }

  a5(v21);
}

void sub_10005BBB4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a2;
  v13[4] = sub_1000602C4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10005BF38;
  v13[3] = &unk_1000AF890;
  v10 = _Block_copy(v13);
  v11 = a3;

  v12 = a2;

  [v12 fetchURL:v10];
  _Block_release(v10);
}

uint64_t sub_10005BCB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005FF58(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100006390(v12, &unk_1000BCA20, &qword_100090BC0);
    sub_10000589C(&unk_1000BCA60, &qword_1000905C8);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10008F930;
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v27 = 0xD00000000000001BLL;
    v28 = 0x8000000100093C20;
    v19 = [a5 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = v27;
    v25 = v28;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 32) = v24;
    *(v18 + 40) = v25;
    print(_:separator:terminator:)();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_100061CF8(v17, a3, a4);
    return (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_10005BF38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  }

  v9(v7);

  return sub_100006390(v7, &unk_1000BCA20, &qword_100090BC0);
}

uint64_t sub_10005C070(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  type metadata accessor for DOCSBRecentItem();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10005C0E4(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1000601C0, v5);
}

void sub_10005C178(uint64_t a1, uint64_t a2)
{
  sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_10005C1F4(void (*a1)(char *, char *), unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093B70, &v19);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100037B98(a1, a2, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s identifier: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  result = (*(v7 + 8))(v10, v6);
  v15 = *&v3[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (v15)
  {

    v16 = v3;
    v17 = v15;
    sub_100051A0C(a1, a2, v17, v16, a1, a2);
  }

  return result;
}

void sub_10005C430(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100093AC0, &v13);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100037B98(a1, a2, &v13);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v8, v4);
  sub_100056B60(a1, a2);
}

uint64_t sub_10005C628()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100037B98(0xD00000000000002CLL, 0x8000000100093AF0, &v13);
    *(v7 + 12) = 2080;
    v8 = Array.description.getter();
    v10 = sub_100037B98(v8, v9, &v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s dismissing identifiers: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v1 + 8))(v4, v0);
  return sub_10005AE40();
}

uint64_t sub_10005C82C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v46 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  static Logger.UI.getter();

  sub_100041D18(a5, a6);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  sub_100041D80(a5, a6);
  v20 = os_log_type_enabled(v18, v19);
  v48 = a4;
  v49 = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v47 = a6;
    v51 = v23;
    *v22 = 136315906;
    *(v22 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v51);
    v44 = v11;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100037B98(v46, a2, &v51);
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_100037B98(a3, a4, &v51);
    *(v22 + 32) = 2080;
    v24 = Data.description.getter();
    v26 = sub_100037B98(v24, v25, &v51);

    *(v22 + 34) = v26;
    v11 = v44;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s contextID: %s folderID: %s imageData: %s", v22, 0x2Au);
    swift_arrayDestroy();

    v12 = v43;
  }

  v27 = *(v12 + 8);
  v27(v17, v11);
  v28 = objc_allocWithZone(UIImage);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v30 = [v28 initWithData:isa];

  if (v30)
  {
    v31 = swift_allocObject();
    v32 = v49;
    v33 = v50;
    v31[2] = v50;
    v31[3] = v32;
    v31[4] = v48;
    v31[5] = v30;

    v34 = v33;
    v35 = v30;
    DOCRunInMainThread(_:)();
  }

  else
  {
    v37 = v45;
    static Logger.UI.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136315138;
      *(v40 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v51);
      _os_log_impl(&_mh_execute_header, v38, v39, "%s ERROR image was nil", v40, 0xCu);
      sub_1000064E0(v41);
    }

    return (v27)(v37, v11);
  }
}

void sub_10005CC74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = a4;
  v44 = a2;
  v45 = a3;
  v5 = type metadata accessor for Logger();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v43 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockIconViews;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
LABEL_27:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
LABEL_18:

    return;
  }

  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v15 = [v12 restorationIdentifier];
    if (!v15)
    {
      goto LABEL_5;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v17 == v44 && v19 == v45)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_20;
    }

LABEL_5:

    ++v11;
    if (v14 == v10)
    {
      goto LABEL_18;
    }
  }

LABEL_20:

  v22 = v43;
  static Logger.UI.getter();
  v23 = v13;
  v24 = v40;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v27 = 136315650;
    *(v27 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v46);
    *(v27 + 12) = 2080;
    v28 = v23;
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_100037B98(v30, v32, &v46);

    *(v27 + 14) = v33;
    *(v27 + 22) = 2080;
    v34 = v24;
    v35 = [v34 description];
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_100037B98(v36, v38, &v46);

    *(v27 + 24) = v39;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s updating faux icon view: %s with image: %s", v27, 0x20u);
    swift_arrayDestroy();

    (*(v41 + 8))(v43, v42);
  }

  else
  {

    (*(v41 + 8))(v22, v42);
  }

  [v23 setImage:v24];
}

uint64_t sub_10005D070(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v27 = a3;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v19 = a4;
    static Logger.UI.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093B70, &v28);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_100037B98(v19, a5, &v28);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s FAILED identifier: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    sub_100041D18(a1, a2);
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v26 = v25;
    (*(v15 + 8))(v18, v14);
    sub_10005C82C(v24, v26, a4, a5, a1, a2);
    sub_100041D6C(a1, a2);
  }
}

void sub_10005D35C(id *a1, _BYTE *a2)
{
  v70 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [*a1 restorationIdentifier];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  static Logger.UI.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v69 = v13;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v67 = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v68 = v15;
    v71 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_100037B98(0xD000000000000023, 0x8000000100093B20, &v71);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100037B98(v13, v68, &v71);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s dismissing identifier: %s", v20, 0x16u);
    swift_arrayDestroy();
    v15 = v68;
  }

  (*(v5 + 8))(v9, v4);
  [v10 bounds];
  v26 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
  v27 = v70;
  v28 = *&v70[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
  if (!v28)
  {
    __break(1u);
    goto LABEL_12;
  }

  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = [v28 view];
  [v10 convertRect:v33 toView:{v29, v30, v31, v32}];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v42 = *&v27[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView];
  if (!v42)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v43 = v27;
  v44 = v42;
  [v44 bounds];
  v49 = *&v43[v26];
  if (!v49)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v50 = v45;
  v51 = v46;
  v52 = v47;
  v53 = v48;
  v54 = [v49 view];
  [v44 convertRect:v54 toView:{v50, v51, v52, v53}];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v63 = *&v43[v26];
  if (v63)
  {
    v64 = v43[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_animationEnabled];
    v65 = v43;
    v66 = v63;
    sub_10004E3F0(v69, v15, v64, v66, v65, v35, v37, v39, v41, v56, v58, v60, v62);
  }
}

uint64_t sub_10005D744(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Notification.userInfo.getter();
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  *&v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v58 + 1) = v15;
  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v16 = sub_10004E030(&v56), (v17 & 1) == 0))
  {

    sub_1000519B8(&v56);
LABEL_12:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_13;
  }

  sub_100041480(*(v14 + 56) + 32 * v16, &v58);
  sub_1000519B8(&v56);

  if (!*(&v59 + 1))
  {
LABEL_13:
    sub_100006390(&v58, &qword_1000BCA30, &unk_100090E80);
    v53 = 0;
    v55 = 0;
    goto LABEL_14;
  }

  v18 = swift_dynamicCast();
  v19 = v56;
  if (!v18)
  {
    v19 = 0;
  }

  v53 = v19;
  if (v18)
  {
    v20 = v57;
  }

  else
  {
    v20 = 0;
  }

  v55 = v20;
LABEL_14:
  v21 = Notification.userInfo.getter();
  if (!v21)
  {
LABEL_24:
    v58 = 0u;
    v59 = 0u;
    goto LABEL_25;
  }

  v22 = v21;
  *&v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v58 + 1) = v23;
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v24 = sub_10004E030(&v56), (v25 & 1) == 0))
  {

    sub_1000519B8(&v56);
    goto LABEL_24;
  }

  sub_100041480(*(v22 + 56) + 32 * v24, &v58);
  sub_1000519B8(&v56);

  if (!*(&v59 + 1))
  {
LABEL_25:
    sub_100006390(&v58, &qword_1000BCA30, &unk_100090E80);
    v52 = 0;
    v28 = 0;
    goto LABEL_26;
  }

  v26 = swift_dynamicCast();
  v27 = v56;
  if (!v26)
  {
    v27 = 0;
  }

  v52 = v27;
  if (v26)
  {
    v28 = v57;
  }

  else
  {
    v28 = 0;
  }

LABEL_26:
  static Logger.UI.getter();
  (*(v5 + 16))(v8, a1, v4);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v29, v30))
  {

    (*(v5 + 8))(v8, v4);
    result = (*(v54 + 8))(v12, v9);
    v46 = v55;
    if (!v55)
    {
      return result;
    }

    goto LABEL_30;
  }

  v31 = swift_slowAlloc();
  v51 = v2;
  v32 = v31;
  v49 = swift_slowAlloc();
  v50 = v9;
  *&v58 = v49;
  *v32 = 136315906;
  *(v32 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100093B50, &v58);
  *(v32 + 12) = 2080;
  sub_10005FFD8(&unk_1000BCA38, &type metadata accessor for Notification);
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v12;
  v34 = v54;
  v36 = v35;
  (*(v5 + 8))(v8, v4);
  v37 = sub_100037B98(v33, v36, &v58);

  *(v32 + 14) = v37;
  *(v32 + 22) = 2080;
  v38 = v52;
  v56 = v52;
  v57 = v28;

  sub_10000589C(&qword_1000BBCF0, "0T");
  v39 = String.init<A>(describing:)();
  v41 = sub_100037B98(v39, v40, &v58);

  *(v32 + 24) = v41;
  *(v32 + 32) = 2080;
  v56 = v38;
  v57 = v28;
  v42 = String.init<A>(describing:)();
  v44 = sub_100037B98(v42, v43, &v58);

  *(v32 + 34) = v44;
  _os_log_impl(&_mh_execute_header, v29, v30, "%s notification: %s url: %s identifier: %s", v32, 0x2Au);
  swift_arrayDestroy();

  result = (*(v34 + 8))(v48, v50);
  v46 = v55;
  if (v55)
  {
LABEL_30:
    sub_10005C1F4(v53, v46);
  }

  return result;
}

id sub_10005DE20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

id sub_10005DE70(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_10005DF00(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10001A430(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v25[0] = v2 + 32;
  v25[1] = v4;
  v6 = _minimumMergeRunLength(_:)(v4);
  if (v6 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v5;
      do
      {
        v13 = *(v5 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = (v13 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
          v17 = *v16;
          v18 = v16[1];
          v19 = (*v15 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
          if (v17 == *v19 && v18 == v19[1])
          {
            break;
          }

          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v21 = *v15;
          v13 = v15[1];
          *v15 = v13;
          v15[1] = v21;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v6;
    v8 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for DOCSBFolderPresentationController(0);
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v24[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v8;
    sub_10005E094(v24, v26, v25, v7);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_10005E094(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v112 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_152;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v9 = *a3;
      v10 = (*(*a3 + 8 * v8) + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
      result = *v10;
      v11 = v10[1];
      v12 = (*(*a3 + 8 * v6) + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
      v13 = result == *v12 && v11 == v12[1];
      if (v13)
      {
        v4 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v4 = result;
      }

      v8 = v6 + 2;
      if (v6 + 2 < v5)
      {
        v14 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier;
        v15 = (v9 + 8 * v6 + 16);
        do
        {
          v16 = (*v15 + v14);
          result = *v16;
          v17 = v16[1];
          v18 = (*(v15 - 1) + v14);
          if (result == *v18 && v17 == v18[1])
          {
            if (v4)
            {
              goto LABEL_23;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v4 ^ result))
            {
              goto LABEL_22;
            }

            v14 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier;
          }

          ++v8;
          ++v15;
        }

        while (v5 != v8);
        v8 = v5;
      }

LABEL_22:
      if (v4)
      {
LABEL_23:
        if (v8 < v6)
        {
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        if (v6 < v8)
        {
          v20 = 8 * v8 - 8;
          v21 = 8 * v6;
          v22 = v8;
          v23 = v6;
          do
          {
            if (v23 != --v22)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_187;
              }

              v24 = *(v25 + v21);
              *(v25 + v21) = *(v25 + v20);
              *(v25 + v20) = v24;
            }

            ++v23;
            v20 -= 8;
            v21 += 8;
          }

          while (v23 < v22);
        }
      }
    }

    v26 = a3[1];
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v6))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          result = sub_10000F704(v7);
          v7 = result;
LABEL_154:
          v107 = *(v7 + 2);
          if (v107 < 2)
          {
          }

          while (*a3)
          {
            v108 = *&v7[16 * v107];
            v109 = *&v7[16 * v107 + 24];
            sub_10005E8E0((*a3 + 8 * v108), (*a3 + 8 * *&v7[16 * v107 + 16]), (*a3 + 8 * v109), v4);
            if (v113)
            {
            }

            if (v109 < v108)
            {
              goto LABEL_178;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_10000F704(v7);
            }

            if (v107 - 2 >= *(v7 + 2))
            {
              goto LABEL_179;
            }

            v110 = &v7[16 * v107];
            *v110 = v108;
            *(v110 + 1) = v109;
            result = sub_10000F678(v107 - 1);
            v107 = *(v7 + 2);
            if (v107 <= 1)
            {
            }
          }

LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        if (v6 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = v6 + a4;
        }

        if (v27 < v6)
        {
          goto LABEL_183;
        }

        if (v8 != v27)
        {
          v28 = *a3;
          v29 = *a3 + 8 * v8 - 8;
          v4 = (v6 - v8);
          do
          {
            v30 = *(v28 + 8 * v8);
            v31 = v4;
            v32 = v29;
            do
            {
              v33 = (v30 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
              v34 = *v33;
              v35 = v33[1];
              v36 = (*v32 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
              v37 = v34 == *v36 && v35 == v36[1];
              if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                break;
              }

              if (!v28)
              {
                goto LABEL_184;
              }

              v38 = *v32;
              v30 = v32[1];
              *v32 = v30;
              v32[1] = v38;
              --v32;
            }

            while (!__CFADD__(v31++, 1));
            ++v8;
            v29 += 8;
            --v4;
          }

          while (v8 != v27);
          v8 = v27;
        }
      }
    }

    if (v8 < v6)
    {
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v114 = v8;
    if ((result & 1) == 0)
    {
      result = sub_10000D8A0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v41 = *(v7 + 2);
    v40 = *(v7 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_10000D8A0((v40 > 1), v41 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v42;
    v43 = &v7[16 * v41];
    *(v43 + 4) = v6;
    *(v43 + 5) = v114;
    if (!*v112)
    {
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

    if (!v41)
    {
      goto LABEL_3;
    }

    __dst = *v112;
    do
    {
      v44 = v42 - 1;
      if (v42 >= 4)
      {
        v49 = &v7[16 * v42 + 32];
        v50 = *(v49 - 64);
        v51 = *(v49 - 56);
        v55 = __OFSUB__(v51, v50);
        v52 = v51 - v50;
        if (v55)
        {
          goto LABEL_166;
        }

        v54 = *(v49 - 48);
        v53 = *(v49 - 40);
        v55 = __OFSUB__(v53, v54);
        v47 = v53 - v54;
        v48 = v55;
        if (v55)
        {
          goto LABEL_167;
        }

        v56 = &v7[16 * v42];
        v58 = *v56;
        v57 = *(v56 + 1);
        v55 = __OFSUB__(v57, v58);
        v59 = v57 - v58;
        if (v55)
        {
          goto LABEL_169;
        }

        v55 = __OFADD__(v47, v59);
        v60 = v47 + v59;
        if (v55)
        {
          goto LABEL_172;
        }

        if (v60 >= v52)
        {
          v78 = &v7[16 * v44 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v55 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v55)
          {
            goto LABEL_176;
          }

          if (v47 < v81)
          {
            v44 = v42 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_74;
      }

      if (v42 == 3)
      {
        v45 = *(v7 + 4);
        v46 = *(v7 + 5);
        v55 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        v48 = v55;
LABEL_74:
        if (v48)
        {
          goto LABEL_168;
        }

        v61 = &v7[16 * v42];
        v63 = *v61;
        v62 = *(v61 + 1);
        v64 = __OFSUB__(v62, v63);
        v65 = v62 - v63;
        v66 = v64;
        if (v64)
        {
          goto LABEL_171;
        }

        v67 = &v7[16 * v44 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_174;
        }

        if (__OFADD__(v65, v70))
        {
          goto LABEL_175;
        }

        if (v65 + v70 >= v47)
        {
          if (v47 < v70)
          {
            v44 = v42 - 2;
          }

          goto LABEL_95;
        }

        goto LABEL_88;
      }

      v71 = &v7[16 * v42];
      v73 = *v71;
      v72 = *(v71 + 1);
      v55 = __OFSUB__(v72, v73);
      v65 = v72 - v73;
      v66 = v55;
LABEL_88:
      if (v66)
      {
        goto LABEL_170;
      }

      v74 = &v7[16 * v44];
      v76 = *(v74 + 4);
      v75 = *(v74 + 5);
      v55 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v55)
      {
        goto LABEL_173;
      }

      if (v77 < v65)
      {
        break;
      }

LABEL_95:
      if (v44 - 1 >= v42)
      {
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
        goto LABEL_177;
      }

      v82 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      v121 = v7;
      v117 = v44 - 1;
      v118 = v44;
      v83 = *&v7[16 * v44 + 32];
      v84 = *&v7[16 * v44 + 40];
      v119 = *&v7[16 * v44 + 16];
      v120 = v84;
      v85 = (v82 + 8 * v119);
      v86 = 8 * v83;
      v7 = (v82 + 8 * v83);
      v87 = 8 * v84;
      v88 = (v82 + 8 * v84);
      v89 = 8 * v83 - 8 * v119;
      v90 = 8 * v84 - 8 * v83;
      if (v89 >= v90)
      {
        if (v7 != __dst || v88 <= __dst)
        {
          memmove(__dst, (v82 + 8 * v83), 8 * v84 - 8 * v83);
        }

        v91 = &__dst[v90];
        if (v90 >= 1 && v86 > 8 * v119)
        {
          v93 = v119;
          while (1)
          {
            v4 = v7 - 8;
            v88 -= 8;
            v100 = v91;
            while (1)
            {
              v101 = *(v100 - 1);
              v100 -= 8;
              v102 = *(v101 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
              v103 = (*v4 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
              v104 = *(v101 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier) == *v103 && v102 == v103[1];
              if (!v104 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              if (v88 + 8 != v91)
              {
                *v88 = *v100;
              }

              v88 -= 8;
              v91 = v100;
              if (v100 <= __dst)
              {
                v91 = v100;
                v92 = __dst;
                v4 = v7;
                goto LABEL_141;
              }
            }

            if (v88 + 8 != v7)
            {
              *v88 = *v4;
            }

            if (v91 <= __dst)
            {
              v92 = __dst;
              goto LABEL_141;
            }

            v92 = __dst;
            v7 -= 8;
            if (v85 >= v4)
            {
              goto LABEL_141;
            }
          }
        }

        v92 = __dst;
        v4 = v7;
        goto LABEL_139;
      }

      if (v85 != __dst || v7 <= __dst)
      {
        memmove(__dst, (v82 + 8 * v119), 8 * v83 - 8 * v119);
      }

      v91 = &__dst[v89];
      if (v89 < 1 || v87 <= v86)
      {
        v92 = __dst;
        v4 = v85;
LABEL_139:
        v93 = v119;
        goto LABEL_141;
      }

      v92 = __dst;
      v93 = v119;
      do
      {
        v94 = (*v7 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v95 = *v94;
        v96 = v94[1];
        v97 = (*v92 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v98 = v95 == *v97 && v96 == v97[1];
        if (!v98 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v99 = v7;
          v13 = v85 == v7;
          v7 += 8;
          if (v13)
          {
            goto LABEL_114;
          }

LABEL_113:
          *v85 = *v99;
          goto LABEL_114;
        }

        v99 = v92;
        v13 = v85 == v92;
        v92 += 8;
        if (!v13)
        {
          goto LABEL_113;
        }

LABEL_114:
        v85 += 8;
      }

      while (v92 < v91 && v7 < v88);
      v4 = v85;
LABEL_141:
      if (v4 != v92 || v4 >= &v92[(v91 - v92 + (v91 - v92 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v4, v92, 8 * ((v91 - v92) / 8));
      }

      v105 = v121;
      if (v120 < v93)
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v105 = sub_10000F704(v121);
      }

      if (v118 > *(v105 + 2))
      {
        goto LABEL_165;
      }

      v106 = &v105[16 * v117];
      *(v106 + 4) = v93;
      *(v106 + 5) = v120;
      result = sub_10000F678(v118);
      v7 = v105;
      v42 = *(v105 + 2);
    }

    while (v42 > 1);
LABEL_3:
    v6 = v114;
    v5 = a3[1];
    if (v114 < v5)
    {
      continue;
    }

    break;
  }

LABEL_152:
  v4 = *v112;
  if (*v112)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_154;
    }

    goto LABEL_185;
  }

LABEL_190:
  __break(1u);
  return result;
}

uint64_t sub_10005E8E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_29:
      v21 = v6 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = *(v22 - 1);
        v22 -= 8;
        v24 = *(v23 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8);
        v25 = (*v21 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v26 = *(v23 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier) == *v25 && v24 == v25[1];
        if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v5 + 8 != v6)
          {
            *v5 = *v21;
          }

          if (v14 <= v4 || (v6 -= 8, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_44;
          }

          goto LABEL_29;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
      }

      while (v22 > v4);
      v14 = v22;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = (*v6 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v16 = *v15;
        v17 = v15[1];
        v18 = (*v4 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier);
        v19 = v16 == *v18 && v17 == v18[1];
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v20 = v6;
        v19 = v7 == v6;
        v6 += 8;
        if (!v19)
        {
          goto LABEL_20;
        }

LABEL_21:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_23;
        }
      }

      v20 = v4;
      v19 = v7 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_21;
      }

LABEL_20:
      *v7 = *v20;
      goto LABEL_21;
    }

LABEL_23:
    v6 = v7;
  }

LABEL_44:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10005EB48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000589C(&unk_1000BCAD0, &unk_100091020);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005EDEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000589C(&qword_1000BCAC0, &qword_100091010);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005F094(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100037A68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10005EB48(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100037A68(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10005F388();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_10005F20C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100037A68(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10005EDEC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100037A68(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10005F4F4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

id sub_10005F388()
{
  v1 = v0;
  sub_10000589C(&unk_1000BCAD0, &unk_100091020);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10005F4F4()
{
  v1 = v0;
  sub_10000589C(&qword_1000BCAC0, &qword_100091010);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10005F664(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  (*(v9 + 16))(v12, a5, v8);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = v13;
    v20 = v19;
    v26 = swift_slowAlloc();
    v31 = v26;
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100093A90, &v31);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100037B98(v28, a2, &v31);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_100037B98(v29, a4, &v31);
    *(v20 + 32) = 2080;
    sub_10005FFD8(&unk_1000BC418, &type metadata accessor for URL);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v9 + 8))(v12, v8);
    v24 = sub_100037B98(v21, v23, &v31);

    *(v20 + 34) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s contextID: %s folderID: %s contextID: %s", v20, 0x2Au);
    swift_arrayDestroy();

    return (*(v30 + 8))(v16, v27);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    return (*(v30 + 8))(v16, v13);
  }
}

uint64_t sub_10005F9D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v30 = a1;
  v31 = a3;
  v32 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v8 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_10005FF58(a5, v13);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v29 = v15;
    v22 = v21;
    v33 = swift_slowAlloc();
    *v22 = 136315906;
    *(v22 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093A10, &v33);
    v28 = v14;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100037B98(v30, a2, &v33);
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_100037B98(v31, a4, &v33);
    *(v22 + 32) = 2080;
    sub_10005FF58(v13, v10);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_100006390(v13, &unk_1000BCA20, &qword_100090BC0);
    v26 = sub_100037B98(v23, v25, &v33);

    *(v22 + 34) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s contextID: %s folderID: %s url: %s", v22, 0x2Au);
    swift_arrayDestroy();

    return (*(v29 + 8))(v18, v28);
  }

  else
  {

    sub_100006390(v13, &unk_1000BCA20, &qword_100090BC0);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_10005FD0C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v21 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v22 = a5;
    v24 = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_100037B98(0xD000000000000046, 0x80000001000939C0, &v24);
    v23 = v10;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100037B98(v21, a2, &v24);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_100037B98(a3, a4, &v24);
    *(v18 + 32) = 1024;
    *(v18 + 34) = v22 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s contextID: %s folderID: %s animationExpanded: %{BOOL}d", v18, 0x26u);
    swift_arrayDestroy();

    return (*(v11 + 8))(v14, v23);
  }

  else
  {

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10005FF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FFD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100060020()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100060084()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  return sub_10005B0FC(v1, v2, v3);
}

uint64_t sub_1000600B0()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  return sub_10005B448(v1, v2, v3);
}

uint64_t sub_1000600DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006011C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006015C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_10005C1F4(v1, v2);
}

uint64_t sub_100060188()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000601C8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100060228()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006027C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000602D0()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;

  v5 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v5 format:{0.0, 0.0, v2, v4}];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100062288;
  *(v8 + 24) = v7;
  v12[4] = sub_10000634C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100074FCC;
  v12[3] = &unk_1000AF9F8;
  v9 = _Block_copy(v12);

  v10 = [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

void sub_1000604C4(uint64_t a1, uint64_t a2, char a3, char *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = [objc_allocWithZone(UISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setOn:a3 & 1];
  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [objc_allocWithZone(UILabel) init];
  v15 = [objc_opt_self() labelColor];
  [v14 setTextColor:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setText:v16];

  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10008F960;
  *(v17 + 32) = v14;
  *(v17 + 40) = v13;
  v18 = objc_allocWithZone(UIStackView);
  sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
  v19 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v18 initWithArrangedSubviews:isa];

  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = *&a4[*a6];
  *&a4[*a6] = v13;
  v23 = v13;

  sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  v25 = a4;
  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v23 addAction:v26 forControlEvents:{4096, 0, 0, 0, a8, v24}];

  v29 = v21;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v27 = *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void sub_1000607BC(void *a1)
{
  v2 = v1;
  v4 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v127 = &v114 - v6;
  v126 = type metadata accessor for URL();
  v7 = *(v126 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v126);
  v10 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v114 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v130 = &v114 - v20;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v122 = v15;
    v124 = v13;
    v123 = v10;
    v23 = objc_allocWithZone(UIViewController);
    v125 = a1;
    v24 = [v23 init];
    v25 = [objc_allocWithZone(UIWindow) initWithWindowScene:v22];
    v26 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window;
    v27 = *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window];
    *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_window] = v25;
    v28 = v25;

    v29 = v24;
    v129 = v28;
    [v28 setRootViewController:v29];
    type metadata accessor for DOCSBSceneRootViewController();
    v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v31 = *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController];
    v121 = OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController;
    *&v2[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_viewController] = v30;
    v118 = v30;
    v32 = v30;

    v33 = v29;
    *&v32[OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_dockSceneInteractionDelegate + 8] = &off_1000AF628;
    swift_unknownObjectWeakAssign();
    v34 = v32;
    [v33 addChildViewController:v34];
    v35 = [v34 view];
    if (v35)
    {
      v36 = v35;
      v117 = v26;
      v37 = [v33 view];
      if (v37)
      {
        v38 = v37;
        p_type = &stru_1000B6FF0.type;
        [v37 bounds];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;

        [v36 setFrame:{v41, v43, v45, v47}];
        v48 = [v33 view];
        if (v48)
        {
          v49 = v48;
          v119 = v14;
          v120 = v7;
          v50 = [v34 view];

          if (v50)
          {
            [v49 addSubview:v50];

            [v34 didMoveToParentViewController:v33];
            v128 = v33;

            v51 = v130;
            static Logger.Application.getter();
            v52 = v125;
            v53 = v34;
            v54 = v2;
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.debug.getter();

            v125 = v52;
            if (os_log_type_enabled(v55, v56))
            {
              v116 = v53;
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v115 = swift_slowAlloc();
              v131[0] = v115;
              *v57 = 136316162;
              *(v57 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100093F30, v131);
              *(v57 + 12) = 2080;
              v59 = [v22 session];
              v60 = [v59 persistentIdentifier];

              v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v63 = v62;

              v64 = sub_100037B98(v61, v63, v131);

              *(v57 + 14) = v64;
              *(v57 + 22) = 2112;
              *(v57 + 24) = v22;
              *v58 = v22;
              *(v57 + 32) = 2112;
              v65 = *&v2[v117];
              if (!v65)
              {
LABEL_30:

                __break(1u);
                return;
              }

              v66 = v125;
              v67 = v65;
              v53 = v116;

              *(v57 + 34) = v67;
              *(v57 + 42) = 2112;
              *(v57 + 44) = v53;
              v68 = v118;
              v58[1] = v65;
              v58[2] = v68;
              v69 = v53;
              _os_log_impl(&_mh_execute_header, v55, v56, "%s: sceneIdentifier: %s scene: %@, window: %@, doc vc: %@", v57, 0x34u);
              sub_10000589C(&qword_1000BC328, &qword_100090AD0);
              swift_arrayDestroy();

              swift_arrayDestroy();

              (*(v122 + 8))(v130, v119);
              v70 = v123;
              p_type = (&stru_1000B6FF0 + 16);
            }

            else
            {

              (*(v122 + 8))(v51, v119);
              v70 = v123;
            }

            [v129 makeKeyAndVisible];
            v79 = v128;
            v80 = [v128 view];
            v81 = v120;
            if (v80)
            {
              v82 = v80;
              [v80 p_type[352]];
              v84 = v83;
              v86 = v85;
              v88 = v87;
              v90 = v89;

              v91 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame:{v84, v86, v88, v90}];
              [v91 setUserInteractionEnabled:0];
              [v91 setAutoresizingMask:18];
              v92 = [v79 view];
              if (v92)
              {
                v93 = v92;
                [v92 insertSubview:v91 atIndex:0];

                sub_1000546F8(v53);
                [*&v54[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_recentsList] startObserving];
                v94 = *&v2[v121];
                if (!v94)
                {
LABEL_22:
                  v111 = v129;
                  v131[0] = v129;
                  swift_getKeyPath();
                  swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v112 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

                  v113 = *&v54[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_frameObserver];
                  *&v54[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_frameObserver] = v112;

                  return;
                }

                v130 = v91;
                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v95 = v94;
                URL.init(fileURLWithPath:)();

                URL.init(fileURLWithPath:)();
                v96 = [objc_opt_self() defaultManager];
                v97 = String._bridgeToObjectiveC()();
                [v96 fileExistsAtPath:v97 isDirectory:0];

                v98 = v126;
                v99 = v127;
                (*(v81 + 16))(v127, v70, v126);
                (*(v81 + 56))(v99, 0, 1, v98);
                sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_100090DF0;
                if (qword_1000BB700 != -1)
                {
                  swift_once();
                }

                v101 = v53;
                v102 = qword_1000BF120;
                *(inited + 32) = qword_1000BF118;
                *(inited + 40) = v102;
                v103 = qword_1000BB708;

                if (v103 != -1)
                {
                  swift_once();
                }

                v104 = qword_1000BF130;
                *(inited + 48) = qword_1000BF128;
                *(inited + 56) = v104;
                __chkstk_darwin(v104);
                v105 = v127;
                v106 = v124;
                *(&v114 - 6) = v127;
                *(&v114 - 5) = v106;
                *(&v114 - 4) = v70;
                *(&v114 - 3) = v95;
                *(&v114 - 2) = v54;

                sub_100064DDC(sub_100062254, (&v114 - 8), inited);
                swift_setDeallocating();
                swift_arrayDestroy();
                sub_100006390(v105, &unk_1000BCA20, &qword_100090BC0);
                v107 = *&v54[OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_fauxDockView];
                if (v107)
                {
                  v108 = v107;
                  sub_100054C40(v108);

                  v53 = v101;
                  sub_1000550A8(v101);

                  v109 = *(v81 + 8);
                  v110 = v126;
                  v109(v70, v126);
                  v109(v106, v110);
                  v91 = v130;
                  goto LABEL_22;
                }

                goto LABEL_29;
              }

LABEL_28:
              __break(1u);
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  static Logger.Application.getter();
  v71 = a1;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v131[0] = v75;
    *v74 = 136315138;
    swift_getObjectType();
    v76 = _typeName(_:qualified:)();
    v78 = sub_100037B98(v76, v77, v131);

    *(v74 + 4) = v78;
    _os_log_impl(&_mh_execute_header, v72, v73, "Denying creation of browser window / scene.  Unexpected scene type received: %s)", v74, 0xCu);
    sub_1000064E0(v75);
  }

  (*(v15 + 8))(v18, v14);
}

uint64_t sub_100061428(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000018, 0x8000000100093EC0, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10006165C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100093EA0, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100061890(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD00000000000001CLL, 0x8000000100093E80, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100061AC4(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v20 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100037B98(0xD00000000000001BLL, 0x8000000100093E60, &v20);
    *(v11 + 12) = 2080;
    v12 = v7;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_100037B98(v14, v16, &v20);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s scene: %s", v11, 0x16u);
    swift_arrayDestroy();

    return (*(v3 + 8))(v6, v19);
  }

  else
  {

    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_100061CF8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v28 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  (*(v6 + 16))(v9, a1, v5);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = a3;
    v18 = v17;
    v27 = swift_slowAlloc();
    v29 = v27;
    *v18 = 136315650;
    *(v18 + 4) = sub_100037B98(0xD00000000000001ALL, 0x8000000100093C40, &v29);
    *(v18 + 12) = 2080;
    sub_10005FFD8(&unk_1000BC418, &type metadata accessor for URL);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v10;
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    v22 = sub_100037B98(v19, v21, &v29);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_100037B98(v28, v26, &v29);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s url: %s preferredApp: %s", v18, 0x20u);
    swift_arrayDestroy();

    return (*(v11 + 8))(v14, v25);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t *sub_100062040(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000620A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000620E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10006218C()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerContainerView) setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  v2 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_headerView);

  return [v2 layoutIfNeeded];
}

id sub_1000621FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

void sub_100062320(void *a1)
{
  v2 = v1;
  v4 = sub_10000589C(&qword_1000BCBF8, &unk_100091060);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32[-v6];
  v8 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v32[-v10];
  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_title + 8))
  {
    v12 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_title);
    v13 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_title + 8);

    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v15 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_subtitle + 8))
  {
    v16 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_subtitle);
    v17 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_subtitle + 8);

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v19 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  v20 = OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_url;
  swift_beginAccess();
  sub_100042774(v2 + v20, v11, &unk_1000BCA20, &qword_100090BC0);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v24 = 0;
  if ((*(v22 + 48))(v11, 1, v21) != 1)
  {
    URL._bridgeToObjectiveC()(v23);
    v24 = v25;
    (*(v22 + 8))(v11, v21);
  }

  v26 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v24 forKey:v26];
  swift_unknownObjectRelease();

  v27 = OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_uuid;
  swift_beginAccess();
  sub_100042774(v2 + v27, v7, &qword_1000BCBF8, &unk_100091060);
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  isa = 0;
  if ((*(v29 + 48))(v7, 1, v28) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v29 + 8))(v7, v28);
  }

  v31 = String._bridgeToObjectiveC()();
  [a1 encodeObject:isa forKey:v31];
  swift_unknownObjectRelease();
}

id sub_100062768()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewModelCodingTest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ViewModelCodingTest()
{
  result = qword_1000BCBD8;
  if (!qword_1000BCBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006287C()
{
  sub_100062988(319, &qword_1000BCBE8, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100062988(319, &qword_1000BCBF0, &type metadata accessor for UUID);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100062988(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

id sub_1000629DC(void *a1)
{
  v3 = sub_10000589C(&qword_1000BCBF8, &unk_100091060);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v45 = &v40 - v5;
  v6 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v10 = &v1[OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_title];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v1[OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_subtitle];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_url;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v41 = *(v14 + 56);
  v40 = v14 + 56;
  v41(&v1[v12], 1, 1, v13);
  v15 = OBJC_IVAR____TtC21DockFolderViewService19ViewModelCodingTest_uuid;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v43 = *(v17 + 56);
  v44 = v15;
  v42 = v17 + 56;
  v43(&v1[v15], 1, 1, v16);
  v18 = String._bridgeToObjectiveC()();
  v19 = [a1 decodeObjectForKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (*(&v50 + 1))
  {
    sub_10001A344(&v51, v53);
    swift_dynamicCast();
    v20 = v46;
    v21 = v47;
  }

  else
  {
    sub_100006390(&v51, &qword_1000BCA30, &unk_100090E80);
    v20 = 0;
    v21 = 0;
  }

  v22 = *(v10 + 1);
  *v10 = v20;
  *(v10 + 1) = v21;

  v23 = String._bridgeToObjectiveC()();
  v24 = [a1 decodeObjectForKey:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v25 = v45;
  v51 = v49;
  v52 = v50;
  if (*(&v50 + 1))
  {
    sub_10001A344(&v51, v53);
    swift_dynamicCast();
    v26 = v46;
    v27 = v47;
  }

  else
  {
    sub_100006390(&v51, &qword_1000BCA30, &unk_100090E80);
    v26 = 0;
    v27 = 0;
  }

  v28 = *(v11 + 1);
  *v11 = v26;
  *(v11 + 1) = v27;

  v29 = String._bridgeToObjectiveC()();
  v30 = [a1 decodeObjectForKey:v29];

  if (v30)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (*(&v50 + 1))
  {
    sub_10001A344(&v51, v53);
    swift_dynamicCast();
    v31 = v9;
    v32 = 0;
  }

  else
  {
    sub_100006390(&v51, &qword_1000BCA30, &unk_100090E80);
    v31 = v9;
    v32 = 1;
  }

  v41(v31, v32, 1, v13);
  swift_beginAccess();
  sub_100062F8C(v9, &v1[v12], &unk_1000BCA20, &qword_100090BC0);
  swift_endAccess();
  v33 = String._bridgeToObjectiveC()();
  v34 = [a1 decodeObjectForKey:v33];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v51 = v49;
  v52 = v50;
  if (*(&v50 + 1))
  {
    sub_10001A344(&v51, v53);
    swift_dynamicCast();
    v35 = v25;
    v36 = 0;
  }

  else
  {
    sub_100006390(&v51, &qword_1000BCA30, &unk_100090E80);
    v35 = v25;
    v36 = 1;
  }

  v43(v35, v36, 1, v16);
  v37 = v44;
  swift_beginAccess();
  sub_100062F8C(v25, &v1[v37], &qword_1000BCBF8, &unk_100091060);
  swift_endAccess();
  v38 = type metadata accessor for ViewModelCodingTest();
  v48.receiver = v1;
  v48.super_class = v38;
  return objc_msgSendSuper2(&v48, "init");
}

uint64_t sub_100062F8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000589C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100062FF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView] == 1)
  {
    v8 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
    if (v8)
    {
      v9 = v8;
      [v1 bounds];
      [v9 setFrame:?];
    }
  }

  static Logger.UI.getter();
  v10 = v1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v3;
    v23 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100094230, &v23);
    *(v13 + 12) = 2080;
    v15 = v10;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100037B98(v17, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s self: %s", v13, 0x16u);
    swift_arrayDestroy();

    return (*(v4 + 8))(v7, v22);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

BOOL sub_100063294()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  v7 = [v1 indexPathsForVisibleItems];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v7) = sub_100063A64(v6, v8);

  if ((v7 & 1) != 0 && (isa = IndexPath._bridgeToObjectiveC()().super.isa, v10 = [v1 cellForItemAtIndexPath:isa], isa, v10))
  {
    [v1 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v10 frame];
    v24.x = v19;
    v24.y = v20;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v21 = CGRectContainsPoint(v25, v24);
  }

  else
  {
    v21 = 0;
  }

  (*(v3 + 8))(v6, v2);
  return v21;
}

id sub_100063450()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "contentOffset");
}

id sub_100063488(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 contentSize];
  v11 = v10;
  static Logger.UI.getter();
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    HIDWORD(v28) = v14;
    v16 = v15;
    v29 = swift_slowAlloc();
    v35 = v29;
    *v16 = 136315906;
    *(v16 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100094360, &v35);
    v30 = v4;
    v31 = 0;
    *(v16 + 12) = 2080;
    v32 = 0;
    v33 = v11;
    v34 = 0x3FF0000000000000;
    type metadata accessor for CGRect(0);
    v17 = String.init<A>(describing:)();
    v19 = sub_100037B98(v17, v18, &v35);

    *(v16 + 14) = v19;
    *(v16 + 22) = 1024;
    *(v16 + 24) = a1 & 1;
    *(v16 + 28) = 2080;
    v20 = v12;
    v21 = [v20 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = a1;
    v25 = v24;

    v26 = sub_100037B98(v22, v25, &v35);
    a1 = v23;

    *(v16 + 30) = v26;
    _os_log_impl(&_mh_execute_header, v13, BYTE4(v28), "%s bottomFrame: %s, animated: %{BOOL}d self: %s", v16, 0x26u);
    swift_arrayDestroy();

    (*(v5 + 8))(v9, v30);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  return [v12 scrollRectToVisible:a1 & 1 animated:{0.0, 0.0, v11, 1.0}];
}

id sub_100063768(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2 contentSize];
  v11 = v10 + -1.0;
  [v2 contentSize];
  v13 = v12;
  static Logger.UI.getter();
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v4;
    v18 = v17;
    v32 = swift_slowAlloc();
    v38 = v32;
    *v18 = 136315906;
    *(v18 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094340, &v38);
    HIDWORD(v31) = v16;
    *(v18 + 12) = 2080;
    v34 = 0;
    v35 = v11;
    v36 = v13;
    v37 = 0x3FF0000000000000;
    type metadata accessor for CGRect(0);
    v19 = String.init<A>(describing:)();
    v21 = sub_100037B98(v19, v20, &v38);

    *(v18 + 14) = v21;
    *(v18 + 22) = 1024;
    *(v18 + 24) = a1 & 1;
    *(v18 + 28) = 2080;
    v22 = v14;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v14;
    v26 = a1;
    v28 = v27;

    v29 = sub_100037B98(v24, v28, &v38);
    a1 = v26;
    v14 = v25;

    *(v18 + 30) = v29;
    _os_log_impl(&_mh_execute_header, v15, BYTE4(v31), "%s bottomFrame: %s, animated: %{BOOL}d self: %s", v18, 0x26u);
    swift_arrayDestroy();

    (*(v5 + 8))(v9, v33);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  return [v14 scrollRectToVisible:a1 & 1 animated:{0.0, v11, v13, 1.0}];
}

BOOL sub_100063A64(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for IndexPath() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_100064D54();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

id sub_100063B3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "contentOffset", v6);
  v10 = v9;
  [v1 contentSize];
  v12 = v11;
  [v1 frame];
  v13 = v12 - CGRectGetHeight(v28);
  result = [v1 contentInset];
  v16 = v13 + v15;
  v17 = v13 + v15 + -2.0;
  v18 = v13 + v15 + 2.0;
  if (v17 > v18)
  {
    __break(1u);
    return result;
  }

  if (v17 <= v10)
  {
    v19 = v10 <= v18;
    if (v10 == v16)
    {
      goto LABEL_4;
    }

LABEL_6:
    v20 = v19;
    goto LABEL_7;
  }

  v19 = 0;
  if (v10 != v16)
  {
    goto LABEL_6;
  }

LABEL_4:
  v20 = 1;
LABEL_7:
  static Logger.UI.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v23 = 136316418;
    *(v23 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100094320, &v26);
    *(v23 + 12) = 1024;
    *(v23 + 14) = v10 == v16;
    *(v23 + 18) = 1024;
    *(v23 + 20) = v19;
    *(v23 + 24) = 2048;
    *(v23 + 26) = v16;
    *(v23 + 34) = 2048;
    *(v23 + 36) = v10;
    *(v23 + 44) = 2048;
    *(v23 + 46) = v13;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s isAtBottom: %{BOOL}d, isWithinRange: %{BOOL}d scrollToBottomPoint: %f, contentOffsetY: %f contentSizeMinusFrame: %f", v23, 0x36u);
    sub_1000064E0(v24);
  }

  (*(v4 + 8))(v8, v3);
  return v20;
}

void sub_100063F30(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView;
  v4 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
  if (a1)
  {
    if (!v4)
    {
LABEL_6:

      [a1 removeFromSuperview];
      return;
    }

    v5 = a1;
    v13 = *&v1[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_collectionView];
    type metadata accessor for FolderCollectionView();
    v6 = v13;
    v7 = v5;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }

    v4 = *&v2[v3];
    if (!v4)
    {
      a1 = v7;
      goto LABEL_6;
    }
  }

  else if (!v4)
  {
    return;
  }

  v14 = v4;
  if (v2[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_usesMaterialBackgroundView] == 1 && (v9 = *&v2[OBJC_IVAR____TtC21DockFolderViewService33FolderCollectionViewContainerView_materialBackgroundView]) != 0)
  {
    v10 = v4;
    v11 = [v9 contentView];
    [v11 addSubview:v10];
  }

  else
  {
    v12 = v4;
  }

  [v2 addSubview:v14];
}

uint64_t sub_100064178(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC21DockFolderViewService20FolderCollectionView_itemsPinnedToBottomCount] = 0;
  type metadata accessor for DOCSBFolderCollectionViewLayout();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    type metadata accessor for DOCSBFolderFanCollectionViewLayout();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = a1;
    v17 = [v14 isKindOfClass:ObjCClassFromMetadata];
    v6[OBJC_IVAR____TtC21DockFolderViewService20FolderCollectionView__displayMode] = v17;
    v33.receiver = v6;
    v33.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v33, "initWithFrame:collectionViewLayout:", v14, a2, a3, a4, a5);
    v19 = objc_opt_self();
    v20 = v18;
    v21 = [v19 clearColor];
    [v20 setBackgroundColor:v21];

    [v20 setShowsHorizontalScrollIndicator:0];
    [v20 setShowsVerticalScrollIndicator:0];

    v22 = [v20 layer];
    if (*(v20 + OBJC_IVAR____TtC21DockFolderViewService20FolderCollectionView__displayMode) == 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    [v22 setHitTestsAsOpaque:v23 & 1];

    v24 = v20;
    [v24 setDelegate:v24];
    swift_unknownObjectWeakAssign();

    sub_10000589C(&unk_1000BCCF0, "zT");
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10008F930;
    *(v25 + 32) = type metadata accessor for UITraitLayoutDirection();
    *(v25 + 40) = &protocol witness table for UITraitLayoutDirection;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v24;
  }

  else
  {
    _StringGuts.grow(_:)(99);
    v27._object = 0x8000000100094290;
    v27._countAndFlagsBits = 0xD000000000000061;
    String.append(_:)(v27);
    v28 = [a1 description];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    String.append(_:)(v32);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1000644F4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v6 = v0;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100037B98(0xD00000000000001ALL, 0x8000000100094300, &v15);
    *(v9 + 12) = 2048;
    v11 = [v6 traitCollection];
    v12 = [v11 layoutDirection];

    *(v9 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s layoutDirectionDidChange: %ld", v9, 0x16u);
    sub_1000064E0(v10);
  }

  else
  {
  }

  (*(v2 + 8))(v5, v1);
  v13 = [v6 collectionViewLayout];
  [v13 invalidateLayout];
}

id sub_100064928(uint64_t *a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v27 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v27 - v16;
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = *a1;
  v28 = *a2;
  v29 = a3;
  result = [a3 indexPathForCell:v20];
  if (result)
  {
    v22 = result;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = v7[4];
    v23(v19, v17, v6);
    result = [v29 indexPathForCell:v28];
    if (result)
    {
      v24 = result;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v23(v14, v11, v6);
      v25 = IndexPath.compare(_:)();
      v26 = v7[1];
      v26(v14, v6);
      v26(v19, v6);
      return (v25 == -1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100064B4C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100037B98(0x74696E696564, 0xE600000000000000, &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_1000064E0(v11);
  }

  (*(v4 + 8))(v7, v3);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "dealloc");
}

unint64_t sub_100064D54()
{
  result = qword_1000BCCE8;
  if (!qword_1000BCCE8)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BCCE8);
  }

  return result;
}

uint64_t sub_100064DDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_100064E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100042774(a3, v27 - v11, &qword_1000BCE60, &unk_100090AE0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100006390(v12, &qword_1000BCE60, &unk_100090AE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100006390(a3, &qword_1000BCE60, &unk_100090AE0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006390(a3, &qword_1000BCE60, &unk_100090AE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_100065170(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100065568(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD000000000000020, 0x8000000100093AC0, &v18);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100037B98(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s identifier: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v10, v6);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;

  v15 = v3;
  DOCRunInMainThread(_:)();
}

uint64_t sub_1000657A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  static Logger.UI.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v38 = v4;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v39 = v5;
    v16 = v15;
    v41 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100037B98(0xD00000000000002CLL, 0x8000000100093AF0, &v41);
    *(v16 + 12) = 2080;
    v17 = Array.description.getter();
    v19 = sub_100037B98(v17, v18, &v41);
    v4 = v38;

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s dismissing identifiers: %s", v16, 0x16u);
    swift_arrayDestroy();

    v5 = v39;
  }

  v40 = *(v5 + 8);
  result = v40(v11, v4);
  v22 = *(a1 + 16);
  if (v22)
  {
    v39 = v5 + 8;
    v37 = "@48@0:8@16@24@32@40";
    v23 = (a1 + 40);
    *&v21 = 136315394;
    v36 = v21;
    v24 = &unk_1000AFC98;
    v35 = v8;
    do
    {
      v28 = *(v23 - 1);
      v27 = *v23;

      static Logger.UI.getter();

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v2;
        v32 = v24;
        v33 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v33 = v36;
        *(v33 + 4) = sub_100037B98(0xD00000000000001DLL, v37 | 0x8000000000000000, &v41);
        *(v33 + 12) = 2080;
        *(v33 + 14) = sub_100037B98(v28, v27, &v41);
        _os_log_impl(&_mh_execute_header, v29, v30, "%s identifier: %s", v33, 0x16u);
        swift_arrayDestroy();
        v4 = v38;

        v24 = v32;
        v2 = v31;
        v8 = v35;
      }

      v40(v8, v4);
      v25 = swift_allocObject();
      v25[2] = v2;
      v25[3] = v28;
      v25[4] = v27;

      v26 = v2;
      DOCRunInMainThread(_:)();

      v23 += 2;
      --v22;
    }

    while (v22);
  }

  return result;
}

uint64_t sub_100065BB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100037B98(0xD00000000000001DLL, 0x8000000100094460, &v18);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_100037B98(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s identifier: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  (*(v7 + 8))(v10, v6);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;

  v15 = v3;
  DOCRunInMainThread(_:)();
}

void sub_100065DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v4)
  {
    v6 = [v4 windowScene];
    if (v6)
    {
      v13 = v6;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = objc_allocWithZone(SBUISFloatingDockFileStackPresentationContext);
        v10 = String._bridgeToObjectiveC()();
        v11 = [v9 initWithContextIdentifier:v10];

        [v11 setRequest:a4];
        [v8 requestUpdateContentForFloatingDockRemoteContentSceneWithContext:v11];

        v12 = v11;
      }

      else
      {
        v12 = v13;
      }
    }
  }
}

uint64_t sub_100065F1C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v24 = v10;
    v18 = v17;
    v19 = swift_slowAlloc();
    v25 = a1;
    v26 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_100037B98(0xD000000000000032, 0x80000001000945C0, &v26);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100037B98(v25, a2, &v26);
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_100037B98(a3, a4, &v26);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s contextID: %s folderID: %s", v18, 0x20u);
    swift_arrayDestroy();
    a1 = v25;

    (*(v11 + 8))(v14, v24);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v20 = swift_allocObject();
  v20[2] = v5;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;

  v21 = v5;
  DOCRunInMainThread(_:)();
}

void sub_1000661B0(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v8)
  {
    v9 = [v8 windowScene];
    if (v9)
    {
      v38 = v9;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = objc_allocWithZone(SBUISFloatingDockFileStackActionContext);
        v13 = String._bridgeToObjectiveC()();
        v14 = String._bridgeToObjectiveC()();
        v15 = [v12 initWithUUID:v13 iconIdentifier:v14 actionType:1000];

        static Logger.UI.getter();
        v16 = v15;
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          aBlock[0] = v37;
          *v19 = 136315394;
          *(v19 + 4) = sub_100037B98(0xD000000000000032, 0x80000001000945C0, aBlock);
          *(v19 + 12) = 2080;
          v20 = v11;
          v21 = v16;
          v22 = [v21 description];
          v36 = v3;
          v23 = v22;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          HIDWORD(v35) = v18;
          v25 = v24;
          v27 = v26;

          v11 = v20;
          v28 = sub_100037B98(v25, v27, aBlock);

          *(v19 + 14) = v28;
          _os_log_impl(&_mh_execute_header, v17, BYTE4(v35), "%s calling back to host with requestActionForFloatingDockRemoteContentScene: using context: %s", v19, 0x16u);
          swift_arrayDestroy();

          (*(v36 + 8))(v7, v2);
        }

        else
        {

          (*(v3 + 8))(v7, v2);
        }

        v30 = swift_allocObject();
        *(v30 + 16) = v16;
        v31 = objc_allocWithZone(SBUISFloatingDockRemoteContentAction);
        aBlock[4] = sub_100074B88;
        aBlock[5] = v30;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100072100;
        aBlock[3] = &unk_1000AFEE0;
        v32 = _Block_copy(aBlock);
        v33 = v16;
        v34 = [v31 initWithContext:v33 handler:v32];
        _Block_release(v32);

        [v11 requestActionForFloatingDockRemoteContentScene:v34];
      }

      else
      {
        v29 = v38;
      }
    }
  }
}

void sub_1000665D8(char a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static Logger.UI.getter();
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v12 = 136315394;
      *(v12 + 4) = sub_100037B98(0xD000000000000032, 0x80000001000945C0, &v20);
      *(v12 + 12) = 2080;
      v13 = v9;
      v14 = [v13 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_100037B98(v15, v17, &v20);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s remote content action failed! Using context: %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000667FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v51 = a1;
  v52 = a3;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v49 = v13;
  v50 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Logger();
  v48 = *(v17 - 8);
  v18 = *(v48 + 64);
  __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v46 = *(v11 + 16);
  v47 = v11 + 16;
  v46(v16, a5, v10);

  v45 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v44 = v22;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = a5;
    v24 = v23;
    v53 = swift_slowAlloc();
    *v24 = 136315906;
    *(v24 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100093A90, &v53);
    v42 = v21;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100037B98(v51, a2, &v53);
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_100037B98(v52, a4, &v53);
    *(v24 + 32) = 2080;
    sub_1000725AC(&unk_1000BC418, &type metadata accessor for URL);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v17;
    v26 = a2;
    v27 = a4;
    v28 = v6;
    v30 = v29;
    (*(v11 + 8))(v16, v10);
    v31 = sub_100037B98(v25, v30, &v53);
    v6 = v28;
    a4 = v27;
    a2 = v26;

    *(v24 + 34) = v31;
    v32 = v42;
    _os_log_impl(&_mh_execute_header, v42, v44, "%s contextID: %s folderID: %s url: %s", v24, 0x2Au);
    swift_arrayDestroy();

    a5 = v43;

    (*(v48 + 8))(v45, v41);
  }

  else
  {

    (*(v11 + 8))(v16, v10);
    (*(v48 + 8))(v45, v17);
  }

  v33 = v50;
  v46(v50, a5, v10);
  v34 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v35 = swift_allocObject();
  v37 = v51;
  v36 = v52;
  *(v35 + 2) = v6;
  *(v35 + 3) = v37;
  *(v35 + 4) = a2;
  *(v35 + 5) = v36;
  *(v35 + 6) = a4;
  (*(v11 + 32))(&v35[v34], v33, v10);

  v38 = v6;
  DOCRunInMainThread(_:)();
}

void sub_100066C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v31 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v13)
  {
    v14 = [v13 windowScene];
    if (v14)
    {
      v32 = v14;
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = v15;
        v17 = type metadata accessor for URL();
        v18 = *(v17 - 8);
        (*(v18 + 16))(v12, a6, v17);
        (*(v18 + 56))(v12, 0, 1, v17);
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v22 = 0;
        if ((*(v18 + 48))(v12, 1, v17) != 1)
        {
          URL._bridgeToObjectiveC()(v21);
          v22 = v23;
          (*(v18 + 8))(v12, v17);
        }

        v24 = [objc_allocWithZone(SBUISFloatingDockFileStackActionContext) initWithUUID:v19 iconIdentifier:v20 actionType:1001 toIconURL:v22];

        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        v26 = objc_allocWithZone(SBUISFloatingDockRemoteContentAction);
        aBlock[4] = sub_1000725F4;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100072100;
        aBlock[3] = &unk_1000AFC38;
        v27 = _Block_copy(aBlock);
        v28 = v24;
        v29 = [v26 initWithContext:v28 handler:v27];
        _Block_release(v27);

        [v16 requestActionForFloatingDockRemoteContentScene:v29];
      }

      else
      {
        v30 = v32;
      }
    }
  }
}

void sub_100066FC0(char a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    static Logger.UI.getter();
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v12 = 136315394;
      *(v12 + 4) = sub_100037B98(0xD00000000000002DLL, 0x8000000100093A90, &v20);
      *(v12 + 12) = 2080;
      v13 = v9;
      v14 = [v13 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_100037B98(v15, v17, &v20);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s remote content action failed! Using context: %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000671E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  v34 = a1;
  v35 = a3;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  sub_100041D18(a5, a6);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  sub_100041D80(a5, a6);
  v33 = v18;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v7;
    v20 = v19;
    v29 = swift_slowAlloc();
    v36 = v29;
    *v20 = 136315906;
    *(v20 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v36);
    v30 = v12;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_100037B98(v34, a2, &v36);
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_100037B98(v35, a4, &v36);
    *(v20 + 32) = 2080;
    v21 = Data.description.getter();
    v31 = a4;
    v23 = sub_100037B98(v21, v22, &v36);

    *(v20 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v17, v33, "%s contextID: %s folderID: %s imageData: %s", v20, 0x2Au);
    swift_arrayDestroy();

    v7 = v32;

    (*(v13 + 8))(v16, v30);
    a4 = v31;
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v24 = swift_allocObject();
  v26 = v34;
  v25 = v35;
  v24[2] = v7;
  v24[3] = v26;
  v24[4] = a2;
  v24[5] = v25;
  v24[6] = a4;
  v24[7] = a5;
  v24[8] = a6;

  sub_100041D18(a5, a6);
  v27 = v7;
  DOCRunInMainThread(_:)();
}

void sub_100067500(uint64_t a1)
{
  v2 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v27 - v5;
  v7 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v7)
  {
    v8 = [v7 windowScene];
    if (v8)
    {
      v28 = v8;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v11 = type metadata accessor for URL();
        v12 = *(v11 - 8);
        (*(v12 + 56))(v6, 1, 1, v11);
        v13 = String._bridgeToObjectiveC()();
        v14 = String._bridgeToObjectiveC()();
        v16 = 0;
        if ((*(v12 + 48))(v6, 1, v11) != 1)
        {
          URL._bridgeToObjectiveC()(v15);
          v16 = v17;
          (*(v12 + 8))(v6, v11);
        }

        v18 = objc_allocWithZone(SBUISFloatingDockFileStackActionContext);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v20 = [v18 initWithUUID:v13 iconIdentifier:v14 actionType:1002 toIconURL:v16 thumbnail:isa];

        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        v22 = objc_allocWithZone(SBUISFloatingDockRemoteContentAction);
        aBlock[4] = sub_100072464;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100072100;
        aBlock[3] = &unk_1000AFBC0;
        v23 = _Block_copy(aBlock);
        v24 = v20;
        v25 = [v22 initWithContext:v24 handler:v23];
        _Block_release(v23);

        [v10 requestActionForFloatingDockRemoteContentScene:v25];
      }

      else
      {
        v26 = v28;
      }
    }
  }
}

uint64_t sub_100067848(int a1, void *a2)
{
  LODWORD(v3) = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v38[-v10];
  if ((v3 & 1) == 0)
  {
    v42 = v4;
    static Logger.UI.getter();
    v12 = a2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v39 = v14;
      v16 = v15;
      v40 = swift_slowAlloc();
      v43 = v40;
      *v16 = 136315394;
      *(v16 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v43);
      *(v16 + 12) = 2080;
      v17 = v12;
      v18 = [v17 description];
      v41 = v3;
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v8;
      v22 = v5;
      v24 = v23;

      v3 = sub_100037B98(v20, v24, &v43);
      v5 = v22;
      v8 = v21;

      *(v16 + 14) = v3;
      LOBYTE(v3) = v41;
      _os_log_impl(&_mh_execute_header, v13, v39, "%s remote content action failed!: Using context: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    v4 = v42;
    (*(v5 + 8))(v11, v42);
  }

  static Logger.UI.getter();
  v25 = a2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v28 = 136315650;
    *(v28 + 4) = sub_100037B98(0xD000000000000035, 0x8000000100093A50, &v43);
    *(v28 + 12) = 1024;
    *(v28 + 14) = v3 & 1;
    *(v28 + 18) = 2080;
    v29 = v25;
    v42 = v8;
    v30 = v5;
    v31 = v29;
    v32 = [v29 description];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_100037B98(v33, v35, &v43);

    *(v28 + 20) = v36;
    _os_log_impl(&_mh_execute_header, v26, v27, "%s remote content action result: %{BOOL}d using context: %s", v28, 0x1Cu);
    swift_arrayDestroy();

    return (*(v30 + 8))(v42, v4);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100067C54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a3;
  v33 = a1;
  v34 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  v10 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for Logger();
  v35 = *(v16 - 8);
  v36 = v16;
  v17 = *(v35 + 64);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  sub_100042774(a5, v15, &unk_1000BCA20, &qword_100090BC0);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38 = v32;
    *v22 = 136315906;
    *(v22 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093A10, &v38);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_100037B98(v33, a2, &v38);
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_100037B98(v37, a4, &v38);
    *(v22 + 32) = 2080;
    v33 = v6;
    sub_100042774(v15, v12, &unk_1000BCA20, &qword_100090BC0);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_100006390(v15, &unk_1000BCA20, &qword_100090BC0);
    v26 = sub_100037B98(v23, v25, &v38);

    *(v22 + 34) = v26;
    v6 = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s contextID: %s folderID: %s url: %s", v22, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_100006390(v15, &unk_1000BCA20, &qword_100090BC0);
  }

  (*(v35 + 8))(v19, v36);
  v27 = swift_allocObject();
  v28 = v37;
  v27[2] = v6;
  v27[3] = v28;
  v27[4] = a4;

  v29 = v6;
  DOCRunInMainThread(_:)();
}

uint64_t sub_100067FEC(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100065BB8(a2, a3);
  sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  aBlock[4] = sub_1000723D0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000AFB20;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000725AC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000589C(&unk_1000BCE30, &unk_100090E70);
  sub_1000518F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v21);
}

void sub_1000682D4(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v8)
  {
    v9 = [v8 windowScene];
    if (v9)
    {
      v33 = v9;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        v12 = objc_allocWithZone(SBUISFloatingDockFileStackPresentationContext);
        v13 = String._bridgeToObjectiveC()();
        v14 = [v12 initWithFileStackIconIdentifier:v13 request:203];

        static Logger.UI.getter();
        v15 = v14;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v31 = v17;
          v19 = v18;
          v32 = swift_slowAlloc();
          v34 = v32;
          *v19 = 136315394;
          *(v19 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100093A10, &v34);
          *(v19 + 12) = 2080;
          v20 = v15;
          v21 = [v20 description];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v16;
          v23 = v11;
          v25 = v24;

          v26 = sub_100037B98(v22, v25, &v34);
          v11 = v23;

          *(v19 + 14) = v26;
          v27 = v30;
          _os_log_impl(&_mh_execute_header, v30, v31, "%s sending iconRemovedFromClient using context: %s", v19, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v3 + 8))(v7, v2);
        [v11 requestUpdateContentForFloatingDockRemoteContentSceneWithContext:v15];
      }

      else
      {
        v28 = v33;
      }
    }
  }
}

uint64_t sub_1000685FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v7) = a5;
  v24 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = v7;
    v7 = v18;
    v19 = swift_slowAlloc();
    v23 = v11;
    v26 = v19;
    *v7 = 136315906;
    *(v7 + 4) = sub_100037B98(0xD000000000000046, 0x80000001000939C0, &v26);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100037B98(v24, a2, &v26);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_100037B98(a3, a4, &v26);
    *(v7 + 32) = 1024;
    *(v7 + 34) = v25 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s contextID: %s folderID: %s animationExpanded: %{BOOL}d", v7, 0x26u);
    swift_arrayDestroy();

    LOBYTE(v7) = v25;

    (*(v12 + 8))(v15, v23);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v7 & 1;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;

  v21 = v6;
  DOCRunInMainThread(_:)();
}

uint64_t sub_1000688A8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v21;
  *(v17 + 40) = a4;
  aBlock[4] = sub_100072398;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000D508;
  aBlock[3] = &unk_1000AFAA8;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000725AC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000589C(&unk_1000BCE30, &unk_100090E70);
  sub_1000518F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v22);
}

void sub_100068B8C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_window);
  if (v10)
  {
    v11 = [v10 windowScene];
    if (v11)
    {
      v37 = v11;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        if (a2)
        {
          if (qword_1000BB718 != -1)
          {
            swift_once();
          }

          v14 = &qword_1000BF158;
        }

        else
        {
          if (qword_1000BB720 != -1)
          {
            swift_once();
          }

          v14 = &qword_1000BF160;
        }

        v16 = *v14;
        v17 = objc_allocWithZone(SBUISFloatingDockFileStackPresentationContext);
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 initWithFileStackIconIdentifier:v18 request:v16];

        static Logger.UI.getter();
        v20 = v19;
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v34 = v22;
          v24 = v23;
          v35 = swift_slowAlloc();
          v38 = v35;
          *v24 = 136315394;
          *(v24 + 4) = sub_100037B98(0xD000000000000046, 0x80000001000939C0, &v38);
          *(v24 + 12) = 2080;
          v25 = v20;
          v26 = [v25 description];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v13;
          v28 = v27;
          v29 = v5;
          v31 = v30;

          v32 = sub_100037B98(v28, v31, &v38);

          *(v24 + 14) = v32;
          v13 = v36;
          _os_log_impl(&_mh_execute_header, v21, v34, "%s sending iconRemovedFromClient using context: %s", v24, 0x16u);
          swift_arrayDestroy();

          (*(v29 + 8))(v9, v4);
        }

        else
        {

          (*(v5 + 8))(v9, v4);
        }

        [v13 requestUpdateContentForFloatingDockRemoteContentSceneWithContext:v20];
      }

      else
      {
        v15 = v37;
      }
    }
  }
}

void sub_100068F60(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v293 = type metadata accessor for DispatchWorkItemFlags();
  v292 = *(v293 - 8);
  v8 = *(v292 + 64);
  __chkstk_darwin(v293);
  v290 = &v282[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v291 = type metadata accessor for DispatchQoS();
  v289 = *(v291 - 8);
  v10 = *(v289 + 64);
  __chkstk_darwin(v291);
  v288 = &v282[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v299 = type metadata accessor for URL();
  v298 = *(v299 - 1);
  v12 = v298[8];
  __chkstk_darwin(v299);
  v296 = &v282[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v302 = &v282[-v15];
  v16 = type metadata accessor for Logger();
  v306 = *(v16 - 1);
  v17 = *(v306 + 64);
  __chkstk_darwin(v16);
  v295 = &v282[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v300 = &v282[-v20];
  __chkstk_darwin(v21);
  v297 = &v282[-v22];
  __chkstk_darwin(v23);
  v301 = &v282[-v24];
  __chkstk_darwin(v25);
  v27 = &v282[-v26];
  static Logger.UI.getter();
  v28 = a2;
  v29 = a1;
  v30 = a3;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = &selRef_setItemSize_;
  v304 = v4;
  v305 = v16;
  v303 = v29;
  if (v33)
  {
    v35 = swift_slowAlloc();
    v287 = swift_slowAlloc();
    v294 = swift_slowAlloc();
    aBlock = v294;
    *v35 = 136316162;
    *(v35 + 4) = sub_100037B98(0xD00000000000003BLL, 0x8000000100094640, &aBlock);
    *(v35 + 12) = 2080;
    v36 = v29;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_100037B98(v38, v40, &aBlock);

    *(v35 + 14) = v41;
    *(v35 + 22) = 2080;
    v313[0] = [v28 request];
    type metadata accessor for SBUISFloatingDockFileStackRequest(0);
    v42 = String.init<A>(describing:)();
    v44 = sub_100037B98(v42, v43, &aBlock);

    *(v35 + 24) = v44;
    *(v35 + 32) = 2080;
    v45 = v28;
    v46 = [v45 description];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = v47;
    v16 = v305;
    v51 = sub_100037B98(v50, v49, &aBlock);
    v29 = v303;

    *(v35 + 34) = v51;
    v34 = &selRef_setItemSize_;
    *(v35 + 42) = 2112;
    *(v35 + 44) = v30;
    v52 = v287;
    *v287 = v30;
    v53 = v30;
    _os_log_impl(&_mh_execute_header, v31, v32, "%s scene: %s request: %s withContext: %s withAnimationSettings: %@", v35, 0x34u);
    sub_100006390(v52, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v4 = v304;
  }

  v54 = *(v306 + 8);
  v54(v27, v16);
  [v28 dockFrame];
  sub_10006AF40(v4, v28);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = [v28 v34[158]];
  if (v63 == 100)
  {
    goto LABEL_7;
  }

  if (qword_1000BB728 != -1)
  {
    v280 = v63;
    swift_once();
    v63 = v280;
  }

  if (qword_1000BF168 == v63)
  {
LABEL_7:
    v300 = 0xE900000000000064;
    v296 = 0x6564644165746164;
    v294 = [v28 v34[158]];
    v64 = OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController;
    v65 = *&v4[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
    if (!v65)
    {
      goto LABEL_26;
    }

    v287 = v54;
    v66 = v65;
    v67 = [v28 iconIdentifier];
    v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = [v28 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v71 = [v28 sortingBy];
    v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v74 = v73;

    if (v72 == 1702125924 && v74 == 0xE400000000000000)
    {

      v75 = 0x6564644165746164;
      v76 = 0xE900000000000064;
    }

    else
    {
      v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v75 = 0x6564644165746164;
      v76 = 0xE900000000000064;
      if ((v95 & 1) == 0)
      {
        v96 = [v28 sortingBy];
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = v97;
      }
    }

    v98 = [v28 displayMode];
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    if (v99 == 7233894 && v101 == 0xE300000000000000)
    {
    }

    else
    {
      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v102 & 1) == 0)
      {
        v103 = [v28 sortingOrderAscending] ^ 1;
        goto LABEL_25;
      }
    }

    v103 = [v28 sortingOrderAscending];
LABEL_25:
    v104 = [v28 displayMode];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    [v28 anchorFrame];
    v108 = v302;
    sub_100044594(v295, v69, v302, v75, v76, v103, v105, v107, v109, v110, v111, v112, *&v56, v58, v60, v62);

    (v298[1])(v108, v299);
    v4 = v304;
    v16 = v305;
    v54 = v287;
    v29 = v303;
LABEL_26:
    sub_10006B0C0(v28);
    v113 = *&v4[v64];
    if (!v113)
    {
      return;
    }

    v298 = v113;
    v114 = [v28 iconIdentifier];
    v295 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v302 = v115;

    v116 = [v28 sortingBy];
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v119 = v118;

    if (v117 == 1702125924 && v119 == 0xE400000000000000)
    {
    }

    else
    {
      v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v120 & 1) == 0)
      {
        v121 = [v28 sortingBy];
        v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v300 = v122;
      }
    }

    v123 = [v28 displayMode];
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v125;

    if (v124 == 7233894 && v126 == 0xE300000000000000)
    {
      v127 = v29;
    }

    else
    {
      v127 = v29;
      v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v128 & 1) == 0)
      {
        LODWORD(v287) = [v28 sortingOrderAscending] ^ 1;
LABEL_38:
        v129 = v300;
        v130 = v301;
        v131 = [v28 displayMode];
        v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v134 = v133;

        [v28 anchorFrame];
        v136 = v135;
        v138 = v137;
        v140 = v139;
        v142 = v141;
        v143 = swift_allocObject();
        v143[2] = v127;
        v143[3] = v28;
        v286 = v143;
        v143[4] = v4;
        v144 = v28;
        v145 = v127;
        v146 = v134;
        v147 = v145;
        v148 = v4;
        v303 = v144;
        v285 = v147;
        v304 = v148;
        static Logger.UI.getter();
        v149 = v302;

        v150 = Logger.logObject.getter();
        v151 = static os_log_type_t.debug.getter();
        v299 = v146;

        v152 = os_log_type_enabled(v150, v151);
        v284 = v132;
        if (v152)
        {
          v283 = v294 == 100;
          v153 = swift_slowAlloc();
          v313[0] = swift_slowAlloc();
          *v153 = 136316930;
          *(v153 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, v313);
          *(v153 + 12) = 2080;
          *(v153 + 14) = sub_100037B98(v295, v302, v313);
          *(v153 + 22) = 2080;
          *(v153 + 24) = sub_100037B98(v296, v129, v313);
          *(v153 + 32) = 2080;
          if (v287)
          {
            v154 = 1702195828;
          }

          else
          {
            v154 = 0x65736C6166;
          }

          if (v287)
          {
            v155 = 0xE400000000000000;
          }

          else
          {
            v155 = 0xE500000000000000;
          }

          v156 = sub_100037B98(v154, v155, v313);

          *(v153 + 34) = v156;
          *(v153 + 42) = 2080;
          *(v153 + 44) = sub_100037B98(v132, v299, v313);
          *(v153 + 52) = 2080;
          aBlock = v136;
          v308 = *&v138;
          v309 = v140;
          v310 = v142;
          type metadata accessor for CGRect(0);
          v157 = String.init<A>(describing:)();
          v159 = sub_100037B98(v157, v158, v313);

          *(v153 + 54) = v159;
          v160 = v298;
          *(v153 + 62) = 2080;
          aBlock = v56;
          v308 = *&v58;
          v309 = v60;
          v310 = v62;
          v161 = String.init<A>(describing:)();
          v163 = sub_100037B98(v161, v162, v313);

          *(v153 + 64) = v163;
          v16 = v305;
          v129 = v300;
          *(v153 + 72) = 1024;
          *(v153 + 74) = v283;
          _os_log_impl(&_mh_execute_header, v150, v151, "%s identifier: %s sortOrder: %s isAscending: %s displayMode: %s iconFrame: %s dockFrame: %s animated: %{BOOL}d", v153, 0x4Eu);
          swift_arrayDestroy();
          v149 = v302;

          v54 = *(v306 + 8);
          v54(v301, v16);
          v164 = v297;
        }

        else
        {

          v54(v130, v16);
          v164 = v297;
          v160 = v298;
        }

        sub_100043D20(1);
        v165 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
        swift_beginAccess();
        v166 = *(v160 + v165);
        if (*(v166 + 16))
        {
          v167 = *(v160 + v165);

          v168 = sub_100037A68(v295, v149);
          if (v169)
          {
            v170 = v294 == 100;
            v171 = *(*(v166 + 56) + 8 * v168);

            sub_10001ECB8(*&v136, v138, v140, v142, *&v56, v58, v60, v62);
            v172 = swift_allocObject();
            v173 = v284;
            v174 = v299;
            *(v172 + 16) = v284;
            *(v172 + 24) = v174;
            *(v172 + 32) = v296;
            *(v172 + 40) = v129;
            *(v172 + 48) = v287;
            *(v172 + 56) = v136;
            *(v172 + 64) = v138;
            *(v172 + 72) = v140;
            *(v172 + 80) = v142;
            *(v172 + 88) = v171;
            *(v172 + 96) = v56;
            *(v172 + 104) = v58;
            *(v172 + 112) = v60;
            *(v172 + 120) = v62;
            LODWORD(v306) = v170;
            *(v172 + 128) = v170;
            v175 = v286;
            *(v172 + 136) = sub_100074E34;
            *(v172 + 144) = v175;
            v176 = *&v171[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
            if (v176 && (v177 = *(*(v176 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection)) != 0)
            {

              v305 = v171;

              v178 = v177;

              v179 = dispatch thunk of DOCNodeCollection.observedNode.getter();

              if (v179)
              {
                v180 = [objc_opt_self() sharedManager];
                v181 = swift_allocObject();
                v182 = v302;
                *(v181 + 2) = v295;
                *(v181 + 3) = v182;
                *(v181 + 4) = v136;
                v181[5] = v138;
                v181[6] = v140;
                v181[7] = v142;
                *(v181 + 8) = sub_10005218C;
                *(v181 + 9) = v172;
                *(v181 + 10) = sub_100074E34;
                *(v181 + 11) = v175;
                v311 = sub_100052280;
                v312 = v181;
                aBlock = _NSConcreteStackBlock;
                v308 = 1107296256;
                v309 = COERCE_DOUBLE(sub_100065170);
                v310 = COERCE_DOUBLE(&unk_1000B00C0);
                v183 = _Block_copy(&aBlock);
                swift_unknownObjectRetain();

                [v180 authenticateLocationWithNoUI:v179 checkFilesApp:1 completion:v183];

                _Block_release(v183);

                swift_unknownObjectRelease_n();
                return;
              }
            }

            else
            {

              v191 = v171;
            }

            v192 = v299;

            v193._countAndFlagsBits = v173;
            v193._object = v192;
            v194 = _findStringSwitchCase(cases:string:)(&off_1000ADBB8, v193);

            v195 = v194 != 0;

            v316._countAndFlagsBits = v296;
            v316._object = v129;
            v196 = sub_10003C434(v316);
            if (v196 == 6)
            {
              v197 = 2;
            }

            else
            {
              v197 = v196;
            }

            if (!sub_10001E8B0(v195 | (v197 << 8), v287, v140, v142))
            {
              v228 = v294 == 100;
              v229 = swift_allocObject();
              *(v229 + 16) = sub_100074E34;
              *(v229 + 24) = v175;

              sub_100020E78(v228, sub_100074E90, v229, *&v136, v138, v140, v142, *&v56, v58, v60, v62);

              v190 = v298;
              goto LABEL_58;
            }

            v198 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
            v199 = *&v171[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
            if (v199)
            {
              [v199 reloadData];
              v200 = *&v171[v198];
              if (v200)
              {
                [v200 layoutIfNeeded];
              }
            }

            sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
            v201 = static OS_dispatch_queue.main.getter();
            v202 = swift_allocObject();
            *(v202 + 16) = v171;
            *(v202 + 24) = v136;
            *(v202 + 32) = v138;
            *(v202 + 40) = v140;
            *(v202 + 48) = v142;
            *(v202 + 56) = v56;
            *(v202 + 64) = v58;
            *(v202 + 72) = v60;
            *(v202 + 80) = v62;
            *(v202 + 88) = v306;
            *(v202 + 96) = sub_100074E34;
            *(v202 + 104) = v175;
            v311 = sub_100052218;
            v312 = v202;
            aBlock = _NSConcreteStackBlock;
            v308 = 1107296256;
            v309 = COERCE_DOUBLE(sub_10000D508);
            v310 = COERCE_DOUBLE(&unk_1000B0070);
            v203 = _Block_copy(&aBlock);
            v204 = v171;

            v205 = v288;
            static DispatchQoS.unspecified.getter();
            aBlock = _swiftEmptyArrayStorage;
            sub_1000725AC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags);
            sub_10000589C(&unk_1000BCE30, &unk_100090E70);
            sub_1000518F8();
            v206 = v290;
            v207 = v293;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v203);

            (*(v292 + 8))(v206, v207);
            (*(v289 + 8))(v205, v291);

LABEL_57:
            v190 = v298;
LABEL_58:

LABEL_59:

            return;
          }
        }

        static Logger.UI.getter();

        v184 = Logger.logObject.getter();
        v185 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v184, v185))
        {
          v186 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v186 = 136315394;
          *(v186 + 4) = sub_100037B98(0xD00000000000005ELL, 0x8000000100092FB0, &aBlock);
          *(v186 + 12) = 2080;
          *(v186 + 14) = sub_100037B98(v295, v149, &aBlock);
          _os_log_impl(&_mh_execute_header, v184, v185, "%s no folderController for identifier: %s", v186, 0x16u);
          swift_arrayDestroy();
        }

        v54(v164, v16);
        v187 = v285;
        v189 = v303;
        v188 = v304;
        sub_10006BEDC(0, v285, v303, v304);

        goto LABEL_57;
      }
    }

    LODWORD(v287) = [v28 sortingOrderAscending];
    goto LABEL_38;
  }

  if (v63 == 101)
  {
    goto LABEL_15;
  }

  if (qword_1000BB730 != -1)
  {
    v281 = v63;
    swift_once();
    v63 = v281;
  }

  if (qword_1000BF170 == v63)
  {
LABEL_15:
    v77 = [v28 v34[158]];
    v78 = *&v4[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
    if (v78)
    {
      v79 = v77 == 101;
      v80 = v78;
      v81 = [v28 iconIdentifier];
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;

      [v28 anchorFrame];
      v86 = v85;
      v88 = v87;
      v90 = v89;
      v92 = v91;
      v93 = v28;
      v94 = v29;
      sub_10005137C(v82, v84, v79, v80, v94, v93, v86, v88, v90, v92, *&v56, v58, v60, v62);
    }

    return;
  }

  if (v63 > 199)
  {
    if ((v63 - 200) < 4 || v63 == 300)
    {
      v208 = v300;
      static Logger.UI.getter();
      v209 = v28;
      v210 = v29;
      v211 = Logger.logObject.getter();
      v212 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v213 = 136315650;
        *(v213 + 4) = sub_100037B98(0xD00000000000003BLL, 0x8000000100094640, &aBlock);
        *(v213 + 12) = 2080;
        v214 = v210;
        v215 = [v214 description];
        v287 = v54;
        v216 = v215;
        v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v219 = v218;

        v220 = sub_100037B98(v217, v219, &aBlock);

        *(v213 + 14) = v220;
        *(v213 + 22) = 2080;
        v221 = v209;
        v222 = [v221 description];
        v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v225 = v224;

        v226 = sub_100037B98(v223, v225, &aBlock);

        *(v213 + 24) = v226;
        _os_log_impl(&_mh_execute_header, v211, v212, "%s scene: %s should never get here withContext: %s", v213, 0x20u);
        swift_arrayDestroy();

        v227 = &v315;
LABEL_74:
        v287(*(v227 - 32), v305);
        return;
      }

LABEL_83:

      v54(v208, v16);
      return;
    }

LABEL_81:
    v208 = v295;
    static Logger.UI.getter();
    v236 = v28;
    v237 = v29;
    v211 = Logger.logObject.getter();
    v238 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v211, v238))
    {
      v239 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v239 = 136315650;
      *(v239 + 4) = sub_100037B98(0xD00000000000003BLL, 0x8000000100094640, &aBlock);
      *(v239 + 12) = 2080;
      v240 = v237;
      v241 = [v240 description];
      v287 = v54;
      v242 = v241;
      v243 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v245 = v244;

      v246 = sub_100037B98(v243, v245, &aBlock);

      *(v239 + 14) = v246;
      *(v239 + 22) = 2080;
      v313[0] = [v236 request];
      type metadata accessor for SBUISFloatingDockFileStackRequest(0);
      v247 = String.init<A>(describing:)();
      v249 = sub_100037B98(v247, v248, &aBlock);

      *(v239 + 24) = v249;
      _os_log_impl(&_mh_execute_header, v211, v238, "%s scene: %s unknown request type: %s", v239, 0x20u);
      swift_arrayDestroy();

      v227 = &v314;
      goto LABEL_74;
    }

    goto LABEL_83;
  }

  if (v63 == 102)
  {
    v250 = [v28 url];
    v251 = v296;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v252 = *&v4[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
    if (!v252)
    {
LABEL_97:
      sub_10006B0C0(v28);
      (v298[1])(v251, v299);
      return;
    }

    v253 = 0xE900000000000064;
    v254 = 0x6564644165746164;
    v255 = v252;
    v256 = [v28 iconIdentifier];
    v306 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v258 = v257;

    v259 = [v28 sortingBy];
    v260 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v262 = v261;

    if (v260 == 1702125924 && v262 == 0xE400000000000000)
    {
    }

    else
    {
      v263 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v263 & 1) == 0)
      {
        v264 = [v28 sortingBy];
        v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v253 = v265;
      }
    }

    v266 = [v28 displayMode];
    v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v269 = v268;

    if (v267 == 7233894 && v269 == 0xE300000000000000)
    {

      v251 = v296;
    }

    else
    {
      v270 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v251 = v296;
      if ((v270 & 1) == 0)
      {
        v271 = [v28 sortingOrderAscending] ^ 1;
        goto LABEL_96;
      }
    }

    v271 = [v28 sortingOrderAscending];
LABEL_96:
    v272 = [v28 displayMode];
    v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v275 = v274;

    [v28 anchorFrame];
    sub_100044594(v306, v258, v251, v254, v253, v271, v273, v275, v276, v277, v278, v279, *&v56, v58, v60, v62);

    goto LABEL_97;
  }

  if (v63 != 103)
  {
    goto LABEL_81;
  }

  v230 = *&v4[OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController];
  if (v230)
  {
    v231 = v230;
    v232 = [v28 iconIdentifier];
    v233 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v235 = v234;

    sub_10004568C(v233, v235);
    goto LABEL_59;
  }
}

void sub_10006AF40(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  if (v2)
  {
    v4 = [v2 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 window];
      if (v6 && (v7 = v6, v8 = [v6 screen], v7, v8))
      {
        v9 = [v8 fixedCoordinateSpace];
        [a2 dockFrame];
        [v9 convertRect:objc_msgSend(v5 toCoordinateSpace:{"coordinateSpace"), v10, v11, v12, v13}];

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_10006B0C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v152 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v147 = &v145 - v9;
  __chkstk_darwin(v10);
  v148 = &v145 - v11;
  __chkstk_darwin(v12);
  v14 = &v145 - v13;
  static Logger.UI.getter();
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  v18 = os_log_type_enabled(v16, v17);
  v151 = v4;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v149 = v5;
    v20 = v19;
    v150 = swift_slowAlloc();
    v158[0] = v150;
    *v20 = 136315394;
    *(v20 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094680, v158);
    *(v20 + 12) = 2080;
    v21 = v15;
    v22 = [v21 description];
    v23 = v2;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v15;
    v27 = v26;

    v28 = v24;
    v2 = v23;
    v29 = sub_100037B98(v28, v27, v158);
    v15 = v25;

    *(v20 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s context: %s", v20, 0x16u);
    swift_arrayDestroy();

    v4 = v151;
    v5 = v149;
  }

  v150 = *(v5 + 8);
  v150(v14, v4);
  v30 = OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController;
  v31 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService19FolderSceneDelegate_rootViewController);
  if (v31)
  {
    v32 = v31;
    v33 = [v15 iconIdentifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = OBJC_IVAR____TtC21DockFolderViewService28DOCSBSceneRootViewController_folderPresentationControllers;
    swift_beginAccess();
    v38 = *&v32[v37];

    if (*(v38 + 16))
    {
      v39 = sub_100037A68(v34, v36);
      v41 = v40;

      if (v41)
      {
        v42 = *(*(v38 + 56) + 8 * v39);

        v43 = *&v42[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView];
        v149 = v5;
        if (v43)
        {
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          v45 = v148;
          if (v44)
          {
            v157 = v44;
            v46 = v43;
          }

          else
          {
            v157 = 0;
          }
        }

        else
        {
          v157 = 0;
          v45 = v148;
        }

        v71 = [v15 openIndicatorLayerRenderId];
        v145 = v2;
        v146 = v15;
        v152 = v42;
        if (!v71)
        {
          goto LABEL_22;
        }

        v154 = 0;
        v155 = 1;
        v72 = v71;
        static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();

        if (v155)
        {
          goto LABEL_22;
        }

        v73 = v154;
        v74 = [v15 openIndicatorContextId];
        if (v74 && (LODWORD(v154) = 0, BYTE4(v154) = 1, v75 = v74, static UInt32._conditionallyBridgeFromObjectiveC(_:result:)(), v75, (v154 & 0x100000000) == 0))
        {
          v135 = v154;
          v136 = v157;
          v137 = v157;
          v138 = v15;
          v139 = v137;
          v140 = sub_10006E310(v136, v73, v135, v138);

          v157 = v140;
          v96 = v151;
        }

        else
        {
LABEL_22:
          static Logger.UI.getter();
          v76 = v15;
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            *v79 = 136316162;
            *(v79 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094680, &v154);
            *(v79 + 12) = 2080;
            swift_beginAccess();
            v153 = v157;
            v80 = v157;
            sub_10000589C(&qword_1000BCF08, &qword_1000911D0);
            v81 = String.init<A>(describing:)();
            v83 = sub_100037B98(v81, v82, &v154);

            *(v79 + 14) = v83;
            *(v79 + 22) = 2080;
            v153 = [v76 openIndicatorLayerRenderId];
            sub_10000589C(&qword_1000BCF00, &qword_1000911C8);
            v84 = String.init<A>(describing:)();
            v86 = sub_100037B98(v84, v85, &v154);

            *(v79 + 24) = v86;
            *(v79 + 32) = 2080;
            v153 = [v76 openIndicatorContextId];
            v87 = String.init<A>(describing:)();
            v89 = sub_100037B98(v87, v88, &v154);

            *(v79 + 34) = v89;
            *(v79 + 42) = 2080;
            v90 = [v76 iconIdentifier];
            v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v93 = v92;

            v94 = sub_100037B98(v91, v93, &v154);

            *(v79 + 44) = v94;
            _os_log_impl(&_mh_execute_header, v77, v78, "%s can not create or update existing portal view: %s because openIndicatorLayerRenderId: %s or openIndicatorContextId: %s are nil. Context: %s", v79, 0x34u);
            swift_arrayDestroy();
            v2 = v145;

            v42 = v152;

            v95 = v148;
          }

          else
          {

            v95 = v45;
          }

          v96 = v151;
          v150(v95, v151);
        }

        v97 = *&v42[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView];
        if (v97 && (objc_opt_self(), (v98 = swift_dynamicCastObjCClass()) != 0))
        {
          v156 = v98;
          v99 = v97;
        }

        else
        {
          v156 = 0;
        }

        v100 = [v146 sourceLayerRenderId];
        if (!v100)
        {
          goto LABEL_34;
        }

        v154 = 0;
        v155 = 1;
        v101 = v100;
        static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();

        if (v155)
        {
          goto LABEL_34;
        }

        v102 = v154;
        v103 = [v146 sourceContextId];
        if (v103 && (LODWORD(v154) = 0, BYTE4(v154) = 1, v104 = v103, static UInt32._conditionallyBridgeFromObjectiveC(_:result:)(), v104, (v154 & 0x100000000) == 0))
        {
          v141 = v154;
          v142 = v156;
          v143 = v156;
          v144 = sub_10006E310(v142, v102, v141, v146);

          v156 = v144;
          v125 = *(v2 + v30);
          if (v125)
          {
LABEL_38:
            v126 = v125;
            v127 = [v146 iconIdentifier];
            v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v130 = v129;

            swift_beginAccess();
            v131 = v157;
            swift_beginAccess();
            v132 = v156;
            v133 = v131;
            v134 = v132;
            sub_100045AE4(v128, v130, v131, v132);

LABEL_42:

            return;
          }
        }

        else
        {
LABEL_34:
          v105 = v147;
          static Logger.UI.getter();
          v106 = v146;
          v107 = Logger.logObject.getter();
          v108 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            *v109 = 136316162;
            *(v109 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094680, &v154);
            *(v109 + 12) = 2080;
            swift_beginAccess();
            v153 = v156;
            v110 = v156;
            sub_10000589C(&qword_1000BCF08, &qword_1000911D0);
            v111 = String.init<A>(describing:)();
            v113 = sub_100037B98(v111, v112, &v154);

            *(v109 + 14) = v113;
            *(v109 + 22) = 2080;
            v153 = [v106 openIndicatorLayerRenderId];
            sub_10000589C(&qword_1000BCF00, &qword_1000911C8);
            v114 = String.init<A>(describing:)();
            v116 = sub_100037B98(v114, v115, &v154);

            *(v109 + 24) = v116;
            *(v109 + 32) = 2080;
            v153 = [v106 openIndicatorContextId];
            v117 = String.init<A>(describing:)();
            v119 = sub_100037B98(v117, v118, &v154);

            *(v109 + 34) = v119;
            *(v109 + 42) = 2080;
            v120 = [v106 iconIdentifier];
            v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v123 = v122;

            v124 = sub_100037B98(v121, v123, &v154);

            *(v109 + 44) = v124;
            _os_log_impl(&_mh_execute_header, v107, v108, "%s can not create or update existing portal view: %s because openIndicatorLayerRenderId: %s or openIndicatorContextId: %s are nil. Context: %s", v109, 0x34u);
            swift_arrayDestroy();

            v2 = v145;

            (*(v149 + 8))(v147, v151);
          }

          else
          {

            (*(v149 + 8))(v105, v96);
          }

          v42 = v152;
          v125 = *(v2 + v30);
          if (v125)
          {
            goto LABEL_38;
          }
        }

        v42 = v156;
        goto LABEL_42;
      }
    }

    else
    {
    }
  }

  v47 = v152;
  static Logger.UI.getter();
  v48 = v15;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    *v51 = 136316162;
    *(v51 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100094680, &v154);
    *(v51 + 12) = 2080;
    v52 = v48;
    v53 = [v52 description];
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v55;

    v57 = sub_100037B98(v54, v56, &v154);

    *(v51 + 14) = v57;
    *(v51 + 22) = 2080;
    v153 = [v52 openIndicatorLayerRenderId];
    sub_10000589C(&qword_1000BCF00, &qword_1000911C8);
    v58 = String.init<A>(describing:)();
    v60 = sub_100037B98(v58, v59, &v154);

    *(v51 + 24) = v60;
    *(v51 + 32) = 2080;
    v153 = [v52 openIndicatorContextId];
    v61 = String.init<A>(describing:)();
    v63 = sub_100037B98(v61, v62, &v154);

    *(v51 + 34) = v63;
    *(v51 + 42) = 2080;
    v64 = [v52 iconIdentifier];
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;

    v68 = sub_100037B98(v65, v67, &v154);

    *(v51 + 44) = v68;
    _os_log_impl(&_mh_execute_header, v49, v50, "%s can not find presentation controller for context: %s because openIndicatorLayerRenderId: %s or openIndicatorContextId: %s are nil. Context: %s", v51, 0x34u);
    swift_arrayDestroy();

    v70 = v151;
    v69 = v152;
  }

  else
  {

    v69 = v47;
    v70 = v4;
  }

  v150(v69, v70);
}