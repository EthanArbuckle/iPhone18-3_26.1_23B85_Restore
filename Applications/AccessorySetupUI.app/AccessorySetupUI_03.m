uint64_t sub_10003CAE4(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_100042A08;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_1000735F8;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100042A10(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13 = v16;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v18 + 8))(v5, v2);
  (*(v6 + 8))(v9, v17);
}

void sub_10003CE28(uint64_t a1)
{
  v2 = objc_opt_self();
  v4[4] = sub_100042A58;
  v4[5] = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000102BC;
  v4[3] = &unk_100073620;
  v3 = _Block_copy(v4);

  [v2 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_10003CF00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel);
    v2 = Strong;
    v3 = v1;

    if (!v1)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v3 setAlpha:1.0];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    return;
  }

  v5 = *(v4 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel);
  v6 = v4;
  v7 = v5;

  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v7 setAlpha:1.0];
}

void sub_10003CFEC(void *a1)
{
  v2 = v1;
  v4 = sub_100009894(&qword_1000801B0, &qword_10005D0D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - v7;
  v9 = a1[16];
  if (!v9)
  {
    v14 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel];
    if (v14)
    {
      v15 = a1[2];
      v16 = a1[3];
      v17 = v14;
      sub_100009588(0.2);
      v18 = String._bridgeToObjectiveC()();
      [v17 setText:v18];

      v19 = [v2 view];
      if (v19)
      {
        v20 = v19;
        [v19 setNeedsLayout];

        v21 = [v2 view];
        if (v21)
        {
          v22 = v21;
          [v21 layoutIfNeeded];

          v23 = objc_opt_self();
          v24 = swift_allocObject();
          *(v24 + 16) = v2;
          aBlock[4] = sub_1000432F0;
          aBlock[5] = v24;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000102BC;
          aBlock[3] = &unk_100073260;
          v25 = _Block_copy(aBlock);
          v26 = v2;

          [v23 animateWithDuration:2 delay:v25 usingSpringWithDamping:0 initialSpringVelocity:0.8 options:0.0 animations:0.7 completion:0.0];
          _Block_release(v25);
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices;
    v12 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices];
    v31 = a1[16];
    aBlock[0] = v12;

    v13 = v10;
    sub_100009894(&qword_1000801B8, &qword_10005D0D8);
    sub_100022AF4(&qword_1000801C0, &qword_1000801B8, &qword_10005D0D8);
    sub_100042A10(&qword_1000801C8, type metadata accessor for ASUIDevice);
    BidirectionalCollection<>.difference<A>(from:)();
    sub_100022AF4(&unk_1000801D0, &qword_1000801B0, &qword_10005D0D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (aBlock[0] == v31)
    {
    }

    else
    {
      v27 = *&v2[v11];
      *&v2[v11] = v9;

      v28 = *&v2[v11];

      sub_100003E70(v29);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {

    sub_10003D41C(a1);
  }
}

void sub_10003D41C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v131 = v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v132 = v128 - v14;
  v15 = a1[16];
  if (!v15)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v16 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices;
  v17 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices];
  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices) = v15;

  v18 = a1[21];
  if (!v18)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v19 = v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_appName;
  v20 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_appName + 8);
  v138 = a1[20];
  *v19 = v138;
  v19[1] = v18;
  swift_bridgeObjectRetain_n();

  v21 = *(v3 + v16);
  v22 = qword_10007EBF0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000032F0(v23, qword_10007EF70);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v129 = v10;
  v130 = v9;
  v128[1] = v8;
  v137 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock = v28;
    *v27 = 136315138;
    type metadata accessor for ASUIDevice();
    v29 = Array.description.getter();
    v31 = sub_10003FFF4(v29, v30, &aBlock);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "init ASUIProductCarouselView with devices %s", v27, 0xCu);
    sub_100009AB0(v28);
  }

  v32 = [objc_allocWithZone(type metadata accessor for ASUIProductCarouselView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v33 = *&v32[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
  *&v32[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = v21;
  v34 = v32;

  v35 = &v34[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
  v36 = *&v34[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName + 8];
  *v35 = v138;
  *(v35 + 1) = v18;

  v34[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 1;
  v34[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 1;
  sub_100005CD4();

  v37 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView;
  v38 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView);
  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView) = v34;
  v39 = v34;

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = *&v37[v3];
  if (!v40)
  {
    goto LABEL_54;
  }

  aBlock = *(v40 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdxPublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100009894(&qword_10007F108, &unk_10005D0E0);
  sub_100022AF4(&qword_1000801E0, &qword_10007F108, &unk_10005D0E0);
  v41 = Publisher<>.sink(receiveValue:)();

  v42 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellable);
  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellable) = v41;

  v43 = *&v37[v3];
  if (!v43)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  p_ivars = *(v43 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentNumberOfPagesPublisher);
  aBlock = p_ivars;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v45 = Publisher<>.sink(receiveValue:)();

  v46 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellablePageControl);
  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellablePageControl) = v45;

  v47 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel;
  v48 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel);
  if (!v48)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  [v48 setAlpha:0.0];
  v49 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel;
  v50 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel);
  if (v50)
  {
    [v50 setAlpha:0.0];
  }

  v51 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner;
  v52 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner);
  if (!v52)
  {
    goto LABEL_57;
  }

  [v52 setAlpha:0.0];
  v53 = *&v137[v3];
  if (!(v53 >> 62))
  {
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v53 < 0)
  {
    v127 = *&v137[v3];
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_45;
  }

LABEL_15:
  if ((v53 & 0xC000000000000001) != 0)
  {
LABEL_46:

    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_18;
  }

  if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_48;
  }

  v54 = *(v53 + 32);
LABEL_18:
  v55 = *&v54[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v55)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v56 = [v55 appAccessInfoMap];
  v133 = v54;
  v134 = v51;
  v138 = v37;
  v135 = v49;
  v136 = v47;
  if (v56 && (v57 = v56, sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr), v58 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v57, v59 = *(v58 + 16), , v59))
  {
    v60 = v132;
    String.LocalizationValue.init(stringLiteral:)();
    v62 = v129;
    v61 = v130;
    (*(v129 + 16))(v131, v60, v130);
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v64 = v63;
    (*(v62 + 8))(v60, v61);
  }

  else
  {
    v65 = a1[6];
    v64 = a1[7];
  }

  v66 = a1;
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v131 = v64;
  v68 = String._bridgeToObjectiveC()();
  v143 = sub_10003FF8C;
  v144 = v67;
  aBlock = _NSConcreteStackBlock;
  v2 = 1107296256;
  v140 = 1107296256;
  v141 = sub_10001BE14;
  v142 = &unk_1000732B0;
  v69 = _Block_copy(&aBlock);
  v70 = objc_opt_self();
  v71 = [v70 actionWithTitle:v68 style:0 handler:v69];

  _Block_release(v69);

  v132 = v71;

  v73 = v66[8];
  v72 = v66[9];
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v75 = String._bridgeToObjectiveC()();
  v143 = sub_10003FFBC;
  v144 = v74;
  aBlock = _NSConcreteStackBlock;
  v140 = 1107296256;
  v141 = sub_10001BE14;
  v142 = &unk_1000732D8;
  v76 = _Block_copy(&aBlock);
  v77 = [v70 actionWithTitle:v75 style:1 handler:v76];

  _Block_release(v76);

  v78 = [v3 contentView];
  v79 = v138;
  if (!*&v138[v3])
  {
    goto LABEL_59;
  }

  v80 = v78;
  [v78 addSubview:?];

  v81 = v135;
  v82 = *&v136[v3];
  v83 = v134;
  if (!v82)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  [v82 removeFromSuperview];
  v84 = *(v3 + v81);
  if (v84)
  {
    [v84 removeFromSuperview];
  }

  v85 = *(v3 + v83);
  if (!v85)
  {
    goto LABEL_61;
  }

  v136 = v77;
  [v85 removeFromSuperview];
  v86 = [v3 contentView];
  v87 = [v86 mainContentGuide];

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_10005C4D0;
  v89 = *&v79[v3];
  if (!v89)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v90 = [v89 topAnchor];
  v91 = [v87 topAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v88 + 32) = v92;
  v93 = *&v79[v3];
  if (!v93)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v94 = [v93 bottomAnchor];
  v137 = v87;
  v95 = [v87 bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v88 + 40) = v96;
  v97 = *&v79[v3];
  if (!v97)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v98 = [v97 leadingAnchor];
  v99 = [v3 contentView];
  v100 = [v99 leadingAnchor];

  v101 = [v98 constraintEqualToAnchor:v100];
  *(v88 + 48) = v101;
  v102 = *&v79[v3];
  if (!v102)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v103 = objc_opt_self();
  v104 = [v102 trailingAnchor];
  v105 = [v3 contentView];
  v106 = [v105 trailingAnchor];

  v107 = [v104 constraintEqualToAnchor:v106];
  *(v88 + 56) = v107;
  sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v103 activateConstraints:isa];

  v109 = *&v79[v3];
  if (!v109)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  p_ivars = &ASUIPresenter.ivars;
  [v109 setAlpha:0.0];
  v110 = [v3 bottomTray];
  v111 = [v110 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v137;
  if (!(v53 >> 62))
  {
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_49:

    __break(1u);
    goto LABEL_50;
  }

LABEL_48:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_49;
  }

LABEL_35:
  if ((v53 & 0xC000000000000001) == 0)
  {
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v112 = *(v53 + 32);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_50:
  v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_38:
  v113 = v112;

  [v113 p_ivars[131]];

  sub_10003F408();
  if (!v114)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v115 = v114;
  [v114 p_ivars[131]];

  v116 = [v3 view];
  if (!v116)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v117 = v116;
  [v116 setNeedsLayout];

  v118 = [v3 view];
  if (v118)
  {
    v119 = v118;

    [v119 layoutIfNeeded];

    v120 = objc_opt_self();
    v121 = swift_allocObject();
    *(v121 + 16) = v3;
    v143 = sub_1000432F0;
    v144 = v121;
    aBlock = _NSConcreteStackBlock;
    v140 = v2;
    v141 = sub_1000102BC;
    v142 = &unk_100073328;
    v122 = _Block_copy(&aBlock);
    v123 = v3;

    [v120 animateWithDuration:2 delay:v122 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.0 animations:0.7 completion:0.0];
    _Block_release(v122);
    v124 = swift_allocObject();
    *(v124 + 16) = v123;
    v143 = sub_10003FFEC;
    v144 = v124;
    aBlock = _NSConcreteStackBlock;
    v140 = v2;
    v141 = sub_1000102BC;
    v142 = &unk_100073378;
    v125 = _Block_copy(&aBlock);
    v126 = v123;

    [v120 animateWithDuration:0 delay:v125 options:0 animations:0.6 completion:0.0];

    _Block_release(v125);
    return;
  }

LABEL_69:
  __break(1u);
}

void sub_10003E3C0(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  if (*a1 != -1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v53 = v5;
      v14 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView;
      v15 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView);
      if (!v15)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v16 = v15;
      sub_100004B70();

      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      v58 = sub_1000432F0;
      v59 = v18;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_1000102BC;
      v57 = &unk_100073738;
      v19 = _Block_copy(&aBlock);
      v20 = v13;

      [v17 animateWithDuration:2 delay:v19 usingSpringWithDamping:0 initialSpringVelocity:0.8 options:0.0 animations:0.7 completion:0.0];
      _Block_release(v19);
      v21 = v20;
      v22 = [v21 bottomTray];
      v23 = [v22 actionButtons];

      sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_6:
          if ((v24 & 0xC000000000000001) == 0)
          {
            v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v25)
            {
              __break(1u);
              goto LABEL_26;
            }

            v26 = *(v24 + 32);
LABEL_9:
            v27 = v26;

            v28 = [v27 titleLabel];
            if (!v28)
            {
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

            v25 = *&v13[v14];
            if (!v25)
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v29 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx];
            v30 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
            if ((v30 & 0xC000000000000001) == 0)
            {
              if ((v29 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v29 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v31 = *(v30 + 8 * v29 + 32);
                goto LABEL_15;
              }

              __break(1u);
              goto LABEL_29;
            }

LABEL_26:
            v50 = v25;
            v52 = v14;
            v51 = v50;

            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();

            v14 = v52;

LABEL_15:
            v32 = *&v31[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
            if (v32)
            {
              v52 = v21;
              v33 = [v32 appAccessInfoMap];
              if (v33)
              {
                v34 = v33;
                sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
                v35 = v17;
                v36 = v14;
                v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                v38 = *(v37 + 16);
                v14 = v36;
                v17 = v35;
              }

              else
              {
              }

              String.LocalizationValue.init(stringLiteral:)();
              v39 = v53;
              (*(v53 + 16))(v9, v11, v4);
              static Locale.current.getter();
              v40 = String.init(localized:table:bundle:locale:comment:)();
              v42 = v41;
              (*(v39 + 8))(v11, v4);
              v58 = nullsub_1;
              v59 = 0;
              aBlock = _NSConcreteStackBlock;
              v55 = 1107296256;
              v56 = sub_1000102BC;
              v57 = &unk_100073760;
              v43 = _Block_copy(&aBlock);
              v44 = swift_allocObject();
              v45 = v52;
              v44[2] = v52;
              v44[3] = v40;
              v44[4] = v42;
              v58 = sub_100042B04;
              v59 = v44;
              aBlock = _NSConcreteStackBlock;
              v55 = 1107296256;
              v56 = sub_10003B844;
              v57 = &unk_1000737B0;
              v46 = _Block_copy(&aBlock);
              v47 = v45;

              [v17 animateWithDuration:v43 animations:v46 completion:0.3];
              _Block_release(v46);
              _Block_release(v43);
              v48 = *&v13[v14];
              if (v48)
              {
                v49 = v48;

                sub_100004E10();

                return;
              }

LABEL_33:
              __break(1u);
              return;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_24:
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_9;
        }
      }

      else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_24;
    }
  }
}

void sub_10003EA78(int a1, id a2)
{
  v2 = [a2 bottomTray];
  v3 = [v2 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    __break(1u);
    goto LABEL_11;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v5 = *(v4 + 32);
LABEL_6:
  v6 = v5;

  sub_100009588(0.2);
  v7 = String._bridgeToObjectiveC()();
  [v6 setTitle:v7 forState:0];
}

void sub_10003EBD0(void *a1)
{
  if (*a1 != -1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView;
      v4 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView);
      if (v4)
      {
        v5 = *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl];
        if (v5)
        {
          v6 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
          v7 = *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages];
          v8 = v4;
          [v5 setNumberOfPages:v7];
          v9 = *&v8[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint];
          if (v9)
          {
            [v9 setActive:*&v4[v6] < 2];

            v10 = objc_opt_self();
            v11 = swift_allocObject();
            *(v11 + 16) = v2;
            v21 = sub_100042AA8;
            v22 = v11;
            aBlock = _NSConcreteStackBlock;
            v18 = 1107296256;
            v19 = sub_1000102BC;
            v20 = &unk_1000736C0;
            v12 = _Block_copy(&aBlock);
            v13 = v2;

            v21 = nullsub_1;
            v22 = 0;
            aBlock = _NSConcreteStackBlock;
            v18 = 1107296256;
            v19 = sub_10003B844;
            v20 = &unk_1000736E8;
            v14 = _Block_copy(&aBlock);
            [v10 animateWithDuration:2 delay:v12 usingSpringWithDamping:v14 initialSpringVelocity:0.8 options:0.0 animations:0.7 completion:0.0];
            _Block_release(v14);
            _Block_release(v12);
            v15 = *&v2[v3];
            if (v15)
            {
              v16 = v15;
              sub_10000574C();

              return;
            }

LABEL_12:
            __break(1u);
            return;
          }

LABEL_11:
          __break(1u);
          goto LABEL_12;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_11;
    }
  }
}

void sub_10003EE24()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 showActivityIndicatorWithStatus:v2];

  v3 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView;
  v51 = v1;
  v4 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView];
  if (!v4)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_didSelect] = 1;
  v5 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage] = 1;
  v6 = *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView];
  if (!v6)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v4;
  [v6 setUserInteractionEnabled:0];
  v8 = *&v7[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
  if (!v8)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v8 setHidden:v4[v5]];
  v9 = *&v7[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel];
  if (v9)
  {
    [v9 setHidden:v4[v5]];
  }

  v50 = v3;
  v10 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
  swift_beginAccess();
  v11 = *&v7[v10];
  if (v11 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;

    if (!i)
    {
      break;
    }

    v14 = 0;
    v15 = v11 & 0xC000000000000001;
    v16 = v11 & 0xFFFFFFFFFFFFFF8;
    v52 = v11 & 0xC000000000000001;
    v53 = v11;
    while (1)
    {
      if (v15)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        v27 = *(v11 + 8 * v14 + 32);
      }

      v28 = v27;
      v29 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v14 == *&v7[v13])
      {
      }

      else
      {
        v17 = v13;
        v18 = i;
        v19 = objc_opt_self();
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        *(v20 + 24) = v7;
        *&v56 = sub_100042AA0;
        *(&v56 + 1) = v20;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v55 = sub_1000102BC;
        *(&v55 + 1) = &unk_100073670;
        v21 = v7;
        v22 = _Block_copy(&aBlock);
        v23 = v21;
        v24 = v28;

        v25 = v19;
        i = v18;
        v13 = v17;
        v15 = v52;
        v11 = v53;
        [v25 animateWithDuration:0 delay:v22 options:0 animations:0.333 completion:0.0];

        v26 = v22;
        v7 = v21;
        _Block_release(v26);
      }

      ++v14;
      if (v29 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_19:

  v30 = *(v51 + v50);
  if (!v30)
  {
    goto LABEL_42;
  }

  v31 = v30;
  sub_100004B70();

  v32 = *(v51 + v50);
  if (!v32)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v33 = v32;
  sub_100004E10();

  v34 = v51 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext;
  swift_beginAccess();
  v35 = *(v34 + 48);
  v56 = *(v34 + 32);
  v57 = v35;
  v58 = *(v34 + 64);
  v36 = *(v34 + 16);
  aBlock = *v34;
  v55 = v36;
  *v34 = 257;
  *(v34 + 8) = 0u;
  *(v34 + 24) = 0u;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  sub_10000A634(&aBlock);
  if (*(v34 + 16) == 1)
  {
    goto LABEL_30;
  }

  *v34 = 1;
  v37 = *(v51 + v50);
  if (!v37)
  {
    goto LABEL_44;
  }

  v38 = *&v37[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx];
  v39 = *&v37[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
  if ((v39 & 0xC000000000000001) == 0)
  {
    if ((v38 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v38 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v39 + 8 * v38 + 32);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_39;
  }

  v49 = v37;

  v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_27:
  v41 = *&v40[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v41)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v42 = [v41 identifier];
  if (!v42)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v43 = v42;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  v47 = *(v34 + 48);
  *(v34 + 40) = v44;
  *(v34 + 48) = v46;

LABEL_30:
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10004161C(v51, Strong, &OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_type, &OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext, &unk_1000733B0, sub_10002A5C4);
    swift_unknownObjectRelease();
  }
}

char *sub_10003F318()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10004161C(v0, result, &OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_type, &OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext, &unk_1000733B0, sub_10002A5C4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003F408()
{
  v1 = [v0 bottomTray];
  v2 = [v1 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 >= 2)
  {
    v5 = [v0 bottomTray];
    v6 = [v5 actionButtons];

    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v7 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(v7 + 40);
LABEL_7:

      return;
    }

    __break(1u);
  }
}

void sub_10003F564(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      [v3 layoutIfNeeded];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10003F600(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView];
  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setAlpha:1.0];
  v3 = [a1 bottomTray];
  v4 = [v3 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    __break(1u);
    goto LABEL_13;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_13:
  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v7 = v6;

  [v7 setAlpha:1.0];

  sub_10003F408();
  if (!v8)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setAlpha:1.0];
}

void sub_10003F7D0()
{
  v1 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx];
  v3 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v3 + 8 * v2 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = v1;

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_6:
  v5 = [objc_allocWithZone(type metadata accessor for ASUIDeviceInfoPopoverViewController()) init];
  v6 = *&v5[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device];
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device] = v4;

  v7 = v5;
  [v7 setModalPresentationStyle:7];
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  [v7 setPreferredContentSize:{CGRectGetWidth(v36) + -20.0, 300.0}];
  v34 = [v7 popoverPresentationController];

  if (v34)
  {
    v17 = v34;
    v18 = [v0 infoButton];
    [v17 setSourceView:v18];

    v19 = v17;
    v20 = [v0 infoButton];
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      [v19 setSourceRect:{v23, v25, v27, v29}];
      [v19 setPermittedArrowDirections:2];
      [v19 setDelegate:v0];
      v30 = objc_opt_self();
      v31 = v19;
      v32 = [v30 systemWhiteColor];
      [v31 setBackgroundColor:v32];

      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_9:
  [v0 presentViewController:v7 animated:1 completion:0];
}

void sub_10003FAF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_10003FBB8()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellable])
  {

    AnyCancellable.cancel()();
  }

  if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellablePageControl])
  {
    v2 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellablePageControl];

    AnyCancellable.cancel()();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 sub_10003FDF4@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1000253C8(&v9, &v8, &unk_10007F570, &unk_10005C510);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003FEF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FF2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003FF44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FFF4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000400C0(v11, 0, 0, 1, a1, a2);
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
    sub_10004059C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100009AB0(v11);
  return v7;
}

unint64_t sub_1000400C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000401CC(a5, a6);
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

char *sub_1000401CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100040218(a1, a2);
  sub_100040348(&off_100071138);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100040218(uint64_t a1, unint64_t a2)
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

  v6 = sub_100040434(v5, 0);
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
        v7 = sub_100040434(v10, 0);
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

uint64_t sub_100040348(uint64_t result)
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

  result = sub_1000404A8(result, v12, 1, v3);
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

void *sub_100040434(uint64_t a1, uint64_t a2)
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

  sub_100009894(&unk_1000801F8, &unk_10005D0F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000404A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009894(&unk_1000801F8, &unk_10005D0F0);
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

uint64_t sub_10004059C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100040658(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100009894(&qword_100080208, &unk_10005D100);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v144[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = __chkstk_darwin(v13);
  v18 = &v144[-v17 - 8];
  __chkstk_darwin(v16);
  v20 = &v144[-v19 - 8];
  v21 = &v150;
  switch(*(a1 + *a3))
  {
    case 0:
      v73 = (a1 + *a4);
      v74 = v73[3];
      v152 = v73[2];
      v153 = v74;
      v75 = *(v73 + 8);
      v154 = v75;
      v76 = v73[1];
      v150 = *v73;
      v151 = v76;
      if (v76 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        goto LABEL_79;
      }

      if (v75)
      {
        v113 = v73[3];
        v147 = v73[2];
        v148 = v113;
        v149 = *(v73 + 8);
        v114 = v73[1];
        v145 = *v73;
        v146 = v114;
        sub_1000427E4(&v145, v144);
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor))
        {
          v115 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);

          sub_10002D23C();

          goto LABEL_92;
        }

LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
        goto LABEL_135;
      }

      v77 = v73[3];
      v147 = v73[2];
      v148 = v77;
      v149 = *(v73 + 8);
      v78 = v73[1];
      v145 = *v73;
      v146 = v78;
      sub_1000427E4(&v145, v144);
LABEL_92:
      if ((v75 & 2) != 0)
      {
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor))
        {
          v116 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);

          sub_10000A634(&v150);
          sub_10002DCD4();

          return;
        }

        goto LABEL_134;
      }

LABEL_105:
      sub_10000A634(&v150);
      return;
    case 1:
    case 0xC:
    case 0xE:
      goto LABEL_2;
    case 2:
      v46 = (a1 + *a4);
      v47 = v46[3];
      v152 = v46[2];
      v153 = v47;
      v154 = *(v46 + 8);
      v48 = v46[1];
      v150 = *v46;
      v151 = v48;
      if (v48 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        goto LABEL_79;
      }

      v49 = v46[3];
      v147 = v46[2];
      v148 = v49;
      v149 = *(v46 + 8);
      v50 = v46[1];
      v145 = *v46;
      v146 = v50;
      sub_1000427E4(&v145, v144);
      sub_1000268D0();
      v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (v21)
      {
        goto LABEL_111;
      }

      __break(1u);
LABEL_29:
      v51 = (a1 + *a4);
      v52 = v51[3];
      v21[2] = v51[2];
      v21[3] = v52;
      v154 = *(v51 + 8);
      v53 = v51[1];
      *v21 = *v51;
      v21[1] = v53;
      if (v151 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        goto LABEL_79;
      }

      v54 = v51[3];
      v147 = v51[2];
      v148 = v54;
      v149 = *(v51 + 8);
      v55 = v51[1];
      v145 = *v51;
      v146 = v55;
      sub_1000427E4(&v145, v144);
      sub_1000268D0();
      v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (v21)
      {
        goto LABEL_111;
      }

      __break(1u);
LABEL_33:
      v56 = (a1 + *a4);
      v57 = v56[1];
      *v21 = *v56;
      v21[1] = v57;
      v58 = v56[3];
      v21[2] = v56[2];
      v21[3] = v58;
      v154 = *(v56 + 8);
      if (v151 == 1)
      {
        return;
      }

      v59 = v150;
      v60 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      v61 = v56[3];
      v147 = v56[2];
      v148 = v61;
      v149 = *(v56 + 8);
      v62 = v56[1];
      v145 = *v56;
      v146 = v62;
      sub_1000427E4(&v145, v144);
      if (v60)
      {
        [v60 dismissViewControllerAnimated:1 completion:0];
      }

      if (v59)
      {
        goto LABEL_105;
      }

      v105 = [objc_opt_self() defaultWorkspace];
      if (!v105)
      {
        goto LABEL_126;
      }

      v106 = v105;
      sub_10000A634(&v150);
      URL.init(string:)();
      v107 = type metadata accessor for URL();
      v108 = *(v107 - 8);
      v110 = 0;
      if ((*(v108 + 48))(v15, 1, v107) != 1)
      {
        URL._bridgeToObjectiveC()(v109);
        v110 = v111;
        (*(v108 + 8))(v15, v107);
      }

      sub_1000428D0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v106 openSensitiveURL:v110 withOptions:isa];

      return;
    case 3:
      goto LABEL_29;
    case 4:
      v66 = (a1 + *a4);
      v67 = v66[3];
      v152 = v66[2];
      v153 = v67;
      v154 = *(v66 + 8);
      v68 = v66[1];
      v150 = *v66;
      v151 = v68;
      if (v68 == 1)
      {
        return;
      }

      if (v150)
      {
        v69 = v153;
        if (v153)
        {
          v70 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v70)
          {
            v71 = *(&v152 + 1);

            v72 = v70;
            sub_100018B28(v71, v69);
          }
        }

        return;
      }

      v100 = v66[3];
      v147 = v66[2];
      v148 = v100;
      v149 = *(v66 + 8);
      v101 = v66[1];
      v145 = *v66;
      v146 = v101;
      sub_1000427E4(&v145, v144);
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v102 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v102)
      {
        goto LABEL_129;
      }

      v103 = v102;
      sub_10000A634(&v150);
      v104 = v103[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];

      if (v104)
      {
LABEL_79:
        v22 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
        if (v22)
        {
LABEL_80:
          [v22 dismissViewControllerAnimated:1 completion:0];
        }
      }

      else
      {
        sub_1000284D4();
      }

      return;
    case 5:
      goto LABEL_122;
    case 6:
    case 8:
      v23 = (a1 + *a4);
      v24 = v23[3];
      v152 = v23[2];
      v153 = v24;
      v154 = *(v23 + 8);
      v25 = v23[1];
      v150 = *v23;
      v151 = v25;
      if (v25 != 1)
      {
        if (v150)
        {
          v26 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v26)
          {
            v27 = *(&v151 + 1);
            v28 = v152;
            sub_1000253C8(&v150, &v145, &unk_10007F570, &unk_10005C510);
            v29 = v26;
            sub_10001B4D4(1, v27, v28);
            sub_10000A634(&v150);
          }
        }

        else
        {
          sub_100028DCC();
          v90 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v90)
          {
            v91 = v90;
            sub_10001B4D4(0, 0, 0);
          }
        }
      }

      return;
    case 9:
      v80 = (a1 + *a4);
      v81 = v80[1];
      v150 = *v80;
      v151 = v81;
      v82 = v80[3];
      v152 = v80[2];
      v153 = v82;
      v154 = *(v80 + 8);
      v83 = v151;
      if (v151 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        goto LABEL_67;
      }

      if (!v151)
      {
        goto LABEL_67;
      }

      v84 = v153;
      if (!v153)
      {
        goto LABEL_67;
      }

      v85 = *(&v150 + 1);
      v86 = BYTE7(v151) & 0xF;
      if ((v151 & 0x2000000000000000) == 0)
      {
        v86 = *(&v150 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v86 && (v87 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession]) != 0)
      {
        v88 = *(&v152 + 1);
        sub_1000253C8(&v150, &v145, &unk_10007F570, &unk_10005C510);

        v89 = v87;
        sub_10001A4E0(v88, v84, v85, v83);
      }

      else
      {
LABEL_67:
        v92 = v80[3];
        v147 = v80[2];
        v148 = v92;
        v149 = *(v80 + 8);
        v93 = v80[1];
        v145 = *v80;
        v146 = v93;
        sub_1000427E4(&v145, v144);
      }

      v94 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
      v95 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v95)
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v96 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
      swift_beginAccess();
      v97 = *(v95 + v96);
      if (!v97)
      {
        goto LABEL_121;
      }

      if (v97 >> 62)
      {
        if (v97 < 0)
        {
          v142 = *(v95 + v96);
        }

        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
LABEL_72:
          v98 = *&a2[v94];
          if (v98)
          {
            v99 = v98;
            sub_10000A634(&v150);
            sub_10001A19C();

            return;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }
      }

      else if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_72;
      }

LABEL_121:
      sub_10000A634(&v150);
LABEL_122:
      sub_1000284F4();
      return;
    case 0xA:
      v40 = (a1 + *a4);
      v41 = v40[3];
      v152 = v40[2];
      v153 = v41;
      v154 = *(v40 + 8);
      v42 = v40[1];
      v150 = *v40;
      v151 = v42;
      if (v42 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        sub_100028DAC();
        return;
      }

      v43 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      v44 = v40[3];
      v147 = v40[2];
      v148 = v44;
      v149 = *(v40 + 8);
      v45 = v40[1];
      v145 = *v40;
      v146 = v45;
      sub_1000427E4(&v145, v144);
      if (v43)
      {
        [v43 dismissViewControllerAnimated:1 completion:0];
      }

      v117 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v117)
      {
        goto LABEL_127;
      }

      v118 = v117;
      v119 = sub_10000A8A0();

      if (!v119)
      {
        goto LABEL_130;
      }

      v120 = *&v119[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
      v121 = v120;

      if (!v120)
      {
        goto LABEL_105;
      }

      v122 = [v121 flags];
      v123 = [objc_opt_self() defaultWorkspace];
      v124 = v123;
      if ((v122 & 0x20) != 0)
      {
        if (!v123)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        sub_10000A634(&v150);
        sub_10002613C();
        v132 = type metadata accessor for URL();
        v133 = *(v132 - 8);
        v128 = 0;
        if ((*(v133 + 48))(v20, 1, v132) != 1)
        {
          URL._bridgeToObjectiveC()(v134);
          v128 = v135;
          (*(v133 + 8))(v20, v132);
        }
      }

      else
      {
        if (!v123)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        sub_10000A634(&v150);
        URL.init(string:)();
        v125 = type metadata accessor for URL();
        v126 = *(v125 - 8);
        v128 = 0;
        if ((*(v126 + 48))(v18, 1, v125) != 1)
        {
          URL._bridgeToObjectiveC()(v127);
          v128 = v129;
          (*(v126 + 8))(v18, v125);
        }
      }

      sub_1000428D0(_swiftEmptyArrayStorage);
      v136 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v124 openSensitiveURL:v128 withOptions:v136];

      return;
    case 0xB:
      if (*(a1 + *a4 + 16) == 1)
      {
        return;
      }

LABEL_2:
      v22 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      if (v22)
      {
        goto LABEL_3;
      }

      return;
    case 0xD:
      v30 = (a1 + *a4);
      v31 = v30[3];
      v152 = v30[2];
      v153 = v31;
      v154 = *(v30 + 8);
      v32 = v30[1];
      v150 = *v30;
      v151 = v32;
      if (v32 == 1)
      {
        return;
      }

      if (v150)
      {
        goto LABEL_79;
      }

      v33 = v30[3];
      v147 = v30[2];
      v148 = v33;
      v149 = *(v30 + 8);
      v34 = v30[1];
      v145 = *v30;
      v146 = v34;
      sub_1000427E4(&v145, v144);
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v35 = qword_1000814E8;
      v36 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor;
      v37 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
      if (!v37)
      {
        goto LABEL_125;
      }

      v38 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v38)
      {
        goto LABEL_110;
      }

      if (*(v38 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
      {
        v39 = *(v37 + 84);
        if ((*(v38 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) & 1) == 0)
        {
LABEL_109:
          if (v39)
          {
LABEL_110:
            sub_1000268D0();
            v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
            if (v21)
            {
LABEL_111:
              v130 = v21;
              v131 = sub_10000A634(&v150);
              sub_10000B8EC(v131);

              return;
            }

            goto LABEL_132;
          }

LABEL_116:
          sub_10000A634(&v150);
          v137 = *(v35 + v36);
          if (!v137)
          {
LABEL_137:
            __break(1u);
            JUMPOUT(0x100041570);
          }

          v138 = swift_allocObject();
          *(v138 + 16) = a2;
          v139 = *(v137 + 40);
          v140 = *(v137 + 48);
          *(v137 + 40) = a6;
          *(v137 + 48) = v138;

          v141 = a2;
          sub_100002E6C(v139);

          sub_100026A50();
          return;
        }
      }

      else
      {
        if (*(v38 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) != 1)
        {
          goto LABEL_110;
        }

        v39 = 1;
      }

      if (*(v37 + 86) != 1)
      {
        goto LABEL_116;
      }

      goto LABEL_109;
    case 0x10:
      goto LABEL_33;
    case 0x11:
      v63 = a1 + *a4;
      if (*(v63 + 16) == 1 || (*v63 & 1) == 0)
      {
        return;
      }

      v64 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v64)
      {
        goto LABEL_128;
      }

      v143 = v64;
      (sub_10000B8EC)();
      v65 = v143;
      goto LABEL_53;
    case 0x12:
      v79 = a1 + *a4;
      if (*(v79 + 16) == 1)
      {
        return;
      }

      v22 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      if (*v79)
      {
        if (v22)
        {
          v65 = [v22 popViewControllerAnimated:1];
LABEL_53:
        }

        return;
      }

      if (!v22)
      {
        return;
      }

LABEL_3:

      goto LABEL_80;
    default:
      return;
  }
}

void sub_10004161C(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100009894(&qword_100080208, &unk_10005D100);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v144[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = __chkstk_darwin(v13);
  v18 = &v144[-v17 - 8];
  __chkstk_darwin(v16);
  v20 = &v144[-v19 - 8];
  switch(*(a1 + *a3))
  {
    case 0:
      v75 = (a1 + *a4);
      swift_beginAccess();
      v76 = *(v75 + 8);
      v154 = v76;
      v77 = v75[3];
      v152 = v75[2];
      v153 = v77;
      v78 = v75[1];
      v150 = *v75;
      v151 = v78;
      if (v78 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        goto LABEL_76;
      }

      if (v76)
      {
        v115 = v75[3];
        v147 = v75[2];
        v148 = v115;
        v149 = *(v75 + 8);
        v116 = v75[1];
        v145 = *v75;
        v146 = v116;
        sub_1000427E4(&v145, v144);
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor))
        {
          v117 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);

          sub_10002D23C();

          goto LABEL_89;
        }

LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v79 = v75[3];
      v147 = v75[2];
      v148 = v79;
      v149 = *(v75 + 8);
      v80 = v75[1];
      v145 = *v75;
      v146 = v80;
      sub_1000427E4(&v145, v144);
LABEL_89:
      if ((v76 & 2) != 0)
      {
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor))
        {
          v118 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);

          sub_10000A634(&v150);
          sub_10002DCD4();

          return;
        }

        goto LABEL_132;
      }

LABEL_102:
      sub_10000A634(&v150);
      return;
    case 1:
    case 0xC:
    case 0xE:
      v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      if (!v21)
      {
        return;
      }

      goto LABEL_5;
    case 2:
      v46 = (a1 + *a4);
      swift_beginAccess();
      v47 = v46[3];
      v152 = v46[2];
      v153 = v47;
      v154 = *(v46 + 8);
      v48 = v46[1];
      v150 = *v46;
      v151 = v48;
      if (v48 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        goto LABEL_76;
      }

      v49 = v46[3];
      v147 = v46[2];
      v148 = v49;
      v149 = *(v46 + 8);
      v50 = v46[1];
      v145 = *v46;
      v146 = v50;
      sub_1000427E4(&v145, v144);
      sub_1000268D0();
      v51 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (v51)
      {
        goto LABEL_108;
      }

      __break(1u);
LABEL_29:
      v52 = (a1 + *a4);
      swift_beginAccess();
      v53 = v52[3];
      v152 = v52[2];
      v153 = v53;
      v154 = *(v52 + 8);
      v54 = v52[1];
      v150 = *v52;
      v151 = v54;
      if (v54 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        goto LABEL_76;
      }

      v55 = v52[3];
      v147 = v52[2];
      v148 = v55;
      v149 = *(v52 + 8);
      v56 = v52[1];
      v145 = *v52;
      v146 = v56;
      sub_1000427E4(&v145, v144);
      sub_1000268D0();
      v51 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (v51)
      {
        goto LABEL_108;
      }

      __break(1u);
LABEL_33:
      v57 = (a1 + *a4);
      swift_beginAccess();
      v58 = v57[1];
      v150 = *v57;
      v151 = v58;
      v59 = v57[3];
      v152 = v57[2];
      v153 = v59;
      v154 = *(v57 + 8);
      if (v151 == 1)
      {
        return;
      }

      v60 = v150;
      v61 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      v62 = v57[3];
      v147 = v57[2];
      v148 = v62;
      v149 = *(v57 + 8);
      v63 = v57[1];
      v145 = *v57;
      v146 = v63;
      sub_1000427E4(&v145, v144);
      if (v61)
      {
        [v61 dismissViewControllerAnimated:1 completion:0];
      }

      if (v60)
      {
        goto LABEL_102;
      }

      v107 = [objc_opt_self() defaultWorkspace];
      if (!v107)
      {
        goto LABEL_124;
      }

      v108 = v107;
      sub_10000A634(&v150);
      URL.init(string:)();
      v109 = type metadata accessor for URL();
      v110 = *(v109 - 8);
      v112 = 0;
      if ((*(v110 + 48))(v15, 1, v109) != 1)
      {
        URL._bridgeToObjectiveC()(v111);
        v112 = v113;
        (*(v110 + 8))(v15, v109);
      }

      sub_1000428D0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v108 openSensitiveURL:v112 withOptions:isa];

      return;
    case 3:
      goto LABEL_29;
    case 4:
      v68 = (a1 + *a4);
      swift_beginAccess();
      v69 = v68[3];
      v152 = v68[2];
      v153 = v69;
      v154 = *(v68 + 8);
      v70 = v68[1];
      v150 = *v68;
      v151 = v70;
      if (v70 == 1)
      {
        return;
      }

      if (v150)
      {
        v71 = v153;
        if (v153)
        {
          v72 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v72)
          {
            v73 = *(&v152 + 1);

            v74 = v72;
            sub_100018B28(v73, v71);
          }
        }

        return;
      }

      v102 = v68[3];
      v147 = v68[2];
      v148 = v102;
      v149 = *(v68 + 8);
      v103 = v68[1];
      v145 = *v68;
      v146 = v103;
      sub_1000427E4(&v145, v144);
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v104 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v104)
      {
        goto LABEL_127;
      }

      v105 = v104;
      sub_10000A634(&v150);
      v106 = v105[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];

      if (v106)
      {
LABEL_76:
        v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
        if (v21)
        {
LABEL_5:
          [v21 dismissViewControllerAnimated:1 completion:0];
        }
      }

      else
      {
        sub_1000284D4();
      }

      return;
    case 5:
      goto LABEL_120;
    case 6:
    case 8:
      v22 = (a1 + *a4);
      swift_beginAccess();
      v23 = v22[3];
      v152 = v22[2];
      v153 = v23;
      v154 = *(v22 + 8);
      v24 = v22[1];
      v150 = *v22;
      v151 = v24;
      if (v24 != 1)
      {
        if (v150)
        {
          v25 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v25)
          {
            v26 = *(&v151 + 1);
            v27 = v152;
            sub_1000253C8(&v150, &v145, &unk_10007F570, &unk_10005C510);
            v28 = v25;
            sub_10001B4D4(1, v26, v27);
            sub_10000A634(&v150);
          }
        }

        else
        {
          sub_100028DCC();
          v92 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v92)
          {
            v93 = v92;
            sub_10001B4D4(0, 0, 0);
          }
        }
      }

      return;
    case 9:
      v82 = (a1 + *a4);
      swift_beginAccess();
      v83 = v82[1];
      v150 = *v82;
      v151 = v83;
      v84 = v82[3];
      v152 = v82[2];
      v153 = v84;
      v154 = *(v82 + 8);
      v85 = v151;
      if (v151 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        goto LABEL_64;
      }

      if (!v151)
      {
        goto LABEL_64;
      }

      v86 = v153;
      if (!v153)
      {
        goto LABEL_64;
      }

      v87 = *(&v150 + 1);
      v88 = BYTE7(v151) & 0xF;
      if ((v151 & 0x2000000000000000) == 0)
      {
        v88 = *(&v150 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v88 && (v89 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession]) != 0)
      {
        v90 = *(&v152 + 1);
        sub_1000253C8(&v150, &v145, &unk_10007F570, &unk_10005C510);

        v91 = v89;
        sub_10001A4E0(v90, v86, v87, v85);
      }

      else
      {
LABEL_64:
        v94 = v82[3];
        v147 = v82[2];
        v148 = v94;
        v149 = *(v82 + 8);
        v95 = v82[1];
        v145 = *v82;
        v146 = v95;
        sub_1000427E4(&v145, v144);
      }

      v96 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
      v97 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v97)
      {
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
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v98 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
      swift_beginAccess();
      v99 = *(v97 + v98);
      if (!v99)
      {
        goto LABEL_119;
      }

      if (v99 >> 62)
      {
        if (v99 < 0)
        {
          v142 = *(v97 + v98);
        }

        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
LABEL_69:
          v100 = *&a2[v96];
          if (v100)
          {
            v101 = v100;
            sub_10000A634(&v150);
            sub_10001A19C();

            return;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }
      }

      else if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_69;
      }

LABEL_119:
      sub_10000A634(&v150);
LABEL_120:
      sub_1000284F4();
      return;
    case 0xA:
      v40 = (a1 + *a4);
      swift_beginAccess();
      v41 = v40[3];
      v152 = v40[2];
      v153 = v41;
      v154 = *(v40 + 8);
      v42 = v40[1];
      v150 = *v40;
      v151 = v42;
      if (v42 == 1)
      {
        return;
      }

      if ((v150 & 1) == 0)
      {
        sub_100028DAC();
        return;
      }

      v43 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      v44 = v40[3];
      v147 = v40[2];
      v148 = v44;
      v149 = *(v40 + 8);
      v45 = v40[1];
      v145 = *v40;
      v146 = v45;
      sub_1000427E4(&v145, v144);
      if (v43)
      {
        [v43 dismissViewControllerAnimated:1 completion:0];
      }

      v119 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v119)
      {
        goto LABEL_125;
      }

      v120 = v119;
      v121 = sub_10000A8A0();

      if (!v121)
      {
        goto LABEL_128;
      }

      v122 = *&v121[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
      v123 = v122;

      if (!v122)
      {
        goto LABEL_102;
      }

      v124 = [v123 flags];
      v125 = [objc_opt_self() defaultWorkspace];
      v126 = v125;
      if ((v124 & 0x20) != 0)
      {
        if (!v125)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        sub_10000A634(&v150);
        sub_10002613C();
        v132 = type metadata accessor for URL();
        v133 = *(v132 - 8);
        v130 = 0;
        if ((*(v133 + 48))(v20, 1, v132) != 1)
        {
          URL._bridgeToObjectiveC()(v134);
          v130 = v135;
          (*(v133 + 8))(v20, v132);
        }
      }

      else
      {
        if (!v125)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        sub_10000A634(&v150);
        URL.init(string:)();
        v127 = type metadata accessor for URL();
        v128 = *(v127 - 8);
        v130 = 0;
        if ((*(v128 + 48))(v18, 1, v127) != 1)
        {
          URL._bridgeToObjectiveC()(v129);
          v130 = v131;
          (*(v128 + 8))(v18, v127);
        }
      }

      sub_1000428D0(_swiftEmptyArrayStorage);
      v136 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v126 openSensitiveURL:v130 withOptions:v136];

      return;
    case 0xB:
      v39 = a1 + *a4;
      swift_beginAccess();
      if (*(v39 + 16) == 1)
      {
        return;
      }

      goto LABEL_76;
    case 0xD:
      v29 = (a1 + *a4);
      swift_beginAccess();
      v30 = v29[3];
      v152 = v29[2];
      v153 = v30;
      v154 = *(v29 + 8);
      v31 = v29[1];
      v150 = *v29;
      v151 = v31;
      if (v31 == 1)
      {
        return;
      }

      if (v150)
      {
        goto LABEL_76;
      }

      v32 = v29[3];
      v147 = v29[2];
      v148 = v32;
      v149 = *(v29 + 8);
      v33 = v29[1];
      v145 = *v29;
      v146 = v33;
      sub_1000427E4(&v145, v144);
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v34 = qword_1000814E8;
      v35 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor;
      v36 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
      if (!v36)
      {
        goto LABEL_123;
      }

      v37 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v37)
      {
        goto LABEL_107;
      }

      if (*(v37 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
      {
        v38 = *(v36 + 84);
        if ((*(v37 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) & 1) == 0)
        {
LABEL_106:
          if (v38)
          {
LABEL_107:
            sub_1000268D0();
            v51 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
            if (v51)
            {
LABEL_108:
              v67 = v51;
              v66 = sub_10000A634(&v150);
LABEL_109:
              sub_10000B8EC(v66);

              return;
            }

            goto LABEL_130;
          }

LABEL_114:
          sub_10000A634(&v150);
          v137 = *(v34 + v35);
          if (!v137)
          {
LABEL_135:
            __break(1u);
            JUMPOUT(0x1000425E8);
          }

          v138 = swift_allocObject();
          *(v138 + 16) = a2;
          v139 = *(v137 + 40);
          v140 = *(v137 + 48);
          *(v137 + 40) = a6;
          *(v137 + 48) = v138;

          v141 = a2;
          sub_100002E6C(v139);

          sub_100026A50();
          return;
        }
      }

      else
      {
        if (*(v37 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) != 1)
        {
          goto LABEL_107;
        }

        v38 = 1;
      }

      if (*(v36 + 86) != 1)
      {
        goto LABEL_114;
      }

      goto LABEL_106;
    case 0x10:
      goto LABEL_33;
    case 0x11:
      v64 = a1 + *a4;
      swift_beginAccess();
      if (*(v64 + 16) == 1 || (*v64 & 1) == 0)
      {
        return;
      }

      v65 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v65)
      {
        goto LABEL_126;
      }

      v66 = v65;
      v67 = v66;
      goto LABEL_109;
    case 0x12:
      v81 = a1 + *a4;
      swift_beginAccess();
      if (*(v81 + 16) == 1)
      {
        return;
      }

      v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      if (*v81)
      {
        if (v21)
        {
        }
      }

      else if (v21)
      {
        goto LABEL_5;
      }

      return;
    default:
      return;
  }
}

unint64_t sub_1000428D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009894(&unk_100080210, &qword_10005C898);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000253C8(v4, &v13, &unk_10007F540, &unk_10005C8A0);
      v5 = v13;
      v6 = v14;
      result = sub_10001F768(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100022E1C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100042A10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100042A60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042AC4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100042B04(int a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_10003EA78(a1, *(v1 + 16));
}

unint64_t sub_100042B38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009894(&unk_100080230, &qword_10005D120);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001F768(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100042C50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100009894(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10001F768(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_100042D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009894(&unk_100080220, &unk_10005D110);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001F768(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_100042E60(uint64_t a1)
{
  if (IsAppleInternalBuild() && a1 == 1)
  {
    v3 = [v1 infoButtonAction];
    if (v3)
    {
    }

    else
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v5 = String._bridgeToObjectiveC()();
      v8[4] = sub_100043228;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10001BE14;
      v8[3] = &unk_1000737D8;
      v6 = _Block_copy(v8);
      v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

      _Block_release(v6);

      [v1 setInfoButtonAction:v7];
    }
  }
}

id sub_100042FF4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_type] = 4;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_router + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext];
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 1;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_otaLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellable] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellablePageControl] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices] = _swiftEmptyArrayStorage;
  v5 = &v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_appName];
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "initWithContentView:", a1);
}

void sub_100043114()
{
  v1 = [v0 infoButton];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() secondaryLabelColor];
    [v2 setTintColor:v3];
  }

  v4 = [v0 infoButton];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() secondarySystemBackgroundColor];
    [v5 setBackgroundColor:v6];
  }
}

void sub_100043324(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor) = 0;

  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel) = 0;

  v5 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient;
  v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    swift_unknownObjectRetain();
    if (a1)
    {
      a1 = _convertErrorToNSError(_:)();
    }

    [v6 pickerDidDismiss:a1];

    swift_unknownObjectRelease();
    v8 = *(v1 + v5);
  }

  *(v1 + v5) = 0;
  swift_unknownObjectRelease();
  v9 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection;
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (v10)
  {
    [v10 invalidate];
    v11 = *(v1 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v1 + v9) = 0;

  v12 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle;
  v13 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle);
  if (v13)
  {
    [v13 invalidate];
    v13 = *(v1 + v12);
  }

  *(v1 + v12) = 0;
}

uint64_t sub_100043438()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_100080250);
  v1 = sub_1000032F0(v0, qword_100080250);
  if (qword_10007EBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081490);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100043500()
{
  result = [objc_allocWithZone(type metadata accessor for ASUIServerManager()) init];
  qword_1000814E8 = result;
  return result;
}

void sub_100043530()
{
  ObjectType = swift_getObjectType();
  v20 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v20);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = &v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_migrationDisplayCount] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_listener] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle] = 0;
  v19 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_queue;
  v18 = sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100048FE0(&qword_10007F8E8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100009894(&unk_1000804B0, &unk_10005D1B0);
  sub_10002FC5C(&qword_10007F8F0, &unk_1000804B0, &unk_10005D1B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v20);
  *&v0[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient] = 0;
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel] = 0;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v25, "init");
  v23 = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100049028;
  *(v11 + 24) = &v22;
  aBlock[4] = sub_100049090;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004908C;
  aBlock[3] = &unk_100073B70;
  v12 = _Block_copy(aBlock);
  v13 = objc_opt_self();
  v14 = v10;

  v15 = [v13 listenerWithConfigurator:v12];
  _Block_release(v12);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v16 = *&v14[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_listener];
    *&v14[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_listener] = v15;
    v17 = v15;

    if (v17)
    {
      [v17 activate];

      return;
    }
  }

  __break(1u);
}

id sub_10004398C(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

id sub_100043A70()
{
  ObjectType = swift_getObjectType();
  result = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_listener];
  if (result)
  {
    [result invalidate];
    v3 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection];
    if (v3)
    {
      [v3 invalidate];
    }

    v4.receiver = v0;
    v4.super_class = ObjectType;
    return objc_msgSendSuper2(&v4, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100043BEC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
    if (!v3)
    {
      goto LABEL_23;
    }

    v6 = [v3 remoteProcess];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 hasEntitlement:v7];

    if (v8)
    {
      if (qword_10007EC48 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000032F0(v9, qword_100080250);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v32 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_10003FFF4(a1, a2, &v32);
        _os_log_impl(&_mh_execute_header, v10, v11, "Override client bundleID with %s", v12, 0xCu);
        sub_100009AB0(v13);
      }

      return a1;
    }

    v31 = v2;
    if (qword_10007EC48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000032F0(v14, qword_100080250);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136315138;
      v19 = sub_10003FFF4(a1, a2, &v32);

      *(v17 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Remote process is not entitled to override bundleID with %s", v17, 0xCu);
      sub_100009AB0(v18);
    }

    else
    {
    }

    v2 = v31;
  }

  v20 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (v20)
  {
    v21 = [v20 remoteProcess];
    v22 = [v21 bundleIdentifier];

    if (v22)
    {
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (qword_10007EC48 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000032F0(v25, qword_100080250);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v32 = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_10003FFF4(a1, v24, &v32);
        _os_log_impl(&_mh_execute_header, v26, v27, "Using authentic bundle ID of remote process: %s", v28, 0xCu);
        sub_100009AB0(v29);
      }

      return a1;
    }
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000440E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor) = 0;

  v2 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel) = 0;

  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient) = 0;
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection;
  v5 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (v5)
  {
    [v5 invalidate];
    v6 = *(v0 + v4);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + v4) = 0;

  v7 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle;
  v8 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle);
  if (v8)
  {
    [v8 invalidate];
    v8 = *(v0 + v7);
  }

  *(v0 + v7) = 0;
}

void sub_1000441A8(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() interfaceWithIdentifier:v4];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol:&OBJC_PROTOCOL___ASUIServer];
  [v5 setServer:v7];

  v8 = [v6 protocolForProtocol:&OBJC_PROTOCOL___ASUIClientProto];
  [v5 setClient:v8];

  [v5 setClientMessagingExpectation:0];
  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v9];

  v10 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v10];

  [a1 setInterface:v5];
  [a1 setInterfaceTarget:a2];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_100048F98;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001BE14;
  v19 = &unk_100073AA8;
  v12 = _Block_copy(&v16);

  [a1 setActivationHandler:v12];
  _Block_release(v12);
  v20 = sub_10004470C;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001BE14;
  v19 = &unk_100073AD0;
  v13 = _Block_copy(&v16);
  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = sub_100048FD8;
  v21 = v14;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001BE14;
  v19 = &unk_100073B20;
  v15 = _Block_copy(&v16);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
}

void sub_10004452C(void *a1)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_100080250);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ASUIServerManager: connection activated from client!", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([a1 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      sub_100009894(&unk_1000804A0, &qword_10005D1A8);
      if (swift_dynamicCast())
      {
        v8 = *&v7[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
        *&v7[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient] = v9;

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      sub_1000227E8(v12, &qword_100080498, &qword_10005D1A0);
    }
  }
}

id sub_10004470C(void *a1)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_100080250);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ASUIServerManager: connection interrupted, reconnecting", v5, 2u);
  }

  return [a1 activate];
}

void sub_100044804()
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000032F0(v0, qword_100080250);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "ASUIServerManager: connection invalidated from client!", v3, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1000440E8();
}

uint64_t sub_100044914(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

void sub_1000449FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v3)
  {
    v4 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
    if (*&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8])
    {
      v7 = *v4;
      v8 = objc_allocWithZone(DADeviceAppAccessInfo);
      v9 = v3;

      v10 = String._bridgeToObjectiveC()();

      v11 = String._bridgeToObjectiveC()();
      v12 = [v8 initWithBundleIdentifier:v10 deviceIdentifier:v11 state:0];

      v13 = [objc_allocWithZone(DADevice) init];
      v14 = String._bridgeToObjectiveC()();
      [v13 setIdentifier:v14];

      v15 = [objc_allocWithZone(DASession) init];
      if (*(v4 + 1))
      {
        v16 = *v4;
        v17 = *(v4 + 1);

        v18 = String._bridgeToObjectiveC()();
      }

      else
      {
        v18 = 0;
      }

      [v15 setBundleID:v18];

      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = a1;
      v22[4] = a2;
      v22[5] = v12;
      v22[6] = v15;
      aBlock[4] = sub_100048F10;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100045900;
      aBlock[3] = &unk_100073A08;
      v23 = _Block_copy(aBlock);

      v24 = v12;
      v25 = v15;

      [v25 getDevicesWithFlags:8 completionHandler:v23];
      _Block_release(v23);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v19 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    if (v19)
    {
      type metadata accessor for ASError(0);
      aBlock[6] = 550;
      swift_unknownObjectRetain();
      sub_1000299A0(_swiftEmptyArrayStorage);
      sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v20 = _convertErrorToNSError(_:)();

      [v19 relayPickerCompletion:v20];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100044D4C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_10007EC48 != -1)
    {
LABEL_63:
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000032F0(v7, qword_100080250);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error fetching accessories: %@", v10, 0xCu);
      sub_1000227E8(v11, &qword_10007F278, &unk_10005CD60);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    if (v15)
    {
      v16 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
      swift_unknownObjectRetain();

      type metadata accessor for ASError(0);
      sub_1000299A0(_swiftEmptyArrayStorage);
      sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v17 = _convertErrorToNSError(_:)();

      [v15 relayPickerCompletion:v17];

LABEL_69:
      swift_unknownObjectRelease();
      return;
    }

LABEL_26:

    return;
  }

  if (!a1)
  {
    goto LABEL_65;
  }

  if (a1 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_11;
    }

LABEL_65:
    swift_beginAccess();
    v72 = swift_unknownObjectWeakLoadStrong();
    if (!v72)
    {
      return;
    }

    v73 = v72;
    v74 = *&v72[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
    if (!v74)
    {

      return;
    }

    v75 = *&v72[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
    swift_unknownObjectRetain();

    type metadata accessor for ASError(0);
    sub_1000299A0(_swiftEmptyArrayStorage);
    sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v66 = _convertErrorToNSError(_:)();

    [v74 relayPickerCompletion:v66];
LABEL_68:

    goto LABEL_69;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_65;
  }

LABEL_11:
  v20 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v21 = *(a1 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v24 = [v21 identifier];
    if (!v24)
    {
      goto LABEL_12;
    }

    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == a4 && v28 == a5)
    {
      break;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_28;
    }

LABEL_12:

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_65;
    }
  }

LABEL_28:
  if ([v22 state] != 20)
  {
    if (qword_10007EC48 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000032F0(v44, qword_100080250);

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v81[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_10003FFF4(a4, a5, v81);
      _os_log_impl(&_mh_execute_header, v45, v46, "Error failing accessory %s since accessory is not pending authorization", v47, 0xCu);
      sub_100009AB0(v48);
    }

    swift_beginAccess();
    v49 = swift_unknownObjectWeakLoadStrong();
    if (v49)
    {
      v50 = v49;
      v51 = *&v49[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
      if (v51)
      {
        v52 = *&v49[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
        swift_unknownObjectRetain();

        type metadata accessor for ASError(0);
        sub_100009894(&unk_100080428, qword_10005D188);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10005C440;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v54;
        *(inited + 48) = 0xD00000000000002ELL;
        *(inited + 56) = 0x800000010005F300;
        sub_1000428D0(inited);
        swift_setDeallocating();
        sub_1000227E8(inited + 32, &unk_10007F540, &unk_10005C8A0);
        sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError);
        _BridgedStoredNSError.init(_:userInfo:)();
        v55 = _convertErrorToNSError(_:)();

        [v51 relayPickerCompletion:v55];
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return;
  }

  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000032F0(v31, qword_100080250);
  v32 = v22;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "Fail accessory setup for %@", v35, 0xCu);
    sub_1000227E8(v36, &qword_10007F278, &unk_10005CD60);
  }

  v81[0] = 0;
  v38 = [objc_opt_self() setDeviceAppAccessInfo:a6 device:v32 session:a7 error:v81];
  v39 = v81[0];
  if (!v38)
  {
    v56 = v81[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    swift_errorRetain();
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v81[0] = v61;
      *v59 = 136315394;
      *(v59 + 4) = sub_10003FFF4(a4, a5, v81);
      *(v59 + 12) = 2112;
      swift_errorRetain();
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 14) = v62;
      *v60 = v62;
      _os_log_impl(&_mh_execute_header, v57, v58, "Error failing accessory %s due to %@", v59, 0x16u);
      sub_1000227E8(v60, &qword_10007F278, &unk_10005CD60);

      sub_100009AB0(v61);
    }

    swift_beginAccess();
    v63 = swift_unknownObjectWeakLoadStrong();
    if (!v63)
    {

      return;
    }

    v14 = v63;
    v64 = *(v63 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    if (v64)
    {
      v65 = *(v63 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
      swift_unknownObjectRetain();

      type metadata accessor for ASError(0);
      sub_1000299A0(_swiftEmptyArrayStorage);
      sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v66 = _convertErrorToNSError(_:)();

      [v64 relayPickerCompletion:v66];

      goto LABEL_68;
    }

    goto LABEL_26;
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = *(v40 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router);
    v42 = v40;
    swift_unknownObjectRetain();
    v43 = v39;

    if (v41)
    {
      sub_100028DCC();
      swift_unknownObjectRelease();
      goto LABEL_53;
    }

    __break(1u);
  }

  else
  {
    v67 = v39;
LABEL_53:
    swift_beginAccess();
    v68 = swift_unknownObjectWeakLoadStrong();
    if (v68)
    {
      v69 = v68;
      v70 = *&v68[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
      if (v70)
      {
        v71 = *&v68[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
        swift_unknownObjectRetain();

        [v70 relayPickerCompletion:0];
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100045900(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100009B48(0, &qword_100080420, DADevice_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_100045A0C(void *a1)
{
  v2 = v1;
  v3 = [a1 integerValue];
  v4 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_migrationDisplayCount;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_migrationDisplayCount] = v3;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000032F0(v5, qword_100080250);
  v6 = v1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *&v2[v4];

    _os_log_impl(&_mh_execute_header, oslog, v7, "Only Migration displayItems Count : %ld", v8, 0xCu);

    v9 = oslog;
  }

  else
  {

    v9 = v6;
  }
}

void sub_100045BB4(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v91 = a8;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v15 - 8);
  v99 = v15;
  v16 = *(v98 + 64);
  __chkstk_darwin(v15);
  v96 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  v18 = *(v95 + 64);
  __chkstk_darwin(v97);
  v94 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000032F0(v20, qword_100080250);

  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v102 = v24;

  v28 = os_log_type_enabled(v26, v27);
  v100 = a1;
  v103 = v22;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    aBlock[0] = v93;
    *v29 = 136316418;
    if (!a2)
    {
      a1 = 0;
    }

    v31 = v25;
    v32 = v21;
    if (a2)
    {
      v33 = a2;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v34 = sub_10003FFF4(a1, v33, aBlock);
    v21 = v32;
    v25 = v31;
    v35 = v102;

    *(v29 + 4) = v34;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v21;
    *(v29 + 22) = 2112;
    v36 = v103;
    *(v29 + 24) = v103;
    *v30 = v21;
    v30[1] = v36;
    *(v29 + 32) = 2112;
    *(v29 + 34) = v23;
    *(v29 + 42) = 2112;
    *(v29 + 44) = v35;
    v30[2] = v23;
    v30[3] = v35;
    *(v29 + 52) = 2112;
    *(v29 + 54) = v25;
    v30[4] = v25;
    v37 = v21;
    v38 = v36;
    v39 = v23;
    v40 = v35;
    v41 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "showPickerWithOverrideBundleID: %s, shouldRetrieveDisplayItems: %@, needsBluetooth: %@, needsWiFi: %@, needsDeviceOTANameBroadcast: %@, timeout: %@", v29, 0x3Eu);
    sub_100009894(&qword_10007F278, &unk_10005CD60);
    swift_arrayDestroy();

    sub_100009AB0(v93);

    v22 = v36;
  }

  else
  {
  }

  v42 = [objc_opt_self() identityOfCurrentProcess];
  if (v42)
  {
    v43 = v42;
    v93 = v21;
    v44 = [v22 BOOLValue];
    v90 = v23;
    if ([v23 BOOLValue])
    {
      v45 = v44 | 2;
    }

    else
    {
      v45 = v44;
    }

    type metadata accessor for ASUISystemMonitor();
    swift_allocObject();
    v46 = sub_10002E68C();
    v46[7] = v45;
    v47 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor;
    v48 = v101;
    v49 = *&v101[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor];
    *&v101[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor] = v46;

    v50 = swift_allocObject();
    *(v50 + 16) = v43;
    *(v50 + 24) = v48;
    v51 = v46[3];
    v52 = v46[4];
    v46[3] = sub_10004905C;
    v46[4] = v50;
    v53 = v48;
    v92 = v43;
    sub_100002E6C(v51);

    if (*&v48[v47])
    {
      v54 = *&v48[v47];

      sub_10002C880(v45);

      v55 = sub_100043BEC(v100, a2);
      v57 = v56;
      v58 = objc_allocWithZone(type metadata accessor for ASUIClientModel());
      v59 = sub_100049D54(v55, v57, 0);
      v60 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
      v61 = *&v53[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel];
      *&v53[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel] = v59;

      v62 = *&v53[v60];
      if (v62)
      {
        v63 = v62;
        v64 = [v103 BOOLValue];
        v63[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] = v64;

        v65 = *&v53[v60];
        if (v65)
        {
          v66 = v65;
          v67 = [v90 BOOLValue];
          v66[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi] = v67;

          v68 = *&v53[v60];
          if (v68)
          {
            v69 = v25;
            v70 = v68;
            v71 = [v102 BOOLValue];
            v70[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast] = v71;

            v25 = v69;
            v72 = *&v53[v60];
            if (v72)
            {
              v73 = v72;
              v74 = [v91 BOOLValue];
              v73[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp] = v74;

              v25 = v69;
            }
          }
        }
      }

      [v25 doubleValue];
      if (v75 > 0.0)
      {
        v76 = *&v53[v60];
        if (v76)
        {
          v77 = v76;
          v78 = v25;
          v79 = v77;
          [v78 doubleValue];
          *&v79[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout] = v80;
        }
      }

      if ([v93 BOOLValue])
      {
        v81 = *&v53[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_queue];
        v82 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100048E18;
        aBlock[5] = v82;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000102BC;
        aBlock[3] = &unk_100073968;
        v83 = _Block_copy(aBlock);

        v84 = v94;
        static DispatchQoS.unspecified.getter();
        v104 = _swiftEmptyArrayStorage;
        sub_100048FE0(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
        sub_100009894(&unk_10007F560, &qword_10005C590);
        sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
        v85 = v96;
        v86 = v99;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v83);

        (*(v98 + 8))(v85, v86);
        (*(v95 + 8))(v84, v97);
      }

      else
      {
        v87 = *&v53[v60];
        if (v87)
        {
          v88 = v87;
          sub_100049BFC(_swiftEmptyArrayStorage);
        }

        v89 = v92;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_1000463E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = _swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10004059C(i, v10);
    sub_100009B48(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v8 = v11[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

void sub_1000465F0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  __chkstk_darwin(v6);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000032F0(v13, qword_100080250);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    v18 = a1;
    if (a2)
    {
      v19 = a1;
    }

    else
    {
      v19 = 0;
    }

    if (a2)
    {
      v20 = a2;
    }

    else
    {
      v20 = 0xE000000000000000;
    }

    v21 = sub_10003FFF4(v19, v20, aBlock);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "showMigrationPickerWithOverrideBundleID: %s", v16, 0xCu);
    sub_100009AB0(v17);
  }

  else
  {
    v18 = a1;
  }

  v22 = [objc_opt_self() identityOfCurrentProcess];
  if (v22)
  {
    v23 = v22;
    v24 = sub_100043BEC(v18, a2);
    v26 = v25;
    v27 = objc_allocWithZone(type metadata accessor for ASUIClientModel());
    v28 = sub_100049D54(v24, v26, 1);
    v29 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel) = v28;

    v30 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_queue);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100048DB8;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000102BC;
    aBlock[3] = &unk_1000738C8;
    v32 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v47 = _swiftEmptyArrayStorage;
    sub_100048FE0(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009894(&unk_10007F560, &qword_10005C590);
    v33 = v3;
    sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
    v34 = v42;
    v35 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);
    (*(v45 + 8))(v34, v35);
    (*(v43 + 8))(v12, v44);

    v36 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v37 = v23;
    v38 = String._bridgeToObjectiveC()();
    v39 = [v36 initWithSceneProvidingProcess:v37 configurationIdentifier:v38];

    v40 = [objc_opt_self() newHandleWithDefinition:v39 configurationContext:0];
    v41 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v40 registerObserver:v33];
    [v40 activateWithContext:v41];
  }
}

uint64_t sub_100046B64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v43 = *(v12 - 8);
  v44 = v12;
  v13 = *(v43 + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *&Strong[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
    if (v18)
    {
      v19 = *&Strong[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
      swift_unknownObjectRetain();

      v20 = [v18 retrieveDisplayItems];
      swift_unknownObjectRelease();
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = sub_1000463E8(v21, &qword_100080408, ASPickerDisplayItem_ptr);

      if (v22)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_7:
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000032F0(v23, qword_100080250);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v40 = a2;
    v27 = v26;
    v28 = swift_slowAlloc();
    v42 = a4;
    v39 = v28;
    aBlock[0] = v28;
    *v27 = 136315138;
    sub_100009B48(0, &qword_100080408, ASPickerDisplayItem_ptr);
    v29 = Array.description.getter();
    v41 = v22;
    v31 = sub_10003FFF4(v29, v30, aBlock);
    v22 = v41;

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, v40, v27, 0xCu);
    sub_100009AB0(v39);
    a4 = v42;
  }

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v32 = static OS_dispatch_queue.main.getter();
  v33 = swift_allocObject();
  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v22;
  aBlock[4] = a4;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = a5;
  v36 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v47 = _swiftEmptyArrayStorage;
  sub_100048FE0(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  v37 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v45 + 8))(v11, v37);
  (*(v43 + 8))(v15, v44);
}

void sub_1000470BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v2)
    {
      v3 = v2;

      v1 = v3;
      sub_100049BFC(v4);
    }
  }
}

void sub_1000471B8(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000032F0(v14, qword_100080250);

  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v76 = v17;
  v77 = a2;
  v79 = v15;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v20 = 136316162;
    *(v20 + 4) = sub_10003FFF4(a1, a2, &v80);
    *(v20 + 12) = 2112;
    *(v20 + 14) = v15;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v16;
    *v21 = v15;
    v21[1] = v16;
    *(v20 + 32) = 2112;
    *(v20 + 34) = v17;
    *(v20 + 42) = 2080;
    if (a8)
    {
      v22 = a7;
    }

    else
    {
      v22 = 0;
    }

    v23 = v15;
    v24 = a7;
    if (a8)
    {
      v25 = a8;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v21[2] = v17;
    v26 = v23;
    v27 = v16;
    v28 = v17;

    v29 = sub_10003FFF4(v22, v25, &v80);
    a7 = v24;

    *(v20 + 44) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "accessoryIdentifier: %s, needsBluetooth: %@, needsWiFi: %@, needsDeviceOTANameBroadcast: %@, overrideBundleID: %s", v20, 0x34u);
    sub_100009894(&qword_10007F278, &unk_10005CD60);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v30 = [objc_opt_self() identityOfCurrentProcess];
  if (v30)
  {
    v31 = v30;
    v32 = [v79 BOOLValue];
    if ([v16 BOOLValue])
    {
      v32 |= 2uLL;
    }

    type metadata accessor for ASUISystemMonitor();
    swift_allocObject();
    v33 = sub_10002E68C();
    v33[7] = v32;
    v34 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor;
    v35 = *&v78[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor];
    *&v78[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor] = v33;

    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v78;
    v37 = v33[3];
    v38 = v33[4];
    v33[3] = sub_100048D64;
    v33[4] = v36;
    v39 = v78;
    v74 = v31;
    sub_100002E6C(v37);

    if (!*&v78[v34])
    {
      __break(1u);
      return;
    }

    v40 = *&v78[v34];

    sub_10002C880(v32);

    v41 = sub_100043BEC(a7, a8);
    v43 = v42;
    v44 = objc_allocWithZone(type metadata accessor for ASUIClientModel());
    v45 = sub_100049D54(v41, v43, 3);
    v46 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v47 = *&v39[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel];
    *&v39[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel] = v45;

    v48 = *&v39[v46];
    if (!v48)
    {
      goto LABEL_30;
    }

    v49 = v48;
    v50 = [v79 BOOLValue];
    v49[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] = v50;

    v51 = *&v39[v46];
    if (!v51)
    {
      goto LABEL_30;
    }

    v52 = v51;
    v53 = [v16 BOOLValue];
    v52[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi] = v53;

    v54 = *&v39[v46];
    if (!v54)
    {
      goto LABEL_30;
    }

    v55 = v54;
    v56 = [v76 BOOLValue];
    v55[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast] = v56;

    v57 = *&v39[v46];
    if (!v57)
    {
      goto LABEL_30;
    }

    v58 = v57;
    [a6 doubleValue];
    *&v58[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout] = v59;

    v60 = *&v39[v46];
    if (!v60)
    {
      goto LABEL_30;
    }

    v61 = &v60[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier];
    v62 = *&v60[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier + 8];
    *v61 = a1;
    v61[1] = v77;
    v63 = v60;

    v64 = *&v39[v46];
    if (!v64)
    {
      goto LABEL_30;
    }

    v65 = *&v39[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
    if (v65)
    {
      v66 = v64;
      v67 = [v65 retrieveDisplayItems];
      v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = sub_1000463E8(v68, &unk_100080410, ASMigrationDisplayItem_ptr);

      if (v69)
      {
LABEL_27:
        if (v69 >> 62)
        {
          sub_100009B48(0, &qword_100080408, ASPickerDisplayItem_ptr);

          v72 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
          v71 = v72;
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100009B48(0, &qword_100080408, ASPickerDisplayItem_ptr);

          v71 = v69;
        }

        sub_100049BFC(v71);

LABEL_30:

        return;
      }
    }

    else
    {
      v70 = v64;
    }

    v69 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }
}

void sub_10004780C(uint64_t a1, uint64_t a2)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080250);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "System Capabilities Preliminary Check Complete: activate remote UI", v7, 2u);
  }

  v8 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithSceneProvidingProcess:a1 configurationIdentifier:v9];

  v11 = [objc_opt_self() newHandleWithDefinition:v10 configurationContext:0];
  v12 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v11 registerObserver:a2];
  [v11 activateWithContext:v12];
}

void sub_100047ACC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000032F0(v14, qword_100080250);

  v15 = a5;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v18 = 136315906;
    *(v18 + 4) = sub_10003FFF4(a1, a2, &v53);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_10003FFF4(a3, a4, &v53);
    *(v18 + 22) = 2112;
    *(v18 + 24) = v15;
    *v19 = v15;
    if (a7)
    {
      v20 = a6;
    }

    else
    {
      v20 = 0;
    }

    if (a7)
    {
      v21 = a7;
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    *(v18 + 32) = 2080;
    v22 = v15;

    v23 = sub_10003FFF4(v20, v21, &v53);

    *(v18 + 34) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "renameAccessory: %s, %s, %@, overrideBundleID: %s", v18, 0x2Au);
    sub_1000227E8(v19, &qword_10007F278, &unk_10005CD60);

    swift_arrayDestroy();
  }

  v24 = [objc_opt_self() identityOfCurrentProcess];
  if (v24)
  {
    v25 = v24;
    v26 = sub_100043BEC(a6, a7);
    v28 = v27;
    v29 = objc_allocWithZone(type metadata accessor for ASUIClientModel());
    v30 = sub_100049D54(v26, v28, 2);
    v31 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v32 = *(v8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    *(v8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel) = v30;

    v33 = [objc_allocWithZone(ASAccessory) init];
    v34 = String._bridgeToObjectiveC()();
    [v33 setIdentifier:v34];

    v35 = String._bridgeToObjectiveC()();
    [v33 setDisplayName:v35];

    v36 = *(v8 + v31);
    if (v36)
    {
      v37 = *&v36[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
      *&v36[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory] = v33;
      v38 = v36;
      v39 = v33;

      v40 = *(v8 + v31);
      if (v40)
      {
        v41 = v40;
        v42 = [v15 BOOLValue];
        v41[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] = v42;

        v43 = *(v8 + v31);
        if (v43)
        {
          v44 = v43;
          sub_100049BFC(_swiftEmptyArrayStorage);
        }
      }
    }

    v45 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v46 = v25;
    v47 = String._bridgeToObjectiveC()();
    v48 = [v45 initWithSceneProvidingProcess:v46 configurationIdentifier:v47];

    v49 = [objc_opt_self() newHandleWithDefinition:v48 configurationContext:0];
    v52 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v49 registerObserver:v8];
    [v49 activateWithContext:v52];
  }
}

void sub_100048074(uint64_t a1)
{
  v2 = v1;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080250);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_10003FFF4(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "updatePickerWithDiscoveredDisplayItems: %s", v7, 0xCu);
    sub_100009AB0(v8);
  }

  v12 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v12)
  {
    v14 = v12;
    v13 = sub_1000463E8(a1, &qword_100080400, ASDiscoveredDisplayItem_ptr);
    if (!v13)
    {
      v13 = _swiftEmptyArrayStorage;
    }

    sub_100049C9C(v13);
  }
}

void sub_1000482C0()
{
  v1 = v0;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_100080250);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "endDiscoveryInPicker", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router))
  {
    v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router);
    swift_unknownObjectRetain();
    sub_10002903C();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_100048418(void *a1)
{
  v2 = v1;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000032F0(v3, qword_100080250);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "remoteAlertHandleDidActivate!", v6, 2u);
  }

  v7 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle) = a1;

  v8 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient;
  v9 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v9)
  {
    v10 = a1;
    [v9 pickerDidPresent];
    result = *(v2 + v8);
    if (result)
    {

      return [result relayPickerCompletion:0];
    }
  }

  else
  {

    return a1;
  }

  return result;
}

uint64_t sub_1000486D8(void *a1)
{
  v2 = v1;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080250);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "ASUIServerManager received a connection %@", v8, 0xCu);
    sub_1000227E8(v9, &qword_10007F278, &unk_10005CD60);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100048F58;
  *(v12 + 24) = v11;
  v26 = sub_100048F70;
  v27 = v12;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v25 = sub_10004908C;
  *(&v25 + 1) = &unk_100073A80;
  v13 = _Block_copy(&aBlock);
  v14 = v2;

  [v5 configureConnection:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    [v5 activate];
    v16 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection;
    v17 = *&v14[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection];
    if (v17)
    {
      [v17 invalidate];
      v18 = *&v14[v16];
      *&v14[v16] = 0;

      v19 = *&v14[v16];
    }

    else
    {
      v19 = 0;
    }

    *&v14[v16] = v5;

    if ([v5 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    aBlock = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      sub_100009894(&unk_1000804A0, &qword_10005D1A8);
      if (swift_dynamicCast())
      {
        v20 = *&v14[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
        *&v14[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient] = v21;

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1000227E8(&aBlock, &qword_100080498, &qword_10005D1A0);
    }
  }

  return result;
}

id sub_100048A50()
{
  v1 = v0;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_100080250);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "remoteAlertHandleDidDeactivate!", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v6)
  {
    [v6 pickerDidDismiss:0];
  }

  result = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

id sub_100048B84(uint64_t a1)
{
  v2 = v1;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080250);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

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
    _os_log_impl(&_mh_execute_header, v5, v6, "didInvalidateWithError! %@", v7, 0xCu);
    sub_1000227E8(v8, &qword_10007F278, &unk_10005CD60);
  }

  result = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

uint64_t sub_100048D24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048D80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100048E64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100048EA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1000470BC();
}

uint64_t sub_100048EC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100048F20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048F70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100048FA0()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048FE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100049094(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  v11 = a1[6];
  v10 = a1[7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = String._bridgeToObjectiveC()();
  v40[4] = sub_100049874;
  v40[5] = v12;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 1107296256;
  v40[2] = sub_10001BE14;
  v40[3] = &unk_100073C28;
  v14 = _Block_copy(v40);
  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16];

  v18 = [objc_allocWithZone(UIImageView) initWithImage:v17];
  v19 = [objc_opt_self() systemBlueColor];
  [v18 setTintColor:v19];

  v20 = v18;
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [objc_opt_self() configurationWithPointSize:72.0];
  [v20 setPreferredSymbolConfiguration:v21];

  v22 = [v2 contentView];
  [v22 addSubview:v20];

  v23 = [v2 contentView];
  v24 = [v23 mainContentGuide];

  v25 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10005C4D0;
  v27 = [v20 topAnchor];
  v28 = [v24 topAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];

  *(v26 + 32) = v29;
  v30 = [v20 bottomAnchor];
  v31 = [v24 bottomAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor:v31];

  *(v26 + 40) = v32;
  v33 = [v20 centerXAnchor];
  v34 = [v24 centerXAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v26 + 48) = v35;
  v36 = [v20 centerYAnchor];

  v37 = [v24 centerYAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v26 + 56) = v38;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];
}

char *sub_1000495B0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100040628(v1, result);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

__n128 sub_1000497CC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10004983C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004987C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100049950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000499B8()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_100080650);
  v1 = sub_1000032F0(v0, qword_100080650);
  if (qword_10007EBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081490);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100049A80(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
  v4 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8);
  *v3 = a1;
  v3[1] = a2;

  if (v3[1] && *(v2 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon))
  {
    if (*(v2 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems))
    {
      v6 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItemsPublisher);

      CurrentValueSubject.send(_:)();
    }
  }

  return result;
}

void sub_100049B20(void *a1)
{
  v2 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon;
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon) = a1;
  v5 = a1;

  if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8) && *(v1 + v2) && *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems))
  {
    v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItemsPublisher);

    CurrentValueSubject.send(_:)();
  }

  else
  {
  }
}

uint64_t sub_100049BFC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems;
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems) = a1;

  if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8) && *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon))
  {
    if (*(v1 + v2))
    {
      v5 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItemsPublisher);

      CurrentValueSubject.send(_:)();
    }
  }

  return result;
}

uint64_t sub_100049C9C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItems;
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItems);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItems) = a1;

  if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8) && *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon))
  {
    if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems))
    {
      v5 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItemsPublisher);
      v6 = *(v1 + v2);

      CurrentValueSubject.send(_:)();
    }
  }

  return result;
}

_BYTE *sub_100049D54(uint64_t a1, unint64_t a2, int a3)
{
  v43 = a3;
  v42 = a2;
  v44 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
  *v12 = 0;
  v12[1] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItems] = 0;
  v13 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_chosenDeviceOTAName];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] = 0;
  v14 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier];
  *v14 = 0;
  v14[1] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryToAuth] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType] = 6;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout] = 0x403E000000000000;
  v15 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItemsPublisher;
  v46 = 0;
  v16 = sub_100009894(&qword_10007F2E0, &qword_10005C620);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *&v3[v15] = CurrentValueSubject.init(_:)();
  v19 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItemsPublisher;
  v46 = 0;
  v20 = sub_100009894(&qword_10007F2F0, &qword_10005C638);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *&v3[v19] = CurrentValueSubject.init(_:)();
  v23 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_queue;
  sub_10002A43C();
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  sub_10004B5D8(&qword_10007F8E8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100009894(&unk_1000804B0, &unk_10005D1B0);
  sub_10002FC5C(&qword_10007F8F0, &unk_1000804B0, &unk_10005D1B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v40 + 104))(v39, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v41);
  *&v3[v23] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = type metadata accessor for ASUIClientModel();
  v45.receiver = v3;
  v45.super_class = v24;
  v25 = objc_msgSendSuper2(&v45, "init");
  v26 = qword_10007EC58;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000032F0(v28, qword_100080650);
  v29 = v42;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    v34 = v44;
    *(v32 + 4) = sub_10003FFF4(v44, v29, &v46);
    _os_log_impl(&_mh_execute_header, v30, v31, "Creating client model for: %s", v32, 0xCu);
    sub_100009AB0(v33);
  }

  else
  {

    v34 = v44;
  }

  v27[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType] = v43;
  v35 = &v27[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
  v36 = *&v27[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8];
  *v35 = v34;
  v35[1] = v29;

  sub_10004A290();

  return v27;
}

uint64_t sub_10004A290()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  v2 = *(v16 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v14 = *(v5 - 8);
  v15 = v5;
  v6 = *(v14 + 64);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_queue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10004B51C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100073C78;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10004B5D8(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v1);
  (*(v14 + 8))(v8, v15);
}

char *sub_10004A570()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v66 = v4;
    v12 = &result[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
    v13 = *&result[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8];
    if (v13)
    {
      v14 = *v12;
      v15 = objc_allocWithZone(LSApplicationRecord);

      v16 = sub_10001F3A8(v14, v13, 1);
      v64 = v0;
      v65 = v5;
      v67 = v1;
      v60 = v16;
      v17 = [v16 localizedName];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v59 = sub_10002A43C();
      v63 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = v18;
      v22[3] = v20;
      v22[4] = v21;
      v73 = sub_10004B584;
      v74 = v22;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_1000102BC;
      v72 = &unk_100073CF0;
      v23 = _Block_copy(&aBlock);
      v62 = v20;

      v61 = v11;
      static DispatchQoS.unspecified.getter();
      v68 = _swiftEmptyArrayStorage;
      v24 = sub_10004B5D8(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
      v25 = v9;
      v26 = sub_100009894(&unk_10007F560, &qword_10005C590);
      v27 = sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
      v28 = v66;
      v57 = v26;
      v29 = v25;
      v56 = v27;
      v58 = v24;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v30 = v63;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v23);

      v31 = *(v67 + 8);
      v67 += 8;
      v31(v28, v0);
      v32 = *(v6 + 8);
      v63 = v6 + 8;
      v32(v29, v65);

      if (v12[1])
      {
        v33 = *v12;
        v34 = objc_allocWithZone(ISIcon);

        v35 = String._bridgeToObjectiveC()();

        v36 = [v34 initWithBundleIdentifier:v35];

        v37 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorLargeHomeScreen];
        v38 = [v36 imageForDescriptor:v37];
        v39 = v38;
        v55 = v31;
        v54 = v32;
        v53 = v36;
        v52 = v37;
        if (!v38 || [v38 placeholder])
        {
          v40 = [v36 prepareImageForDescriptor:{v37, v52}];
          if (v40)
          {
            v41 = v40;

            v39 = v41;
          }

          else if (!v39)
          {

            v43 = [objc_allocWithZone(UIImage) init];
            goto LABEL_11;
          }
        }

        result = [v39 CGImage];
        if (result)
        {
          v42 = result;

          v43 = [objc_allocWithZone(UIImage) initWithCGImage:v42];

LABEL_11:
          v44 = static OS_dispatch_queue.main.getter();
          v45 = swift_allocObject();
          v46 = v61;
          swift_unknownObjectWeakInit();

          v47 = swift_allocObject();
          *(v47 + 16) = v45;
          *(v47 + 24) = v43;
          v73 = sub_10004B5D0;
          v74 = v47;
          aBlock = _NSConcreteStackBlock;
          v70 = 1107296256;
          v71 = sub_1000102BC;
          v72 = &unk_100073D40;
          v48 = _Block_copy(&aBlock);

          v49 = v43;
          static DispatchQoS.unspecified.getter();
          v68 = _swiftEmptyArrayStorage;
          v50 = v66;
          v51 = v64;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v48);

          v55(v50, v51);
          v54(v29, v65);
        }

LABEL_16:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  return result;
}

void sub_10004AFD8(uint64_t a1, unint64_t a2)
{
  if (qword_10007EC58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080650);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10003FFF4(a1, a2, v15);
    *(v7 + 12) = 2080;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v10 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID), v9 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8), v11 = Strong, , v11, !v9))
    {

      v10 = 0;
      v9 = 0xE000000000000000;
    }

    v12 = sub_10003FFF4(v10, v9, v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Fetched appName: %s for appBundleID: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;

    sub_100049A80(a1, a2);
  }
}

void sub_10004B20C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_100049B20(a2);
  }
}

void sub_10004B26C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100049B20([objc_allocWithZone(UIImage) init]);
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID);
      v6 = *(v4 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8);
      v7 = v4;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    sub_100049A80(v5, v6);
  }
}

id sub_10004B360()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIClientModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004B4E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004B524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B544()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B590()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B5D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B638(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000005041;
    v4 = 0xE900000000000065;
    if (a1 == 2)
    {
      v6 = 0x74666F5369666977;
    }

    else
    {
      v6 = 0x7261774169666977;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE900000000000068;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x746F6F7465756C62;
    }

    else
    {
      v6 = 1701736302;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x74666F5369666977;
  v10 = 0xEA00000000005041;
  if (a2 != 2)
  {
    v9 = 0x7261774169666977;
    v10 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x746F6F7465756C62;
    v8 = 0xE900000000000068;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10004B788@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v2 = 0uLL;
  v3 = 0xE000000000000000;
  v5 = 0;
  v6 = a1;
  result = 0;
  v8 = 0xE000000000000000;
  v9 = 0;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0xE000000000000000;
  v13 = 0;
  v14 = 0uLL;
  v15 = 0xE000000000000000;
  v16 = 0;
  v17 = 0uLL;
  v18 = 0xE000000000000000;
  v19 = 0;
  v20 = 0uLL;
  v21 = 0xE000000000000000;
  v22 = 0uLL;
  v23 = 0uLL;
  switch(v6)
  {
    case 1:
      sub_100050414(&v24);
      goto LABEL_20;
    case 2:
      sub_100050F1C(&v24);
      goto LABEL_20;
    case 3:
      sub_100051290(&v24);
      goto LABEL_20;
    case 4:
      sub_10004BA00(&v24);
      goto LABEL_20;
    case 5:
      goto LABEL_21;
    case 6:
      sub_10004CBEC(&v24);
      goto LABEL_20;
    case 7:
      sub_10004C530(&v24);
      goto LABEL_20;
    case 8:
      sub_10004D300(&v24);
      goto LABEL_20;
    case 9:
      sub_10004DAB8(&v24);
      goto LABEL_20;
    case 10:
      sub_10005172C(&v24);
      goto LABEL_20;
    case 11:
      sub_10004E1FC(&v24);
      goto LABEL_20;
    case 12:
      sub_100051F80(&v24);
      goto LABEL_20;
    case 13:
      sub_100051B64(&v24);
      goto LABEL_20;
    case 14:
      sub_10005235C(&v24);
      goto LABEL_20;
    case 15:
      sub_10004F204(&v24);
      goto LABEL_20;
    case 16:
      sub_10004F7F0(&v24);
      goto LABEL_20;
    case 17:
      sub_10004FCF8(&v24);
      goto LABEL_20;
    case 18:
      sub_1000526F4(&v24);
      goto LABEL_20;
    default:
      sub_100050908(&v24);
LABEL_20:
      v23 = v42;
      v22 = v41;
      v20 = v40;
      v17 = v39;
      v14 = v38;
      v11 = v37;
      v10 = v36;
      v2 = v35;
      v19 = v33;
      v21 = v34;
      v16 = v31;
      v18 = v32;
      v13 = v29;
      v15 = v30;
      v9 = v27;
      v12 = v28;
      result = v25;
      v8 = v26;
      v3 = v24.n128_u64[1];
      v5 = v24.n128_u64[0];
LABEL_21:
      *a2 = v5;
      *(a2 + 8) = v3;
      *(a2 + 16) = result;
      *(a2 + 24) = v8;
      *(a2 + 32) = v9;
      *(a2 + 40) = v12;
      *(a2 + 48) = v13;
      *(a2 + 56) = v15;
      *(a2 + 64) = v16;
      *(a2 + 72) = v18;
      *(a2 + 80) = v19;
      *(a2 + 88) = v21;
      *(a2 + 96) = v2;
      *(a2 + 112) = v10;
      *(a2 + 128) = v11;
      *(a2 + 144) = v14;
      *(a2 + 160) = v17;
      *(a2 + 176) = v20;
      *(a2 + 192) = v22;
      *(a2 + 208) = v23;
      return result;
  }
}

uint64_t sub_10004B9A4()
{
  sub_10000A69C(v0 + 16);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10004BA00@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v104 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v92 - v12;
  if (qword_10007EC50 != -1)
  {
    v91 = v11;
    swift_once();
    v11 = v91;
  }

  v14 = qword_1000814E8;
  v15 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v15)
  {
    goto LABEL_48;
  }

  v99 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
  v96 = v5;
  v97 = v11;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_42;
  }

  v17 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v18 = v17;
  v19 = v15;
  swift_unknownObjectRelease();
  if (!v17)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v20 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
  swift_beginAccess();
  v21 = *&v18[v20];

  v105 = v19;
  v95 = a1;
  v93 = v14;
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = (v7 + 16);
  v24 = (v7 + 8);
  v94 = v7 + 8;
  v92 = v7 + 16;
  if (!v22)
  {

    String.LocalizationValue.init(stringLiteral:)();
    v32 = *v23;
    v33 = v97;
    v32(v104, v13, v97);
    static Locale.current.getter();
    v34 = String.init(localized:table:bundle:locale:comment:)();
    v35 = v105;
    v106 = v36;
    v107 = v34;
    v37 = *v24;
    (*v24)(v13, v33);

    if (v35[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast] == 1)
    {
      v38 = sub_10002FAA8();
      v40 = sub_1000545F0(v38, v39);
      v42 = v41;
      v43 = 0xE000000000000000;

      v44 = 0;
      v45 = v107;
    }

    else
    {
      if (v35[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp] == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        v63 = v104;
        v64 = v97;
        v32(v104, v13, v97);
        static Locale.current.getter();
        v65 = String.init(localized:table:bundle:locale:comment:)();
        v102 = v66;
        v103 = v65;
        v37(v13, v64);

        String.LocalizationValue.init(stringLiteral:)();
        v32(v63, v13, v64);
        static Locale.current.getter();
        v67 = String.init(localized:table:bundle:locale:comment:)();
        v43 = v68;
        v69 = v13;
        v44 = v67;
        v70 = v64;
        v40 = v103;
        v37(v69, v70);
        v42 = v102;
      }

      else
      {
        v40 = 0;
        v44 = 0;
        v42 = 0xE000000000000000;
        v43 = 0xE000000000000000;
      }

      v45 = v107;
    }

    v56 = v106;
    v71 = *&v105[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout];
    if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v71 > -9.22337204e18)
    {
      if (v71 < 9.22337204e18)
      {
        if (v71 < 120)
        {
        }

        else
        {
          v72 = v71;
          if (!v40 && v42 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v40 = sub_100056294(v72 / 60);
            v74 = v73;

            v42 = v74;
          }

          else
          {
            v109 = sub_100056294(v72 / 60);
            v110 = v88;

            v89._countAndFlagsBits = 32;
            v89._object = 0xE100000000000000;
            String.append(_:)(v89);

            v90._countAndFlagsBits = v40;
            v90._object = v42;
            String.append(_:)(v90);

            v40 = v109;
            v42 = v110;
          }
        }

        v109 = v45;
        v110 = v56;
        v111 = v40;
        v112 = v42;
        v62 = 0xE000000000000000;
        v113 = 0;
        v114 = 0xE000000000000000;
        v115 = 0;
        v116 = 0xE000000000000000;
        v117 = v44;
        v118 = v43;
        v119 = 0;
        v120 = 0xE000000000000000;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        sub_100052AFC(&v109, v108);
        v100 = v43;
        v101 = 0;
        v105 = 0;
        v97 = 0;
        v98 = 0;
        v96 = 0;
        v99 = 0;
        goto LABEL_36;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v25 = *v23;
  v26 = v104;
  v27 = v97;
  (*v23)(v104, v13, v97);
  static Locale.current.getter();
  v28 = String.init(localized:table:bundle:locale:comment:)();
  v106 = v29;
  v107 = v28;
  v30 = *v24;
  (*v24)(v13, v27);

  String.LocalizationValue.init(stringLiteral:)();
  v25(v26, v13, v27);
  static Locale.current.getter();
  v101 = String.init(localized:table:bundle:locale:comment:)();
  v103 = v31;
  v30(v13, v27);

  v105[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];
  String.LocalizationValue.init(stringLiteral:)();
  v25(v26, v13, v27);
  static Locale.current.getter();
  v46 = v93;
  v104 = String.init(localized:table:bundle:locale:comment:)();
  v100 = v47;
  v30(v13, v27);

  v48 = *&v46[v99];
  if (!v48)
  {
    goto LABEL_44;
  }

  v49 = (v48 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
  v50 = v49[1];
  if (!v50)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v93 = v30;
  v51 = *v49;
  v99 = v50;

  v52 = swift_unknownObjectWeakLoadStrong();
  if (v52)
  {
    v53 = *(v52 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v54 = v53;
    swift_unknownObjectRelease();
    if (v53)
    {
      v55 = sub_10000A8A0();

      v98 = v21;
      if (v55)
      {
        sub_1000356E8();
        v56 = v106;
        if (v57 == 10)
        {
          String.LocalizationValue.init(stringLiteral:)();
          v58 = v97;
          v25(v26, v13, v97);
          static Locale.current.getter();
          v59 = String.init(localized:table:bundle:locale:comment:)();
          v61 = v60;

          (v93)(v13, v58);
        }

        else
        {

          v59 = 0;
          v61 = 0;
        }
      }

      else
      {

        v59 = 0;
        v61 = 0;
        v56 = v106;
      }

      v45 = v107;
      v109 = v107;
      v110 = v56;
      v42 = 0xE000000000000000;
      v111 = 0;
      v112 = 0xE000000000000000;
      v113 = 0;
      v114 = 0xE000000000000000;
      v62 = v103;
      v44 = v104;
      v115 = v101;
      v116 = v103;
      v117 = v104;
      v118 = v100;
      v119 = 0;
      v120 = 0xE000000000000000;
      v105 = v59;
      *&v121 = v59;
      *(&v121 + 1) = v61;
      v96 = v51;
      v97 = v61;
      v122 = 0uLL;
      v123 = v98;
      v124 = 0uLL;
      *&v125 = v51;
      *(&v125 + 1) = v99;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      sub_100052AFC(&v109, v108);
      v40 = 0;
LABEL_36:
      v102 = v42;
      v103 = v62;
      v106 = v56;
      v107 = v45;
      v104 = v44;
      v109 = v45;
      v110 = v56;
      v111 = v40;
      v112 = v42;
      v113 = 0;
      v114 = 0xE000000000000000;
      v75 = v101;
      v115 = v101;
      v116 = v62;
      v117 = v44;
      v76 = v100;
      v118 = v100;
      v119 = 0;
      v77 = v105;
      v120 = 0xE000000000000000;
      *&v121 = v105;
      v78 = v97;
      v79 = v98;
      *(&v121 + 1) = v97;
      v122 = 0uLL;
      v123 = v98;
      v124 = 0uLL;
      v80 = v96;
      *&v125 = v96;
      v81 = v40;
      v82 = v99;
      *(&v125 + 1) = v99;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      result = sub_10002A024(&v109);
      v84 = v95;
      v85 = v106;
      *v95 = v107;
      v84[1] = v85;
      v87 = v102;
      v86 = v103;
      v84[2] = v81;
      v84[3] = v87;
      v84[4] = 0;
      v84[5] = 0xE000000000000000;
      v84[6] = v75;
      v84[7] = v86;
      v84[8] = v104;
      v84[9] = v76;
      v84[10] = 0;
      v84[11] = 0xE000000000000000;
      v84[12] = v77;
      v84[13] = v78;
      v84[14] = 0;
      v84[15] = 0;
      v84[16] = v79;
      v84[17] = 0;
      v84[18] = 0;
      v84[19] = 0;
      v84[20] = v80;
      v84[21] = v82;
      *(v84 + 11) = 0u;
      *(v84 + 12) = 0u;
      *(v84 + 13) = 0u;
      return result;
    }

    goto LABEL_47;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004C530@<X0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v60 - v13;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v15 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v15)
  {
    goto LABEL_41;
  }

  v16 = v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType];
  v65 = v1;
  v61 = v8;
  v62 = v7;
  v60[1] = v6;
  if (v16 == 3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v24 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v25 = v24;
    v26 = v15;
    swift_unknownObjectRelease();
    if (!v24)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v27 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v22 = *&v25[v27];
    v21 = v22;

    if (!v22)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    if (v16)
    {
LABEL_34:
      v59 = v15;
      __break(1u);
      goto LABEL_35;
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v18 = *(v17 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v19 = v18;
    v20 = v15;
    swift_unknownObjectRelease();
    if (!v18)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v21 = sub_10000A8A0();

    if (!v21)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v22 = v21;
  }

  v28 = v21;
  v29 = v28[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup];
  v63 = a1;
  v64 = v15;
  if (v29 <= 1 && v29)
  {

LABEL_19:
    String.LocalizationValue.init(stringLiteral:)();
    v32 = v61;
    v31 = v62;
    (*(v61 + 16))(v12, v14, v62);
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    v34 = v33;
    (*(v32 + 8))(v14, v31);
    goto LABEL_25;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {
    goto LABEL_19;
  }

  if (v22[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] > 2u)
  {
  }

  else
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v35 & 1) == 0)
    {
      v15 = 0;
      v34 = 0xE000000000000000;
      goto LABEL_26;
    }
  }

  v15 = sub_1000564E4(v36);
  v34 = v37;
LABEL_25:

LABEL_26:
  v38 = *&v22[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
  if (!v38)
  {
    __break(1u);
    goto LABEL_32;
  }

  v39 = *&v22[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v40 = *&v22[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  v41 = sub_1000564E8(v39, v38);
  v43 = v42;

  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v45 = *(v44 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v46 = v45;
  swift_unknownObjectRelease();
  if (!v45)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = sub_10000ABDC();
  v49 = v48;

  if (v49)
  {

    *&v67 = v15;
    *(&v67 + 1) = v34;
    *&v68 = v41;
    *(&v68 + 1) = v43;
    *&v69 = 0;
    *(&v69 + 1) = 0xE000000000000000;
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    *&v71 = 0;
    *(&v71 + 1) = 0xE000000000000000;
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;
    v73 = xmmword_10005D220;
    *&v74 = 0;
    *(&v74 + 1) = v22;
    *&v75 = 0;
    *(&v75 + 1) = v47;
    *&v76[0] = v49;
    *(v76 + 8) = 0u;
    *(&v76[1] + 8) = 0u;
    *(&v76[2] + 8) = 0u;
    *(&v76[3] + 8) = 0u;
    *(&v76[4] + 1) = 0;
    v77[0] = v15;
    v77[1] = v34;
    v77[2] = v41;
    v77[3] = v43;
    v77[4] = 0;
    v77[5] = 0xE000000000000000;
    v77[6] = 0;
    v77[7] = 0xE000000000000000;
    v77[8] = 0;
    v77[9] = 0xE000000000000000;
    v77[10] = 0;
    v77[11] = 0xE000000000000000;
    v78 = xmmword_10005D220;
    v79 = 0;
    v80 = v22;
    v81 = 0;
    v82 = v47;
    v83 = v49;
    v88 = 0;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    sub_100052AFC(&v67, &v66);
    result = sub_10002A024(v77);
    v51 = v76[2];
    v52 = v63;
    v63[10] = v76[1];
    v52[11] = v51;
    v53 = v76[4];
    v52[12] = v76[3];
    v52[13] = v53;
    v54 = v74;
    v52[6] = v73;
    v52[7] = v54;
    v55 = v76[0];
    v52[8] = v75;
    v52[9] = v55;
    v56 = v70;
    v52[2] = v69;
    v52[3] = v56;
    v57 = v72;
    v52[4] = v71;
    v52[5] = v57;
    v58 = v68;
    *v52 = v67;
    v52[1] = v58;
    return result;
  }

LABEL_41:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004CBEC@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  v6 = __chkstk_darwin(v4);
  v68 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v58 - v8;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v9)
  {
    goto LABEL_37;
  }

  if (*(v9 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType) != 3)
  {
    if (*(v9 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType))
    {
LABEL_30:
      v57 = v9;
      __break(1u);
      goto LABEL_31;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v11 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v12 = v11;
    v13 = v9;
    swift_unknownObjectRelease();
    if (!v11)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v14 = sub_10000A8A0();

    if (!v14)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v15 = v14;
LABEL_14:
    v22 = v14;
    v23 = v22[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup];
    v65 = v9;
    v66 = a1;
    if (v23 <= 1 && v23)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        if (v15[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] > 2u)
        {
        }

        else
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v28 & 1) == 0)
          {
            v63 = 0xE000000000000000;
            v64 = 0;
LABEL_27:
            v62 = v15;
            v31 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
            if (v31)
            {
              v32 = v4;
              v33 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
              v34 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

              v35 = sub_100056920(v33, v31);
              v60 = v36;
              v61 = v35;

              v37 = v69;
              String.LocalizationValue.init(stringLiteral:)();
              v39 = v67;
              v38 = v68;
              v40 = *(v67 + 16);
              v40(v68, v37, v4);
              static Locale.current.getter();
              v41 = String.init(localized:table:bundle:locale:comment:)();
              v58 = v42;
              v59 = v41;
              v43 = *(v39 + 8);
              v43(v37, v4);

              String.LocalizationValue.init(stringLiteral:)();
              v40(v38, v37, v4);
              static Locale.current.getter();
              v44 = String.init(localized:table:bundle:locale:comment:)();
              v46 = v45;

              v47 = v62;
              v43(v37, v32);

              *&v71 = v64;
              *(&v71 + 1) = v63;
              *&v72 = v61;
              *(&v72 + 1) = v60;
              *&v73 = 0;
              *(&v73 + 1) = 0xE000000000000000;
              *&v74 = v59;
              *(&v74 + 1) = v58;
              *&v75 = v44;
              *(&v75 + 1) = v46;
              *&v76 = 0;
              *(&v76 + 1) = 0xE000000000000000;
              v77 = 0uLL;
              *&v78 = 0;
              *(&v78 + 1) = v47;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v85[0] = v64;
              v85[1] = v63;
              v85[2] = v61;
              v85[3] = v60;
              v85[4] = 0;
              v85[5] = 0xE000000000000000;
              v85[6] = v59;
              v85[7] = v58;
              v85[8] = v44;
              v85[9] = v46;
              v85[10] = 0;
              v85[11] = 0xE000000000000000;
              memset(&v85[12], 0, 24);
              v85[15] = v47;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              sub_100052AFC(&v71, &v70);
              result = sub_10002A024(v85);
              v49 = v82;
              v50 = v66;
              v66[10] = v81;
              v50[11] = v49;
              v51 = v84;
              v50[12] = v83;
              v50[13] = v51;
              v52 = v78;
              v50[6] = v77;
              v50[7] = v52;
              v53 = v80;
              v50[8] = v79;
              v50[9] = v53;
              v54 = v74;
              v50[2] = v73;
              v50[3] = v54;
              v55 = v76;
              v50[4] = v75;
              v50[5] = v55;
              v56 = v72;
              *v50 = v71;
              v50[1] = v56;
              return result;
            }

            __break(1u);
            goto LABEL_30;
          }
        }

        v29 = sub_100056710();
        v63 = v30;
        v64 = v29;
LABEL_26:

        goto LABEL_27;
      }
    }

    v24 = v69;
    String.LocalizationValue.init(stringLiteral:)();
    v25 = v67;
    (*(v67 + 16))(v68, v24, v4);
    static Locale.current.getter();
    v26 = String.init(localized:table:bundle:locale:comment:)();
    v63 = v27;
    v64 = v26;
    (*(v25 + 8))(v24, v4);
    goto LABEL_26;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = *(v16 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v18 = v17;
  v19 = v9;
  swift_unknownObjectRelease();
  if (!v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v20 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  swift_beginAccess();
  v21 = *&v18[v20];
  v14 = v21;

  if (v21)
  {
    v15 = v21;
    goto LABEL_14;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004D300@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v69 - v11;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v13 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v13)
  {
    goto LABEL_40;
  }

  v14 = *(v13 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
  v77 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v14 == 3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v21 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v22 = v21;
    v23 = v13;
    swift_unknownObjectRelease();
    if (!v21)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v24 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v25 = *&v22[v24];
    v19 = v25;

    v80 = v25;
    if (!v25)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  else
  {
    if (v14)
    {
LABEL_33:
      v68 = v13;
      __break(1u);
      goto LABEL_34;
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v16 = *(v15 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v17 = v16;
    v18 = v13;
    swift_unknownObjectRelease();
    if (!v16)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v19 = sub_10000A8A0();

    if (!v19)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v80 = v19;
  }

  v26 = v19;
  v13 = &OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup;
  v27 = v26[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup];
  v76 = v2;
  if (v27 <= 1 && v27)
  {

LABEL_19:
    String.LocalizationValue.init(stringLiteral:)();
    v30 = v78;
    v29 = v79;
    (*(v78 + 16))(v10, v12, v79);
    static Locale.current.getter();
    v31 = String.init(localized:table:bundle:locale:comment:)();
    v74 = v32;
    v75 = v31;
    (*(v30 + 8))(v12, v29);

    v33 = v80;
    goto LABEL_25;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    goto LABEL_19;
  }

  v33 = v80;
  if (v80[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] > 2u)
  {
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      v74 = 0xE000000000000000;
      v75 = 0;
      goto LABEL_25;
    }
  }

  v36 = sub_10005972C(v35);
  v74 = v37;
  v75 = v36;

LABEL_25:
  v80 = v33;
  v38 = &v33[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v39 = *&v33[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
  if (!v39)
  {
    __break(1u);
    goto LABEL_31;
  }

  v40 = *v38;
  v41 = v38[1];

  v42 = sub_100056D54(v40, v39);
  v72 = v43;
  v73 = v42;

  String.LocalizationValue.init(stringLiteral:)();
  v45 = v78;
  v44 = v79;
  v46 = *(v78 + 16);
  v46(v10, v12, v79);
  static Locale.current.getter();
  v47 = String.init(localized:table:bundle:locale:comment:)();
  v70 = v48;
  v71 = v47;
  v49 = *(v45 + 8);
  v13 = (v45 + 8);
  v49(v12, v44);

  String.LocalizationValue.init(stringLiteral:)();
  v46(v10, v12, v44);
  static Locale.current.getter();
  v50 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v51;
  v49(v12, v44);

  v53 = swift_unknownObjectWeakLoadStrong();
  if (!v53)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v54 = *(v53 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v55 = v54;
  swift_unknownObjectRelease();
  v56 = v80;
  if (!v54)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v57 = sub_10000ABDC();
  v59 = v58;

  if (v59)
  {

    *&v82 = v75;
    *(&v82 + 1) = v74;
    *&v83 = v73;
    *(&v83 + 1) = v72;
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    *&v85 = v71;
    *(&v85 + 1) = v70;
    *&v86 = v50;
    *(&v86 + 1) = v52;
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    v88 = 0uLL;
    *&v89 = 0;
    *(&v89 + 1) = v56;
    *&v90 = 0;
    *(&v90 + 1) = v57;
    *&v91[0] = v59;
    *(&v91[3] + 8) = 0u;
    *(&v91[2] + 8) = 0u;
    *(&v91[1] + 8) = 0u;
    *(v91 + 8) = 0u;
    *(&v91[4] + 1) = 0;
    v92[0] = v75;
    v92[1] = v74;
    v92[2] = v73;
    v92[3] = v72;
    v92[4] = 0;
    v92[5] = 0xE000000000000000;
    v92[6] = v71;
    v92[7] = v70;
    v92[8] = v50;
    v92[9] = v52;
    v92[10] = 0;
    v92[11] = 0xE000000000000000;
    memset(&v92[12], 0, 24);
    v92[15] = v56;
    v92[16] = 0;
    v92[17] = v57;
    v92[18] = v59;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
    sub_100052AFC(&v82, &v81);
    result = sub_10002A024(v92);
    v61 = v91[2];
    a1[10] = v91[1];
    a1[11] = v61;
    v62 = v91[4];
    a1[12] = v91[3];
    a1[13] = v62;
    v63 = v89;
    a1[6] = v88;
    a1[7] = v63;
    v64 = v91[0];
    a1[8] = v90;
    a1[9] = v64;
    v65 = v85;
    a1[2] = v84;
    a1[3] = v65;
    v66 = v87;
    a1[4] = v86;
    a1[5] = v66;
    v67 = v83;
    *a1 = v82;
    a1[1] = v67;
    return result;
  }

LABEL_40:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004DAB8@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v58 - v12;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v14 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v14)
  {
    goto LABEL_23;
  }

  v71 = v14;
  String.LocalizationValue.init(stringLiteral:)();
  v16 = v7 + 2;
  v15 = v7[2];
  v15(v11, v13, v6);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v68 = v18;
  v69 = v17;
  v20 = v7[1];
  v19 = v7 + 1;
  v20(v13, v6);

  String.LocalizationValue.init(stringLiteral:)();
  v15(v11, v13, v6);
  static Locale.current.getter();
  v61 = String.init(localized:table:bundle:locale:comment:)();
  v67 = v21;
  v20(v13, v6);

  String.LocalizationValue.init(stringLiteral:)();
  v62 = v15;
  v63 = v16;
  v15(v11, v13, v6);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  v64 = v20;
  v20(v13, v6);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType);
  swift_unknownObjectRelease();
  v66 = v24;
  if (v26 != 2)
  {
    v44 = swift_unknownObjectWeakLoadStrong();
    if (v44)
    {
      v65 = v22;
      v45 = *(v44 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      v46 = v45;
      swift_unknownObjectRelease();
      if (v45)
      {
        v70 = sub_10000A8A0();
      }

      else
      {
        v70 = 0;
      }

      v22 = v65;
    }

    else
    {
      v70 = 0;
    }

    goto LABEL_17;
  }

  v58[1] = v5;
  v65 = v22;
  v60 = v19;
  v27 = *&v71[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
  if (!v27)
  {
LABEL_23:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v28 = objc_allocWithZone(DADevice);
  v29 = v27;
  v30 = [v28 init];
  v31 = v29;
  v32 = [v29 identifier];
  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  v59 = v6;
  [v30 setIdentifier:v32];

  v33 = *&v71[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8];
  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = *&v71[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
  v35 = objc_allocWithZone(type metadata accessor for ASUIDevice());

  v36 = v30;
  v37 = sub_100036A64(0, 0, v36, v34, v33);

  v38 = [v31 displayName];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v70 = v37;
  v42 = &v37[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v43 = *&v37[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
  *v42 = v39;
  v42[1] = v41;

  v6 = v59;
  v22 = v65;
LABEL_17:
  if (v71[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v62(v11, v13, v6);
    static Locale.current.getter();
    v47 = String.init(localized:table:bundle:locale:comment:)();
    v49 = v48;

    v64(v13, v6);
  }

  else
  {

    v49 = v67;
    v47 = v61;
  }

  *&v73 = v69;
  *(&v73 + 1) = v68;
  *&v74 = v47;
  *(&v74 + 1) = v49;
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  *&v76 = v22;
  *(&v76 + 1) = v66;
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  v79 = 0uLL;
  *&v80 = 0;
  *(&v80 + 1) = v70;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87[0] = v69;
  v87[1] = v68;
  v87[2] = v47;
  v87[3] = v49;
  v87[4] = 0;
  v87[5] = 0xE000000000000000;
  v87[6] = v22;
  v87[7] = v66;
  v87[8] = 0;
  v87[9] = 0xE000000000000000;
  v87[10] = 0;
  v87[11] = 0xE000000000000000;
  memset(&v87[12], 0, 24);
  v87[15] = v70;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  sub_100052AFC(&v73, &v72);
  result = sub_10002A024(v87);
  v51 = v84;
  a1[10] = v83;
  a1[11] = v51;
  v52 = v86;
  a1[12] = v85;
  a1[13] = v52;
  v53 = v80;
  a1[6] = v79;
  a1[7] = v53;
  v54 = v82;
  a1[8] = v81;
  a1[9] = v54;
  v55 = v76;
  a1[2] = v75;
  a1[3] = v55;
  v56 = v78;
  a1[4] = v77;
  a1[5] = v56;
  v57 = v74;
  *a1 = v73;
  a1[1] = v57;
  return result;
}

double sub_10004E1FC@<D0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v154 - v13;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v15 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v15)
  {
    while (1)
    {
LABEL_109:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v16 = v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType];
  v165 = v12;
  v163 = a1;
  if (v16 != 3)
  {
    v164 = v8;
    v157 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v158 = qword_1000814E8;
    Strong = swift_unknownObjectWeakLoadStrong();
    v159 = v1;
    if (Strong)
    {
      v39 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      v40 = v39;
      v41 = v15;
      swift_unknownObjectRelease();
      if (v39)
      {
        v42 = sub_10000A8A0();
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v54 = v15;
      v42 = 0;
    }

    v62 = swift_unknownObjectWeakLoadStrong();
    if (v62)
    {
      v63 = *(v62 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType);
      swift_unknownObjectRelease();
      v161 = v7;
      v155 = v15;
      if (v63 == 2)
      {
        v166 = v42;
        v64 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
        if (!v64)
        {
          goto LABEL_109;
        }

        v65 = objc_allocWithZone(DADevice);
        v66 = v64;
        v67 = [v65 init];
        v162 = v66;
        v68 = [v66 identifier];
        if (!v68)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = String._bridgeToObjectiveC()();
        }

        [v67 setIdentifier:v68];

        v69 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8];
        if (!v69)
        {
          goto LABEL_89;
        }

        v70 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
        v71 = objc_allocWithZone(type metadata accessor for ASUIDevice());

        v72 = v67;
        v73 = sub_100036A64(0, 0, v72, v70, v69);

        v74 = v162;
        v75 = [v162 displayName];
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v78 = v77;

        v79 = &v73[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
        v80 = *&v73[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
        *v79 = v76;
        v79[1] = v78;

        v42 = v73;
      }

      else
      {
        if (!v42)
        {
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v73 = v42;
      }

      if (v73[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_finishSetupInApp] == 1)
      {
        v81 = swift_unknownObjectWeakLoadStrong();
        if (!v81)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v82 = *(v81 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType);
        swift_unknownObjectRelease();
        v83 = v82 == 0;
      }

      else
      {
        v83 = 0;
      }

      v166 = v42;
      v84 = swift_unknownObjectWeakLoadStrong();
      if (v84)
      {
        v85 = *(v84 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
        v86 = v85;
        swift_unknownObjectRelease();
        if (v85)
        {
          v87 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices;
          swift_beginAccess();
          v88 = *&v86[v87];

          if (v88 >> 62)
          {
            v89 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v90 = v164;

          v91 = (v90 + 16);
          v92 = (v90 + 8);
          if (v83)
          {
            String.LocalizationValue.init(stringLiteral:)();
            v93 = *v91;
            v94 = v165;
            v95 = v161;
            (*v91)(v165, v14, v161);
            static Locale.current.getter();
            v160 = String.init(localized:table:bundle:locale:comment:)();
            v162 = v96;
            v97 = *v92;
            (*v92)(v14, v95);

            String.LocalizationValue.init(stringLiteral:)();
            v93(v94, v14, v95);
            static Locale.current.getter();
            v98 = String.init(localized:table:bundle:locale:comment:)();
            v165 = v99;
            v97(v14, v95);

            v100 = *&v166[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
            if (!v100)
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            v101 = *&v166[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
            v102 = *&v166[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

            v103 = v89;
            v104 = sub_1000574E8(v89, v101, v100);
            v53 = v105;

            v106 = *&v158[v157];
            if (v106)
            {
              v107 = *(v106 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon);
              v108 = v107;
            }

            else
            {
              v107 = 0;
            }

            v121 = v162;
            v136 = swift_unknownObjectWeakLoadStrong();
            if (v103 >= 1)
            {
              if (!v136)
              {
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }

              v137 = *(v136 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
              v123 = v137;
              swift_unknownObjectRelease();
              if (!v137)
              {
LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              v138 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
              v139 = *&v123[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
              if (v139)
              {
                [v139 invalidateWithReason:0];
                v126 = *&v123[v138];
              }

              else
              {
                v126 = 0;
              }

              *&v123[v138] = 0;

              goto LABEL_77;
            }

            if (!v136)
            {
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

            v140 = *(v136 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
            v126 = v140;
            swift_unknownObjectRelease();
            if (!v140)
            {
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

            sub_1000189D4(0, 1);
          }

          else
          {
            String.LocalizationValue.init(stringLiteral:)();
            v109 = *v91;
            v110 = v165;
            v111 = v161;
            (*v91)(v165, v14, v161);
            static Locale.current.getter();
            v160 = String.init(localized:table:bundle:locale:comment:)();
            v162 = v112;
            v113 = *v92;
            (*v92)(v14, v111);

            String.LocalizationValue.init(stringLiteral:)();
            v109(v110, v14, v111);
            static Locale.current.getter();
            v98 = String.init(localized:table:bundle:locale:comment:)();
            v115 = v114;
            v113(v14, v111);

            v165 = v115;
            if (v89 > 0)
            {
              v116 = *&v166[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
              if (!v116)
              {
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              v117 = *&v166[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
              v118 = *&v166[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

              v104 = sub_100057AE4(v89, v117, v116);
              v53 = v119;

              v120 = swift_unknownObjectWeakLoadStrong();
              v121 = v162;
              if (!v120)
              {
LABEL_96:
                __break(1u);
                goto LABEL_97;
              }

              v122 = *(v120 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
              v123 = v122;
              swift_unknownObjectRelease();
              if (!v122)
              {
LABEL_98:
                __break(1u);
                goto LABEL_99;
              }

              v124 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
              v125 = *&v123[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
              if (v125)
              {
                [v125 invalidateWithReason:0];
                v126 = *&v123[v124];
              }

              else
              {
                v126 = 0;
              }

              *&v123[v124] = 0;

              v107 = 0;
LABEL_77:

              v141 = *&v158[v157];
              if (v141)
              {
                v142 = (v141 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
                v143 = *v142;
                v144 = v142[1];
              }

              else
              {
                v143 = 0;
                v144 = 0;
              }

              v21 = v160;

              v168 = v21;
              v169 = v121;
              v170 = v104;
              v171 = v53;
              v172 = 0;
              v173 = 0xE000000000000000;
              v174 = 0;
              v175 = 0xE000000000000000;
              v164 = v98;
              v133 = v166;
              v176 = v98;
              v177 = v165;
              v178 = 0;
              v179 = 0xE000000000000000;
              v180 = 0;
              v181 = 0;
              v182 = 0;
              v183 = v166;
              v184 = 0uLL;
              *&v185 = 0;
              *(&v185 + 1) = v107;
              v160 = v144;
              v161 = v143;
              *&v186 = v143;
              *(&v186 + 1) = v144;
              v187 = 0u;
              v188 = 0u;
              v189 = 0u;
              sub_100052AFC(&v168, v167);
              v132 = v107;
              goto LABEL_81;
            }

            v134 = swift_unknownObjectWeakLoadStrong();
            if (!v134)
            {
LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

            v135 = *(v134 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
            v126 = v135;
            swift_unknownObjectRelease();
            v121 = v162;
            if (!v135)
            {
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            sub_1000189D4(0, 1);
            v104 = 0;
            v107 = 0;
            v53 = 0xE000000000000000;
          }

          v123 = v155;
          goto LABEL_77;
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_85;
  }

  v17 = v15;
  String.LocalizationValue.init(stringLiteral:)();
  v18 = *(v8 + 16);
  v157 = v8 + 16;
  v155 = v18;
  (v18)(v12, v14, v7);
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v8;
  v21 = v19;
  v23 = v22;
  v24 = *(v20 + 8);
  v164 = v20 + 8;
  v158 = v24;
  (v24)(v14, v7);

  v25 = v17[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi];
  v156 = v14;
  v162 = v23;
  v159 = v17;
  if (v25 != 1)
  {
    if (v17[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] != 1)
    {
      v166 = 0;
      v53 = 0xE000000000000000;
      goto LABEL_25;
    }

    v154 = v6;
    v43 = *&v17[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    if (v43)
    {
      v160 = v21;
      v161 = v7;
      v44 = *&v17[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
      v45 = swift_unknownObjectWeakLoadStrong();
      if (v45)
      {
        v46 = *(v45 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
        v47 = v46;

        swift_unknownObjectRelease();
        if (v46)
        {
          v48 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
          swift_beginAccess();
          v49 = *&v47[v48];
          v50 = v49;

          if (v49)
          {
            v52 = *&v50[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
            v51 = *&v50[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

            if (v51)
            {
              v36 = sub_100057280(v44, v43, v52, v51);
              goto LABEL_22;
            }

            goto LABEL_104;
          }

LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v154 = v6;
  v26 = *&v17[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
  if (!v26)
  {
    goto LABEL_86;
  }

  v160 = v21;
  v161 = v7;
  v27 = *&v17[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v29 = *(v28 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v30 = v29;

  swift_unknownObjectRelease();
  if (!v29)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v31 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  swift_beginAccess();
  v32 = *&v30[v31];
  v33 = v32;

  if (!v32)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v35 = *&v33[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v34 = *&v33[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  if (!v34)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v36 = sub_100056F7C(v27, v26, v35, v34);
LABEL_22:
  v166 = v36;
  v53 = v37;
  v7 = v161;

  v21 = v160;
LABEL_25:
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v21;
    v57 = *(v55 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v58 = v57;
    swift_unknownObjectRelease();
    if (v57)
    {
      v59 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
      swift_beginAccess();
      v60 = *&v58[v59];
      v61 = v60;
    }

    else
    {
      v60 = 0;
    }

    v21 = v56;
  }

  else
  {
    v60 = 0;
  }

  v127 = v156;
  String.LocalizationValue.init(stringLiteral:)();
  (v155)(v165, v127, v7);
  static Locale.current.getter();
  v128 = String.init(localized:table:bundle:locale:comment:)();
  v130 = v129;

  (v158)(v127, v7);

  v131 = v162;
  v168 = v21;
  v169 = v162;
  v104 = v166;
  v170 = v166;
  v171 = v53;
  v172 = 0;
  v173 = 0xE000000000000000;
  v174 = 0;
  v175 = 0xE000000000000000;
  v164 = v128;
  v165 = v130;
  v176 = v128;
  v177 = v130;
  v178 = 0;
  v179 = 0xE000000000000000;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = v60;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  sub_100052AFC(&v168, v167);
  v132 = 0;
  v133 = v60;
  v121 = v131;
  v160 = 0;
  v161 = 0;
LABEL_81:
  v166 = v104;
  v162 = v53;
  v168 = v21;
  v169 = v121;
  v170 = v104;
  v171 = v53;
  v172 = 0;
  v173 = 0xE000000000000000;
  v174 = 0;
  v175 = 0xE000000000000000;
  v146 = v164;
  v145 = v165;
  v176 = v164;
  v177 = v165;
  v178 = 0;
  v179 = 0xE000000000000000;
  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = v133;
  v184 = 0uLL;
  *&v185 = 0;
  *(&v185 + 1) = v132;
  v147 = v133;
  v149 = v160;
  v148 = v161;
  *&v186 = v161;
  *(&v186 + 1) = v160;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v150 = v132;
  sub_10002A024(&v168);
  v151 = v163;
  *v163 = v21;
  v151[1] = v121;
  v152 = v162;
  v151[2] = v166;
  v151[3] = v152;
  v151[4] = 0;
  v151[5] = 0xE000000000000000;
  v151[6] = 0;
  v151[7] = 0xE000000000000000;
  v151[8] = v146;
  v151[9] = v145;
  v151[10] = 0;
  v151[11] = 0xE000000000000000;
  v151[12] = 0;
  v151[13] = 0;
  v151[14] = 0;
  v151[15] = v147;
  v151[16] = 0;
  v151[17] = 0;
  v151[18] = 0;
  v151[19] = v150;
  v151[20] = v148;
  v151[21] = v149;
  result = 0.0;
  *(v151 + 11) = 0u;
  *(v151 + 12) = 0u;
  *(v151 + 13) = 0u;
  return result;
}

uint64_t sub_10004F204@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v12 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v12)
  {
    goto LABEL_31;
  }

  v13 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v55 = v5[2];
  v55(v9, v11, v4);
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v57 = v15;
  v58 = v14;
  v17 = v5[1];
  v16 = v5 + 1;
  v56 = v17;
  v17(v11, v4);

  v18 = v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi];
  v59 = v13;
  if (v18 == 1)
  {
    v54 = v16;
    v19 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    if (v19)
    {
      v52 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
      v53 = v4;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
        v22 = v21;

        swift_unknownObjectRelease();
        if (v21)
        {
          v23 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
          swift_beginAccess();
          v24 = *&v22[v23];
          v25 = v24;

          if (v24)
          {
            v27 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
            v26 = *&v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

            if (v26)
            {
              v28 = sub_1000582BC(v52, v19, v27, v26);
LABEL_18:
              v39 = v28;
              v40 = v29;

              v4 = v53;
LABEL_20:
              String.LocalizationValue.init(stringLiteral:)();
              v55(v9, v11, v4);
              static Locale.current.getter();
              v41 = String.init(localized:table:bundle:locale:comment:)();
              v43 = v42;

              v56(v11, v4);

              *&v61 = v58;
              *(&v61 + 1) = v57;
              *&v62 = v39;
              *(&v62 + 1) = v40;
              *&v63 = 0;
              *(&v63 + 1) = 0xE000000000000000;
              *&v64 = v41;
              *(&v64 + 1) = v43;
              *&v65 = 0;
              *(&v65 + 1) = 0xE000000000000000;
              *&v66 = 0;
              *(&v66 + 1) = 0xE000000000000000;
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v75[0] = v58;
              v75[1] = v57;
              v75[2] = v39;
              v75[3] = v40;
              v75[4] = 0;
              v75[5] = 0xE000000000000000;
              v75[6] = v41;
              v75[7] = v43;
              v75[8] = 0;
              v75[9] = 0xE000000000000000;
              v75[10] = 0;
              v75[11] = 0xE000000000000000;
              v76 = 0u;
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              sub_100052AFC(&v61, &v60);
              result = sub_10002A024(v75);
              v45 = v72;
              a1[10] = v71;
              a1[11] = v45;
              v46 = v74;
              a1[12] = v73;
              a1[13] = v46;
              v47 = v68;
              a1[6] = v67;
              a1[7] = v47;
              v48 = v70;
              a1[8] = v69;
              a1[9] = v48;
              v49 = v64;
              a1[2] = v63;
              a1[3] = v49;
              v50 = v66;
              a1[4] = v65;
              a1[5] = v50;
              v51 = v62;
              *a1 = v61;
              a1[1] = v51;
              return result;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] != 1)
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    goto LABEL_20;
  }

  v54 = v16;
  v30 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
  if (!v30)
  {
    goto LABEL_26;
  }

  v52 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
  v53 = v4;
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v32 = *(v31 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v33 = v32;

  swift_unknownObjectRelease();
  if (!v32)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  swift_beginAccess();
  v35 = *&v33[v34];
  v36 = v35;

  if (v35)
  {
    v38 = *&v36[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
    v37 = *&v36[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

    if (v37)
    {
      v28 = sub_1000585A8(v52, v30, v38, v37);
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004F7F0@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v56 = type metadata accessor for String.LocalizationValue();
  v4 = *(v56 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v56);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v12 = *(result + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v13 = v12;
  result = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices;
  swift_beginAccess();
  v15 = *&v13[v14];

  v52 = a1;
  if (v15 >> 62)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  String.LocalizationValue.init(stringLiteral:)();
  v16 = v56;
  v54 = v4[2];
  v54(v8, v10, v56);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v19 = v18;
  v20 = v4[1];
  v55 = v4 + 1;
  v53 = v20;
  v20(v10, v16);

  if (qword_10007EC50 != -1)
  {
    result = swift_once();
  }

  v21 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v21)
  {
    goto LABEL_13;
  }

  v49 = v19;
  v50 = v17;
  v22 = (v21 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
    v25 = v22[1];

    v51 = sub_100058810(v51, v24, v23);
    v48 = v26;

    String.LocalizationValue.init(stringLiteral:)();
    v27 = v8;
    v28 = v8;
    v29 = v56;
    v30 = v54;
    v54(v28, v10, v56);
    static Locale.current.getter();
    v31 = String.init(localized:table:bundle:locale:comment:)();
    v46 = v32;
    v47 = v31;
    v33 = v53;
    v53(v10, v29);

    String.LocalizationValue.init(stringLiteral:)();
    v30(v27, v10, v29);
    static Locale.current.getter();
    v34 = String.init(localized:table:bundle:locale:comment:)();
    v36 = v35;
    v33(v10, v29);

    *&v58 = v50;
    *(&v58 + 1) = v49;
    *&v59 = v51;
    *(&v59 + 1) = v48;
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    *&v61 = v47;
    *(&v61 + 1) = v46;
    *&v62 = v34;
    *(&v62 + 1) = v36;
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72[0] = v50;
    v72[1] = v49;
    v72[2] = v51;
    v72[3] = v48;
    v72[4] = 0;
    v72[5] = 0xE000000000000000;
    v72[6] = v47;
    v72[7] = v46;
    v72[8] = v34;
    v72[9] = v36;
    v72[10] = 0;
    v72[11] = 0xE000000000000000;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    sub_100052AFC(&v58, &v57);
    result = sub_10002A024(v72);
    v37 = v69;
    v38 = v52;
    v52[10] = v68;
    v38[11] = v37;
    v39 = v71;
    v38[12] = v70;
    v38[13] = v39;
    v40 = v65;
    v38[6] = v64;
    v38[7] = v40;
    v41 = v67;
    v38[8] = v66;
    v38[9] = v41;
    v42 = v61;
    v38[2] = v60;
    v38[3] = v42;
    v43 = v63;
    v38[4] = v62;
    v38[5] = v43;
    v44 = v59;
    *v38 = v58;
    v38[1] = v44;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10004FCF8@<X0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v70 - v13;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v15 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi];
  v74 = v6;
  v75 = v8;
  v73 = v14;
  v76 = v15;
  if (v16 == 1)
  {
    *&v71 = v12;
    v17 = v15;
    *&v72 = sub_100058D08();
    *(&v72 + 1) = v18;

    v19 = *&v17[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    if (!v19)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v20 = *&v17[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
    *(&v71 + 1) = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v22 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v23 = v22;

    swift_unknownObjectRelease();
    if (!v22)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v24 = v7;
    v25 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v26 = *&v23[v25];
    v27 = v26;

    if (!v26)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v29 = *&v27[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
    v28 = *&v27[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

    if (!v28)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v30 = sub_100058F18(v20, v19, v29, v28);
    v32 = v31;

    goto LABEL_18;
  }

  if (v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] != 1)
  {
    v24 = v7;
    v48 = v15;
    v30 = 0;
    *&v72 = 0;
    *(&v72 + 1) = 0xE000000000000000;
    v32 = 0xE000000000000000;
LABEL_20:
    v49 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    *&v71 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
    *(&v71 + 1) = v49;

    v50 = swift_unknownObjectWeakLoadStrong();
    if (v50)
    {
      v51 = *(v50 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      v52 = v51;
      swift_unknownObjectRelease();
      if (v51)
      {
        v70 = v32;
        v53 = v30;
        v54 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
        swift_beginAccess();
        v55 = *&v52[v54];
        v56 = v55;

        if (v55)
        {
          v57 = v73;
          String.LocalizationValue.init(stringLiteral:)();
          v58 = v75;
          (*(v75 + 16))(v12, v57, v24);
          static Locale.current.getter();
          v59 = String.init(localized:table:bundle:locale:comment:)();
          v61 = v60;

          (*(v58 + 8))(v57, v24);

          v78 = v72;
          *&v79 = v53;
          *(&v79 + 1) = v70;
          *&v80 = 0;
          *(&v80 + 1) = 0xE000000000000000;
          *&v81 = v59;
          *(&v81 + 1) = v61;
          *&v82 = 0;
          *(&v82 + 1) = 0xE000000000000000;
          *&v83 = 0;
          *(&v83 + 1) = 0xE000000000000000;
          v84 = 0uLL;
          *&v85 = 0;
          *(&v85 + 1) = v55;
          v86 = 0u;
          v87 = 0u;
          v88 = v71;
          v90 = 0u;
          v91 = 0u;
          v89 = 0u;
          v92 = v72;
          v93 = v53;
          v94 = v70;
          v95 = 0;
          v96 = 0xE000000000000000;
          v97 = v59;
          v98 = v61;
          v99 = 0;
          v100 = 0xE000000000000000;
          v101 = 0;
          v102 = 0xE000000000000000;
          v104 = 0;
          v103 = 0;
          v105 = 0;
          v106 = v55;
          v107 = 0u;
          v108 = 0u;
          v109 = v71;
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          sub_100052AFC(&v78, &v77);
          result = sub_10002A024(&v92);
          v63 = v89;
          a1[10] = v88;
          a1[11] = v63;
          v64 = v91;
          a1[12] = v90;
          a1[13] = v64;
          v65 = v85;
          a1[6] = v84;
          a1[7] = v65;
          v66 = v87;
          a1[8] = v86;
          a1[9] = v66;
          v67 = v81;
          a1[2] = v80;
          a1[3] = v67;
          v68 = v83;
          a1[4] = v82;
          a1[5] = v68;
          v69 = v79;
          *a1 = v78;
          a1[1] = v69;
          return result;
        }

        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(&v71 + 1) = v1;
  v33 = v15;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v12, v14, v7);
  static Locale.current.getter();
  *&v71 = v12;
  v34 = String.init(localized:table:bundle:locale:comment:)();
  *(&v72 + 1) = v35;
  (*(v8 + 8))(v14, v7);

  v36 = &v33[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
  v37 = *&v33[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
  if (!v37)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *&v72 = v34;
  v38 = *v36;
  v39 = swift_unknownObjectWeakLoadStrong();
  if (!v39)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v40 = *(v39 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v41 = v40;

  swift_unknownObjectRelease();
  if (!v40)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v24 = v7;
  v42 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  swift_beginAccess();
  v43 = *&v41[v42];
  v44 = v43;

  if (!v43)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v46 = *&v44[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v45 = *&v44[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  if (v45)
  {
    v30 = sub_100059230(v38, v37, v46, v45);
    v32 = v47;

LABEL_18:

    v15 = v76;
    v12 = v71;
    goto LABEL_20;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}