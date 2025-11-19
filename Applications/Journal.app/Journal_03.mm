uint64_t sub_100057B70(uint64_t a1)
{
  v2 = sub_100054264();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100057BAC()
{
  sub_10004FCAC();

  return swift_deallocClassInstance();
}

uint64_t sub_100057C04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_10003A5C8(a1, a2);
  }

  return a1;
}

void sub_100057E24()
{
  sub_10004FE00(319, &qword_100AF3C80, type metadata accessor for AssetAttachment.AssetType.FilePathType);
  if (v0 <= 0x3F)
  {
    sub_10004FE00(319, &qword_100AF3C88, sub_10003B9B4);
    if (v1 <= 0x3F)
    {
      sub_10004FE4C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t sub_100057F10()
{
  result = qword_100AE9B28;
  if (!qword_100AE9B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9B28);
  }

  return result;
}

uint64_t sub_100057FD0()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v131 = *(v2 - 8);
  v132 = v2;
  __chkstk_darwin(v2);
  v130 = v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v4 - 8);
  v135 = v127 - v5;
  v136 = type metadata accessor for UIButton.Configuration.Indicator();
  v133 = *(v136 - 1);
  __chkstk_darwin(v136);
  v129 = v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for UIButton.Configuration();
  v137 = *(v140 - 8);
  v7 = __chkstk_darwin(v140);
  v139 = v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v127 - v9;
  v11 = *&v0[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_metadataButton];
  [v0 addSubview:v11];
  [v11 addTarget:v0 action:"changeJournal:" forControlEvents:0x2000];
  v12 = [v11 superview];
  if (v12)
  {
    v13 = v12;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v11 leadingAnchor];
    v15 = [v13 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:16.0];
    [v16 setActive:1];
  }

  v17 = [v11 superview];
  if (v17)
  {
    v18 = v17;
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v11 topAnchor];
    v20 = [v18 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setConstant:0.0];
    [v21 setActive:1];
  }

  v22 = 0.0;
  v138 = v11;

  v23 = *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton];
  [v1 addSubview:v23];
  [v23 setShowsMenuAsPrimaryAction:1];
  [v23 setContextMenuInteractionEnabled:1];
  [v23 addTarget:v1 action:"updateOverflowMenu:" forControlEvents:0x4000];
  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceIdiom];

  v26 = [v23 superview];
  if (v26)
  {
    v27 = v26;
    if (v25 == 5)
    {
      v22 = -12.0;
    }

    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [v23 trailingAnchor];
    v29 = [v27 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];

    [v30 setConstant:v22];
    [v30 setActive:1];
  }

  v31 = [v23 superview];
  if (v31)
  {
    v32 = v31;
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v23 topAnchor];
    v34 = [v32 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    [v35 setConstant:0.0];
    [v35 setActive:1];
  }

  v36 = objc_opt_self();
  v37 = [v36 secondaryLabelColor];
  [v23 setTintColor:v37];

  static UIButton.Configuration.borderless()();
  if (qword_100AD0980 != -1)
  {
    swift_once();
  }

  v38 = qword_100B30E58;
  if (qword_100B30E58)
  {
    v39 = [objc_opt_self() configurationWithPointSize:6 weight:3 scale:15.0];
    v40 = [v38 imageWithSymbolConfiguration:v39];
  }

  UIButton.Configuration.image.setter();
  UIButton.Configuration.contentInsets.setter();
  v134 = v36;
  v41 = [v36 clearColor];
  v42 = v10;
  v43 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v43(v141, 0);
  (*(v133 + 13))(v129, enum case for UIButton.Configuration.Indicator.none(_:), v136);
  UIButton.Configuration.indicator.setter();
  v44 = v137;
  v45 = *(v137 + 16);
  v46 = v135;
  v133 = v42;
  v47 = v140;
  v128 = v45;
  v129 = (v137 + 16);
  v45(v135, v42, v140);
  v127[0] = *(v44 + 56);
  v127[1] = v44 + 56;
  (v127[0])(v46, 0, 1, v47);
  UIButton.configuration.setter();
  v48 = [v23 leadingAnchor];
  v49 = [v138 trailingAnchor];
  v50 = [v48 constraintGreaterThanOrEqualToAnchor:v49];

  [v50 setActive:1];
  v51 = *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkView];
  [v1 addSubview:v51];
  [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
  v52 = [v51 trailingAnchor];
  v136 = v23;
  v53 = [v23 leadingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  [v54 setConstant:-0.0];
  [v54 setActive:1];

  v55 = [v51 superview];
  if (v55)
  {
    v56 = v55;
    [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = [v51 topAnchor];
    v58 = [v56 topAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    [v59 setConstant:0.0];
    [v59 setActive:1];
  }

  if (qword_100AD0900 != -1)
  {
    swift_once();
  }

  v60 = qword_100B30DD8;
  if (qword_100B30DD8)
  {
    v61 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    v62 = [objc_opt_self() configurationWithFont:v61 scale:2];

    v60 = [v60 imageWithConfiguration:v62];
  }

  [v51 setImage:v60];

  if (qword_100AD0320 != -1)
  {
    swift_once();
  }

  [v51 setTintColor:qword_100B30318];
  [v51 setContentMode:4];
  [v51 setAlpha:0.0];
  [v51 setIsAccessibilityElement:1];
  if (qword_100AD07D0 != -1)
  {
    swift_once();
  }

  v63 = String._bridgeToObjectiveC()();
  [v51 setAccessibilityLabel:v63];

  v64 = [v51 leadingAnchor];
  v65 = [v138 trailingAnchor];
  v66 = [v64 constraintGreaterThanOrEqualToAnchor:v65];

  v67 = *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkViewLeadingSpaceConstraint];
  *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_bookmarkViewLeadingSpaceConstraint] = v66;
  v68 = v66;

  [v68 setActive:0];
  v69 = *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButton];
  [v1 addSubview:v69];
  v70 = [v69 superview];
  if (v70)
  {
    v71 = v70;
    [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [v69 topAnchor];
    v73 = [v71 topAnchor];
    v74 = [v72 constraintEqualToAnchor:v73];

    [v74 setConstant:0.0];
    [v74 setActive:1];
  }

  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0CA0 != -1)
  {
    swift_once();
  }

  v75 = v132;
  v76 = sub_10000617C(v132, qword_100B314F0);
  (*(v131 + 16))(v130, v76, v75);
  v77 = UIColor.init(resource:)();
  [v69 setTintColor:v77];

  [v69 setHidden:1];
  [v69 setIsAccessibilityElement:1];
  v78 = v134;
  v79 = [v134 secondaryLabelColor];
  [v69 setTintColor:v79];

  static UIButton.Configuration.borderless()();
  if (qword_100AD0A00 != -1)
  {
    swift_once();
  }

  v80 = qword_100B30ED8;
  if (qword_100B30ED8)
  {
    v81 = [objc_opt_self() configurationWithPointSize:6 weight:3 scale:15.0];
    v82 = [v80 imageWithSymbolConfiguration:v81];

    v78 = v134;
  }

  v83 = v139;
  UIButton.Configuration.image.setter();
  UIButton.Configuration.contentInsets.setter();
  v84 = [v78 clearColor];
  v85 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v85(v141, 0);
  v86 = v135;
  v87 = v140;
  v128(v135, v83, v140);
  (v127[0])(v86, 0, 1, v87);
  UIButton.configuration.setter();
  v88 = [v69 trailingAnchor];
  v89 = [v136 leadingAnchor];
  v90 = [v88 constraintGreaterThanOrEqualToAnchor:v89];

  v91 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButtonTrailingSpaceConstraint;
  v92 = *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButtonTrailingSpaceConstraint];
  *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButtonTrailingSpaceConstraint] = v90;
  v93 = v90;

  [v93 setConstant:0.0];
  [*&v1[v91] setActive:1];
  [v69 addTarget:v1 action:"handleTapUnsupportedTriangleView" forControlEvents:64];
  v94 = *&v1[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_dividerLineView];
  [v1 addSubview:v94];
  v95 = [v94 superview];
  if (v95)
  {
    v96 = v95;
    [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
    v97 = [v94 topAnchor];
    v98 = [v96 topAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];

    [v99 setConstant:0.0];
    [v99 setActive:1];
  }

  v100 = [v94 superview];
  if (v100)
  {
    v101 = v100;
    [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
    v102 = [v94 leadingAnchor];
    v103 = [v101 leadingAnchor];
    v104 = [v102 constraintEqualToAnchor:v103];

    [v104 setConstant:4.0];
    [v104 setActive:1];
  }

  v105 = [v94 superview];
  if (v105)
  {
    v106 = v105;
    [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
    v107 = [v94 trailingAnchor];
    v108 = [v106 trailingAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];

    [v109 setConstant:-4.0];
    [v109 setActive:1];
  }

  [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
  v110 = [v94 heightAnchor];
  v111 = [v110 constraintEqualToConstant:1.0];

  [v111 setActive:1];
  if (qword_100AD0308 != -1)
  {
    swift_once();
  }

  [*&v94[OBJC_IVAR____TtC7Journal18JournalDividerView_dividerView] setBackgroundColor:qword_100B30300];
  sub_1000F24EC(&unk_100AE88B0);
  v112 = swift_allocObject();
  *(v112 + 16) = xmmword_100941FE0;
  *(v112 + 56) = type metadata accessor for JournalEntryMetadataButton();
  v113 = v138;
  *(v112 + 32) = v138;
  v114 = sub_1000065A8(0, &qword_100ADFC10);
  *(v112 + 88) = v114;
  *(v112 + 64) = v69;
  v115 = sub_1000065A8(0, &qword_100AEB248);
  *(v112 + 96) = v51;
  *(v112 + 152) = v114;
  v116 = v136;
  *(v112 + 120) = v115;
  *(v112 + 128) = v116;
  v117 = v113;
  v118 = v69;
  v119 = v51;
  v120 = v116;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setAccessibilityElements:isa];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v122 = [v1 heightAnchor];
  v123 = [v122 constraintGreaterThanOrEqualToConstant:30.0];

  [v123 setActive:1];
  v124 = *(v137 + 8);
  v125 = v140;
  v124(v139, v140);
  return (v124)(v133, v125);
}

uint64_t sub_1000594D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1000594E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  if (qword_100AD0060 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FileStoreConfiguration();
  sub_10000617C(v15, qword_100B2FC48);
  FileStoreConfiguration.cachesDirectoryURL.getter();
  v24[0] = a1;
  v24[1] = a2;
  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v7, v4);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 fileExistsAtPath:v18];

  v20 = 0;
  if (v19)
  {
    URL.relativePath.getter();
    v21 = objc_allocWithZone(UIImage);
    v22 = String._bridgeToObjectiveC()();

    v20 = [v21 initWithContentsOfFile:v22];
  }

  v16(v14, v8);
  return v20;
}

uint64_t sub_1000598C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100ADFA80);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ProtectedData.ProtectedDataState();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_100052B10, v1, 0);
}

uint64_t sub_100059A20()
{
  v1 = *(*v0 + 24);

  return _swift_task_switch(sub_100059B30, v1, 0);
}

uint64_t sub_100059B30()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[42];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  v5 = v0[33];
  v6 = v0[34];
  sub_100059D08(v1, "JournalSyncEngineDelegate.handleEvent", 37, 2);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100059D08(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v20 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_100059FA4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v68 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v68 - v11;
  __chkstk_darwin(v10);
  v14 = &v68 - v13;
  v85 = type metadata accessor for FileStoreConfiguration();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &_swiftEmptyArrayStorage;
  v90 = &_swiftEmptySetSingleton;
  v91 = &_swiftEmptyArrayStorage;
  v22 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (!v22)
  {
    goto LABEL_35;
  }

  v82 = v18;
  v83 = v20;
  v81 = v14;
  v23 = v22;
  v24 = [v23 fileAttachments];
  if (!v24 || (v25 = v24, v77 = v12, v78 = v9, v92 = 0, v26 = type metadata accessor for JournalEntryAssetFileAttachmentMO(), sub_100034178(&qword_100ADB700, &type metadata accessor for JournalEntryAssetFileAttachmentMO), v86 = v26, static Set._conditionallyBridgeFromObjectiveC(_:result:)(), v25, (v27 = v92) == 0))
  {

    v21 = &_swiftEmptyArrayStorage;
LABEL_35:
    *(v1 + OBJC_IVAR____TtC7Journal5Asset_attachmentIdsMissingFile) = v90;

    *(v1 + OBJC_IVAR____TtC7Journal5Asset_attachments) = v21;

    (*((swift_isaMask & *v1) + 0x2D8))(v56);
    ObjectType = swift_getObjectType();
    v58 = swift_conformsToProtocol2();
    if (v58)
    {
      v59 = v58;
      v60 = v1;
      sub_10003A264(ObjectType, v59);
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      return;
    }

    v61 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v61)
    {
      v62 = v1;
      v63._countAndFlagsBits = [v61 contentType];
      if (v63._countAndFlagsBits)
      {
        countAndFlagsBits = v63._countAndFlagsBits;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v63._object = v67;
        v63._countAndFlagsBits = v65;
LABEL_43:
        *(v1 + OBJC_IVAR____TtC7Journal9LinkAsset_contentType) = sub_100857B7C(v63);

        return;
      }
    }

    else
    {
      v63._countAndFlagsBits = v1;
      v63._countAndFlagsBits = 0;
    }

    v63._object = 0xE000000000000000;
    goto LABEL_43;
  }

  v74 = v6;
  v75 = v2;
  v80 = v23;
  if ((v92 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v27 = v92;
    v28 = v93;
    v29 = v94;
    v30 = v95;
    v31 = v96;
  }

  else
  {
    v30 = 0;
    v32 = -1 << *(v92 + 32);
    v28 = v92 + 56;
    v29 = ~v32;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v31 = v34 & *(v92 + 56);
  }

  v79 = v29;
  v35 = (v29 + 64) >> 6;
  ++v87;
  v73 = (v3 + 32);
  v72 = (v3 + 16);
  v71 = (v3 + 8);
  v76 = (v17 + 8);
  v21 = &_swiftEmptyArrayStorage;
  while (v27 < 0)
  {
    v39 = __CocoaSet.Iterator.next()();
    if (!v39 || (v88 = v39, swift_dynamicCast(), (v38 = v89) == 0))
    {
LABEL_34:
      sub_100014FF8();

      goto LABEL_35;
    }

LABEL_21:
    v40 = [v38 filePath];
    if (v40)
    {

      v41 = v38;
      if (sub_10004A07C(v41))
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v21 = v91;
      }

      v42 = [v41 filePath];
      if (v42)
      {
        v70 = v41;
        v43 = v42;
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v44 = v84;
        static FileStoreConfiguration.shared.getter();
        FileStoreConfiguration.getAttachmentURL(from:)();

        (*v87)(v44, v85);
        v69 = [objc_opt_self() defaultManager];
        URL.path.getter();
        v45 = String._bridgeToObjectiveC()();

        v46 = v69;
        LOBYTE(v44) = [v69 fileExistsAtPath:v45];

        if (v44)
        {
          (*v76)(v83, v82);
        }

        else
        {
          v47 = v70;
          v48 = [v70 id];
          if (v48)
          {
            v49 = v77;
            v50 = v48;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v51 = v81;
            v52 = v49;
            v53 = v75;
            (*v73)(v81, v52, v75);
            v54 = v74;
            (*v72)(v74, v51, v53);
            sub_100286F3C(v78, v54);

            v55 = *v71;
            (*v71)(v78, v53);
            v55(v81, v53);
            (*v76)(v83, v82);
          }

          else
          {
            (*v76)(v83, v82);
          }
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v36 = v30;
  v37 = v31;
  if (v31)
  {
LABEL_17:
    v31 = (v37 - 1) & v37;
    v38 = *(*(v27 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v37)))));
    if (!v38)
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v30 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      goto LABEL_34;
    }

    v37 = *(v28 + 8 * v30);
    ++v36;
    if (v37)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void *sub_10005A84C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  v2 = v1;
  return v1;
}

uint64_t sub_10005A87C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = _s8MetadataC5InputOMa();
  __chkstk_darwin(v4);
  v6 = (&v11 - v5);
  v8 = *a1;
  v7 = a1[1];
  _s8MetadataCMa();
  *v6 = v8;
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();
  v9 = swift_allocObject();
  sub_100048FD8(v6);
  *a2 = v9;
  return sub_100049ED8(v8, v7);
}

uint64_t sub_10005A9EC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry;
  *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry) = a1;

  sub_100052FA0();
  sub_10007A868();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_bookmarked);

    sub_1000823A8(v4, 0);
    sub_100082730(v3);
    sub_100082BE4();
    sub_10005D6A4();
  }
}

uint64_t sub_10005AAB0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 7) != 0)
  {
    if (*(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) == 1 && (v8 = sub_1000819F8()) != 0)
    {
      v9 = v8;
      v10 = [v8 string];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v59 = v11;
      v60 = v13;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_1000777B4();
      v14 = StringProtocol.trimmingCharacters(in:)();
      v16 = v15;
      (*(v5 + 8))(v7, v4);

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      v18 = v17 != 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_100081D68();
    if (v20)
    {
      v59 = v19;
      v60 = v20;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_1000777B4();
      v21 = StringProtocol.trimmingCharacters(in:)();
      v23 = v22;
      (*(v5 + 8))(v7, v4);

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if ((a1 & 1) == 0 || v18)
      {
        if ((a1 & 2) != 0 && !v18 || (a1 & 4) != 0 && !v24)
        {
          return 0;
        }
      }

      else
      {
        if (v24)
        {
          v25 = (a1 & 2) == 0;
        }

        else
        {
          v25 = 0;
        }

        if (!v25)
        {
          return 0;
        }
      }
    }

    else if ((a1 & 1) != 0 || (a1 & 2) != 0)
    {
      if ((a1 & 4) != 0 || !v18)
      {
        return 0;
      }
    }

    else if ((a1 & 4) != 0)
    {
      return 0;
    }
  }

  if ((a1 & 0x3F0) == 0)
  {
    return 1;
  }

  v27 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v28 = *(v2 + v27);
  v58 = &_swiftEmptyArrayStorage;
  v53 = a1;
  if (v28 >> 62)
  {
    goto LABEL_85;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v56 = OBJC_IVAR____TtC7Journal14EntryViewModel_hiddenAssets;

    if (i)
    {
      v30 = 0;
      v54 = v28 & 0xFFFFFFFFFFFFFF8;
      v55 = v28 & 0xC000000000000001;
      while (1)
      {
        if (v55)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v30 >= *(v54 + 16))
          {
            goto LABEL_82;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v34 = v28;
        v35 = v2;
        v36 = *(v2 + v56);
        v57 = v31;
        __chkstk_darwin(v31);
        *(&v53 - 2) = &v57;

        v37 = sub_10005B088(sub_1002A037C, (&v53 - 4), v36);

        if (v37)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v28 = v34;
        ++v30;
        v2 = v35;
        if (v33 == i)
        {
          v38 = v58;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v38 = &_swiftEmptyArrayStorage;
LABEL_45:

    v39 = v53;
    if ((v53 & 0x10) != 0)
    {
      if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_91;
        }
      }

      else if (!*(v38 + 16))
      {
        goto LABEL_91;
      }
    }

    if ((v39 & 0x20) != 0)
    {
      v40 = sub_100049F2C();
      if (!v40)
      {
        goto LABEL_91;
      }

      sub_10053256C(v40);
      v42 = v41;
    }

    if ((v39 & 0x40) == 0)
    {
      break;
    }

    if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      if (!v28)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v28 = *(v38 + 16);
      if (!v28)
      {
        goto LABEL_91;
      }
    }

    v46 = 0;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *(v38 + 16))
        {
          goto LABEL_84;
        }

        v47 = *(v38 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      type metadata accessor for DrawingAsset();
      v50 = swift_dynamicCastClass();

      if (v50)
      {
        goto LABEL_53;
      }

      ++v46;
      if (v49 == v28)
      {
        goto LABEL_91;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }

LABEL_53:
  v44 = v53;
  if ((v53 & 0x80) != 0 && !*(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset))
  {
    goto LABEL_91;
  }

  if ((v53 & 0x100) == 0)
  {
    goto LABEL_59;
  }

  if ((v38 & 0x8000000000000000) == 0 && (v38 & 0x4000000000000000) == 0)
  {
    if (*(v38 + 16) == 1)
    {
      goto LABEL_59;
    }

LABEL_91:

    return 0;
  }

  if (_CocoaArrayWrapper.endIndex.getter() != 1)
  {
    goto LABEL_91;
  }

LABEL_59:
  if ((v44 & 0x200) == 0)
  {

    return 1;
  }

  if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *(v38 + 16);
  }

  if (v51)
  {
    return 0;
  }

  v52 = *(v2 + v56);
  if (v52 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }

    return 1;
  }

  result = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_10005B15C()
{
  v54 = v0;
  if (qword_100ACFDF0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  sub_10000617C(v1, qword_100AE52C8);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v53 = v8;
    *v7 = 136315138;
    static Date.now.getter();
    sub_10005C3F4();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_100008458(v9, v11, &v53);

    *(v7 + 4) = v12;
    v13 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, v3, v13, "AssetContentTypeOperation", "%s", v7, 0xCu);
    sub_10000BA7C(v8);
  }

  (*(v0[18] + 16))(v0[19], v0[20], v0[17]);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[23] = OSSignpostIntervalState.init(id:isOpen:)();
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[10];
  v17 = v0[11];
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v17 + 104))(v15, enum case for ProtectedData.ProtectedDataState.available(_:), v16);
  v18 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v19 = *(v17 + 8);
  v19(v15, v16);
  v19(v14, v16);
  if (v18)
  {
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];
    v51 = v0[3];
    type metadata accessor for JournalEntryAssetMO();
    v52 = static JournalEntryAssetMO.fetchRequest()();
    v0[24] = v52;
    sub_1000F24EC(&unk_100AD4780);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_100941D60;
    sub_1000065A8(0, &qword_100ADB900);
    *(v23 + 32) = static NSPredicate.notRemovedFromCloud.getter();
    sub_1000F24EC(&unk_100AD5B10);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100940050;
    *(v24 + 56) = &type metadata for String;
    v25 = sub_100031B20();
    *(v24 + 64) = v25;
    *(v24 + 32) = 0x7079547465737361;
    *(v24 + 40) = 0xE900000000000065;
    (*(v21 + 104))(v20, enum case for AssetType.link(_:), v22);
    v26 = AssetType.rawValue.getter();
    v28 = v27;
    (*(v21 + 8))(v20, v22);
    *(v24 + 96) = &type metadata for String;
    *(v24 + 104) = v25;
    *(v24 + 72) = v26;
    *(v24 + 80) = v28;
    *(v23 + 40) = NSPredicate.init(format:_:)();
    v0[2] = v23;
    if ((*(v51 + qword_100AE52F0) & 1) == 0)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100940080;
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = v25;
      *(v29 + 32) = 0x54746E65746E6F63;
      *(v29 + 40) = 0xEB00000000657079;
      NSPredicate.init(format:_:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v31 = v0[5];
    v30 = v0[6];
    v33 = v0[3];
    v32 = v0[4];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v35 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v52 setPredicate:v35];
    v36 = [*(v33 + qword_100AE52E8) newBackgroundContext];
    v0[25] = v36;
    v37 = String._bridgeToObjectiveC()();
    [v36 setName:v37];

    v38 = swift_allocObject();
    v0[26] = v38;
    *(v38 + 16) = v36;
    *(v38 + 24) = v52;
    (*(v31 + 104))(v30, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v32);
    v36;
    v39 = v52;
    v40 = swift_task_alloc();
    v0[27] = v40;
    *v40 = v0;
    v40[1] = sub_10007D384;
    v41 = v0[6];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v40, v41, sub_10049C814, v38, &type metadata for () + 8);
  }

  else
  {
    if (qword_100ACFDE8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000617C(v42, qword_100AE52B0);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Skip running AssetContentTypeOperation because isProtectedDataAvailable == false. Most likely because the device is locked.", v45, 2u);
    }

    v46 = v0[20];
    v47 = v0[17];
    v48 = v0[18];
    sub_10007E1CC();

    (*(v48 + 8))(v46, v47);

    v49 = v0[1];

    return v49();
  }
}

uint64_t sub_10005B988()
{

  return swift_deallocObject();
}

uint64_t sub_10005B9C8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignposter();
  sub_100006118(v4, qword_100AE52C8);
  sub_10000617C(v4, qword_100AE52C8);
  if (qword_100ACFDE8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000617C(v0, qword_100AE52B0);
  (*(v1 + 16))(v3, v5, v0);
  return OSSignposter.init(logger:)();
}

uint64_t sub_10005BB18()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE52B0);
  sub_10000617C(v0, qword_100AE52B0);
  return Logger.init(subsystem:category:)();
}

id sub_10005BB98(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_quoteAreas] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_barInset] = 0;
  *&v4[OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_topInset] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for BlockQuoteLayerView();
  v9 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor:v12];

  [v11 setContentMode:5];
  return v11;
}

uint64_t sub_10005BCA4(void *a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10005BD7C(a1, v7, v1 + v4, v8);
}

uint64_t sub_10005BD7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v34 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Date();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v28 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v33 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v10 + 16))(v12, v31, v9);
  v15 = v29;
  v16 = v30;
  (*(v7 + 16))(v29, v32, v30);
  v17 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v18 = (v11 + *(v7 + 80) + v17) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = v34;
  *(v19 + 16) = v13;
  *(v19 + 24) = v20;
  (*(v10 + 32))(v19 + v17, v12, v28);
  (*(v7 + 32))(v19 + v18, v15, v16);
  aBlock[4] = sub_1000922C4;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A61A90;
  v21 = _Block_copy(aBlock);
  v22 = v20;

  v23 = v35;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_100006964(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v25 = v36;
  v24 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = v33;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v40 + 8))(v25, v24);
  (*(v38 + 8))(v23, v39);
}

uint64_t sub_10005C260()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_10005C3BC(void *a1)
{
  v1 = a1;
  v2 = sub_10008B0E8();

  return v2 & 1;
}

unint64_t sub_10005C3F4()
{
  result = qword_100AE1D80;
  if (!qword_100AE1D80)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1D80);
  }

  return result;
}

uint64_t sub_10005C44C(void *a1)
{
  v1 = a1;
  v2 = sub_10008B0E8();

  return v2 & 1;
}

unint64_t sub_10005C484()
{
  result = qword_100AF3630;
  if (!qword_100AF3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3630);
  }

  return result;
}

uint64_t sub_10005C4D8(unsigned __int8 a1, char a2, void (*a3)(void), uint64_t a4)
{
  v7 = a1;
  if (a2)
  {
    v8 = [v4 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    v10 = v9 != 5;
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = a3;
  v11[4] = a4;
  v12 = OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state;
  v13 = v4[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state];

  v14 = v4;
  v15 = [v14 view];
  if (v13 == v7)
  {
    if (v15)
    {
      v16 = v15;
      v17 = [v15 window];

      if (v17)
      {
        v18 = v4[v12];
        v19 = v4[v12] == 0;
        v20 = v17;
        [v20 endEditing:1];
        [v20 setHidden:v19];

        if (v18)
        {
          [v20 makeKeyWindow];
        }
      }

      a3();
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_23:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v4[v12] = v7;
  v22 = [v14 view];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [v22 window];

  if (v24)
  {
    v25 = v24;
    [v25 endEditing:1];
    [v25 setHidden:0];
  }

  v26 = 0.0;
  v27 = 0.0;
  if (v10)
  {
    v27 = 0.25;
    if (!v7)
    {
      v26 = 0.15;
    }
  }

  v28 = objc_opt_self();
  v29 = swift_allocObject();
  *(v29 + 16) = v14;
  *(v29 + 24) = v7;
  v38 = sub_1007E3B84;
  v39 = v29;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100006C7C;
  v37 = &unk_100A7FBA0;
  v30 = _Block_copy(&aBlock);
  v31 = v14;

  v32 = swift_allocObject();
  *(v32 + 16) = sub_1007E3B78;
  *(v32 + 24) = v11;
  v38 = sub_100028ECC;
  v39 = v32;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10003264C;
  v37 = &unk_100A7FBF0;
  v33 = _Block_copy(&aBlock);

  [v28 animateWithDuration:0 delay:v30 options:v33 animations:v27 completion:v26];
  _Block_release(v33);
  _Block_release(v30);
}

uint64_t sub_10005C8F8()
{

  return swift_deallocObject();
}

uint64_t sub_10005C930()
{

  return swift_deallocObject();
}

uint64_t sub_10005C99C(uint64_t a1)
{

  v2 = qword_100B302B8;
  v3 = type metadata accessor for AssetType();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = qword_100AF0118;
  v5 = type metadata accessor for Logger();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = qword_100AF0120;
  v7 = type metadata accessor for OSSignposter();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1 + v6, v7);
}

uint64_t sub_10005CB44()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_contentStackView];
  [v2 setAxis:1];
  v3 = [v0 contentView];
  [v3 addSubview:v2];

  sub_100013178(0.0);

  v4 = *&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_topContentMaskView];
  [v4 setClipsToBounds:1];
  [v4 setAxis:1];
  [v2 addArrangedSubview:v4];
  v5 = *&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetStackView];
  [v5 setAxis:1];
  [v5 setSpacing:4.0];
  [v5 setLayoutMarginsRelativeArrangement:1];
  [v5 setDirectionalLayoutMargins:{4.0, 4.0, 0.0, 4.0}];
  [v4 addArrangedSubview:v5];
  v6 = *&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView];
  *(v6 + OBJC_IVAR____TtC7Journal14CanvasGridView_delegate + 8) = &off_100A75C60;
  swift_unknownObjectWeakAssign();
  [v5 addArrangedSubview:v6];
  v7 = *&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textStackView];
  [v7 setAxis:1];
  [v7 setSpacing:4.0];
  [v7 setLayoutMarginsRelativeArrangement:1];
  [v7 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  [v4 addArrangedSubview:v7];
  [v7 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_bundleTitle]];
  v8 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView;
  [v7 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView]];
  v9 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView;
  [*&v1[v8] addSubview:*&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView]];
  v10 = *&v1[v9];
  p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
  v12 = [v10 superview];
  v13 = &selRef_setSuggestedName_;
  if (v12)
  {
    v14 = v12;
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v10 topAnchor];
    v16 = [v14 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:0.0];
    if (v17)
    {
      [v17 setActive:1];
    }

    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v17 = 0;
    v14 = v10;
  }

  v18 = *&v1[v9];
  v19 = [v18 p_ivar_lyt[467]];
  if (v19)
  {
    v20 = v19;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v18 leadingAnchor];
    v22 = [v20 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    [v23 setConstant:0.0];
    if (v23)
    {
      [v23 setActive:1];
    }

    v13 = &selRef_setSuggestedName_;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  }

  else
  {
    v23 = 0;
    v20 = v18;
  }

  v24 = *&v1[v9];
  v25 = [v24 p_ivar_lyt[467]];
  if (v25)
  {
    v26 = v25;
    [v24 v13[278]];
    v27 = [v24 trailingAnchor];
    v28 = [v26 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:0.0];
    if (v29)
    {
      [v29 setActive:1];
    }

    v30 = v2;
  }

  else
  {
    v29 = 0;
    v26 = v24;
    v30 = v2;
  }

  v31 = *&v1[v9];
  v32 = sub_100028DA0(0, 1, 0.0);

  if (v32)
  {
    type metadata accessor for UILayoutPriority(0);
    sub_100603A60(&qword_100AF3610, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.- infix(_:_:)();
    LODWORD(v33) = v45;
    [v32 setPriority:v33];
  }

  [*&v1[v9] setAccessibilityRespondsToUserInteraction:0];
  v34 = *&v1[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_chinView];
  *&v34[OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_delegate + 8] = &off_100A75C38;
  swift_unknownObjectWeakAssign();
  [v30 addArrangedSubview:v34];
  v35 = [v1 traitCollection];
  v36 = [v35 userInterfaceIdiom];

  if (v36 == 5)
  {
    top = NSDirectionalEdgeInsetsZero.top;
    leading = NSDirectionalEdgeInsetsZero.leading;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  else
  {
    leading = -14.0;
    top = -6.0;
    bottom = -6.0;
    trailing = -14.0;
  }

  [v1 hitTestDirectionalInsets];
  [v1 setHitTestDirectionalInsets:?];
  v41 = [v1 contentView];
  [v41 hitTestDirectionalInsets];
  [v41 setHitTestDirectionalInsets:?];

  [v30 hitTestDirectionalInsets];
  [v30 setHitTestDirectionalInsets:?];
  [v34 setHitTestDirectionalInsets:{top, leading, bottom, trailing}];
  sub_10005D6A4();
  sub_1000F24EC(&unk_100AEBEC0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100940080;
  v43 = sub_10002FE80();
  *(v42 + 32) = &type metadata for DynamicGridAspectRatioTrait;
  *(v42 + 40) = v43;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
}

uint64_t sub_10005D2B8()
{
  v0 = sub_10004F2E8();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 viewIfLoaded];
    v3 = [v2 window];

    if (v3)
    {

      v4 = *&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController];
      if (!*(v4 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_viewModel))
      {
        (*((swift_isaMask & *v4) + 0x388))(*&v1[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_model], 0, 1);
      }
    }
  }

  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v6 = [*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container) newBackgroundContext];
  type metadata accessor for AppStoreRatingManager();
  v7 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  sub_100087DE0();
  swift_setDeallocating();

  v8 = OBJC_IVAR____TtC7Journal21AppStoreRatingManager_logger;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);

  return swift_deallocClassInstance();
}

void sub_10005D6A4()
{
  v1 = [v0 contentView];
  v2 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_photoMemoriesBannerView];
  if (v2)
  {
    v3 = type metadata accessor for CanvasPhotosMemoriesBanner();
    v4 = v2;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v4;
  v35 = v3;
  v5 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_reflectionPromptView];
  if (v5)
  {
    v6 = type metadata accessor for CanvasReflectionPromptView();
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v37 = 0;
    v38 = 0;
  }

  v36 = v7;
  v39 = v6;
  v8 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_assetGridView];
  v41 = type metadata accessor for CanvasGridView();
  v40 = v8;
  v9 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_slimAssetView];
  if (v9)
  {
    v10 = type metadata accessor for SlimAssetView();
  }

  else
  {
    v10 = 0;
    v43 = 0;
    v44 = 0;
  }

  v42 = v9;
  v45 = v10;
  v11 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_bundleTitle];
  v47 = type metadata accessor for TimelineMomentsTitleView();
  v46 = v11;
  v12 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView];
  v49 = type metadata accessor for TimelineTextView();
  v48 = v12;
  v13 = *&v0[OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_chinView];
  v51 = type metadata accessor for JournalEntryCellChinView();
  v50 = v13;
  v14 = v2;
  v15 = v5;
  v16 = v8;
  v17 = v9;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = &_swiftEmptyArrayStorage;
  for (i = 32; i != 256; i += 32)
  {
    sub_10005D974(&v31[i], &v29);
    v26 = v29;
    v27 = v30;
    if (*(&v30 + 1))
    {
      sub_10002432C(&v26, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10005DA70(0, *(v21 + 2) + 1, 1, v21);
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_10005DA70((v23 > 1), v24 + 1, 1, v21);
      }

      *(v21 + 2) = v24 + 1;
      sub_10002432C(v28, &v21[32 * v24 + 32]);
    }

    else
    {
      sub_100004F84(&v26, &qword_100AD13D0);
    }
  }

  sub_1000F24EC(&qword_100AD13D0);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setAccessibilityElements:{isa, v26, v27}];
}

uint64_t sub_10005D974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD13D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005DA30()
{

  return swift_deallocClassInstance();
}

char *sub_10005DA70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&unk_100AE88B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10005DB98(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  sub_10005DCA0(a3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

id sub_10005DCA0(SEL *a1)
{
  v3 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v21 - v10;
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  if ([v3 isTip])
  {
    return 0;
  }

  result = [v3 *a1];
  if (result)
  {
    v15 = result;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v13, v11, v4);
    Date.init()();
    v16 = sub_10005EBBC(v8);
    v18 = v17;
    v19 = *(v5 + 8);
    v19(v8, v4);
    if (v18)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    v19(v13, v4);
    return v20;
  }

  return result;
}

uint64_t sub_10005DE5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v66 = a3;
  v5 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v5 - 8);
  v70 = &v56[-v6];
  v69 = type metadata accessor for UTType();
  v7 = *(v69 - 8);
  v8 = __chkstk_darwin(v69);
  v68 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v61 = &v56[-v10];
  v65 = type metadata accessor for FileStoreConfiguration();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v75);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v80 = &v56[-v16];
  v17 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v17 - 8);
  v79 = &v56[-v18];
  v81 = type metadata accessor for URL();
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for AssetAttachment.AssetType(0);
  v22 = __chkstk_darwin(v21);
  v82 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v56[-v24];
  v26 = *(v3 + OBJC_IVAR____TtC7Journal5Asset_attachments);
  if (v26 >> 62)
  {
LABEL_47:
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v81;
  if (v27)
  {
    v29 = v11;
    v11 = 0;
    v87 = v26 & 0xFFFFFFFFFFFFFF8;
    v88 = v26 & 0xC000000000000001;
    v77 = (v72 + 56);
    v60 = (v29 + 8);
    v73 = (v72 + 32);
    v76 = (v72 + 48);
    v63 = (v7 + 48);
    v59 = (v7 + 32);
    v58 = (v7 + 8);
    v62 = (v72 + 8);
    v78 = a2;
    v74 = v15;
    v67 = v20;
    v84 = v21;
    v85 = v27;
    v86 = v26;
    while (1)
    {
      if (v88)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else
      {
        if (v11 >= *(v87 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = *(v26 + 8 * v11 + 32);

        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_40;
        }
      }

      v31 = OBJC_IVAR____TtC7Journal15AssetAttachment_assetType;
      sub_100068B30(v7 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v25, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        v33 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_1000691A0(v25, v33);
      if (a2)
      {
LABEL_42:

LABEL_43:
        sub_1000A7D30(v66);
      }

      v41 = *(v7 + 16);
LABEL_20:
      if (v41 == v83)
      {
        goto LABEL_42;
      }

      v21 = v84;
LABEL_6:
      v26 = v86;
      ++v11;
      if (v30 == v85)
      {
        goto LABEL_41;
      }
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {

      sub_1000691A0(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v34 = v82;
    sub_100068B30(v7 + v31, v82, type metadata accessor for AssetAttachment.AssetType);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = v35;
    if (v35 <= 1)
    {
      v38 = v34;
      v39 = v80;
      if (v36)
      {
        sub_1000691A0(v82, type metadata accessor for AssetAttachment.AssetType);
        v46 = 1;
        v42 = v79;
LABEL_27:
        (*v77)(v42, v46, 1, v28);
        v47 = *(sub_1000F24EC(&qword_100AD33B8) + 48);
        if ((*v76)(v42, 1, v28) == 1)
        {

          sub_100004F84(v42, &unk_100AD6DD0);
          v21 = v84;
          goto LABEL_37;
        }

        v71 = v47;
        (*v73)(v20, v42, v28);
        URL.pathExtension.getter();
        v48 = v68;
        static UTType.data.getter();
        v49 = v70;
        UTType.init(filenameExtension:conformingTo:)();
        v50 = v69;
        if ((*v63)(v49, 1, v69) == 1)
        {

          v28 = v81;
          (*v62)(v20, v81);
          sub_100004F84(v49, &unk_100AD7C40);
          goto LABEL_36;
        }

        v51 = v61;
        (*v59)(v61, v49, v50);
        static UTType.image.getter();
        v57 = UTType.conforms(to:)();
        v52 = *v58;
        (*v58)(v48, v50);
        v53 = v51;
        v20 = v67;
        v52(v53, v50);
        v28 = v81;
        (*v62)(v20, v81);
        if ((v57 & 1) == 0)
        {

LABEL_36:
          v15 = v74;
          v21 = v84;
          v47 = v71;
LABEL_37:
          sub_1000691A0(&v25[v47], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          a2 = v78;
          goto LABEL_6;
        }

        v15 = v74;
        v54 = v71;
        if (v78)
        {

          sub_1000691A0(&v25[v54], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          goto LABEL_43;
        }

        v41 = *(v7 + 16);
        sub_1000691A0(&v25[v71], type metadata accessor for AssetAttachment.AssetType.FilePathType);
        a2 = v78;
        goto LABEL_20;
      }
    }

    else
    {
      v37 = v35 - 2;
      v38 = v34;
      v39 = v80;
      if (v37 >= 2)
      {
        v40 = v82;

        v38 = &v40[*(sub_1000F24EC(&qword_100AD33B8) + 48)];
      }
    }

    sub_100048F04(v38, v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    sub_100068B30(v39, v15, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000691A0(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v42 = v79;
      (*v73)(v79, v15, v28);
    }

    else
    {
      v43 = v64;
      static FileStoreConfiguration.shared.getter();
      v44 = v79;
      FileStoreConfiguration.getAttachmentURL(from:)();
      v28 = v81;

      v45 = v43;
      v15 = v74;
      (*v60)(v45, v65);
      v42 = v44;
      v20 = v67;
      sub_1000691A0(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v46 = 0;
    goto LABEL_27;
  }

LABEL_41:

  return (*(v72 + 56))(v66, 1, 1, v28);
}

uint64_t sub_10005E894(char a1, char a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  v57 = a14;
  v58 = a10;
  v29 = type metadata accessor for IndexPath();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MosaicLayout.Attributes();
  sub_1000F24EC(&unk_100AD8A90);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100940050;
  *(v33 + 32) = 0;
  swift_beginAccess();
  *(v33 + 40) = *(a3 + 16);
  IndexPath.init(arrayLiteral:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v35 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:isa];

  (*(v30 + 8))(v32, v29);
  v36 = v35;
  v59 = a5;
  v60 = a6;
  v61 = a7;
  [v36 setFrame:{a5, a6, a7, a8}];
  v36[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = a1;
  if ((a2 & 4) != 0)
  {
    v37 = a9;
  }

  else
  {
    v37 = a11;
  }

  v39 = v57;
  v38 = v58;
  if ((a2 & 4) != 0)
  {
    v40 = v58;
  }

  else
  {
    v40 = a12;
  }

  if ((a2 & 8) != 0)
  {
    v41 = a9;
  }

  else
  {
    v41 = a11;
  }

  if ((a2 & 8) == 0)
  {
    v38 = a12;
  }

  if ((a2 & 2) != 0)
  {
    v42 = a13;
  }

  else
  {
    v42 = a11;
  }

  if ((a2 & 2) != 0)
  {
    v43 = v57;
  }

  else
  {
    v43 = a12;
  }

  if (a2)
  {
    v44 = a13;
  }

  else
  {
    v44 = a11;
  }

  if ((a2 & 1) == 0)
  {
    v39 = a12;
  }

  v45 = &v36[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
  *v45 = v37;
  v45[1] = v40;
  v45[2] = v41;
  v45[3] = v38;
  v45[4] = v42;
  v45[5] = v43;
  v45[6] = v44;
  v45[7] = v39;
  v46 = OBJC_IVAR____TtC7Journal12MosaicLayout_cachedAttributes;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a4 + v46) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + v46) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v47 = (a4 + OBJC_IVAR____TtC7Journal12MosaicLayout_contentBounds);
  v63.origin.x = v59;
  v63.origin.y = v60;
  v63.size.width = v61;
  v63.size.height = a8;
  v62 = CGRectUnion(*(a4 + OBJC_IVAR____TtC7Journal12MosaicLayout_contentBounds), v63);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;

  *v47 = x;
  v47[1] = y;
  v47[2] = width;
  v47[3] = height;
  result = swift_beginAccess();
  v53 = *(a3 + 16);
  v54 = __OFADD__(v53, 1);
  v55 = v53 + 1;
  if (v54)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v55;
  }

  return result;
}

uint64_t sub_10005EBBC(uint64_t a1)
{
  v142 = a1;
  v110 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v103 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  v5 = v4;
  __chkstk_darwin(v3);
  v115 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for TimeZone();
  v134 = *(v139 - 8);
  __chkstk_darwin(v139);
  v126 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v125 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v10 - 8);
  v124 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD4280);
  __chkstk_darwin(v12 - 8);
  v123 = &v103 - v13;
  v14 = sub_1000F24EC(&qword_100AD4288);
  __chkstk_darwin(v14 - 8);
  v122 = &v103 - v15;
  v129 = type metadata accessor for Date.FormatStyle();
  v128 = *(v129 - 8);
  v16 = __chkstk_darwin(v129);
  v107 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v114 = &v103 - v19;
  __chkstk_darwin(v18);
  v127 = &v103 - v20;
  v21 = sub_1000F24EC(&qword_100ADA618);
  __chkstk_darwin(v21 - 8);
  v138 = &v103 - v22;
  v23 = sub_1000F24EC(&qword_100ADA620);
  __chkstk_darwin(v23 - 8);
  v133 = &v103 - v24;
  v145 = type metadata accessor for DateComponents();
  v148 = *(v145 - 8);
  __chkstk_darwin(v145);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000F24EC(&unk_100AD4790);
  v28 = __chkstk_darwin(v27 - 8);
  v131 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v132 = &v103 - v31;
  __chkstk_darwin(v30);
  v141 = &v103 - v32;
  v33 = type metadata accessor for Date();
  v143 = *(v33 - 8);
  v34 = __chkstk_darwin(v33);
  v130 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v135 = &v103 - v37;
  __chkstk_darwin(v36);
  v140 = &v103 - v38;
  v146 = type metadata accessor for Calendar();
  v144 = *(v146 - 8);
  v39 = __chkstk_darwin(v146);
  v121 = &v103 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v103 - v41;
  static Calendar.current.getter();
  sub_1000F24EC(&qword_100AD3BF0);
  v43 = *(v4 + 72);
  v44 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100942000;
  v46 = v45 + v44;
  v116 = v5;
  v47 = *(v5 + 104);
  v112 = enum case for Calendar.Component.year(_:);
  v47(v46);
  (v47)(v46 + v43, enum case for Calendar.Component.month(_:), v3);
  v48 = v33;
  v49 = v143;
  v113 = v5 + 104;
  v111 = v47;
  (v47)(v46 + 2 * v43, enum case for Calendar.Component.day(_:), v3);
  sub_10005FF80(v45);
  swift_setDeallocating();
  v117 = v3;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v50 = v141;
  v147 = v42;
  Calendar.date(from:)();
  v136 = *(v148 + 8);
  v137 = v26;
  v51 = v26;
  v52 = v50;
  v148 += 8;
  v136(v51, v145);
  v53 = *(v49 + 48);
  if (v53(v50, 1, v48) == 1)
  {
    (*(v144 + 8))(v147, v146);
    v54 = v50;
LABEL_7:
    sub_100004F84(v54, &unk_100AD4790);
    return 0;
  }

  v55 = *(v49 + 32);
  v56 = v140;
  v106 = v49 + 32;
  v105 = v55;
  v55(v140, v52, v48);
  v57 = v133;
  v104 = *(v144 + 56);
  v104(v133, 1, 1, v146);
  v141 = v53;
  v58 = v48;
  v134 = *(v134 + 56);
  (v134)(v138, 1, 1, v139);
  v59 = v137;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v60 = v132;
  Calendar.date(byAdding:to:wrappingComponents:)();
  v61 = v59;
  v62 = v58;
  v63 = v141;
  v136(v61, v145);
  if (v63(v60, 1, v62) == 1)
  {
    (*(v49 + 8))(v56, v62);
    (*(v144 + 8))(v147, v146);
    v54 = v60;
    goto LABEL_7;
  }

  v64 = v56;
  v65 = v60;
  v66 = v105;
  v105(v135, v65, v62);
  v104(v57, 1, 1, v146);
  (v134)(v138, 1, 1, v139);
  v67 = v62;
  v68 = v137;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v69 = v131;
  Calendar.date(byAdding:to:wrappingComponents:)();
  v136(v68, v145);
  v70 = v67;
  if (v63(v69, 1, v67) == 1)
  {
    v71 = *(v143 + 8);
    v71(v135, v67);
    v71(v64, v67);
    (*(v144 + 8))(v147, v146);
    v54 = v69;
    goto LABEL_7;
  }

  v73 = v130;
  v66(v130, v69, v67);
  v74 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v74 - 8) + 56))(v122, 1, 1, v74);
  v75 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v75 - 8) + 56))(v123, 1, 1, v75);
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  v76 = v127;
  Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
  v77 = v135;
  v78 = static Date.< infix(_:_:)();
  v79 = v146;
  if (v78)
  {
    sub_100067EB4(&qword_100AD2698, &type metadata accessor for Date);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      if (qword_100AD0720 != -1)
      {
        swift_once();
      }

      v97 = xmmword_100B30A20;
      v98 = *(v128 + 8);

      v98(v76, v129);
      v99 = *(v143 + 8);
      v99(v73, v67);
      v99(v77, v67);
      v99(v140, v67);
      v100 = v144;
      goto LABEL_23;
    }
  }

  if (static Date.< infix(_:_:)())
  {
    sub_100067EB4(&qword_100AD2698, &type metadata accessor for Date);
    if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
    {
      v100 = v144;
      if (qword_100AD0728 != -1)
      {
        swift_once();
      }

      v97 = xmmword_100B30A30;
      v101 = *(v128 + 8);

      v101(v76, v129);
      v102 = *(v143 + 8);
      v102(v73, v70);
      v102(v77, v70);
      v102(v140, v70);
LABEL_23:
      (*(v100 + 8))(v147, v79);
      return v97;
    }
  }

  v80 = v115;
  v81 = v117;
  (v111)(v115, v112, v117);
  v82 = Calendar.compare(_:to:toGranularity:)();
  (*(v116 + 8))(v80, v81);
  v83 = v144;
  if (v82 || (static Date.< infix(_:_:)() & 1) == 0)
  {
    v89 = v118;
    static Date.FormatStyle.Symbol.Month.wide.getter();
    v90 = v107;
    Date.FormatStyle.month(_:)();
    (*(v119 + 8))(v89, v120);
    v91 = v108;
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    v92 = v114;
    Date.FormatStyle.year(_:)();
    (*(v109 + 8))(v91, v110);
    v93 = *(v128 + 8);
    v94 = v90;
    v95 = v129;
    v93(v94, v129);
    sub_100067EB4(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
    Date.formatted<A>(_:)();
    v93(v92, v95);
    v93(v76, v95);
    v96 = *(v143 + 8);
    v96(v130, v70);
    v96(v135, v70);
    v96(v140, v70);
    (*(v83 + 8))(v147, v79);
  }

  else
  {
    v84 = v118;
    static Date.FormatStyle.Symbol.Month.wide.getter();
    v85 = v114;
    Date.FormatStyle.month(_:)();
    (*(v119 + 8))(v84, v120);
    sub_100067EB4(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
    v86 = v129;
    Date.formatted<A>(_:)();
    v87 = *(v128 + 8);
    v87(v85, v86);
    v87(v76, v86);
    v88 = *(v143 + 8);
    v88(v130, v70);
    v88(v77, v70);
    v88(v140, v70);
    (*(v83 + 8))(v147, v79);
  }

  return v149;
}

void *sub_10005FF80(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000F24EC(&qword_100ADB720);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100067EB4(&qword_100ADB710, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100067EB4(&qword_100ADB718, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1000602A0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v2 - 8);
  v4 = &v1020 - v3;
  v5 = type metadata accessor for AssetType();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v1020 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v1068 = &v1020 - v11;
  v12 = __chkstk_darwin(v10);
  v1075 = &v1020 - v13;
  __chkstk_darwin(v12);
  v1077 = &v1020 - v14;
  v15 = type metadata accessor for IndexPath();
  v1096 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v1067 = &v1020 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v1091 = &v1020 - v18;
  v1092 = type metadata accessor for JournalFeatureFlags();
  v19 = *(v1092 - 8);
  v20 = __chkstk_darwin(v1092);
  v1074 = &v1020 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v1073 = &v1020 - v23;
  v24 = __chkstk_darwin(v22);
  v1072 = &v1020 - v25;
  v26 = __chkstk_darwin(v24);
  v1071 = &v1020 - v27;
  v28 = __chkstk_darwin(v26);
  v1080 = &v1020 - v29;
  __chkstk_darwin(v28);
  v31 = (&v1020 - v30);
  v32 = type metadata accessor for MosaicLayout();
  v1104.receiver = v1;
  v1104.super_class = v32;
  objc_msgSendSuper2(&v1104, "prepareLayout");
  v33 = [v1 collectionView];
  if (v33)
  {
    v34 = v33;
    v1062 = v9;
    v1070 = v5;
    v35 = OBJC_IVAR____TtC7Journal12MosaicLayout_cachedAttributes;
    swift_beginAccess();
    v1093 = v35;
    *&v1[v35] = _swiftEmptyArrayStorage;

    v36 = v34;
    [v36 bounds];
    Width = CGRectGetWidth(v1122);
    v38 = &v1[OBJC_IVAR____TtC7Journal12MosaicLayout_contentBounds];
    v38->origin.x = 0.0;
    v38->origin.y = 0.0;
    v38->size.width = Width;
    v38->size.height = 0.0;
    if ([v36 numberOfSections] < 1)
    {

LABEL_325:
      return;
    }

    v1098 = v15;
    v1058 = v4;
    ObjCClassFromMetadata = [v36 numberOfItemsInSection:0];
    [v36 bounds];
    v41 = v40;

    v1069 = OBJC_IVAR____TtC7Journal12MosaicLayout_enforceShowCompressedAssetGrid;
    LODWORD(v15) = v1[OBJC_IVAR____TtC7Journal12MosaicLayout_enforceShowCompressedAssetGrid];
    x = (v41 + -8.0) * 0.5 + 4.0;
    y = x * 1.5;
    v1081 = v36;
    if ((v15 & 1) == 0)
    {
      v36 = v1092;
      if (qword_100AD0A28 != -1)
      {
        goto LABEL_334;
      }

      goto LABEL_7;
    }

    v44 = 5;
    v36 = v1092;
LABEL_8:
    v45 = v19[13];
    v1086 = enum case for JournalFeatureFlags.portraitAssetGrid(_:);
    v1085 = v19 + 13;
    v1084 = v45;
    v45(v31);
    v46 = JournalFeatureFlags.isEnabled.getter();
    v47 = v36;
    v48 = v46;
    v49 = v19[1];
    v1087 = v19 + 1;
    v1083 = v49;
    v49(v31, v47);
    v50 = x + x;
    if (v44 >= ObjCClassFromMetadata)
    {
      v50 = x;
    }

    if ((v48 & ~v15 & ((ObjCClassFromMetadata - 6) < 4)) != 0)
    {
      v51 = y;
    }

    else
    {
      v51 = v50;
    }

    v52 = v1093;
    if (ObjCClassFromMetadata == 1)
    {
      if (v1[OBJC_IVAR____TtC7Journal12MosaicLayout_sizeType] == 2)
      {

LABEL_17:
        v51 = v51 * 0.5;
        v36 = v1081;
        goto LABEL_25;
      }

      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v53)
      {
        goto LABEL_17;
      }
    }

    if (v1[OBJC_IVAR____TtC7Journal12MosaicLayout_sizeType] > 1u)
    {
      v36 = v1081;
    }

    else
    {
      v36 = v1081;
      if (!v1[OBJC_IVAR____TtC7Journal12MosaicLayout_sizeType])
      {

        goto LABEL_23;
      }
    }

    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v54 & 1) == 0)
    {
LABEL_24:
      v52 = v1093;
LABEL_25:
      v55 = swift_allocObject();
      v1097 = v55;
      *(v55 + 16) = 0;
      v19 = (v55 + 16);
      v56 = *&v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius];
      v57 = *&v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius + 8];
      v58 = v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius + 16];
      if (v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius + 16])
      {
        v56 = 4.0;
      }

      v1100 = v56;
      if (v58)
      {
        v59 = 4.0;
      }

      else
      {
        v59 = v57;
      }

      v1099 = v59;
      v60 = *&v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius];
      v61 = *&v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius + 8];
      v62 = v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius + 16];
      if (v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius + 16])
      {
        v60 = 4.0;
      }

      v1101 = v60;
      if (v62)
      {
        v63 = 4.0;
      }

      else
      {
        v63 = v61;
      }

      v1102 = v63;
      v64 = [v36 delegate];
      if (v64)
      {
        v65 = v64;
        swift_getObjectType();
        v1076 = swift_conformsToProtocol2();
        if (v1076)
        {
          v1078 = v65;
LABEL_40:
          v1079 = OBJC_IVAR____TtC7Journal12MosaicLayout_isExpanded;
          v1090 = OBJC_IVAR____TtC7Journal12MosaicLayout_sizeType;
          swift_beginAccess();
          v66 = *v19;
          if (*v19 < ObjCClassFromMetadata)
          {
            ++v1096;
            v1032 = (v6 + 2);
            v1064 = v51 * 0.5;
            v1039 = (v6 + 7);
            v1040 = v6 + 13;
            v1034 = (v6 + 4);
            v1059 = (v6 + 1);
            v1043 = v51 * 0.666666667;
            v1036 = 0.333333333;
            v1042 = v51 * 0.333333333;
            v1066 = v41 * 0.5;
            v1033 = enum case for AssetType.unknown(_:);
            v1041 = enum case for AssetType.multiPinMap(_:);
            v1035 = enum case for AssetType.genericMap(_:);
            v1095 = xmmword_100940050;
            v67 = 0;
            __asm { FMOV            V1.2D, #4.0 }

            v1082 = _Q1;
            v15 = v1091;
            v1063 = ObjCClassFromMetadata;
            v1089 = v41;
            v1088 = v51;
            v1094 = v19;
            v6 = v1079;
            v1065 = v38;
            do
            {
              if (ObjCClassFromMetadata == 1)
              {
                v82 = v1[v1090];
                type metadata accessor for MosaicLayout.Attributes();
                sub_1000F24EC(&unk_100AD8A90);
                v83 = swift_allocObject();
                *(v83 + 16) = v1095;
                *(v83 + 32) = 0;
                *(v83 + 40) = v66;
                IndexPath.init(arrayLiteral:)();
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                v85 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:isa];

                (*v1096)(v15, v1098);
                v86 = v85;
                [v86 setFrame:{0.0, 0.0, v41, v51}];
                v86[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = v82;
                v52 = v1093;
                v87 = &v86[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                v88 = v1101;
                v89 = v1102;
                *v87 = v1101;
                v87[1] = v89;
                v87[2] = v88;
                v87[3] = v89;
                v90 = v1100;
                v91 = v1099;
                v87[4] = v1100;
                v87[5] = v91;
                v87[6] = v90;
                v87[7] = v91;
                swift_beginAccess();
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  v52 = v1093;
                }

                v31 = &v1[v52];
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                swift_endAccess();
                v1226.origin.x = 0.0;
                v1226.origin.y = 0.0;
                v1226.size.width = v41;
                v1226.size.height = v51;
                v1123 = CGRectUnion(*v38, v1226);
                x = v1123.origin.x;
                y = v1123.origin.y;
                v92 = v1123.size.width;
                height = v1123.size.height;

                v38->origin.x = x;
                v38->origin.y = y;
                v38->size.width = v92;
                v38->size.height = height;
                v19 = v1094;
                if (__OFADD__(*v1094, 1))
                {
                  __break(1u);
LABEL_328:
                  __break(1u);
LABEL_329:
                  __break(1u);
LABEL_330:
                  __break(1u);
LABEL_331:
                  __break(1u);
LABEL_332:
                  __break(1u);
LABEL_333:
                  __break(1u);
LABEL_334:
                  swift_once();
LABEL_7:
                  v44 = qword_100B30F70;
                  goto LABEL_8;
                }

                ++*v1094;
                goto LABEL_45;
              }

              if (ObjCClassFromMetadata <= 6)
              {
                if (ObjCClassFromMetadata > 3)
                {
                  if (ObjCClassFromMetadata != 4)
                  {
                    if (ObjCClassFromMetadata == 5)
                    {
                      sub_100069024(&v1105.origin, 0.0, 0.0, v41, v51);
                      v264 = v1105.origin.x;
                      v41 = v1105.origin.y;
                      v265 = v1105.size.width;
                      v266 = v1105.size.height;
                      v267 = v1106;
                      v268 = v1107;
                      v1046 = v1109;
                      v1047 = v1108;
                      v1050 = v1111;
                      v1051 = v1110;
                      v1048 = v1113;
                      v1049 = v1112;
                      v1054 = v1115;
                      v1055 = v1114;
                      v1052 = v1117;
                      v1053 = v1116;
                      v1060 = v1119;
                      v1061 = v1118;
                      v1056 = v1121;
                      v1057 = v1120;
                      type metadata accessor for MosaicLayout.Attributes();
                      v6 = v19;
                      sub_1000F24EC(&unk_100AD8A90);
                      v269 = swift_allocObject();
                      *(v269 + 16) = v1095;
                      v270 = *v19;
                      *(v269 + 32) = 0;
                      *(v269 + 40) = v270;
                      IndexPath.init(arrayLiteral:)();
                      v271 = IndexPath._bridgeToObjectiveC()().super.isa;
                      v272 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:v271];

                      (*v1096)(v15, v1098);
                      v19 = v272;
                      [v19 setFrame:{v264, v41, v265, v266}];
                      *(v19 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType) = 3;
                      v273 = (v19 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii);
                      v274 = v1102;
                      *v273 = v1101;
                      v273[1] = v274;
                      v275 = v1082;
                      *(v273 + 1) = v1082;
                      *(v273 + 2) = v275;
                      *&v275 = v1099;
                      v273[6] = v1100;
                      *(v273 + 7) = v275;
                      swift_beginAccess();
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                        v52 = v1093;
                      }

                      v31 = &v1[v52];
                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      swift_endAccess();
                      v1232.origin.x = v264;
                      v1232.origin.y = v41;
                      v1232.size.width = v265;
                      v1232.size.height = v266;
                      v1147 = CGRectUnion(*v38, v1232);
                      x = v1147.origin.x;
                      y = v1147.origin.y;
                      v276 = v1147.size.width;
                      v277 = v1147.size.height;

                      v38->origin.x = x;
                      v38->origin.y = y;
                      v38->size.width = v276;
                      v38->size.height = v277;
                      if (__OFADD__(*v6, 1))
                      {
                        goto LABEL_328;
                      }

                      v19 = v6;
                      v278 = v1097;
                      *(v1097 + 16) = *v6 + 1;
                      v279 = v1099;
                      v280 = v1100;
                      v281 = v1101;
                      v282 = v1102;
                      sub_10005E894(6, 0, v278, v1, v267, v268, v1047, v1046, v1101, v1102, 4.0, 4.0, v1100, v1099);
                      sub_10005E894(6, 0, v278, v1, v1051, v1050, v1049, v1048, v281, v282, 4.0, 4.0, v280, v279);
                      sub_10005E894(6, 2, v278, v1, v1055, v1054, v1053, v1052, v281, v282, 4.0, 4.0, v280, v279);
                      sub_10005E894(6, 8, v278, v1, v1061, v1060, v1057, v1056, v281, v282, 4.0, 4.0, v280, v279);
                      v41 = v1089;
                      v51 = v1088;
                      v6 = v1079;
                    }

                    else
                    {
                      v111 = v36;
                      v112 = v1071;
                      v113 = v6;
                      v114 = v1092;
                      v1084(v1071, v1086, v1092, 0);
                      v115 = JournalFeatureFlags.isEnabled.getter();
                      v116 = v114;
                      v6 = v113;
                      v1083(v112, v116);
                      if ((v115 & 1) != 0 && (v1[v1069] != 1 || *(v113 + v1) == 1))
                      {
                        v117 = v1078;
                        v36 = v111;
                        if (sub_1003C1DC4(4, v1078) & 1) != 0 && (sub_1003C1DC4(5, v117))
                        {
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1126.origin.x = 0.0;
                          v1126.origin.y = 0.0;
                          v1126.size.width = v41;
                          v1126.size.height = v51;
                          v118 = v1066;
                          CGRectDivide(v1126, &v1105, &v1103, v1066, CGRectMinXEdge);
                          v119 = v1105.origin.x;
                          v120 = v1105.origin.y;
                          v121 = v1105.size.width;
                          v122 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1127.origin.x = 0.0;
                          v1127.origin.y = 0.0;
                          v1127.size.width = v1089;
                          v1127.size.height = v1088;
                          CGRectDivide(v1127, &v1105, &v1103, v118, CGRectMaxXEdge);
                          v1060 = v1105.origin.y;
                          v1061 = v1105.origin.x;
                          v1056 = v1105.size.height;
                          v1057 = v1105.size.width;
                          v123 = v122 * v1036;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1128.origin.x = v119;
                          v1128.origin.y = v120;
                          v1128.size.width = v121;
                          v1128.size.height = v122;
                          CGRectDivide(v1128, &v1105, &v1103, v122 * 0.666666667, CGRectMinYEdge);
                          v124 = v1105.origin.x;
                          v125 = v1105.origin.y;
                          v126 = v1105.size.width;
                          v1055 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1129.origin.x = v119;
                          v1129.origin.y = v120;
                          v1129.size.width = v121;
                          v1129.size.height = v122;
                          CGRectDivide(v1129, &v1105, &v1103, v123, CGRectMaxYEdge);
                          v127 = v1105.origin.x;
                          v128 = v1105.origin.y;
                          v129 = v1105.size.width;
                          v130 = v1105.size.height;
                          v131 = v1097;
                          sub_10005E894(3, 1, v1097, v1, v124, v125, v126, v1055, v1101, v1102, 4.0, 4.0, v1100, v1099);
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1130.origin.x = v127;
                          v1130.origin.y = v128;
                          v1130.size.width = v129;
                          v1130.size.height = v130;
                          CGRectDivide(v1130, &v1105, &v1103, v129 * 0.5, CGRectMinXEdge);
                          v132 = v1105.origin.x;
                          v133 = v1105.origin.y;
                          v134 = v1105.size.width;
                          v1054 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1131.origin.x = v127;
                          v1131.origin.y = v128;
                          v1131.size.width = v129;
                          v1131.size.height = v130;
                          CGRectDivide(v1131, &v1105, &v1103, v129 * 0.5, CGRectMaxXEdge);
                          v1055 = v1105.origin.x;
                          v135 = v1105.origin.y;
                          v136 = v1105.size.width;
                          v137 = v1105.size.height;
                          v138 = v1099;
                          v139 = v1100;
                          v140 = v132;
                          v141 = v133;
                          v142 = v1101;
                          v143 = v1102;
                          sub_10005E894(6, 4, v131, v1, v140, v141, v134, v1054, v1101, v1102, 4.0, 4.0, v1100, v1099);
                          sub_10005E894(6, 0, v131, v1, v1055, v135, v136, v137, v142, v143, 4.0, 4.0, v139, v138);
                          v145 = v1056;
                          v144 = v1057;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v147 = v1060;
                          v146 = v1061;
                          v1132.origin.x = v1061;
                          v1132.origin.y = v1060;
                          v1132.size.width = v1057;
                          v1132.size.height = v1056;
                          CGRectDivide(v1132, &v1105, &v1103, v1056 * 0.333333333, CGRectMinYEdge);
                          v1055 = v1105.origin.x;
                          v148 = v1105.origin.y;
                          v149 = v1105.size.width;
                          v150 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1133.origin.x = v146;
                          v1133.origin.y = v147;
                          v1133.size.width = v144;
                          v1133.size.height = v145;
                          CGRectDivide(v1133, &v1105, &v1103, v145 * 0.666666667, CGRectMaxYEdge);
                          v151 = v1105.origin.x;
                          v152 = v1105.origin.y;
                          v153 = v1105.size.width;
                          v154 = v1105.size.height;
                          sub_10005E894(4, 2, v131, v1, v1055, v148, v149, v150, v1101, v1102, 4.0, 4.0, v1100, v1099);
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1134.origin.x = v151;
                          v1134.origin.y = v152;
                          v1134.size.width = v153;
                          v1134.size.height = v154;
                          CGRectDivide(v1134, &v1105, &v1103, v153 * 0.5, CGRectMinXEdge);
                          v155 = v1105.origin.x;
                          v156 = v1105.origin.y;
                          v157 = v1105.size.width;
                          v1057 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1135.origin.x = v151;
                          v1135.origin.y = v152;
                          v1135.size.width = v153;
                          v1135.size.height = v154;
                          CGRectDivide(v1135, &v1105, &v1103, v153 * 0.5, CGRectMaxXEdge);
                          v1061 = v1105.origin.x;
                          v1060 = v1105.origin.y;
                          v158 = v1105.size.width;
                          v159 = v1105.size.height;
                          v160 = v1099;
                          v161 = v1100;
                          v162 = v155;
                          v163 = v156;
                          v41 = v1089;
                          v164 = v157;
                          v51 = v1088;
                          v165 = v1101;
                          v166 = v1102;
                          sub_10005E894(5, 0, v131, v1, v162, v163, v164, v1057, v1101, v1102, 4.0, 4.0, v1100, v1099);
                          sub_10005E894(5, 8, v131, v1, v1061, v1060, v158, v159, v165, v166, 4.0, 4.0, v161, v160);
                        }

                        else
                        {
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1189.origin.x = 0.0;
                          v1189.origin.y = 0.0;
                          v1189.size.width = v41;
                          v1189.size.height = v51;
                          CGRectDivide(v1189, &v1105, &v1103, v1043, CGRectMinYEdge);
                          v590 = v1105.origin.x;
                          v591 = v1105.origin.y;
                          v592 = v1105.size.width;
                          v593 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1190.origin.x = 0.0;
                          v1190.origin.y = 0.0;
                          v1190.size.width = v41;
                          v1190.size.height = v51;
                          CGRectDivide(v1190, &v1105, &v1103, v1042, CGRectMaxYEdge);
                          v1056 = v1105.size.width;
                          v1057 = v1105.origin.y;
                          v1060 = v1105.origin.x;
                          v1061 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1191.origin.x = v590;
                          v1191.origin.y = v591;
                          v1191.size.width = v592;
                          v1191.size.height = v593;
                          CGRectDivide(v1191, &v1105, &v1103, v592 * 0.5, CGRectMinXEdge);
                          v1054 = v1105.origin.y;
                          v1055 = v1105.origin.x;
                          v1052 = v1105.size.height;
                          v1053 = v1105.size.width;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1192.origin.x = v590;
                          v1192.origin.y = v591;
                          v1192.size.width = v592;
                          v1192.size.height = v593;
                          CGRectDivide(v1192, &v1105, &v1103, v592 * 0.5, CGRectMaxXEdge);
                          v594 = v1105.origin.x;
                          v595 = v1105.origin.y;
                          v596 = v1105.size.width;
                          v597 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1193.origin.x = v594;
                          v1193.origin.y = v595;
                          v1193.size.width = v596;
                          v1193.size.height = v597;
                          CGRectDivide(v1193, &v1105, &v1103, v597 * 0.5, CGRectMinYEdge);
                          v1050 = v1105.origin.y;
                          v1051 = v1105.origin.x;
                          v1048 = v1105.size.height;
                          v1049 = v1105.size.width;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1194.origin.x = v594;
                          v1194.origin.y = v595;
                          v1194.size.width = v596;
                          v1194.size.height = v597;
                          CGRectDivide(v1194, &v1105, &v1103, v597 * 0.5, CGRectMaxYEdge);
                          v598 = v1105.origin.x;
                          v599 = v1105.origin.y;
                          v600 = v1105.size.width;
                          v601 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1195.origin.x = v598;
                          v1195.origin.y = v599;
                          v1195.size.width = v600;
                          v1195.size.height = v601;
                          CGRectDivide(v1195, &v1105, &v1103, v600 * 0.5, CGRectMinXEdge);
                          v602 = v1105.origin.y;
                          v1045 = v1105.size.width;
                          v1046 = v1105.origin.x;
                          v1044 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1196.origin.x = v598;
                          v1196.origin.y = v599;
                          v1196.size.width = v600;
                          v1196.size.height = v601;
                          CGRectDivide(v1196, &v1105, &v1103, v600 * 0.5, CGRectMaxXEdge);
                          v603 = v1105.origin.x;
                          v604 = v1105.origin.y;
                          v605 = v1105.size.width;
                          v1047 = v1105.size.height;
                          v606 = v1099;
                          v607 = v1100;
                          v608 = v1097;
                          v609 = v1101;
                          v610 = v1102;
                          sub_10005E894(3, 1, v1097, v1, v1055, v1054, v1053, v1052, v1101, v1102, 4.0, 4.0, v1100, v1099);
                          sub_10005E894(4, 2, v608, v1, v1051, v1050, v1049, v1048, v609, v610, 4.0, 4.0, v607, v606);
                          sub_10005E894(6, 0, v608, v1, v1046, v602, v1045, v1044, v609, v610, 4.0, 4.0, v607, v606);
                          sub_10005E894(6, 0, v608, v1, v603, v604, v605, v1047, v609, v610, 4.0, 4.0, v607, v606);
                          v612 = v1056;
                          v611 = v1057;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v614 = v1060;
                          v613 = v1061;
                          v1197.origin.x = v1060;
                          v1197.origin.y = v1057;
                          v1197.size.width = v1056;
                          v1197.size.height = v1061;
                          CGRectDivide(v1197, &v1105, &v1103, v1056 * 0.5, CGRectMinXEdge);
                          v1055 = v1105.origin.x;
                          v1054 = v1105.origin.y;
                          v1053 = v1105.size.width;
                          v1052 = v1105.size.height;
                          memset(&v1105, 0, sizeof(v1105));
                          memset(&v1103, 0, sizeof(v1103));
                          v1198.origin.x = v614;
                          v1198.origin.y = v611;
                          v1198.size.width = v612;
                          v1198.size.height = v613;
                          CGRectDivide(v1198, &v1105, &v1103, v612 * 0.5, CGRectMaxXEdge);
                          v615 = v1105.origin.x;
                          v616 = v1105.origin.y;
                          v617 = v1105.size.width;
                          v618 = v1105.size.height;
                          v619 = v1101;
                          sub_10005E894(4, 4, v608, v1, v1055, v1054, v1053, v1052, v1101, v610, 4.0, 4.0, v607, v606);
                          v1016 = v607;
                          v1018 = v606;
                          v41 = v1089;
                          v51 = v1088;
                          sub_10005E894(4, 8, v608, v1, v615, v616, v617, v618, v619, v610, 4.0, 4.0, v1016, v1018);
                        }

                        v67 = 0;
                        v19 = v1094;
                        v15 = v1091;
                        goto LABEL_46;
                      }

                      memset(&v1105, 0, sizeof(v1105));
                      memset(&v1103, 0, sizeof(v1103));
                      v1184.origin.x = 0.0;
                      v1184.origin.y = 0.0;
                      v1184.size.width = v41;
                      v1184.size.height = v51;
                      v455 = v1064;
                      CGRectDivide(v1184, &v1105, &v1103, v1064, CGRectMinYEdge);
                      v456 = v1105.origin.x;
                      v457 = v1105.origin.y;
                      v458 = v1105.size.width;
                      v459 = v1105.size.height;
                      memset(&v1105, 0, sizeof(v1105));
                      memset(&v1103, 0, sizeof(v1103));
                      v1185.origin.x = 0.0;
                      v1185.origin.y = 0.0;
                      v1185.size.width = v41;
                      v1185.size.height = v51;
                      CGRectDivide(v1185, &v1105, &v1103, v455, CGRectMaxYEdge);
                      v1060 = v1105.origin.y;
                      v1061 = v1105.origin.x;
                      v1056 = v1105.size.height;
                      v1057 = v1105.size.width;
                      sub_100069024(&v1105.origin, v456, v457, v458, v459);
                      v460 = v1105.origin.x;
                      v461 = v1105.origin.y;
                      v462 = v1105.size.width;
                      v463 = v1105.size.height;
                      v464 = v1106;
                      v465 = v1107;
                      v1037 = v1109;
                      v1038 = v1108;
                      v1046 = v1111;
                      v1047 = v1110;
                      v1044 = v1113;
                      v1045 = v1112;
                      v1050 = v1115;
                      v1051 = v1114;
                      v1048 = v1117;
                      v1049 = v1116;
                      v1054 = v1119;
                      v1055 = v1118;
                      v1052 = v1121;
                      v1053 = v1120;
                      v466 = *(v113 + v1);
                      type metadata accessor for MosaicLayout.Attributes();
                      sub_1000F24EC(&unk_100AD8A90);
                      v467 = swift_allocObject();
                      *(v467 + 16) = v1095;
                      v468 = v1094;
                      v469 = *v1094;
                      *(v467 + 32) = 0;
                      *(v467 + 40) = v469;
                      v470 = v1091;
                      IndexPath.init(arrayLiteral:)();
                      v471 = IndexPath._bridgeToObjectiveC()().super.isa;
                      v472 = [swift_getObjCClassFromMetadata() layoutAttributesForCellWithIndexPath:v471];

                      (*v1096)(v470, v1098);
                      v473 = v472;
                      [v473 setFrame:{v460, v461, v462, v463}];
                      v473[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = 3;
                      _ZF = v466 == 0;
                      v52 = v1093;
                      v475 = v1101;
                      if (!_ZF)
                      {
                        v475 = 4.0;
                      }

                      v476 = v1102;
                      if (!_ZF)
                      {
                        v476 = 4.0;
                      }

                      v477 = &v473[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                      *v477 = v475;
                      v477[1] = v476;
                      v478 = v1082;
                      *(v477 + 1) = v1082;
                      *(v477 + 2) = v478;
                      *&v478 = v1099;
                      v477[6] = v1100;
                      *(v477 + 7) = v478;
                      swift_beginAccess();
                      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                      if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                        v52 = v1093;
                      }

                      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                      swift_endAccess();
                      v1236.origin.x = v460;
                      v1236.origin.y = v461;
                      v1236.size.width = v462;
                      v1236.size.height = v463;
                      v1186 = CGRectUnion(*v38, v1236);
                      v479 = v1186.origin.x;
                      v480 = v1186.origin.y;
                      v481 = v1186.size.width;
                      v482 = v1186.size.height;

                      v38->origin.x = v479;
                      v38->origin.y = v480;
                      v38->size.width = v481;
                      v38->size.height = v482;
                      if (__OFADD__(*v468, 1))
                      {
                        goto LABEL_339;
                      }

                      v19 = v468;
                      v36 = v111;
                      v483 = v1097;
                      *(v1097 + 16) = *v468 + 1;
                      v484 = v1099;
                      v485 = v1100;
                      v486 = v1101;
                      v487 = v1102;
                      sub_10005E894(6, 0, v483, v1, v464, v465, v1038, v1037, v1101, v1102, 4.0, 4.0, v1100, v1099);
                      sub_10005E894(6, 0, v483, v1, v1047, v1046, v1045, v1044, v486, v487, 4.0, 4.0, v485, v484);
                      sub_10005E894(6, 2, v483, v1, v1051, v1050, v1049, v1048, v486, v487, 4.0, 4.0, v485, v484);
                      v6 = v1079;
                      v41 = v1089;
                      v51 = v1088;
                      v15 = v1091;
                      if (v1[v1079] == 1)
                      {
                        v488 = _swiftEmptyArrayStorage[2];
                        v489 = v1054;
                        v490 = v1055;
                        v492 = v1052;
                        v491 = v1053;
                        v493 = 0;
                        if (v488)
                        {
                          v494 = &_swiftEmptyArrayStorage[4];
                          do
                          {
                            v496 = *v494++;
                            v495 = v496;
                            if ((v496 & ~v493) == 0)
                            {
                              v495 = 0;
                            }

                            v493 |= v495;
                            --v488;
                          }

                          while (v488);
                        }
                      }

                      else
                      {
                        LOBYTE(v493) = 8;
                        v489 = v1054;
                        v490 = v1055;
                        v492 = v1052;
                        v491 = v1053;
                      }

                      sub_10005E894(6, v493, v1097, v1, v490, v489, v491, v492, v1101, v1102, 4.0, 4.0, v1100, v1099);
                      v585 = 2;
                      v586 = 0;
                      v587 = &qword_100A58F28;
                      do
                      {
                        v589 = *v587++;
                        v588 = v589;
                        if ((v589 & ~v586) == 0)
                        {
                          v588 = 0;
                        }

                        v586 |= v588;
                        --v585;
                      }

                      while (v585);
                      sub_10005E894(1, v586, v1097, v1, v1061, v1060, v1057, v1056, v1101, v1102, 4.0, 4.0, v1100, v1099);
                    }

                    goto LABEL_45;
                  }

                  v1105.origin = v67;
                  v1105.size = v67;
                  v1103.origin = v67;
                  v1103.size = v67;
                  v1161.origin.x = 0.0;
                  v1161.origin.y = 0.0;
                  v1161.size.width = v41;
                  v1161.size.height = v51;
                  v335 = v1066;
                  CGRectDivide(v1161, &v1105, &v1103, v1066, CGRectMinXEdge);
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1162.origin.x = 0.0;
                  v1162.origin.y = 0.0;
                  v1162.size.width = v41;
                  v1162.size.height = v51;
                  CGRectDivide(v1162, &v1105, &v1103, v335, CGRectMaxXEdge);
                  v336 = v41;
                  v337 = v1105.origin.x;
                  v338 = v1105.origin.y;
                  v339 = v1105.size.width;
                  v340 = v1105.size.height;
                  v341 = sub_100095150(0.0, 0.0, v336, v51);
                  v343 = v342;
                  v345 = v344;
                  v347 = v346;
                  v348 = v1080;
                  v349 = v1092;
                  (v1084)(v1080, v1086, v1092);
                  v350 = JournalFeatureFlags.isEnabled.getter();
                  v1083(v348, v349);
                  v1056 = v343;
                  v1057 = v347;
                  if (v350)
                  {
                    v351 = v1078;
                    LODWORD(v1055) = sub_1003C1DC4(1, v1078);
                    LODWORD(v1054) = sub_1003C1DC4(3, v351);
                    v352 = v1040;
                    if (v351)
                    {
                      v353 = v1067;
                      IndexPath.init(arrayLiteral:)();
                      v354 = sub_1005883D4();
                      (*v1096)(v353, v1098);
                      v355 = v1058;
                      v356 = v1070;
                      if (v354)
                      {
                        (*v1032)(v1058, &v354[OBJC_IVAR____TtC7Journal5Asset_type], v1070);
                      }

                      else
                      {
                        (*v352)(v1058, v1033, v1070);
                      }

                      (*v1039)(v355, 0, 1, v356);
                      (*v1034)(v1077, v355, v356);
                      v747 = *v352;
                    }

                    else
                    {
                      v356 = v1070;
                      (*v1039)(v1058, 1, 1, v1070);
                      v747 = *v352;
                      (*v352)(v1077, v1033, v356);
                    }

                    v1060 = *&v747;
                    v747(v1075, v1041, v356);
                    sub_10009761C();
                    dispatch thunk of RawRepresentable.rawValue.getter();
                    dispatch thunk of RawRepresentable.rawValue.getter();
                    if (*&v1105.origin.x == *&v1103.origin.x && *&v1105.origin.y == *&v1103.origin.y)
                    {
                      v899 = 1;
                    }

                    else
                    {
                      v899 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    }

                    v900 = v1070;
                    v1061 = *v1059;
                    (*&v1061)(v1075, v1070);

                    if (v899)
                    {
                      goto LABEL_292;
                    }

                    (*&v1060)(v1068, v1035, v900);
                    dispatch thunk of RawRepresentable.rawValue.getter();
                    dispatch thunk of RawRepresentable.rawValue.getter();
                    if (*&v1105.origin.x == *&v1103.origin.x && *&v1105.origin.y == *&v1103.origin.y)
                    {
                      (*&v1061)(v1068, v1070);

LABEL_292:
                      v901 = v1060;
                      if (LOBYTE(v1055))
                      {
                        goto LABEL_312;
                      }
                    }

                    else
                    {
                      v902 = _stringCompareWithSmolCheck(_:_:expecting:)();
                      (*&v1061)(v1068, v1070);

                      v901 = v1060;
                      if (v902 & LODWORD(v1055))
                      {
                        goto LABEL_312;
                      }
                    }

                    v903 = v1062;
                    v904 = v1070;
                    (*&v901)(v1062, v1041, v1070);
                    v905 = sub_100097770();
                    (*&v1061)(v903, v904);
                    if ((v905 & 1) == 0)
                    {
                      v976 = v1062;
                      v977 = v1070;
                      (*&v901)(v1062, v1035, v1070);
                      v978 = sub_100097770();
                      (*&v1061)(v976, v977);
                      if ((v978 & 1) == 0 && ((LODWORD(v1054) ^ 1) & 1) == 0)
                      {
LABEL_312:
                        v1055 = v341;
                        v1060 = v345;
                        memset(&v1105, 0, sizeof(v1105));
                        memset(&v1103, 0, sizeof(v1103));
                        v1220.origin.x = v337;
                        v1220.origin.y = v338;
                        v1220.size.width = v339;
                        v1220.size.height = v340;
                        CGRectDivide(v1220, &v1105, &v1103, v339 * 0.5, CGRectMinXEdge);
                        v979 = v1105.origin.x;
                        v980 = v1105.origin.y;
                        v1221.origin.y = v338;
                        v981 = v1105.size.width;
                        v982 = v1105.size.height;
                        memset(&v1105, 0, sizeof(v1105));
                        memset(&v1103, 0, sizeof(v1103));
                        v1221.origin.x = v337;
                        v1221.size.width = v339;
                        v1221.size.height = v340;
                        CGRectDivide(v1221, &v1105, &v1103, v339 * 0.5, CGRectMaxXEdge);
                        v1053 = v1105.origin.y;
                        v1054 = v1105.origin.x;
                        v1051 = v1105.size.height;
                        v1052 = v1105.size.width;
                        memset(&v1105, 0, sizeof(v1105));
                        memset(&v1103, 0, sizeof(v1103));
                        v1222.origin.x = v979;
                        v1222.origin.y = v980;
                        v1222.size.width = v981;
                        v1222.size.height = v982;
                        CGRectDivide(v1222, &v1105, &v1103, v982 * 0.5, CGRectMinYEdge);
                        v1049 = v1105.origin.y;
                        v1050 = v1105.origin.x;
                        v1047 = v1105.size.height;
                        v1048 = v1105.size.width;
                        memset(&v1105, 0, sizeof(v1105));
                        memset(&v1103, 0, sizeof(v1103));
                        v1223.origin.x = v979;
                        v1223.origin.y = v980;
                        v1223.size.width = v981;
                        v1223.size.height = v982;
                        CGRectDivide(v1223, &v1105, &v1103, v982 * 0.5, CGRectMaxYEdge);
                        v983 = 2;
                        v15 = v1091;
                        v6 = v1079;
                        v984 = 0;
                        v985 = &qword_100A58EC8;
                        v986 = v1077;
                        v36 = v1081;
                        v52 = v1093;
                        do
                        {
                          v988 = *v985++;
                          v987 = v988;
                          if ((v988 & ~v984) == 0)
                          {
                            v987 = 0;
                          }

                          v984 |= v987;
                          --v983;
                        }

                        while (v983);
                        v989 = v1105.origin.x;
                        v990 = v1105.origin.y;
                        v991 = v1105.size.width;
                        v992 = v1105.size.height;
                        v993 = v1099;
                        v994 = v1100;
                        v995 = v1097;
                        v996 = v1101;
                        v997 = v1102;
                        sub_10005E894(3, v984, v1097, v1, v1055, v1056, v1060, v1057, v1101, v1102, 4.0, 4.0, v1100, v1099);
                        sub_10005E894(6, 0, v995, v1, v1050, v1049, v1048, v1047, v996, v997, 4.0, 4.0, v994, v993);
                        sub_10005E894(6, 0, v995, v1, v989, v990, v991, v992, v996, v997, 4.0, 4.0, v994, v993);
                        v998 = 2;
                        v41 = v1089;
                        v51 = v1088;
                        v999 = 0;
                        v1000 = &qword_100A58EF8;
                        v19 = v1094;
                        do
                        {
                          v1002 = *v1000++;
                          v1001 = v1002;
                          if ((v1002 & ~v999) == 0)
                          {
                            v1001 = 0;
                          }

                          v999 |= v1001;
                          --v998;
                        }

                        while (v998);
                        sub_10005E894(5, v999, v1097, v1, v1054, v1053, v1052, v1051, v1101, v1102, 4.0, 4.0, v1100, v1099);
                        (*&v1061)(v986, v1070);
                        goto LABEL_45;
                      }
                    }

                    (*&v1061)(v1077, v1070);
                    v15 = v1091;
                  }

                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1212.origin.x = v337;
                  v1212.origin.y = v338;
                  v1212.size.width = v339;
                  v1212.size.height = v340;
                  CGRectDivide(v1212, &v1105, &v1103, v340 * 0.5, CGRectMinYEdge);
                  v1054 = v1105.origin.y;
                  v1055 = v1105.origin.x;
                  v1052 = v1105.size.height;
                  v1053 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1213.origin.x = v337;
                  v1213.origin.y = v338;
                  v1213.size.width = v339;
                  v1213.size.height = v340;
                  CGRectDivide(v1213, &v1105, &v1103, v340 * 0.5, CGRectMaxYEdge);
                  v906 = v1105.origin.x;
                  v907 = v345;
                  v908 = v1105.origin.y;
                  v909 = v1105.size.width;
                  v910 = v1105.size.height;
                  v911 = v1105.size.width * 0.5;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1214.origin.x = v906;
                  v1214.origin.y = v908;
                  v1214.size.width = v909;
                  v1214.size.height = v910;
                  CGRectDivide(v1214, &v1105, &v1103, v911, CGRectMinXEdge);
                  v1050 = v1105.origin.y;
                  v1051 = v1105.origin.x;
                  v1048 = v1105.size.height;
                  v1049 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1215.origin.x = v906;
                  v1215.origin.y = v908;
                  v1215.size.width = v909;
                  v1215.size.height = v910;
                  v912 = v1056;
                  v913 = v1057;
                  CGRectDivide(v1215, &v1105, &v1103, v911, CGRectMaxXEdge);
                  v914 = v1105.origin.x;
                  v915 = v1105.origin.y;
                  v1046 = v1105.size.height;
                  v1047 = v1105.size.width;
                  type metadata accessor for MosaicLayout.Attributes();
                  sub_1000F24EC(&unk_100AD8A90);
                  v916 = swift_allocObject();
                  *(v916 + 16) = v1095;
                  v6 = v1094;
                  v917 = *v1094;
                  *(v916 + 32) = 0;
                  *(v916 + 40) = v917;
                  IndexPath.init(arrayLiteral:)();
                  v918 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v1061 = COERCE_DOUBLE(swift_getObjCClassFromMetadata());
                  v919 = [*&v1061 layoutAttributesForCellWithIndexPath:v918];

                  v1060 = *v1096;
                  (*&v1060)(v15, v1098);
                  v920 = v919;
                  [v920 setFrame:{v341, v912, v907, v913}];
                  v920[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = 3;
                  v921 = &v920[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                  v922 = v1102;
                  *v921 = v1101;
                  v921[1] = v922;
                  v923 = v1082;
                  *(v921 + 1) = v1082;
                  *(v921 + 2) = v923;
                  *&v923 = v1099;
                  v921[6] = v1100;
                  *(v921 + 7) = v923;
                  v924 = v1093;
                  swift_beginAccess();
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*&v1[v924] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v924] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v924 = v1093;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v1237.origin.x = v341;
                  v1237.origin.y = v912;
                  v1237.size.width = v907;
                  v1237.size.height = v913;
                  v1216 = CGRectUnion(*v38, v1237);
                  v925 = v1216.origin.x;
                  v926 = v1216.origin.y;
                  v927 = v1216.size.width;
                  v928 = v1216.size.height;

                  v38->origin.x = v925;
                  v38->origin.y = v926;
                  v38->size.width = v927;
                  v38->size.height = v928;
                  v929 = *v6 + 1;
                  if (__OFADD__(*v6, 1))
                  {
                    __break(1u);
LABEL_336:
                    __break(1u);
LABEL_337:
                    __break(1u);
LABEL_338:
                    __break(1u);
LABEL_339:
                    __break(1u);
LABEL_340:
                    __break(1u);
LABEL_341:
                    __break(1u);
LABEL_342:
                    __break(1u);
                  }

                  *v6 = v929;
                  v930 = swift_allocObject();
                  *(v930 + 16) = v1095;
                  *(v930 + 32) = 0;
                  *(v930 + 40) = v929;
                  v931 = v1091;
                  IndexPath.init(arrayLiteral:)();
                  v932 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v933 = [*&v1061 layoutAttributesForCellWithIndexPath:v932];

                  (*&v1060)(v931, v1098);
                  v934 = v933;
                  v936 = v1054;
                  v935 = v1055;
                  v938 = v1052;
                  v937 = v1053;
                  [v934 setFrame:{v1055, v1054, v1053, v1052}];
                  v934[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = 4;
                  v939 = &v934[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                  v940 = v1082;
                  *v939 = v1082;
                  *(v939 + 1) = v940;
                  v941 = v1099;
                  *(v939 + 4) = v1100;
                  *(v939 + 5) = v941;
                  *(v939 + 3) = v940;
                  swift_beginAccess();
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*&v1[v924] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v924] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v924 = v1093;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v1238.origin.x = v935;
                  v1238.origin.y = v936;
                  v1238.size.width = v937;
                  v1238.size.height = v938;
                  v1217 = CGRectUnion(*v38, v1238);
                  v942 = v1217.origin.x;
                  v943 = v1217.origin.y;
                  v944 = v1217.size.width;
                  v945 = v1217.size.height;

                  v38->origin.x = v942;
                  v38->origin.y = v943;
                  v38->size.width = v944;
                  v38->size.height = v945;
                  v946 = *v6 + 1;
                  if (__OFADD__(*v6, 1))
                  {
                    goto LABEL_336;
                  }

                  *v6 = v946;
                  v947 = swift_allocObject();
                  *(v947 + 16) = v1095;
                  *(v947 + 32) = 0;
                  *(v947 + 40) = v946;
                  v948 = v1091;
                  IndexPath.init(arrayLiteral:)();
                  v949 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v950 = [*&v1061 layoutAttributesForCellWithIndexPath:v949];

                  (*&v1060)(v948, v1098);
                  v951 = v950;
                  v953 = v1050;
                  v952 = v1051;
                  v955 = v1048;
                  v954 = v1049;
                  [v951 setFrame:{v1051, v1050, v1049, v1048}];
                  v951[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = 6;
                  v956 = &v951[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                  v957 = v1082;
                  *v956 = v1082;
                  *(v956 + 1) = v957;
                  *(v956 + 2) = v957;
                  *(v956 + 3) = v957;
                  swift_beginAccess();
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  v52 = v924;
                  v41 = v1089;
                  v51 = v1088;
                  if (*((*&v1[v924] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v924] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v52 = v1093;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v1239.origin.x = v952;
                  v1239.origin.y = v953;
                  v1239.size.width = v954;
                  v1239.size.height = v955;
                  v1218 = CGRectUnion(*v38, v1239);
                  v958 = v1218.origin.x;
                  v959 = v1218.origin.y;
                  v960 = v1218.size.width;
                  v961 = v1218.size.height;

                  v38->origin.x = v958;
                  v38->origin.y = v959;
                  v38->size.width = v960;
                  v38->size.height = v961;
                  v962 = *v6 + 1;
                  v36 = v1081;
                  ObjCClassFromMetadata = v1063;
                  if (__OFADD__(*v6, 1))
                  {
                    goto LABEL_337;
                  }

                  *v6 = v962;
                  v963 = swift_allocObject();
                  *(v963 + 16) = v1095;
                  *(v963 + 32) = 0;
                  *(v963 + 40) = v962;
                  v15 = v1091;
                  IndexPath.init(arrayLiteral:)();
                  v964 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v965 = [*&v1061 layoutAttributesForCellWithIndexPath:v964];

                  (*&v1060)(v15, v1098);
                  v966 = v965;
                  v968 = v1046;
                  v967 = v1047;
                  [v966 setFrame:{v914, v915, v1047, v1046}];
                  v966[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = 6;
                  v969 = &v966[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                  v970 = v1082;
                  *v969 = v1082;
                  v971 = v1102;
                  v969[2] = v1101;
                  v969[3] = v971;
                  *(v969 + 2) = v970;
                  *(v969 + 3) = v970;
                  swift_beginAccess();
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v52 = v1093;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v1240.origin.x = v914;
                  v1240.origin.y = v915;
                  v1240.size.width = v967;
                  v1240.size.height = v968;
                  v1219 = CGRectUnion(*v38, v1240);
                  v972 = v1219.origin.x;
                  v973 = v1219.origin.y;
                  v974 = v1219.size.width;
                  v975 = v1219.size.height;

                  v38->origin.x = v972;
                  v38->origin.y = v973;
                  v38->size.width = v974;
                  v38->size.height = v975;
                  v232 = *v6 + 1;
                  if (__OFADD__(*v6, 1))
                  {
                    goto LABEL_338;
                  }

LABEL_309:
                  v19 = v6;
                  *v6 = v232;
                  v6 = v1079;
                  goto LABEL_45;
                }

                if (ObjCClassFromMetadata == 2)
                {
                  v1105.origin = v67;
                  v1105.size = v67;
                  v1103.origin = v67;
                  v1103.size = v67;
                  v1143.origin.x = 0.0;
                  v1143.origin.y = 0.0;
                  v1143.size.width = v41;
                  v1143.size.height = v51;
                  v233 = v1066;
                  CGRectDivide(v1143, &v1105, &v1103, v1066, CGRectMinXEdge);
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1144.origin.x = 0.0;
                  v1144.origin.y = 0.0;
                  v1144.size.width = v41;
                  v1144.size.height = v51;
                  CGRectDivide(v1144, &v1105, &v1103, v233, CGRectMaxXEdge);
                  v1060 = v1105.origin.y;
                  v1061 = v1105.origin.x;
                  v234 = v1105.size.width;
                  v1057 = v1105.size.height;
                  v235 = sub_100095150(0.0, 0.0, v41, v51);
                  v237 = v236;
                  v239 = v238;
                  v241 = v240;
                  type metadata accessor for MosaicLayout.Attributes();
                  v38 = v19;
                  v19 = sub_1000F24EC(&unk_100AD8A90);
                  v242 = swift_allocObject();
                  *(v242 + 16) = v1095;
                  v243 = v38->origin.x;
                  *(v242 + 32) = 0;
                  *(v242 + 40) = v243;
                  IndexPath.init(arrayLiteral:)();
                  v244 = IndexPath._bridgeToObjectiveC()().super.isa;
                  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                  v245 = [ObjCClassFromMetadata layoutAttributesForCellWithIndexPath:v244];

                  v1056 = *v1096;
                  (*&v1056)(v15, v1098);
                  v15 = v245;
                  [v15 setFrame:{v235, v237, v239, v241}];
                  *(v15 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType) = 3;
                  v246 = v15 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii;
                  v247 = v1102;
                  *v246 = v1101;
                  *(v246 + 8) = v247;
                  v248 = v1082;
                  *(v246 + 16) = v1082;
                  *(v246 + 32) = v248;
                  *&v248 = v1099;
                  *(v246 + 48) = v1100;
                  *(v246 + 56) = v248;
                  swift_beginAccess();
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  v36 = *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v36 >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v249 = v1065;
                  v1230.origin.x = v235;
                  v1230.origin.y = v237;
                  v1230.size.width = v239;
                  v1230.size.height = v241;
                  v1145 = CGRectUnion(*v1065, v1230);
                  x = v1145.origin.x;
                  y = v1145.origin.y;
                  v250 = v1145.size.width;
                  v251 = v1145.size.height;

                  v249->origin.x = x;
                  v249->origin.y = y;
                  v249->size.width = v250;
                  v249->size.height = v251;
                  v31 = (*&v38->origin.x + 1);
                  if (__OFADD__(*&v38->origin.x, 1))
                  {
                    goto LABEL_329;
                  }

                  *&v38->origin.x = v31;
                  v252 = swift_allocObject();
                  *(v252 + 16) = v1095;
                  *(v252 + 32) = 0;
                  *(v252 + 40) = v31;
                  v15 = v1091;
                  IndexPath.init(arrayLiteral:)();
                  v253 = IndexPath._bridgeToObjectiveC()().super.isa;
                  v254 = [ObjCClassFromMetadata layoutAttributesForCellWithIndexPath:v253];

                  (*&v1056)(v15, v1098);
                  v19 = v254;
                  v256 = v1060;
                  v255 = v1061;
                  v257 = v1057;
                  [v19 setFrame:{v1061, v1060, v234, v1057}];
                  *(v19 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType) = 3;
                  v258 = (v19 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii);
                  v259 = v1082;
                  *v258 = v1082;
                  v260 = v1102;
                  v258[2] = v1101;
                  v258[3] = v260;
                  v261 = v1099;
                  v258[4] = v1100;
                  v258[5] = v261;
                  *(v258 + 3) = v259;
                  swift_beginAccess();
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v52 = v1093;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v31 = v1065;
                  v1231.origin.x = v255;
                  v1231.origin.y = v256;
                  v1231.size.width = v234;
                  v1231.size.height = v257;
                  v1146 = CGRectUnion(*v1065, v1231);
                  x = v1146.origin.x;
                  y = v1146.origin.y;
                  v262 = v1146.size.width;
                  v263 = v1146.size.height;

                  v31->origin.x = x;
                  v31->origin.y = y;
                  v31->size.width = v262;
                  v31->size.height = v263;
                  v36 = v1081;
                  ObjCClassFromMetadata = v1063;
                  v41 = v1089;
                  v51 = v1088;
                  v6 = v1079;
                  if (__OFADD__(*&v38->origin.x, 1))
                  {
                    goto LABEL_330;
                  }

                  v19 = v38;
                  ++*&v38->origin.x;
                  v38 = v1065;
                  goto LABEL_45;
                }

                if (ObjCClassFromMetadata == 3)
                {
                  v1105.origin = v67;
                  v1105.size = v67;
                  v1103.origin = v67;
                  v1103.size = v67;
                  v1136.origin.x = 0.0;
                  v1136.origin.y = 0.0;
                  v1136.size.width = v41;
                  v1136.size.height = v51;
                  v173 = v1066;
                  CGRectDivide(v1136, &v1105, &v1103, v1066, CGRectMinXEdge);
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1137.origin.x = 0.0;
                  v1137.origin.y = 0.0;
                  v1137.size.width = v41;
                  v1137.size.height = v51;
                  CGRectDivide(v1137, &v1105, &v1103, v173, CGRectMaxXEdge);
                  v174 = v1105.origin.x;
                  v175 = v1105.origin.y;
                  v176 = v1105.size.width;
                  v177 = v1105.size.height;
                  v1055 = sub_100095150(0.0, 0.0, v41, v51);
                  v1056 = v178;
                  v1057 = v179;
                  v41 = v180;
                  v181 = v1080;
                  v182 = v1092;
                  (v1084)(v1080, v1086, v1092);
                  v183 = JournalFeatureFlags.isEnabled.getter();
                  v1083(v181, v182);
                  if (v183 & 1) != 0 && (sub_1003C1DC4(1, v1078) & 1) != 0 && (sub_1003C1DC4(2, v1078))
                  {
                    memset(&v1105, 0, sizeof(v1105));
                    memset(&v1103, 0, sizeof(v1103));
                    v1138.origin.x = v174;
                    v1138.origin.y = v175;
                    v1138.size.width = v176;
                    v1138.size.height = v177;
                    CGRectDivide(v1138, &v1105, &v1103, v176 * 0.5, CGRectMinXEdge);
                    v1053 = v1105.origin.y;
                    v1054 = v1105.origin.x;
                    v184 = v1105.size.width;
                    v185 = v1105.size.height;
                    memset(&v1105, 0, sizeof(v1105));
                    memset(&v1103, 0, sizeof(v1103));
                    v1139.origin.x = v174;
                    v1139.origin.y = v175;
                    v1139.size.width = v176;
                    v1139.size.height = v177;
                    CGRectDivide(v1139, &v1105, &v1103, v176 * 0.5, CGRectMaxXEdge);
                    v186 = v1105.origin.y;
                    v1052 = v1105.size.width;
                    v1050 = v1105.origin.x;
                    v1051 = v1105.size.height;
                    type metadata accessor for MosaicLayout.Attributes();
                    sub_1000F24EC(&unk_100AD8A90);
                    v187 = swift_allocObject();
                    *(v187 + 16) = v1095;
                    v6 = v1094;
                    v188 = *v1094;
                    *(v187 + 32) = 0;
                    *(v187 + 40) = v188;
                    IndexPath.init(arrayLiteral:)();
                    v189 = IndexPath._bridgeToObjectiveC()().super.isa;
                    v1061 = COERCE_DOUBLE(swift_getObjCClassFromMetadata());
                    v190 = [*&v1061 layoutAttributesForCellWithIndexPath:v189];

                    v1060 = *v1096;
                    (*&v1060)(v15, v1098);
                    v191 = v190;
                    v193 = v1055;
                    v192 = v1056;
                    v194 = v1057;
                    [v191 setFrame:{v1055, v1056, v1057, v41}];
                    v191[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = 3;
                    v195 = &v191[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                    v196 = v1102;
                    *v195 = v1101;
                    v195[1] = v196;
                    v197 = v1082;
                    *(v195 + 1) = v1082;
                    *(v195 + 2) = v197;
                    *&v197 = v1099;
                    v195[6] = v1100;
                    *(v195 + 7) = v197;
                    v52 = v1093;
                    swift_beginAccess();
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    swift_endAccess();
                    v1227.origin.x = v193;
                    v1227.origin.y = v192;
                    v1227.size.width = v194;
                    v1227.size.height = v41;
                    v1140 = CGRectUnion(*v38, v1227);
                    v198 = v1140.origin.x;
                    v199 = v1140.origin.y;
                    v200 = v1140.size.width;
                    v201 = v1140.size.height;

                    v38->origin.x = v198;
                    v38->origin.y = v199;
                    v38->size.width = v200;
                    v38->size.height = v201;
                    v202 = *v6 + 1;
                    if (__OFADD__(*v6, 1))
                    {
                      goto LABEL_340;
                    }

                    *v6 = v202;
                    v203 = swift_allocObject();
                    *(v203 + 16) = v1095;
                    *(v203 + 32) = 0;
                    *(v203 + 40) = v202;
                    v204 = v1091;
                    IndexPath.init(arrayLiteral:)();
                    v205 = IndexPath._bridgeToObjectiveC()().super.isa;
                    v206 = [*&v1061 layoutAttributesForCellWithIndexPath:v205];

                    (*&v1060)(v204, v1098);
                    v207 = v206;
                    v209 = v1053;
                    v208 = v1054;
                    [v207 setFrame:{v1054, v1053, v184, v185}];
                    v207[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = 5;
                    v210 = &v207[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                    v211 = v1082;
                    *v210 = v1082;
                    *(v210 + 1) = v211;
                    *(v210 + 2) = v211;
                    *(v210 + 3) = v211;
                    swift_beginAccess();
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    swift_endAccess();
                    v1228.origin.x = v208;
                    v1228.origin.y = v209;
                    v1228.size.width = v184;
                    v1228.size.height = v185;
                    v1141 = CGRectUnion(*v38, v1228);
                    v212 = v1141.origin.x;
                    v213 = v1141.origin.y;
                    v214 = v1141.size.width;
                    v215 = v1141.size.height;

                    v38->origin.x = v212;
                    v38->origin.y = v213;
                    v38->size.width = v214;
                    v38->size.height = v215;
                    v216 = *v6 + 1;
                    v36 = v1081;
                    ObjCClassFromMetadata = v1063;
                    if (__OFADD__(*v6, 1))
                    {
                      goto LABEL_341;
                    }

                    *v6 = v216;
                    v217 = swift_allocObject();
                    *(v217 + 16) = v1095;
                    *(v217 + 32) = 0;
                    *(v217 + 40) = v216;
                    v15 = v1091;
                    IndexPath.init(arrayLiteral:)();
                    v218 = IndexPath._bridgeToObjectiveC()().super.isa;
                    v219 = [*&v1061 layoutAttributesForCellWithIndexPath:v218];

                    (*&v1060)(v15, v1098);
                    v220 = v219;
                    v222 = v1050;
                    v221 = v1051;
                    v223 = v1052;
                    [v220 setFrame:{v1050, v186, v1052, v1051}];
                    v220[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType] = 5;
                    v224 = &v220[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
                    v225 = v1082;
                    *v224 = v1082;
                    v226 = v1102;
                    v224[2] = v1101;
                    v224[3] = v226;
                    v227 = v1099;
                    v224[4] = v1100;
                    v224[5] = v227;
                    *(v224 + 3) = v225;
                    swift_beginAccess();
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    v41 = v1089;
                    v51 = v1088;
                    if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v52 = v1093;
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    swift_endAccess();
                    v1229.origin.x = v222;
                    v1229.origin.y = v186;
                    v1229.size.width = v223;
                    v1229.size.height = v221;
                    v1142 = CGRectUnion(*v38, v1229);
                    v228 = v1142.origin.x;
                    v229 = v1142.origin.y;
                    v230 = v1142.size.width;
                    v231 = v1142.size.height;

                    v38->origin.x = v228;
                    v38->origin.y = v229;
                    v38->size.width = v230;
                    v38->size.height = v231;
                    v232 = *v6 + 1;
                    if (__OFADD__(*v6, 1))
                    {
                      goto LABEL_342;
                    }
                  }

                  else
                  {
                    memset(&v1105, 0, sizeof(v1105));
                    memset(&v1103, 0, sizeof(v1103));
                    v1177.origin.x = v174;
                    v1177.origin.y = v175;
                    v1177.size.width = v176;
                    v1177.size.height = v177;
                    CGRectDivide(v1177, &v1105, &v1103, v177 * 0.5, CGRectMinYEdge);
                    v409 = v1105.origin.x;
                    v410 = v1105.origin.y;
                    v1053 = v1105.size.height;
                    v1054 = v1105.size.width;
                    memset(&v1105, 0, sizeof(v1105));
                    memset(&v1103, 0, sizeof(v1103));
                    v1178.origin.x = v174;
                    v1178.origin.y = v175;
                    v1178.size.width = v176;
                    v1178.size.height = v177;
                    CGRectDivide(v1178, &v1105, &v1103, v177 * 0.5, CGRectMaxYEdge);
                    v411 = v1105.origin.y;
                    v1052 = v1105.size.width;
                    v1050 = v1105.origin.x;
                    v1051 = v1105.size.height;
                    type metadata accessor for MosaicLayout.Attributes();
                    v19 = sub_1000F24EC(&unk_100AD8A90);
                    v412 = swift_allocObject();
                    *(v412 + 16) = v1095;
                    v6 = v1094;
                    v413 = *v1094;
                    *(v412 + 32) = 0;
                    *(v412 + 40) = v413;
                    IndexPath.init(arrayLiteral:)();
                    v414 = IndexPath._bridgeToObjectiveC()().super.isa;
                    v1061 = COERCE_DOUBLE(swift_getObjCClassFromMetadata());
                    v36 = [*&v1061 layoutAttributesForCellWithIndexPath:v414];

                    v1060 = *v1096;
                    (*&v1060)(v15, v1098);
                    v15 = v36;
                    v416 = v1055;
                    v415 = v1056;
                    v417 = v1057;
                    [v15 setFrame:{v1055, v1056, v1057, v41}];
                    *(v15 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType) = 3;
                    v418 = v15 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii;
                    v419 = v1102;
                    *v418 = v1101;
                    *(v418 + 8) = v419;
                    v420 = v1082;
                    *(v418 + 16) = v1082;
                    *(v418 + 32) = v420;
                    *&v420 = v1099;
                    *(v418 + 48) = v1100;
                    *(v418 + 56) = v420;
                    v52 = v1093;
                    swift_beginAccess();
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v36 = *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    swift_endAccess();
                    v1233.origin.x = v416;
                    v1233.origin.y = v415;
                    v1233.size.width = v417;
                    v1233.size.height = v41;
                    v1179 = CGRectUnion(*v38, v1233);
                    x = v1179.origin.x;
                    y = v1179.origin.y;
                    v421 = v1179.size.width;
                    v422 = v1179.size.height;

                    v38->origin.x = x;
                    v38->origin.y = y;
                    v38->size.width = v421;
                    v38->size.height = v422;
                    v31 = (*v6 + 1);
                    if (__OFADD__(*v6, 1))
                    {
                      goto LABEL_331;
                    }

                    *v6 = v31;
                    v423 = swift_allocObject();
                    *(v423 + 16) = v1095;
                    *(v423 + 32) = 0;
                    *(v423 + 40) = v31;
                    v424 = v1091;
                    IndexPath.init(arrayLiteral:)();
                    v425 = IndexPath._bridgeToObjectiveC()().super.isa;
                    v36 = [*&v1061 layoutAttributesForCellWithIndexPath:v425];

                    (*&v1060)(v424, v1098);
                    v15 = v36;
                    v427 = v1053;
                    v426 = v1054;
                    [v15 setFrame:{v409, v410, v1054, v1053}];
                    *(v15 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType) = 4;
                    v428 = v15 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii;
                    v429 = v1082;
                    *v428 = v1082;
                    *(v428 + 16) = v429;
                    v430 = v1099;
                    *(v428 + 32) = v1100;
                    *(v428 + 40) = v430;
                    *(v428 + 48) = v429;
                    swift_beginAccess();
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v36 = *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10);
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    }

                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    swift_endAccess();
                    v1234.origin.x = v409;
                    v1234.origin.y = v410;
                    v1234.size.width = v426;
                    v1234.size.height = v427;
                    v1180 = CGRectUnion(*v38, v1234);
                    x = v1180.origin.x;
                    y = v1180.origin.y;
                    v431 = v1180.size.width;
                    v432 = v1180.size.height;

                    v38->origin.x = x;
                    v38->origin.y = y;
                    v38->size.width = v431;
                    v38->size.height = v432;
                    v31 = (*v6 + 1);
                    ObjCClassFromMetadata = v1063;
                    if (__OFADD__(*v6, 1))
                    {
                      goto LABEL_332;
                    }

                    *v6 = v31;
                    v433 = swift_allocObject();
                    *(v433 + 16) = v1095;
                    *(v433 + 32) = 0;
                    *(v433 + 40) = v31;
                    v15 = v1091;
                    IndexPath.init(arrayLiteral:)();
                    v434 = IndexPath._bridgeToObjectiveC()().super.isa;
                    v435 = [*&v1061 layoutAttributesForCellWithIndexPath:v434];

                    (*&v1060)(v15, v1098);
                    v19 = v435;
                    v437 = v1050;
                    v436 = v1051;
                    v438 = v1052;
                    [v19 setFrame:{v1050, v411, v1052, v1051}];
                    *(v19 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType) = 4;
                    v439 = (v19 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii);
                    v440 = v1082;
                    *v439 = v1082;
                    v441 = v1102;
                    v439[2] = v1101;
                    v439[3] = v441;
                    *(v439 + 2) = v440;
                    *(v439 + 3) = v440;
                    swift_beginAccess();
                    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                    v36 = v1081;
                    v41 = v1089;
                    v51 = v1088;
                    if (*((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v52] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                      v52 = v1093;
                    }

                    v31 = &v1[v52];
                    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                    swift_endAccess();
                    v1235.origin.x = v437;
                    v1235.origin.y = v411;
                    v1235.size.width = v438;
                    v1235.size.height = v436;
                    v1181 = CGRectUnion(*v38, v1235);
                    x = v1181.origin.x;
                    y = v1181.origin.y;
                    v442 = v1181.size.width;
                    v443 = v1181.size.height;

                    v38->origin.x = x;
                    v38->origin.y = y;
                    v38->size.width = v442;
                    v38->size.height = v443;
                    v232 = *v6 + 1;
                    if (__OFADD__(*v6, 1))
                    {
                      goto LABEL_333;
                    }
                  }

                  goto LABEL_309;
                }

                goto LABEL_120;
              }

              if (ObjCClassFromMetadata > 9)
              {
                switch(ObjCClassFromMetadata)
                {
                  case 10:
                    v1105.origin = v67;
                    v1105.size = v67;
                    v1103.origin = v67;
                    v1103.size = v67;
                    v1175.origin.x = 0.0;
                    v1175.origin.y = 0.0;
                    v1175.size.width = v41;
                    v1175.size.height = v51;
                    v397 = v1064;
                    CGRectDivide(v1175, &v1105, &v1103, v1064, CGRectMinYEdge);
                    v398 = v1105.origin.x;
                    v399 = v1105.origin.y;
                    v400 = v1105.size.width;
                    v401 = v1105.size.height;
                    memset(&v1105, 0, sizeof(v1105));
                    memset(&v1103, 0, sizeof(v1103));
                    v1176.origin.x = 0.0;
                    v1176.origin.y = 0.0;
                    v1176.size.width = v41;
                    v1176.size.height = v51;
                    CGRectDivide(v1176, &v1105, &v1103, v397, CGRectMaxYEdge);
                    v1060 = v1105.origin.y;
                    v1061 = v1105.origin.x;
                    v1056 = v1105.size.height;
                    v1057 = v1105.size.width;
                    sub_100069024(&v1105.origin, v398, v399, v400, v401);
                    if (*(v6 + v1))
                    {
                      LOBYTE(v402) = 1;
                    }

                    else
                    {
                      v520 = 2;
                      v402 = 0;
                      v521 = &qword_100A58FE8;
                      do
                      {
                        v523 = *v521++;
                        v522 = v523;
                        if ((v523 & ~v402) == 0)
                        {
                          v522 = 0;
                        }

                        v402 |= v522;
                        --v520;
                      }

                      while (v520);
                    }

                    v851 = v1106;
                    v852 = v1107;
                    v853 = v1108;
                    v854 = v1109;
                    v1046 = v1111;
                    v1047 = v1110;
                    v1044 = v1113;
                    v1045 = v1112;
                    v1050 = v1115;
                    v1051 = v1114;
                    v1048 = v1117;
                    v1049 = v1116;
                    v1054 = v1119;
                    v1055 = v1118;
                    v1052 = v1121;
                    v1053 = v1120;
                    v855 = v1099;
                    v856 = v1100;
                    v857 = v1097;
                    v858 = v1101;
                    v859 = v1102;
                    sub_10005E894(3, v402, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                    sub_10005E894(6, 0, v857, v1, v851, v852, v853, v854, v858, v859, 4.0, 4.0, v856, v855);
                    sub_10005E894(6, 0, v857, v1, v1047, v1046, v1045, v1044, v858, v859, 4.0, 4.0, v856, v855);
                    sub_10005E894(6, 2, v857, v1, v1051, v1050, v1049, v1048, v858, v859, 4.0, 4.0, v856, v855);
                    if (*(v6 + v1) == 1)
                    {
                      v860 = _swiftEmptyArrayStorage[2];
                      if (v860)
                      {
                        v72 = 0;
                        v861 = &_swiftEmptyArrayStorage[4];
                        do
                        {
                          v863 = *v861++;
                          v862 = v863;
                          if ((v863 & ~v72) == 0)
                          {
                            v862 = 0;
                          }

                          v72 |= v862;
                          --v860;
                        }

                        while (v860);
                      }

                      else
                      {
                        LOBYTE(v72) = 0;
                      }
                    }

                    else
                    {
                      LOBYTE(v72) = 8;
                    }

                    v73 = v1099;
                    v74 = v1100;
                    v75 = v1097;
                    v76 = v1101;
                    v77 = v1102;
                    sub_10005E894(6, v72, v1097, v1, v1055, v1054, v1053, v1052, v1101, v1102, 4.0, 4.0, v1100, v1099);
                    sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v1061, v1060, v1057, v1056);
                    v1061 = v1106;
                    v1060 = v1107;
                    v1057 = v1108;
                    v1056 = v1109;
                    sub_100067EFC(&v1105.origin, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                    v78 = v1106;
                    v79 = v1107;
                    v80 = v1108;
                    v81 = v1109;
                    v1051 = v1110;
                    v1050 = v1111;
                    v1049 = v1112;
                    v1048 = v1113;
                    v1055 = v1114;
                    v1054 = v1115;
                    v1053 = v1116;
                    v1052 = v1117;
                    sub_10005E894(6, 0, v75, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v76, v77, 4.0, 4.0, v74, v73);
                    sub_10005E894(6, 4, v75, v1, v78, v79, v80, v81, v76, v77, 4.0, 4.0, v74, v73);
                    sub_10005E894(6, 0, v75, v1, v1051, v1050, v1049, v1048, v76, v77, 4.0, 4.0, v74, v73);
                    sub_10005E894(6, 0, v75, v1, v1055, v1054, v1053, v1052, v76, v77, 4.0, 4.0, v74, v73);
                    sub_10005E894(3, 8, v75, v1, v1061, v1060, v1057, v1056, v76, v77, 4.0, 4.0, v74, v73);
                    goto LABEL_44;
                  case 11:
                    sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, 0.0, 0.0, v41, v51);
                    v329 = v1106;
                    v330 = v1107;
                    v331 = v1108;
                    v332 = v1109;
                    sub_100069024(&v1105.origin, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                    v333 = *(v6 + v1);
                    v1054 = v330;
                    v1055 = v329;
                    v1052 = v332;
                    v1053 = v331;
                    if (v333)
                    {
                      LOBYTE(v334) = 1;
                    }

                    else
                    {
                      v508 = 2;
                      v334 = 0;
                      v509 = &qword_100A59018;
                      do
                      {
                        v511 = *v509++;
                        v510 = v511;
                        if ((v511 & ~v334) == 0)
                        {
                          v510 = 0;
                        }

                        v334 |= v510;
                        --v508;
                      }

                      while (v508);
                    }

                    v690 = v1106;
                    v691 = v1107;
                    v692 = v1108;
                    v693 = v1109;
                    v1046 = v1111;
                    v1047 = v1110;
                    v1044 = v1113;
                    v1045 = v1112;
                    v1050 = v1115;
                    v1051 = v1114;
                    v1048 = v1117;
                    v1049 = v1116;
                    v1060 = v1119;
                    v1061 = v1118;
                    v1056 = v1121;
                    v1057 = v1120;
                    v694 = v1099;
                    v695 = v1100;
                    v696 = v1097;
                    v697 = v1101;
                    v698 = v1102;
                    sub_10005E894(3, v334, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                    sub_10005E894(6, 0, v696, v1, v690, v691, v692, v693, v697, v698, 4.0, 4.0, v695, v694);
                    sub_10005E894(6, 0, v696, v1, v1047, v1046, v1045, v1044, v697, v698, 4.0, 4.0, v695, v694);
                    sub_10005E894(6, 2, v696, v1, v1051, v1050, v1049, v1048, v697, v698, 4.0, 4.0, v695, v694);
                    if (*(v6 + v1) == 1)
                    {
                      v699 = _swiftEmptyArrayStorage[2];
                      v701 = v1054;
                      v700 = v1055;
                      v702 = v6;
                      v703 = 0;
                      if (v699)
                      {
                        v704 = &_swiftEmptyArrayStorage[4];
                        v706 = v1060;
                        v705 = v1061;
                        v708 = v1056;
                        v707 = v1057;
                        do
                        {
                          v710 = *v704++;
                          v709 = v710;
                          if ((v710 & ~v703) == 0)
                          {
                            v709 = 0;
                          }

                          v703 |= v709;
                          --v699;
                        }

                        while (v699);
                        goto LABEL_223;
                      }
                    }

                    else
                    {
                      v702 = v6;
                      LOBYTE(v703) = 8;
                      v701 = v1054;
                      v700 = v1055;
                    }

                    v706 = v1060;
                    v705 = v1061;
                    v708 = v1056;
                    v707 = v1057;
LABEL_223:
                    v711 = v1099;
                    v712 = v1100;
                    v713 = v1097;
                    v714 = v1101;
                    v715 = v1102;
                    sub_10005E894(6, v703, v1097, v1, v705, v706, v707, v708, v1101, v1102, 4.0, 4.0, v1100, v1099);
                    sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v700, v701, v1053, v1052);
                    v1056 = v1106;
                    v1057 = v1107;
                    v1060 = v1108;
                    v1061 = v1109;
                    sub_100067EFC(&v1105.origin, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                    v716 = v1106;
                    v717 = v1107;
                    v718 = v1108;
                    v719 = v1109;
                    v1051 = v1110;
                    v1050 = v1111;
                    v1049 = v1112;
                    v1048 = v1113;
                    v1055 = v1114;
                    v1054 = v1115;
                    v1053 = v1116;
                    v1052 = v1117;
                    sub_10005E894(6, 0, v713, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v714, v715, 4.0, 4.0, v712, v711);
                    sub_10005E894(6, 4, v713, v1, v716, v717, v718, v719, v714, v715, 4.0, 4.0, v712, v711);
                    sub_10005E894(6, 0, v713, v1, v1051, v1050, v1049, v1048, v714, v715, 4.0, 4.0, v712, v711);
                    sub_10005E894(6, 0, v713, v1, v1055, v1054, v1053, v1052, v714, v715, 4.0, 4.0, v712, v711);
                    v720 = v1080;
                    v721 = v1092;
                    (v1084)(v1080, v1086, v1092);
                    LOBYTE(v713) = JournalFeatureFlags.isEnabled.getter();
                    v1083(v720, v721);
                    v6 = v702;
                    if (v713 & 1) != 0 && (v1[v1069] != 1 || *(v702 + v1) == 1) && (sub_1003C1DC4(9, v1078) & 1) != 0 && (sub_1003C1DC4(10, v1078))
                    {
                      sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v1056, v1057, v1060, v1061);
                      v722 = v1106;
                      v723 = v1107;
                      v724 = v1108;
                      v725 = v1109;
                      v726 = v1099;
                      v727 = v1100;
                      v728 = v1097;
                      v729 = v1101;
                      v730 = v1102;
                      sub_10005E894(5, 0, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                      v1017 = v727;
                      v1019 = v726;
                      v731 = 4.0;
                      v732 = 4.0;
                      v733 = v722;
                      v734 = v723;
                      v735 = v724;
                      v736 = v725;
                      v737 = 5;
                    }

                    else
                    {
                      sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, v1056, v1057, v1060, v1061);
                      v738 = v1106;
                      v739 = v1107;
                      v740 = v1108;
                      v741 = v1109;
                      v742 = v1099;
                      v743 = v1100;
                      v728 = v1097;
                      v729 = v1101;
                      v730 = v1102;
                      sub_10005E894(4, 0, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                      v1017 = v743;
                      v1019 = v742;
                      v731 = 4.0;
                      v732 = 4.0;
                      v733 = v738;
                      v734 = v739;
                      v735 = v740;
                      v736 = v741;
                      v737 = 4;
                    }

                    v744 = v728;
                    v745 = v729;
                    v746 = v730;
                    goto LABEL_262;
                  case 12:
                    sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, 0.0, 0.0, v41, v51);
                    v167 = v1106;
                    v168 = v1107;
                    v169 = v1108;
                    v170 = v1109;
                    sub_100069024(&v1105.origin, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                    v171 = *(v6 + v1);
                    v1054 = v168;
                    v1055 = v167;
                    v1052 = v170;
                    v1053 = v169;
                    if (v171)
                    {
                      LOBYTE(v172) = 1;
                    }

                    else
                    {
                      v516 = 2;
                      v172 = 0;
                      v517 = &qword_100A59048;
                      do
                      {
                        v519 = *v517++;
                        v518 = v519;
                        if ((v519 & ~v172) == 0)
                        {
                          v518 = 0;
                        }

                        v172 |= v518;
                        --v516;
                      }

                      while (v516);
                    }

                    v807 = v1106;
                    v808 = v1107;
                    v809 = v1108;
                    v810 = v1109;
                    v1046 = v1111;
                    v1047 = v1110;
                    v1044 = v1113;
                    v1045 = v1112;
                    v1050 = v1115;
                    v1051 = v1114;
                    v1048 = v1117;
                    v1049 = v1116;
                    v1060 = v1119;
                    v1061 = v1118;
                    v1056 = v1121;
                    v1057 = v1120;
                    v811 = v1099;
                    v812 = v1100;
                    v813 = v1097;
                    v814 = v1101;
                    v815 = v1102;
                    sub_10005E894(3, v172, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                    sub_10005E894(6, 0, v813, v1, v807, v808, v809, v810, v814, v815, 4.0, 4.0, v812, v811);
                    sub_10005E894(6, 0, v813, v1, v1047, v1046, v1045, v1044, v814, v815, 4.0, 4.0, v812, v811);
                    sub_10005E894(6, 2, v813, v1, v1051, v1050, v1049, v1048, v814, v815, 4.0, 4.0, v812, v811);
                    if (*(v6 + v1) == 1)
                    {
                      v816 = _swiftEmptyArrayStorage[2];
                      v818 = v1054;
                      v817 = v1055;
                      v819 = v6;
                      v820 = 0;
                      if (v816)
                      {
                        v821 = &_swiftEmptyArrayStorage[4];
                        v823 = v1060;
                        v822 = v1061;
                        v825 = v1056;
                        v824 = v1057;
                        do
                        {
                          v827 = *v821++;
                          v826 = v827;
                          if ((v827 & ~v820) == 0)
                          {
                            v826 = 0;
                          }

                          v820 |= v826;
                          --v816;
                        }

                        while (v816);
LABEL_255:
                        v828 = v1099;
                        v829 = v1100;
                        v830 = v1097;
                        v831 = v1101;
                        v832 = v1102;
                        sub_10005E894(6, v820, v1097, v1, v822, v823, v824, v825, v1101, v1102, 4.0, 4.0, v1100, v1099);
                        sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v817, v818, v1053, v1052);
                        v1056 = v1106;
                        v1057 = v1107;
                        v1060 = v1108;
                        v1061 = v1109;
                        sub_100067EFC(&v1105.origin, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                        v833 = v1106;
                        v834 = v1107;
                        v835 = v1108;
                        v836 = v1109;
                        v1051 = v1110;
                        v1050 = v1111;
                        v1049 = v1112;
                        v1048 = v1113;
                        v1055 = v1114;
                        v1054 = v1115;
                        v1053 = v1116;
                        v1052 = v1117;
                        sub_10005E894(6, 0, v830, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v831, v832, 4.0, 4.0, v829, v828);
                        sub_10005E894(6, 4, v830, v1, v833, v834, v835, v836, v831, v832, 4.0, 4.0, v829, v828);
                        sub_10005E894(6, 0, v830, v1, v1051, v1050, v1049, v1048, v831, v832, 4.0, 4.0, v829, v828);
                        sub_10005E894(6, 0, v830, v1, v1055, v1054, v1053, v1052, v831, v832, 4.0, 4.0, v829, v828);
                        v837 = v1080;
                        v838 = v1092;
                        (v1084)(v1080, v1086, v1092);
                        LOBYTE(v830) = JournalFeatureFlags.isEnabled.getter();
                        v1083(v837, v838);
                        v6 = v819;
                        if (v830 & 1) != 0 && (v1[v1069] != 1 || *(v819 + v1) == 1) && (sub_1003C1DC4(11, v1078))
                        {
                          sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v1056, v1057, v1060, v1061);
                          v1060 = v1107;
                          v1061 = v1106;
                          v1056 = v1109;
                          v1057 = v1108;
                          sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                          v839 = v1106;
                          v840 = v1107;
                          v841 = v1108;
                          v842 = v1109;
                          v843 = v1099;
                          v844 = v1100;
                          v791 = v1097;
                          v792 = v1101;
                          v793 = v1102;
                          sub_10005E894(6, 0, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                          sub_10005E894(6, 0, v791, v1, v839, v840, v841, v842, v792, v793, 4.0, 4.0, v844, v843);
                          v1017 = v844;
                          v1019 = v843;
                          v731 = 4.0;
                          v732 = 4.0;
                          v734 = v1060;
                          v733 = v1061;
                          v736 = v1056;
                          v735 = v1057;
                          v737 = 5;
                        }

                        else
                        {
                          sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, v1056, v1057, v1060, v1061);
                          v1060 = v1107;
                          v1061 = v1106;
                          v1056 = v1109;
                          v1057 = v1108;
                          sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                          v845 = v1106;
                          v846 = v1107;
                          v847 = v1108;
                          v848 = v1109;
                          v849 = v1099;
                          v850 = v1100;
                          v791 = v1097;
                          v792 = v1101;
                          v793 = v1102;
                          sub_10005E894(6, 0, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                          sub_10005E894(6, 0, v791, v1, v845, v846, v847, v848, v792, v793, 4.0, 4.0, v850, v849);
                          v1017 = v850;
                          v1019 = v849;
                          v731 = 4.0;
                          v732 = 4.0;
                          v734 = v1060;
                          v733 = v1061;
                          v736 = v1056;
                          v735 = v1057;
                          v737 = 4;
                        }

LABEL_261:
                        v744 = v791;
                        v745 = v792;
                        v746 = v793;
LABEL_262:
                        sub_10005E894(v737, 8, v744, v1, v733, v734, v735, v736, v745, v746, v731, v732, v1017, v1019);
LABEL_263:
                        v41 = v1089;
                        v51 = v1088;
                        v19 = v1094;
                        v67 = 0;
                        v36 = v1081;
                        goto LABEL_46;
                      }
                    }

                    else
                    {
                      v819 = v6;
                      LOBYTE(v820) = 8;
                      v818 = v1054;
                      v817 = v1055;
                    }

                    v823 = v1060;
                    v822 = v1061;
                    v825 = v1056;
                    v824 = v1057;
                    goto LABEL_255;
                }

LABEL_120:
                if (ObjCClassFromMetadata < 13)
                {
                  break;
                }

                sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, 0.0, 0.0, v41, v51);
                v403 = v1106;
                v404 = v1107;
                v405 = v1108;
                v406 = v1109;
                sub_100069024(&v1105.origin, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                v407 = *(v6 + v1);
                v1060 = v404;
                v1061 = v403;
                v1056 = v406;
                v1057 = v405;
                if (v407)
                {
                  LOBYTE(v408) = 1;
                }

                else
                {
                  v524 = 2;
                  v408 = 0;
                  v525 = &qword_100A59078;
                  do
                  {
                    v527 = *v525++;
                    v526 = v527;
                    if ((v527 & ~v408) == 0)
                    {
                      v526 = 0;
                    }

                    v408 |= v526;
                    --v524;
                  }

                  while (v524);
                }

                v864 = v1106;
                v865 = v1107;
                v866 = v1108;
                v867 = v1109;
                v1050 = v1111;
                v1051 = v1110;
                v1048 = v1113;
                v1049 = v1112;
                v1054 = v1115;
                v1055 = v1114;
                v1052 = v1117;
                v1053 = v1116;
                v1046 = v1119;
                v1047 = v1118;
                v1044 = v1121;
                v1045 = v1120;
                v868 = v1099;
                v869 = v1100;
                v870 = v1097;
                v871 = v1101;
                v872 = v1102;
                sub_10005E894(3, v408, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                sub_10005E894(6, 0, v870, v1, v864, v865, v866, v867, v871, v872, 4.0, 4.0, v869, v868);
                sub_10005E894(6, 0, v870, v1, v1051, v1050, v1049, v1048, v871, v872, 4.0, 4.0, v869, v868);
                sub_10005E894(6, 2, v870, v1, v1055, v1054, v1053, v1052, v871, v872, 4.0, 4.0, v869, v868);
                if (*(v6 + v1) == 1)
                {
                  v873 = _swiftEmptyArrayStorage[2];
                  v875 = v1060;
                  v874 = v1061;
                  v877 = v1056;
                  v876 = v1057;
                  v878 = 0;
                  if (v873)
                  {
                    v879 = &_swiftEmptyArrayStorage[4];
                    v881 = v1046;
                    v880 = v1047;
                    v883 = v1044;
                    v882 = v1045;
                    do
                    {
                      v885 = *v879++;
                      v884 = v885;
                      if ((v885 & ~v878) == 0)
                      {
                        v884 = 0;
                      }

                      v878 |= v884;
                      --v873;
                    }

                    while (v873);
                    goto LABEL_281;
                  }
                }

                else
                {
                  LOBYTE(v878) = 8;
                  v875 = v1060;
                  v874 = v1061;
                  v877 = v1056;
                  v876 = v1057;
                }

                v881 = v1046;
                v880 = v1047;
                v883 = v1044;
                v882 = v1045;
LABEL_281:
                v886 = v1099;
                v887 = v1100;
                v888 = v1097;
                v889 = v1101;
                v890 = v1102;
                sub_10005E894(6, v878, v1097, v1, v880, v881, v882, v883, v1101, v1102, 4.0, 4.0, v1100, v1099);
                sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v874, v875, v876, v877);
                v1061 = v1106;
                v1060 = v1107;
                v1057 = v1108;
                v1056 = v1109;
                sub_100067EFC(&v1105.origin, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                v891 = v1106;
                v892 = v1107;
                v893 = v1108;
                v894 = v1109;
                v1051 = v1110;
                v1050 = v1111;
                v1049 = v1112;
                v1048 = v1113;
                v1055 = v1114;
                v1054 = v1115;
                v1053 = v1116;
                v1052 = v1117;
                sub_10005E894(6, 0, v888, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v889, v890, 4.0, 4.0, v887, v886);
                sub_10005E894(6, 4, v888, v1, v891, v892, v893, v894, v889, v890, 4.0, 4.0, v887, v886);
                sub_10005E894(6, 0, v888, v1, v1051, v1050, v1049, v1048, v889, v890, 4.0, 4.0, v887, v886);
                sub_10005E894(6, 0, v888, v1, v1055, v1054, v1053, v1052, v889, v890, 4.0, 4.0, v887, v886);
                sub_100067EFC(&v1105.origin, v1061, v1060, v1057, v1056);
                v895 = v1106;
                v896 = v1107;
                v897 = v1108;
                v898 = v1109;
                v1055 = v1110;
                v1054 = v1111;
                v1053 = v1112;
                v1052 = v1113;
                v1061 = v1114;
                v1060 = v1115;
                v1057 = v1116;
                v1056 = v1117;
                sub_10005E894(6, 0, v888, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v889, v890, 4.0, 4.0, v887, v886);
                sub_10005E894(6, 0, v888, v1, v895, v896, v897, v898, v889, v890, 4.0, 4.0, v887, v886);
                sub_10005E894(6, 0, v888, v1, v1055, v1054, v1053, v1052, v889, v890, 4.0, 4.0, v887, v886);
                sub_10005E894(6, 8, v888, v1, v1061, v1060, v1057, v1056, v889, v890, 4.0, 4.0, v887, v886);
                goto LABEL_44;
              }

              if (ObjCClassFromMetadata == 7)
              {
                v357 = v36;
                v358 = v1072;
                v359 = v6;
                v360 = v1092;
                v1084(v1072, v1086, v1092, 0);
                v361 = JournalFeatureFlags.isEnabled.getter();
                v362 = v360;
                v6 = v359;
                v1083(v358, v362);
                if ((v361 & 1) == 0 || v1[v1069] == 1 && *(v359 + v1) != 1)
                {
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1187.origin.x = 0.0;
                  v1187.origin.y = 0.0;
                  v1187.size.width = v41;
                  v1187.size.height = v51;
                  v497 = v1064;
                  CGRectDivide(v1187, &v1105, &v1103, v1064, CGRectMinYEdge);
                  v498 = v1105.origin.x;
                  v499 = v1105.origin.y;
                  v500 = v1105.size.width;
                  v501 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1188.origin.x = 0.0;
                  v1188.origin.y = 0.0;
                  v1188.size.width = v41;
                  v1188.size.height = v51;
                  CGRectDivide(v1188, &v1105, &v1103, v497, CGRectMaxYEdge);
                  v502 = v1105.origin.x;
                  v503 = v1105.origin.y;
                  v504 = v1105.size.width;
                  v505 = v1105.size.height;
                  sub_100069024(&v1105.origin, v498, v499, v500, v501);
                  v506 = *(v359 + v1);
                  v19 = v1094;
                  v36 = v357;
                  v1060 = v503;
                  v1061 = v502;
                  v1056 = v505;
                  v1057 = v504;
                  if (v506)
                  {
                    LOBYTE(v507) = 1;
                    v15 = v1091;
                  }

                  else
                  {
                    v563 = 2;
                    v15 = v1091;
                    v507 = 0;
                    v564 = &qword_100A58F58;
                    do
                    {
                      v566 = *v564++;
                      v565 = v566;
                      if ((v566 & ~v507) == 0)
                      {
                        v565 = 0;
                      }

                      v507 |= v565;
                      --v563;
                    }

                    while (v563);
                  }

                  v567 = v1106;
                  v568 = v1107;
                  v569 = v1108;
                  v570 = v1109;
                  v1046 = v1111;
                  v1047 = v1110;
                  v1044 = v1113;
                  v1045 = v1112;
                  v1050 = v1115;
                  v1051 = v1114;
                  v1048 = v1117;
                  v1049 = v1116;
                  v1054 = v1119;
                  v1055 = v1118;
                  v1052 = v1121;
                  v1053 = v1120;
                  v571 = v1099;
                  v572 = v1100;
                  v573 = v1097;
                  v574 = v1101;
                  v575 = v1102;
                  sub_10005E894(3, v507, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                  sub_10005E894(6, 0, v573, v1, v567, v568, v569, v570, v574, v575, 4.0, 4.0, v572, v571);
                  sub_10005E894(6, 0, v573, v1, v1047, v1046, v1045, v1044, v574, v575, 4.0, 4.0, v572, v571);
                  sub_10005E894(6, 2, v573, v1, v1051, v1050, v1049, v1048, v574, v575, 4.0, 4.0, v572, v571);
                  if (*(v6 + v1) == 1)
                  {
                    v576 = _swiftEmptyArrayStorage[2];
                    if (v576)
                    {
                      v577 = 0;
                      v578 = &_swiftEmptyArrayStorage[4];
                      v580 = v1054;
                      v579 = v1055;
                      v582 = v1052;
                      v581 = v1053;
                      do
                      {
                        v584 = *v578++;
                        v583 = v584;
                        if ((v584 & ~v577) == 0)
                        {
                          v583 = 0;
                        }

                        v577 |= v583;
                        --v576;
                      }

                      while (v576);
                      goto LABEL_323;
                    }

                    LOBYTE(v577) = 0;
                  }

                  else
                  {
                    LOBYTE(v577) = 8;
                  }

                  v580 = v1054;
                  v579 = v1055;
                  v582 = v1052;
                  v581 = v1053;
LABEL_323:
                  v1003 = v1099;
                  v1004 = v1100;
                  v1005 = v1097;
                  v1006 = v1101;
                  sub_10005E894(6, v577, v1097, v1, v579, v580, v581, v582, v1101, v1102, 4.0, 4.0, v1100, v1099);
                  v1007 = v1056;
                  v1008 = v1057;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1010 = v1060;
                  v1009 = v1061;
                  v1224.origin.x = v1061;
                  v1224.origin.y = v1060;
                  v1224.size.width = v1057;
                  v1224.size.height = v1056;
                  CGRectDivide(v1224, &v1105, &v1103, v1057 * 0.5, CGRectMinXEdge);
                  v1055 = v1105.origin.x;
                  v1054 = v1105.origin.y;
                  v1053 = v1105.size.width;
                  v1052 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1225.origin.x = v1009;
                  v1225.origin.y = v1010;
                  v1225.size.width = v1008;
                  v1225.size.height = v1007;
                  CGRectDivide(v1225, &v1105, &v1103, v1008 * 0.5, CGRectMaxXEdge);
                  v1011 = v1105.origin.x;
                  v1012 = v1105.origin.y;
                  v1013 = v1105.size.width;
                  v1014 = v1105.size.height;
                  v1015 = v1102;
                  sub_10005E894(3, 4, v1005, v1, v1055, v1054, v1053, v1052, v1006, v1102, 4.0, 4.0, v1004, v1003);
                  sub_10005E894(3, 8, v1005, v1, v1011, v1012, v1013, v1014, v1006, v1015, 4.0, 4.0, v1004, v1003);
                  v67 = 0;
                  v41 = v1089;
                  v51 = v1088;
                  goto LABEL_46;
                }

                v363 = v1078;
                v364 = sub_1003C1DC4(5, v1078);
                v19 = v1094;
                v36 = v357;
                if (v364 & 1) != 0 && (sub_1003C1DC4(6, v363))
                {
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1163.origin.x = 0.0;
                  v1163.origin.y = 0.0;
                  v1163.size.width = v41;
                  v1163.size.height = v51;
                  v365 = v1066;
                  CGRectDivide(v1163, &v1105, &v1103, v1066, CGRectMinXEdge);
                  v366 = v1105.origin.x;
                  v367 = v1105.origin.y;
                  v368 = v1105.size.width;
                  v369 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1164.origin.x = 0.0;
                  v1164.origin.y = 0.0;
                  v1164.size.width = v1089;
                  v1164.size.height = v1088;
                  CGRectDivide(v1164, &v1105, &v1103, v365, CGRectMaxXEdge);
                  v1047 = v1105.origin.x;
                  v370 = v1105.origin.y;
                  v371 = v1105.size.width;
                  v372 = v1105.size.height;
                  v373 = v369 * v1036;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1165.origin.x = v366;
                  v1165.origin.y = v367;
                  v1165.size.width = v368;
                  v1165.size.height = v369;
                  CGRectDivide(v1165, &v1105, &v1103, v369 * 0.666666667, CGRectMinYEdge);
                  v1050 = v1105.origin.y;
                  v1051 = v1105.origin.x;
                  v1048 = v1105.size.height;
                  v1049 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1166.origin.x = v366;
                  v1166.origin.y = v367;
                  v1166.size.width = v368;
                  v1166.size.height = v369;
                  CGRectDivide(v1166, &v1105, &v1103, v373, CGRectMaxYEdge);
                  v374 = v1105.origin.x;
                  v375 = v1105.origin.y;
                  v376 = v1105.size.width;
                  v377 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1167.origin.x = v374;
                  v1167.origin.y = v375;
                  v1167.size.width = v376;
                  v1167.size.height = v377;
                  CGRectDivide(v1167, &v1105, &v1103, v376 * 0.5, CGRectMinXEdge);
                  v1054 = v1105.origin.y;
                  v1055 = v1105.origin.x;
                  v1052 = v1105.size.height;
                  v1053 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1168.origin.x = v374;
                  v1168.origin.y = v375;
                  v1168.size.width = v376;
                  v1168.size.height = v377;
                  CGRectDivide(v1168, &v1105, &v1103, v376 * 0.5, CGRectMaxXEdge);
                  v1060 = v1105.origin.y;
                  v1061 = v1105.origin.x;
                  v1056 = v1105.size.height;
                  v1057 = v1105.size.width;
                  v1046 = v372 * 0.666666667;
                  v378 = v372;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v379 = v1047;
                  v1169.origin.x = v1047;
                  v380 = v370;
                  v1169.origin.y = v370;
                  v1169.size.width = v371;
                  v1169.size.height = v372;
                  CGRectDivide(v1169, &v1105, &v1103, v372 * 0.333333333, CGRectMinYEdge);
                  v381 = v1105.origin.x;
                  v382 = v1105.origin.y;
                  v383 = v1105.size.width;
                  v384 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1170.origin.x = v379;
                  v1170.origin.y = v380;
                  v1170.size.width = v371;
                  v1170.size.height = v378;
                  CGRectDivide(v1170, &v1105, &v1103, v1046, CGRectMaxYEdge);
                  v1047 = v1105.origin.x;
                  v385 = v1105.origin.y;
                  v386 = v1105.size.width;
                  v387 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1171.origin.x = v381;
                  v1171.origin.y = v382;
                  v1171.size.width = v383;
                  v1171.size.height = v384;
                  CGRectDivide(v1171, &v1105, &v1103, v383 * 0.5, CGRectMinXEdge);
                  v1026 = v1105.origin.y;
                  v1027 = v1105.origin.x;
                  v1024 = v1105.size.height;
                  v1025 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1172.origin.x = v381;
                  v1172.origin.y = v382;
                  v1172.size.width = v383;
                  v1172.size.height = v384;
                  CGRectDivide(v1172, &v1105, &v1103, v383 * 0.5, CGRectMaxXEdge);
                  v1030 = v1105.origin.y;
                  v1031 = v1105.origin.x;
                  v1028 = v1105.size.height;
                  v1029 = v1105.size.width;
                  v388 = v386 * 0.5;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v389 = v1047;
                  v1173.origin.x = v1047;
                  v1173.origin.y = v385;
                  v1173.size.width = v386;
                  v1173.size.height = v387;
                  CGRectDivide(v1173, &v1105, &v1103, v386 * 0.5, CGRectMinXEdge);
                  v1044 = v1105.origin.y;
                  v1045 = v1105.origin.x;
                  v1037 = v1105.size.height;
                  v1038 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1174.origin.x = v389;
                  v1174.origin.y = v385;
                  v1174.size.width = v386;
                  v41 = v1089;
                  v1174.size.height = v387;
                  v51 = v1088;
                  CGRectDivide(v1174, &v1105, &v1103, v388, CGRectMaxXEdge);
                  v390 = v1105.origin.x;
                  v391 = v1105.origin.y;
                  v1046 = v1105.size.height;
                  v1047 = v1105.size.width;
                  v392 = v1099;
                  v393 = v1100;
                  v394 = v1097;
                  v395 = v1101;
                  v396 = v1102;
                  sub_10005E894(3, 1, v1097, v1, v1051, v1050, v1049, v1048, v1101, v1102, 4.0, 4.0, v1100, v1099);
                  sub_10005E894(6, 0, v394, v1, v1027, v1026, v1025, v1024, v395, v396, 4.0, 4.0, v393, v392);
                  sub_10005E894(6, 2, v394, v1, v1031, v1030, v1029, v1028, v395, v396, 4.0, 4.0, v393, v392);
                  sub_10005E894(6, 4, v394, v1, v1055, v1054, v1053, v1052, v395, v396, 4.0, 4.0, v393, v392);
                  sub_10005E894(6, 0, v394, v1, v1061, v1060, v1057, v1056, v395, v396, 4.0, 4.0, v393, v392);
                  sub_10005E894(5, 0, v394, v1, v1045, v1044, v1038, v1037, v395, v396, 4.0, 4.0, v393, v392);
                  sub_10005E894(5, 8, v394, v1, v390, v391, v1047, v1046, v395, v396, 4.0, 4.0, v393, v392);
                }

                else
                {
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1199.origin.x = 0.0;
                  v1199.origin.y = 0.0;
                  v1199.size.width = v41;
                  v1199.size.height = v51;
                  CGRectDivide(v1199, &v1105, &v1103, v1043, CGRectMinYEdge);
                  v620 = v1105.origin.x;
                  v621 = v1105.origin.y;
                  v622 = v1105.size.width;
                  v623 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1200.origin.x = 0.0;
                  v1200.origin.y = 0.0;
                  v1200.size.width = v41;
                  v1200.size.height = v51;
                  CGRectDivide(v1200, &v1105, &v1103, v1042, CGRectMaxYEdge);
                  v1056 = v1105.size.width;
                  v1057 = v1105.origin.y;
                  v1060 = v1105.origin.x;
                  v1061 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1201.origin.x = v620;
                  v1201.origin.y = v621;
                  v1201.size.width = v622;
                  v1201.size.height = v623;
                  CGRectDivide(v1201, &v1105, &v1103, v622 * 0.5, CGRectMinXEdge);
                  v1054 = v1105.origin.y;
                  v1055 = v1105.origin.x;
                  v1052 = v1105.size.height;
                  v1053 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1202.origin.x = v620;
                  v1202.origin.y = v621;
                  v1202.size.width = v622;
                  v1202.size.height = v623;
                  CGRectDivide(v1202, &v1105, &v1103, v622 * 0.5, CGRectMaxXEdge);
                  v624 = v1105.origin.x;
                  v625 = v1105.origin.y;
                  v626 = v1105.size.width;
                  v627 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1203.origin.x = v624;
                  v1203.origin.y = v625;
                  v1203.size.width = v626;
                  v1203.size.height = v627;
                  CGRectDivide(v1203, &v1105, &v1103, v627 * 0.5, CGRectMinYEdge);
                  v1050 = v1105.origin.y;
                  v1051 = v1105.origin.x;
                  v1048 = v1105.size.height;
                  v1049 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1204.origin.x = v624;
                  v1204.origin.y = v625;
                  v1204.size.width = v626;
                  v1204.size.height = v627;
                  CGRectDivide(v1204, &v1105, &v1103, v627 * 0.5, CGRectMaxYEdge);
                  v628 = v1105.origin.x;
                  v629 = v1105.origin.y;
                  v630 = v1105.size.width;
                  v631 = v1105.size.height;
                  v632 = v1105.size.width * 0.5;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1205.origin.x = v628;
                  v1205.origin.y = v629;
                  v1205.size.width = v630;
                  v1205.size.height = v631;
                  CGRectDivide(v1205, &v1105, &v1103, v630 * 0.5, CGRectMinXEdge);
                  v1044 = v1105.origin.x;
                  v633 = v1105.origin.y;
                  v634 = v1105.size.width;
                  v635 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1206.origin.x = v628;
                  v1206.origin.y = v629;
                  v1206.size.width = v630;
                  v1206.size.height = v631;
                  CGRectDivide(v1206, &v1105, &v1103, v632, CGRectMaxXEdge);
                  v636 = v1105.origin.x;
                  v1046 = v1105.size.width;
                  v1047 = v1105.origin.y;
                  v1045 = v1105.size.height;
                  v637 = v1099;
                  v638 = v1100;
                  v639 = v1097;
                  v640 = v1101;
                  v641 = v1102;
                  sub_10005E894(3, 1, v1097, v1, v1055, v1054, v1053, v1052, v1101, v1102, 4.0, 4.0, v1100, v1099);
                  sub_10005E894(4, 2, v639, v1, v1051, v1050, v1049, v1048, v640, v641, 4.0, 4.0, v638, v637);
                  sub_10005E894(6, 0, v639, v1, v1044, v633, v634, v635, v640, v641, 4.0, 4.0, v638, v637);
                  sub_10005E894(6, 0, v639, v1, v636, v1047, v1046, v1045, v640, v641, 4.0, 4.0, v638, v637);
                  v643 = v1056;
                  v642 = v1057;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v644 = v1060;
                  v645 = v1061;
                  v1207.origin.x = v1060;
                  v1207.origin.y = v1057;
                  v1207.size.width = v1056;
                  v1207.size.height = v1061;
                  CGRectDivide(v1207, &v1105, &v1103, v1056 * 0.5, CGRectMinXEdge);
                  v1055 = v1105.origin.x;
                  v646 = v1105.origin.y;
                  v647 = v1105.size.width;
                  v648 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1208.origin.x = v644;
                  v1208.origin.y = v642;
                  v1208.size.width = v643;
                  v1208.size.height = v645;
                  CGRectDivide(v1208, &v1105, &v1103, v643 * 0.5, CGRectMaxXEdge);
                  v1061 = v1105.origin.x;
                  v1060 = v1105.origin.y;
                  v1057 = v1105.size.width;
                  v1056 = v1105.size.height;
                  v649 = v647 * 0.5;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v650 = v1055;
                  v1209.origin.x = v1055;
                  v1209.origin.y = v646;
                  v1209.size.width = v647;
                  v1209.size.height = v648;
                  CGRectDivide(v1209, &v1105, &v1103, v647 * 0.5, CGRectMinXEdge);
                  v651 = v1105.origin.x;
                  v652 = v1105.origin.y;
                  v1054 = v1105.size.width;
                  v1053 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1210.origin.x = v650;
                  v1210.origin.y = v646;
                  v1210.size.width = v647;
                  v1210.size.height = v648;
                  v51 = v1088;
                  CGRectDivide(v1210, &v1105, &v1103, v649, CGRectMaxXEdge);
                  v1055 = v1105.origin.x;
                  v653 = v1105.origin.y;
                  v654 = v1105.size.width;
                  v655 = v1105.size.height;
                  v656 = v1099;
                  v657 = v1100;
                  v658 = v651;
                  v659 = v652;
                  v660 = v1101;
                  v661 = v1102;
                  sub_10005E894(6, 4, v639, v1, v658, v659, v1054, v1053, v1101, v1102, 4.0, 4.0, v1100, v1099);
                  v662 = v655;
                  v41 = v1089;
                  sub_10005E894(6, 0, v639, v1, v1055, v653, v654, v662, v660, v661, 4.0, 4.0, v657, v656);
                  sub_10005E894(4, 8, v639, v1, v1061, v1060, v1057, v1056, v660, v661, 4.0, 4.0, v657, v656);
                }

                goto LABEL_213;
              }

              if (ObjCClassFromMetadata != 8)
              {
                v94 = v1080;
                v95 = v6;
                v96 = v1092;
                v1084(v1080, v1086, v1092, 0);
                v97 = JournalFeatureFlags.isEnabled.getter();
                v1083(v94, v96);
                v98 = 0.666666667;
                if ((v97 & 1) == 0)
                {
                  v98 = 0.5;
                }

                v99 = v51 * v98;
                memset(&v1105, 0, sizeof(v1105));
                v100 = v51 * (1.0 - v98);
                memset(&v1103, 0, sizeof(v1103));
                v1124.origin.x = 0.0;
                v1124.origin.y = 0.0;
                v1124.size.width = v41;
                v1124.size.height = v51;
                CGRectDivide(v1124, &v1105, &v1103, v99, CGRectMinYEdge);
                v101 = v1105.origin.x;
                v102 = v1105.origin.y;
                v103 = v1105.size.width;
                v104 = v1105.size.height;
                memset(&v1105, 0, sizeof(v1105));
                memset(&v1103, 0, sizeof(v1103));
                v1125.origin.x = 0.0;
                v1125.origin.y = 0.0;
                v1125.size.width = v41;
                v1125.size.height = v51;
                CGRectDivide(v1125, &v1105, &v1103, v100, CGRectMaxYEdge);
                v105 = v1105.origin.x;
                v106 = v1105.origin.y;
                v107 = v1105.size.width;
                v108 = v1105.size.height;
                sub_100069024(&v1105.origin, v101, v102, v103, v104);
                v109 = *(v95 + v1);
                v1054 = v106;
                v1055 = v105;
                v1052 = v108;
                v1053 = v107;
                if (v109)
                {
                  LOBYTE(v110) = 1;
                }

                else
                {
                  v512 = 2;
                  v110 = 0;
                  v513 = &qword_100A58FB8;
                  do
                  {
                    v515 = *v513++;
                    v514 = v515;
                    if ((v515 & ~v110) == 0)
                    {
                      v514 = 0;
                    }

                    v110 |= v514;
                    --v512;
                  }

                  while (v512);
                }

                v748 = v1106;
                v749 = v1107;
                v750 = v1108;
                v751 = v1109;
                v1046 = v1111;
                v1047 = v1110;
                v1044 = v1113;
                v1045 = v1112;
                v1050 = v1115;
                v1051 = v1114;
                v1048 = v1117;
                v1049 = v1116;
                v1060 = v1119;
                v1061 = v1118;
                v1056 = v1121;
                v1057 = v1120;
                v752 = v1099;
                v753 = v1100;
                v754 = v1097;
                v755 = v1101;
                v756 = v1102;
                sub_10005E894(3, v110, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
                sub_10005E894(6, 0, v754, v1, v748, v749, v750, v751, v755, v756, 4.0, 4.0, v753, v752);
                sub_10005E894(6, 0, v754, v1, v1047, v1046, v1045, v1044, v755, v756, 4.0, 4.0, v753, v752);
                sub_10005E894(6, 2, v754, v1, v1051, v1050, v1049, v1048, v755, v756, 4.0, 4.0, v753, v752);
                if (*(v95 + v1) == 1)
                {
                  v757 = _swiftEmptyArrayStorage[2];
                  v759 = v1054;
                  v758 = v1055;
                  v761 = v1052;
                  v760 = v1053;
                  v762 = 0;
                  if (v757)
                  {
                    v763 = &_swiftEmptyArrayStorage[4];
                    v764 = v1060;
                    v765 = v1061;
                    v767 = v1056;
                    v766 = v1057;
                    do
                    {
                      v769 = *v763++;
                      v768 = v769;
                      if ((v769 & ~v762) == 0)
                      {
                        v768 = 0;
                      }

                      v762 |= v768;
                      --v757;
                    }

                    while (v757);
                    goto LABEL_241;
                  }
                }

                else
                {
                  LOBYTE(v762) = 8;
                  v759 = v1054;
                  v758 = v1055;
                  v761 = v1052;
                  v760 = v1053;
                }

                v764 = v1060;
                v765 = v1061;
                v767 = v1056;
                v766 = v1057;
LABEL_241:
                sub_10005E894(6, v762, v1097, v1, v765, v764, v766, v767, v1101, v1102, 4.0, 4.0, v1100, v1099);
                sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v758, v759, v760, v761);
                v770 = v1105.origin.x;
                v771 = v1105.origin.y;
                v772 = v1105.size.width;
                v773 = v1105.size.height;
                v774 = v1106;
                v775 = v1107;
                v776 = v1108;
                v777 = v1109;
                v778 = v1074;
                v779 = v1092;
                (v1084)(v1074, v1086, v1092);
                v780 = JournalFeatureFlags.isEnabled.getter();
                v1083(v778, v779);
                v6 = v95;
                if ((v780 & 1) != 0 && (v1[v1069] != 1 || *(v95 + v1) == 1))
                {
                  sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v770, v771, v772, v773);
                  v781 = v1105.origin.x;
                  v782 = v1105.origin.y;
                  v783 = v1105.size.width;
                  v784 = v1105.size.height;
                  v1052 = v1107;
                  v1053 = v1106;
                  v1050 = v1109;
                  v1051 = v1108;
                  sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v774, v775, v776, v777);
                  v1054 = v1105.origin.y;
                  v1055 = v1105.origin.x;
                  v785 = v1105.size.width;
                  v786 = v1105.size.height;
                  v1060 = v1107;
                  v1061 = v1106;
                  v1056 = v1109;
                  v1057 = v1108;
                  v787 = v1099;
                  v788 = v1100;
                  v789 = v781;
                  v790 = v782;
                  v791 = v1097;
                  v792 = v1101;
                  v793 = v1102;
                  sub_10005E894(6, 4, v1097, v1, v789, v790, v783, v784, v1101, v1102, 4.0, 4.0, v1100, v1099);
                  sub_10005E894(6, 0, v791, v1, v1053, v1052, v1051, v1050, v792, v793, 4.0, 4.0, v788, v787);
                  sub_10005E894(6, 0, v791, v1, v1055, v1054, v785, v786, v792, v793, 4.0, 4.0, v788, v787);
                  v1017 = v788;
                  v1019 = v787;
                  v731 = 4.0;
                  v732 = 4.0;
                  v734 = v1060;
                  v733 = v1061;
                  v736 = v1056;
                  v735 = v1057;
                  v737 = 6;
                  goto LABEL_261;
                }

                sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, v770, v771, v772, v773);
                v1060 = v776;
                v1061 = v777;
                v794 = v1105.origin.x;
                v795 = v1105.origin.y;
                v1056 = v774;
                v1057 = v775;
                v796 = v1105.size.width;
                v797 = v1105.size.height;
                sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v1106, v1107, v1108, v1109);
                v1050 = v1105.origin.y;
                v1051 = v1105.origin.x;
                v798 = v1105.size.width;
                v799 = v1105.size.height;
                v1054 = v1107;
                v1055 = v1106;
                v1052 = v1109;
                v1053 = v1108;
                v800 = v1099;
                v801 = v1100;
                v802 = v794;
                v803 = v795;
                v804 = v1097;
                v805 = v1101;
                v806 = v1102;
                sub_10005E894(6, 0, v1097, v1, v802, v803, v796, v797, v1101, v1102, 4.0, 4.0, v1100, v1099);
                sub_10005E894(6, 4, v804, v1, v1051, v1050, v798, v799, v805, v806, 4.0, 4.0, v801, v800);
                sub_10005E894(6, 0, v804, v1, v1055, v1054, v1053, v1052, v805, v806, 4.0, 4.0, v801, v800);
                sub_10005E894(6, 8, v804, v1, v1056, v1057, v1060, v1061, v805, v806, 4.0, 4.0, v801, v800);
                goto LABEL_263;
              }

              v283 = v36;
              v284 = v1073;
              v285 = v6;
              v286 = v1092;
              v1084(v1073, v1086, v1092, 0);
              v287 = JournalFeatureFlags.isEnabled.getter();
              v288 = v286;
              v6 = v285;
              v1083(v284, v288);
              if ((v287 & 1) != 0 && (v1[v1069] != 1 || *(v285 + v1) == 1))
              {
                v289 = sub_1003C1DC4(7, v1078);
                v19 = v1094;
                v36 = v283;
                memset(&v1105, 0, sizeof(v1105));
                memset(&v1103, 0, sizeof(v1103));
                v290 = 0;
                v291 = 0;
                v292 = v41;
                v293 = v51;
                if (v289)
                {
                  v294 = v1066;
                  CGRectDivide(*&v290, &v1105, &v1103, v1066, CGRectMinXEdge);
                  v295 = v1105.origin.x;
                  v296 = v1105.origin.y;
                  v297 = v1105.size.width;
                  v298 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1148.origin.x = 0.0;
                  v1148.origin.y = 0.0;
                  v1148.size.width = v1089;
                  v1148.size.height = v1088;
                  CGRectDivide(v1148, &v1105, &v1103, v294, CGRectMaxXEdge);
                  v1047 = v1105.origin.x;
                  v299 = v1105.origin.y;
                  v300 = v1105.size.width;
                  v301 = v1105.size.height;
                  v302 = v298 * v1036;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1149.origin.x = v295;
                  v1149.origin.y = v296;
                  v1149.size.width = v297;
                  v1149.size.height = v298;
                  CGRectDivide(v1149, &v1105, &v1103, v298 * 0.666666667, CGRectMinYEdge);
                  v1050 = v1105.origin.y;
                  v1051 = v1105.origin.x;
                  v1048 = v1105.size.height;
                  v1049 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1150.origin.x = v295;
                  v1150.origin.y = v296;
                  v1150.size.width = v297;
                  v1150.size.height = v298;
                  CGRectDivide(v1150, &v1105, &v1103, v302, CGRectMaxYEdge);
                  v303 = v1105.origin.x;
                  v304 = v1105.origin.y;
                  v305 = v1105.size.width;
                  v306 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1151.origin.x = v303;
                  v1151.origin.y = v304;
                  v1151.size.width = v305;
                  v1151.size.height = v306;
                  CGRectDivide(v1151, &v1105, &v1103, v305 * 0.5, CGRectMinXEdge);
                  v1054 = v1105.origin.y;
                  v1055 = v1105.origin.x;
                  v1052 = v1105.size.height;
                  v1053 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1152.origin.x = v303;
                  v1152.origin.y = v304;
                  v1152.size.width = v305;
                  v1152.size.height = v306;
                  CGRectDivide(v1152, &v1105, &v1103, v305 * 0.5, CGRectMaxXEdge);
                  v1060 = v1105.origin.y;
                  v1061 = v1105.origin.x;
                  v1056 = v1105.size.height;
                  v1057 = v1105.size.width;
                  v1046 = v301 * 0.666666667;
                  v307 = v301;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v308 = v1047;
                  v1153.origin.x = v1047;
                  v309 = v299;
                  v1153.origin.y = v299;
                  v1153.size.width = v300;
                  v1153.size.height = v301;
                  CGRectDivide(v1153, &v1105, &v1103, v301 * 0.333333333, CGRectMinYEdge);
                  v310 = v1105.origin.x;
                  v311 = v1105.origin.y;
                  v312 = v1105.size.width;
                  v313 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1154.origin.x = v308;
                  v1154.origin.y = v309;
                  v1154.size.width = v300;
                  v1154.size.height = v307;
                  CGRectDivide(v1154, &v1105, &v1103, v1046, CGRectMaxYEdge);
                  v314 = v1105.origin.x;
                  v1047 = v1105.origin.y;
                  v315 = v1105.size.width;
                  v316 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1155.origin.x = v310;
                  v1155.origin.y = v311;
                  v1155.size.width = v312;
                  v1155.size.height = v313;
                  CGRectDivide(v1155, &v1105, &v1103, v312 * 0.5, CGRectMinXEdge);
                  v1025 = v1105.origin.y;
                  v1026 = v1105.origin.x;
                  v1023 = v1105.size.height;
                  v1024 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1156.origin.x = v310;
                  v1156.origin.y = v311;
                  v1156.size.width = v312;
                  v1156.size.height = v313;
                  CGRectDivide(v1156, &v1105, &v1103, v312 * 0.5, CGRectMaxXEdge);
                  v1029 = v1105.origin.y;
                  v1030 = v1105.origin.x;
                  v1027 = v1105.size.height;
                  v1028 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1157.origin.x = v314;
                  v317 = v1047;
                  v1157.origin.y = v1047;
                  v1157.size.width = v315;
                  v1157.size.height = v316;
                  CGRectDivide(v1157, &v1105, &v1103, v315 * 0.5, CGRectMinXEdge);
                  v318 = v1105.origin.x;
                  v1038 = v1105.origin.y;
                  v319 = v1105.size.width;
                  v320 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1158.origin.x = v314;
                  v1158.origin.y = v317;
                  v1158.size.width = v315;
                  v1158.size.height = v316;
                  CGRectDivide(v1158, &v1105, &v1103, v315 * 0.5, CGRectMaxXEdge);
                  v1046 = v1105.origin.y;
                  v1047 = v1105.origin.x;
                  v1044 = v1105.size.height;
                  v1045 = v1105.size.width;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1159.origin.x = v318;
                  v321 = v1038;
                  v1159.origin.y = v1038;
                  v1159.size.width = v319;
                  v1159.size.height = v320;
                  CGRectDivide(v1159, &v1105, &v1103, v320 * 0.5, CGRectMinYEdge);
                  v322 = v1105.origin.x;
                  v1021 = v1105.size.width;
                  v1022 = v1105.origin.y;
                  v1020 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1160.origin.x = v318;
                  v1160.origin.y = v321;
                  v1160.size.width = v319;
                  v41 = v1089;
                  v1160.size.height = v320;
                  v51 = v1088;
                  CGRectDivide(v1160, &v1105, &v1103, v320 * 0.5, CGRectMaxYEdge);
                  v323 = v1105.origin.x;
                  v1037 = v1105.size.width;
                  v1038 = v1105.origin.y;
                  v1031 = v1105.size.height;
                  v324 = v1099;
                  v325 = v1100;
                  v326 = v1097;
                  v327 = v1101;
                  v328 = v1102;
                  sub_10005E894(3, 1, v1097, v1, v1051, v1050, v1049, v1048, v1101, v1102, 4.0, 4.0, v1100, v1099);
                  sub_10005E894(6, 0, v326, v1, v1026, v1025, v1024, v1023, v327, v328, 4.0, 4.0, v325, v324);
                  sub_10005E894(6, 2, v326, v1, v1030, v1029, v1028, v1027, v327, v328, 4.0, 4.0, v325, v324);
                  sub_10005E894(6, 0, v326, v1, v322, v1022, v1021, v1020, v327, v328, 4.0, 4.0, v325, v324);
                  sub_10005E894(6, 4, v326, v1, v1055, v1054, v1053, v1052, v327, v328, 4.0, 4.0, v325, v324);
                  sub_10005E894(6, 0, v326, v1, v1061, v1060, v1057, v1056, v327, v328, 4.0, 4.0, v325, v324);
                  sub_10005E894(6, 0, v326, v1, v323, v1038, v1037, v1031, v327, v328, 4.0, 4.0, v325, v324);
                  sub_10005E894(5, 8, v326, v1, v1047, v1046, v1045, v1044, v327, v328, 4.0, 4.0, v325, v324);
                }

                else
                {
                  CGRectDivide(*&v290, &v1105, &v1103, v1043, CGRectMinYEdge);
                  v663 = v1105.origin.x;
                  v664 = v1105.origin.y;
                  v665 = v1105.size.width;
                  v666 = v1105.size.height;
                  memset(&v1105, 0, sizeof(v1105));
                  memset(&v1103, 0, sizeof(v1103));
                  v1211.origin.x = 0.0;
                  v1211.origin.y = 0.0;
                  v1211.size.width = v41;
                  v1211.size.height = v51;
                  CGRectDivide(v1211, &v1105, &v1103, v1042, CGRectMaxYEdge);
                  v1060 = v1105.origin.y;
                  v1061 = v1105.origin.x;
                  v1056 = v1105.size.height;
                  v1057 = v1105.size.width;
                  sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v663, v664, v665, v666);
                  v667 = v1105.origin.x;
                  v668 = v1105.origin.y;
                  v669 = v1105.size.width;
                  v670 = v1105.size.height;
                  sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, v1106, v1107, v1108, v1109);
                  v1046 = v1105.origin.y;
                  v1047 = v1105.origin.x;
                  v671 = v1105.size.width;
                  v672 = v1105.size.height;
                  sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v1106, v1107, v1108, v1109);
                  v1050 = v1105.origin.y;
                  v1051 = v1105.origin.x;
                  v1048 = v1105.size.height;
                  v1049 = v1105.size.width;
                  v1054 = v1107;
                  v1055 = v1106;
                  v1052 = v1109;
                  v1053 = v1108;
                  v673 = v1099;
                  v674 = v1100;
                  v675 = v667;
                  v676 = v668;
                  v677 = v1097;
                  v678 = v1101;
                  v679 = v1102;
                  sub_10005E894(3, 1, v1097, v1, v675, v676, v669, v670, v1101, v1102, 4.0, 4.0, v1100, v1099);
                  sub_10005E894(4, 2, v677, v1, v1047, v1046, v671, v672, v678, v679, 4.0, 4.0, v674, v673);
                  sub_10005E894(6, 0, v677, v1, v1051, v1050, v1049, v1048, v678, v679, 4.0, 4.0, v674, v673);
                  sub_10005E894(6, 0, v677, v1, v1055, v1054, v1053, v1052, v678, v679, 4.0, 4.0, v674, v673);
                  sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v1061, v1060, v1057, v1056);
                  v680 = v1106;
                  v681 = v1107;
                  v682 = v1108;
                  v683 = v1109;
                  sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
                  v1051 = v1105.origin.x;
                  v1050 = v1105.origin.y;
                  v1049 = v1105.size.width;
                  v1048 = v1105.size.height;
                  v1055 = v1106;
                  v1054 = v1107;
                  v1053 = v1108;
                  v1052 = v1109;
                  sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v680, v681, v682, v683);
                  v684 = v1105.origin.x;
                  v685 = v1105.origin.y;
                  v686 = v1105.size.width;
                  v687 = v1105.size.height;
                  v1061 = v1106;
                  v1060 = v1107;
                  v1057 = v1108;
                  v1056 = v1109;
                  sub_10005E894(6, 4, v677, v1, v1051, v1050, v1049, v1048, v678, v679, 4.0, 4.0, v674, v673);
                  sub_10005E894(6, 4, v677, v1, v1055, v1054, v1053, v1052, v678, v679, 4.0, 4.0, v674, v673);
                  v688 = v685;
                  v689 = v686;
                  v41 = v1089;
                  v51 = v1088;
                  sub_10005E894(6, 4, v677, v1, v684, v688, v689, v687, v678, v679, 4.0, 4.0, v674, v673);
                  sub_10005E894(6, 0, v677, v1, v1061, v1060, v1057, v1056, v678, v679, 4.0, 4.0, v674, v673);
                }

LABEL_213:
                v67 = 0;
                v15 = v1091;
                goto LABEL_46;
              }

              memset(&v1105, 0, sizeof(v1105));
              memset(&v1103, 0, sizeof(v1103));
              v1182.origin.x = 0.0;
              v1182.origin.y = 0.0;
              v1182.size.width = v41;
              v1182.size.height = v51;
              v444 = v1064;
              CGRectDivide(v1182, &v1105, &v1103, v1064, CGRectMinYEdge);
              v445 = v1105.origin.x;
              v446 = v1105.origin.y;
              v447 = v1105.size.width;
              v448 = v1105.size.height;
              memset(&v1105, 0, sizeof(v1105));
              memset(&v1103, 0, sizeof(v1103));
              v1183.origin.x = 0.0;
              v1183.origin.y = 0.0;
              v1183.size.width = v41;
              v1183.size.height = v51;
              CGRectDivide(v1183, &v1105, &v1103, v444, CGRectMaxYEdge);
              v449 = v1105.origin.x;
              v450 = v1105.origin.y;
              v451 = v1105.size.width;
              v452 = v1105.size.height;
              sub_100069024(&v1105.origin, v445, v446, v447, v448);
              v453 = *(v285 + v1);
              v19 = v1094;
              v36 = v283;
              v1060 = v450;
              v1061 = v449;
              v1056 = v452;
              v1057 = v451;
              if (v453)
              {
                LOBYTE(v454) = 1;
                v15 = v1091;
              }

              else
              {
                v528 = 2;
                v15 = v1091;
                v454 = 0;
                v529 = &qword_100A58F88;
                do
                {
                  v531 = *v529++;
                  v530 = v531;
                  if ((v531 & ~v454) == 0)
                  {
                    v530 = 0;
                  }

                  v454 |= v530;
                  --v528;
                }

                while (v528);
              }

              v532 = v1106;
              v533 = v1107;
              v534 = v1108;
              v535 = v1109;
              v1046 = v1111;
              v1047 = v1110;
              v1044 = v1113;
              v1045 = v1112;
              v1050 = v1115;
              v1051 = v1114;
              v1048 = v1117;
              v1049 = v1116;
              v1054 = v1119;
              v1055 = v1118;
              v1052 = v1121;
              v1053 = v1120;
              v536 = v1099;
              v537 = v1100;
              v538 = v1097;
              v539 = v1101;
              v540 = v1102;
              sub_10005E894(3, v454, v1097, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v1101, v1102, 4.0, 4.0, v1100, v1099);
              sub_10005E894(6, 0, v538, v1, v532, v533, v534, v535, v539, v540, 4.0, 4.0, v537, v536);
              sub_10005E894(6, 0, v538, v1, v1047, v1046, v1045, v1044, v539, v540, 4.0, 4.0, v537, v536);
              sub_10005E894(6, 2, v538, v1, v1051, v1050, v1049, v1048, v539, v540, 4.0, 4.0, v537, v536);
              if (*(v6 + v1) == 1)
              {
                v541 = _swiftEmptyArrayStorage[2];
                v543 = v1060;
                v542 = v1061;
                v545 = v1056;
                v544 = v1057;
                v546 = 0;
                if (v541)
                {
                  v547 = &_swiftEmptyArrayStorage[4];
                  v549 = v1054;
                  v548 = v1055;
                  v551 = v1052;
                  v550 = v1053;
                  do
                  {
                    v553 = *v547++;
                    v552 = v553;
                    if ((v553 & ~v546) == 0)
                    {
                      v552 = 0;
                    }

                    v546 |= v552;
                    --v541;
                  }

                  while (v541);
                  goto LABEL_190;
                }
              }

              else
              {
                LOBYTE(v546) = 8;
                v543 = v1060;
                v542 = v1061;
                v545 = v1056;
                v544 = v1057;
              }

              v549 = v1054;
              v548 = v1055;
              v551 = v1052;
              v550 = v1053;
LABEL_190:
              v554 = v1099;
              v555 = v1100;
              v556 = v1097;
              v557 = v1101;
              v558 = v1102;
              sub_10005E894(6, v546, v1097, v1, v548, v549, v550, v551, v1101, v1102, 4.0, 4.0, v1100, v1099);
              sub_100068148(CGRectMinXEdge, &v1105.origin, 0.5, v542, v543, v544, v545);
              v1061 = v1106;
              v1060 = v1107;
              v1057 = v1108;
              v1056 = v1109;
              sub_100068148(CGRectMinYEdge, &v1105.origin, 0.5, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height);
              v559 = v1106;
              v560 = v1107;
              v561 = v1108;
              v562 = v1109;
              sub_10005E894(4, 0, v556, v1, v1105.origin.x, v1105.origin.y, v1105.size.width, v1105.size.height, v557, v558, 4.0, 4.0, v555, v554);
              sub_10005E894(4, 4, v556, v1, v559, v560, v561, v562, v557, v558, 4.0, 4.0, v555, v554);
              sub_10005E894(3, 8, v556, v1, v1061, v1060, v1057, v1056, v557, v558, 4.0, 4.0, v555, v554);
LABEL_44:
              v41 = v1089;
              v51 = v1088;
LABEL_45:
              v67 = 0;
LABEL_46:
              v66 = *v19;
            }

            while (*v19 < ObjCClassFromMetadata);
          }

          swift_unknownObjectRelease();
          goto LABEL_325;
        }

        swift_unknownObjectRelease();
      }

      v1078 = 0;
      v1076 = 0;
      goto LABEL_40;
    }

LABEL_23:
    v51 = v51 * 1.5;
    goto LABEL_24;
  }
}

void sub_100067B84()
{
  v1 = sub_1000684D4(0, 1);
  if (v1)
  {
    v2 = v1;
    if (*(v1 + 16) && (v3 = sub_1000877E4(kCGImagePropertyPixelWidth), (v4 & 1) != 0) && (sub_10000BA20(*(v2 + 56) + 32 * v3, v19), (swift_dynamicCast() & 1) != 0) && *(v2 + 16) && (v5 = sub_1000877E4(kCGImagePropertyPixelHeight), (v6 & 1) != 0) && (sub_10000BA20(*(v2 + 56) + 32 * v5, v19), (swift_dynamicCast() & 1) != 0) && *(v2 + 16) && (v7 = sub_1000877E4(kCGImagePropertyOrientation), (v8 & 1) != 0))
    {
      sub_10000BA20(*(v2 + 56) + 32 * v7, v19);

      sub_10000BA20(v19, v18);
      sub_1000065A8(0, &unk_100ADE730);
      if (swift_dynamicCast())
      {
        if ([v17 integerValue] == 6)
        {
          sub_10000BA7C(v19);
        }

        else
        {
          [v17 integerValue];

          sub_10000BA7C(v19);
        }
      }

      else
      {
        sub_10000BA7C(v19);
      }
    }

    else
    {
    }
  }

  else
  {
    sub_10028642C(0, 1);
    if (v9)
    {
      if (qword_100ACFB80 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000617C(v10, qword_100ADB678);
      v11 = v0;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v12, v13, "%@ Failed to get image resolution", v14, 0xCu);
        sub_100004F84(v15, &unk_100AD4BB0);
      }
    }
  }
}

uint64_t sub_100067EB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100067EFC(CGPoint *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  memset(&slice, 0, sizeof(slice));
  v10 = a4 * 0.5;
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a2, &slice, &remainder, a4 * 0.5, CGRectMinXEdge);
  y = slice.origin.y;
  x = slice.origin.x;
  width = slice.size.width;
  height = slice.size.height;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectDivide(v29, &slice, &remainder, v10, CGRectMaxXEdge);
  v23 = slice.origin.y;
  v24 = slice.origin.x;
  v14 = slice.size.width;
  v15 = slice.size.height;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectDivide(v30, &slice, &remainder, height * 0.5, CGRectMinYEdge);
  size = slice.size;
  origin = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  CGRectDivide(v31, &slice, &remainder, height * 0.5, CGRectMaxYEdge);
  v20 = slice.size;
  v22 = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v32.origin.x = v24;
  v32.origin.y = v23;
  v32.size.width = v14;
  v32.size.height = v15;
  CGRectDivide(v32, &slice, &remainder, v15 * 0.5, CGRectMinYEdge);
  v18 = slice.size;
  v19 = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v33.origin.x = v24;
  v33.origin.y = v23;
  v33.size.width = v14;
  v33.size.height = v15;
  CGRectDivide(v33, &slice, &remainder, v15 * 0.5, CGRectMaxYEdge);
  v16 = slice.origin;
  v17 = slice.size;
  *a1 = origin;
  a1[1] = size;
  a1[2] = v22;
  a1[3] = v20;
  a1[4] = v19;
  a1[5] = v18;
  a1[6] = v16;
  a1[7] = v17;
}

void sub_100068148(CGRectEdge edge@<W0>, CGPoint *a2@<X8>, double a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>)
{
  if (edge > CGRectMinYEdge)
  {
    if (edge == CGRectMaxYEdge)
    {
      v12 = CGRectMinYEdge;
LABEL_8:
      v13 = a7;
LABEL_12:
      v14 = v13 * a3;
      memset(&slice, 0, sizeof(slice));
      v15 = (1.0 - a3) * v13;
      memset(&remainder, 0, sizeof(remainder));
      v22.origin.x = a4;
      v22.origin.y = a5;
      v22.size.width = a6;
      v22.size.height = a7;
      CGRectDivide(v22, &slice, &remainder, v14, edge);
      size = slice.size;
      origin = slice.origin;
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v23.origin.x = a4;
      v23.origin.y = a5;
      v23.size.width = a6;
      v23.size.height = a7;
      CGRectDivide(v23, &slice, &remainder, v15, v12);
      v16 = slice.origin;
      v17 = slice.size;
      *a2 = origin;
      a2[1] = size;
      a2[2] = v16;
      a2[3] = v17;
      return;
    }

    if (edge == CGRectMaxXEdge)
    {
      v12 = CGRectMinXEdge;
      goto LABEL_11;
    }
  }

  else
  {
    if (edge == CGRectMinXEdge)
    {
      v12 = CGRectMaxXEdge;
LABEL_11:
      v13 = a6;
      goto LABEL_12;
    }

    if (edge == CGRectMinYEdge)
    {
      v12 = CGRectMaxYEdge;
      goto LABEL_8;
    }
  }

  type metadata accessor for CGRectEdge(0);
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

id sub_1000682B8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal10MosaicCell_xPlatterView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal10MosaicCell_overflowView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal10MosaicCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer;
  *&v4[v9] = [objc_allocWithZone(CAShapeLayer) init];
  *&v4[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeInset] = 0x4010000000000000;
  v10 = &v4[OBJC_IVAR____TtC7Journal10MosaicCell_index];
  *v10 = 0;
  v10[8] = 1;
  *&v4[OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset] = 0;
  v4[OBJC_IVAR____TtC7Journal10MosaicCell_isEditing] = 0;
  v11 = &v4[OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail];
  *v11 = 0;
  *(v11 + 1) = 0;
  v4[OBJC_IVAR____TtC7Journal10MosaicCell_showResizeMenu] = 2;
  *&v4[OBJC_IVAR____TtC7Journal10MosaicCell____lazy_storage___mosaicAccessibilityCustomActions] = 0;
  *&v4[OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView] = [objc_allocWithZone(type metadata accessor for CanvasAssetView()) initWithFrame:{a1, a2, a3, a4}];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for MosaicCell();
  v12 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setAutoresizingMask:18];
  [v14 setAutoresizesSubviews:0];
  v16 = [v14 contentView];

  [v16 setClipsToBounds:1];
  return v14;
}

uint64_t sub_1000684D4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for AssetType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v10 - 8);
  v12 = v33 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DE5C(a1, a2 & 1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100004F84(v12, &unk_100AD6DD0);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v20 = CGImageSourceCreateWithURL(v18, 0);

    if (v20)
    {
      v21 = CGImageSourceCopyPropertiesAtIndex(v20, 0, 0);
      (*(v14 + 8))(v16, v13);
      if (v21)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v34 = 0;
          type metadata accessor for CFString(0);
          sub_100034178(&qword_100AD1AA8, type metadata accessor for CFString);
          static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

          result = v34;
          if (v34)
          {
            return result;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
      (*(v14 + 8))(v16, v13);
    }
  }

  (*(v7 + 104))(v9, enum case for AssetType.photo(_:), v6);
  sub_100034178(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v34 == v33[2] && v35 == v33[3])
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v7 + 8))(v9, v6);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v3 + OBJC_IVAR____TtC7Journal5Asset_context))
  {
    __chkstk_darwin(v23);
    v33[-2] = v3;
    v26 = v25;
    sub_1000F24EC(&qword_100AD64D8);
    NSManagedObjectContext.performAndWait<A>(_:)();

    v27 = v35;
    if (v35 >> 60 != 15)
    {
      v28 = v34;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v30 = CGImageSourceCreateWithData(isa, 0);

      if (v30)
      {
        v31 = CGImageSourceCopyPropertiesAtIndex(v30, 0, 0);
        if (v31)
        {
          v32 = v31;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v34 = 0;
            type metadata accessor for CFString(0);
            sub_100034178(&qword_100AD1AA8, type metadata accessor for CFString);
            static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
            sub_10003A5C8(v28, v27);

            result = v34;
            if (v34)
            {
              return result;
            }

            return 0;
          }
        }

        sub_10003A5C8(v28, v27);
      }

      else
      {
        sub_10003A5C8(v28, v27);
      }
    }
  }

  return 0;
}

uint64_t sub_100068AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100068B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100068B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100068CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100068DDC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

__n128 sub_100068EF0@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v12.receiver = v2;
  v12.super_class = type metadata accessor for MosaicLayout.Attributes();
  objc_msgSendSuper2(&v12, "copyWithZone:", a1);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  *(v11 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType) = v2[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType];
  v6 = v11 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii;
  result = *&v2[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 32];
  v8 = *&v2[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 48];
  v10 = *&v2[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
  v9 = *&v2[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 16];
  *(v6 + 32) = result;
  *(v6 + 48) = v8;
  *v6 = v10;
  *(v6 + 16) = v9;
  a2[3] = ObjectType;
  *a2 = v11;
  return result;
}

void sub_100069024(CGPoint *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  memset(&slice, 0, sizeof(slice));
  v10 = a4 * 0.5;
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(*&a2, &slice, &remainder, a4 * 0.5, CGRectMinXEdge);
  size = slice.size;
  origin = slice.origin;
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectDivide(v29, &slice, &remainder, v10, CGRectMaxXEdge);
  sub_100067EFC(&slice.origin, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height);
  v11 = slice.origin;
  v12 = slice.size;
  v13 = v22;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  *a1 = origin;
  a1[1] = size;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v15;
  a1[7] = v16;
  a1[8] = v17;
  a1[9] = v18;
}

uint64_t sub_100069140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000691A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100069200(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100069310(void *a1)
{
  type metadata accessor for MosaicLayout.Attributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView);
    v5 = v4[OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType];
    v4[OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType] = *(v3 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType);
    v6 = v3;
    v10 = a1;
    v7 = v4;
    sub_100069410(v5);

    v8 = *(v6 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 16);
    v11[0] = *(v6 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii);
    v11[1] = v8;
    v9 = *(v6 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 48);
    v11[2] = *(v6 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 32);
    v11[3] = v9;
    sub_100069A08(v11);
  }
}

void sub_100069410(unsigned __int8 a1)
{
  v2 = OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType;
  if ((sub_10003C2FC(a1, *(v1 + OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType)) & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView);
    if (v3)
    {
      v4 = *(v1 + v2);
      v5 = v3[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v3[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = v4;
      v6 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      v7 = v3[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated];
      v8 = v3;
      v10 = v8;
      if (v7 == 1 && (v9 = sub_10003C2FC(v4, v5), v8 = v10, (v9 & 1) != 0))
      {
      }

      else
      {
        (*((swift_isaMask & *v8) + 0x100))();
        v3[v6] = 1;
      }
    }

    else
    {

      sub_100069638();
    }
  }
}

void sub_100069638()
{
  v2 = v0;
  v3 = type metadata accessor for ColorResource();
  v29[0] = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView;
  v7 = *&v0[OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView];
  *&v0[OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView] = 0;

  v8 = [v0 subviews];
  sub_1000065A8(0, &qword_100ADC670);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_19;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    [v12 removeFromSuperview];
  }

LABEL_10:

  v14 = *&v2[OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAsset];
  if (!v14)
  {
    return;
  }

  v15 = v2[OBJC_IVAR____TtC7Journal15CanvasAssetView_currentSizeType];
  v16 = v14;
  v17 = sub_10006B2F0(v16, v15);
  v1 = &selRef_setSuggestedName_;
  if (v17)
  {
    v18 = v17;
    [v2 addSubview:v17];
    sub_100013178(0.0);

    v19 = *&v2[v6];
    *&v2[v6] = v18;
  }

  else
  {
    type metadata accessor for PlaceholderAsset();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for PlaceholderAssetView();
      v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v2 addSubview:v20];
      sub_100013178(0.0);
    }
  }

  if (*&v16[OBJC_IVAR____TtC7Journal5Asset_assetMO])
  {
    v29[1] = *&v16[OBJC_IVAR____TtC7Journal5Asset_assetMO];
    type metadata accessor for JournalEntryAssetMO();
    if (MinimumSupportedVersion.isEditingSupported.getter())
    {

      return;
    }
  }

  v21 = qword_100AD0358;
  v10 = v16;
  if (v21 != -1)
  {
    goto LABEL_24;
  }

LABEL_19:
  v22 = qword_100B30350;
  sub_1000065A8(0, &qword_100AD4C70);
  v23 = qword_100AD0D40;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_10000617C(v3, qword_100B316D0);
  (*(v29[0] + 16))(v5, v25, v3);
  v26 = UIColor.init(resource:)();
  v27 = objc_allocWithZone(type metadata accessor for UnsupportedAssetView());
  v28 = sub_1004B7C34(v10, v24, v26, 40.0);
  [v2 v1[191]];
  sub_100013178(0.0);
}

void sub_100069A08(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView;
  v4 = [*(v1 + OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView) layer];
  v5 = a1[1];
  v15 = *a1;
  v16 = v5;
  v6 = a1[3];
  v17 = a1[2];
  v18 = v6;
  [v4 setCornerRadii:&v15];

  v7 = OBJC_IVAR____TtC7Journal10MosaicCell_overflowView;
  v8 = *(v1 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView);
  if (v8)
  {
    v9 = [v8 layer];
    v10 = a1[1];
    v15 = *a1;
    v16 = v10;
    v11 = a1[3];
    v17 = a1[2];
    v18 = v11;
    [v9 setCornerRadii:&v15];
  }

  v12 = [*(v1 + v3) layer];
  [v12 setCornerCurve:kCACornerCurveContinuous];

  v13 = *(v1 + v7);
  if (v13)
  {
    v14 = [v13 layer];
    [v14 setCornerCurve:kCACornerCurveContinuous];
  }
}

void sub_100069B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JournalFeatureFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v60 = v12;
    v61 = v10;
    v62 = v9;
    v63 = OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry;
    v15 = *(Strong + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
    if (v15)
    {
      v16 = a1;
      v17 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
      v18 = swift_beginAccess();
      v19 = *(v15 + v17);
      __chkstk_darwin(v18);
      *(&v59 - 2) = a3;

      v20 = sub_100068DDC(sub_100068DC0, (&v59 - 4), v19);

      if (v20)
      {
        v21 = v20;
        v22 = v16;
        sub_10006AD84(v20);
        v23 = IndexPath.row.getter();
        v24 = v16 + OBJC_IVAR____TtC7Journal10MosaicCell_index;
        *v24 = v23;
        *(v24 + 8) = 0;
        v25 = OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing;
        v26 = v14[OBJC_IVAR____TtC7Journal14CanvasGridView_isEditing];
        v27 = *(v16 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing);
        *(v16 + OBJC_IVAR____TtC7Journal10MosaicCell_isEditing) = v26;
        if (v26 != v27)
        {
          if (v26)
          {
            sub_1007075A0();
          }

          else
          {
            sub_100707BE0();
          }
        }

        *(v16 + OBJC_IVAR____TtC7Journal10MosaicCell_delegate + 8) = &off_100A73AF0;
        swift_unknownObjectWeakAssign();
        if (IndexPath.row.getter() != 4)
        {
          goto LABEL_34;
        }

        v37 = *&v14[v63];
        if (v37)
        {
          v38 = *(v37 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
          if (v38 >> 62)
          {
            v39 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v14[OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid])
          {
            if (v39 <= 5)
            {
              goto LABEL_34;
            }

LABEL_26:
            v40 = v16 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail;
            *(v16 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = (v14[OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded] & 1) == 0;
            sub_100071FBC();
            v41 = v60;
            v42 = v61;
            v43 = v62;
            (*(v61 + 104))(v60, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v62);
            v44 = JournalFeatureFlags.isEnabled.getter();
            (*(v42 + 8))(v41, v43);
            if (v44)
            {
              v45 = 5;
            }

            else
            {
              v45 = 4;
            }

            v46 = *&v14[v63];
            if (v46)
            {
              v47 = *(v46 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
              if (v47 >> 62)
              {
                v58 = _CocoaArrayWrapper.endIndex.getter();
                v49 = v58 - v45;
                if (!__OFSUB__(v58, v45))
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v49 = v48 - v45;
                if (!__OFSUB__(v48, v45))
                {
                  goto LABEL_36;
                }
              }
            }

            else
            {
              v49 = -v45;
              if (!__OFSUB__(0, v45))
              {
LABEL_36:
                *(v40 + 8) = v49;
                goto LABEL_37;
              }
            }

            __break(1u);
            return;
          }
        }

        else
        {
          if (v14[OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid])
          {
LABEL_34:
            *(v16 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = 0;
LABEL_37:
            sub_100071FBC();
            sub_1000F24EC(&qword_100ADAD48);
            v50 = type metadata accessor for AssetType();
            v51 = *(v50 - 8);
            v52 = *(v51 + 72);
            v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
            v54 = swift_allocObject();
            *(v54 + 16) = xmmword_100940050;
            v55 = v54 + v53;
            v56 = *(v51 + 104);
            v56(v55, enum case for AssetType.multiPinMap(_:), v50);
            v56(v55 + v52, enum case for AssetType.stateOfMind(_:), v50);
            LOBYTE(v51) = sub_1000723E8(v21 + OBJC_IVAR____TtC7Journal5Asset_type, v54);

            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (v51)
            {
              v57 = v14[v25];
            }

            else
            {
              v57 = 0;
            }

            *(v22 + OBJC_IVAR____TtC7Journal10MosaicCell_showResizeMenu) = v57;
            return;
          }

          v39 = 0;
        }

        if (qword_100AD0A28 != -1)
        {
          swift_once();
        }

        if (qword_100B30F70 >= v39)
        {
          goto LABEL_34;
        }

        goto LABEL_26;
      }
    }
  }

  if (qword_100ACFFE0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000617C(v28, qword_100AE9A60);
  (*(v6 + 16))(v8, a3, v5);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v65 = v32;
    *v31 = 136315138;
    v33 = UUID.uuidString.getter();
    v35 = v34;
    (*(v6 + 8))(v8, v5);
    v36 = sub_100008458(v33, v35, &v65);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v29, v30, "Unable to find asset with ID: %s", v31, 0xCu);
    sub_10000BA7C(v32);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10006A364(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 < a1)
  {
    return 0;
  }

  v14 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v9 = a1;
  v8 = a2;
  v6 = v14 / 2;
  v15 = OBJC_IVAR____TtC7Journal12MosaicLayout_cachedAttributes;
  result = swift_beginAccess();
  v17 = *(v7 + v15);
  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_16:

    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
    [v18 frame];
    v29.origin.x = v13;
    v29.origin.y = v12;
    v29.size.width = v11;
    v29.size.height = v10;
    if (CGRectIntersectsRect(v26, v29))
    {
    }

    else
    {
      [v18 frame];
      MaxY = CGRectGetMaxY(v27);
      v28.origin.x = v13;
      v28.origin.y = v12;
      v28.size.width = v11;
      v28.size.height = v10;
      if (MaxY >= CGRectGetMinY(v28))
      {
        v25 = v6 - 1;
        v20.n128_f64[0] = v13;
        v21.n128_f64[0] = v12;
        v22.n128_f64[0] = v11;
        v23.n128_f64[0] = v10;
        v24 = v9;
      }

      else
      {
        v24 = v6 + 1;
        v20.n128_f64[0] = v13;
        v21.n128_f64[0] = v12;
        v22.n128_f64[0] = v11;
        v25 = v8;
        v23.n128_f64[0] = v10;
      }

      v6 = sub_10006A364(v24, v25, v20, v21, v22, v23);
    }

    return v6;
  }

  if (v14 < -1)
  {
    __break(1u);
  }

  else if (v6 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v6 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10006A51C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v5;
  v14 = OBJC_IVAR____TtC7Journal12MosaicLayout_cachedAttributes;
  swift_beginAccess();
  v15 = *(v14 + v5);
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16 < 0)
    {
      break;
    }

LABEL_3:
    if (!v16)
    {
      return _swiftEmptyArrayStorage;
    }

    v5 = v9;
    v17 = sub_10006A364(0, v16 - 1, a1, a2, a3, a4);
    if (v18)
    {
      return _swiftEmptyArrayStorage;
    }

    v8 = v17;
    if (v17 < 0)
    {
      goto LABEL_61;
    }

    v5 = *(v14 + v9);
    v4 = (v5 >> 62);
    if (v5 >> 62)
    {
      goto LABEL_62;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < v17)
    {
      goto LABEL_64;
    }

LABEL_9:
    if ((v5 & 0xC000000000000001) == 0 || v8 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_10006AA00();
      swift_bridgeObjectRetain_n();
      v20 = 0;
      do
      {
        v21 = v20 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v20);
        v20 = v21;
      }

      while (v8 != v21);
    }

    v44 = v14;
    if (v4)
    {
      _CocoaArrayWrapper.subscript.getter();
      v14 = v22;
      v6 = v23;
      v25 = v24;

      v4 = (v25 >> 1);
    }

    else
    {
      v6 = 0;
      v14 = ((v5 & 0xFFFFFFFFFFFFFF8) + 32);
      v4 = v8;
    }

    v7 = &selRef_setSuggestedName_;
    v5 = _swiftEmptyArrayStorage;
    if (v4 == v6)
    {
LABEL_30:
      result = swift_unknownObjectRelease();
      v6 = *(v44 + v9);
      v4 = (v6 >> 62);
      if (v6 >> 62)
      {
        goto LABEL_65;
      }

      v32 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32 < v8)
      {
        goto LABEL_69;
      }

      goto LABEL_32;
    }

    v26 = v4;
    while (!__OFSUB__(v26--, 1))
    {
      if (v26 < v6 || v26 >= v4)
      {
        goto LABEL_57;
      }

      v28 = v14[v26];
      [v28 frame];
      MaxY = CGRectGetMaxY(v45);
      v46.origin.x = a1;
      v46.origin.y = a2;
      v46.size.width = a3;
      v46.size.height = a4;
      if (CGRectGetMinY(v46) > MaxY)
      {

        goto LABEL_30;
      }

      v30 = v28;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v5 = _swiftEmptyArrayStorage;
      if (v26 == v6)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < 0)
  {
    goto LABEL_71;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= v8)
  {
    goto LABEL_9;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_72;
  }

  v32 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v8)
  {
    goto LABEL_73;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result >= v32)
  {
LABEL_32:
    if ((v6 & 0xC000000000000001) == 0 || v8 == v32)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (v8 >= v32)
      {
        goto LABEL_70;
      }

      sub_10006AA00();
      swift_bridgeObjectRetain_n();
      v33 = v8;
      do
      {
        v34 = v33 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v33);
        v33 = v34;
      }

      while (v32 != v34);
    }

    if (v4)
    {
      v9 = _CocoaArrayWrapper.subscript.getter();
      v35 = v36;
      v8 = v37;
      v39 = v38;

      v32 = v39 >> 1;
    }

    else
    {
      v9 = v6 & 0xFFFFFFFFFFFFFF8;
      v35 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    swift_unknownObjectRetain();
    v6 = v32 - v8;
    if (v32 != v8)
    {
      if (v8 <= v32)
      {
        v40 = v32;
      }

      else
      {
        v40 = v8;
      }

      v41 = v40 - v8;
      v14 = (v35 + 8 * v8);
      while (v41)
      {
        v42 = *v14;
        [v42 v7[220]];
        MinY = CGRectGetMinY(v47);
        v48.origin.x = a1;
        v48.origin.y = a2;
        v48.size.width = a3;
        v48.size.height = a4;
        if (MinY > CGRectGetMaxY(v48))
        {

          goto LABEL_54;
        }

        v4 = v42;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = _swiftEmptyArrayStorage;
        --v41;
        ++v14;
        if (!--v6)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_58;
    }

LABEL_54:
    swift_unknownObjectRelease_n();
    return v5;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_10006AA00()
{
  result = qword_100AD8A70;
  if (!qword_100AD8A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD8A70);
  }

  return result;
}

void sub_10006AB10()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CanvasGridCollectionView();
  objc_msgSendSuper2(&v12, "invalidateIntrinsicContentSize");
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    v9 = [v1 superview];
    if (!v9)
    {
      return;
    }

    v1 = v9;
    while (1)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (v2)
      {
        break;
      }

      v10 = [v1 superview];
      v1 = v10;
      if (!v10)
      {
        return;
      }
    }
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10006B2E0;
  *(v6 + 24) = v5;
  v11[4] = sub_100028EF4;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10001A7D4;
  v11[3] = &unk_100A75008;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutAnimation:v7];
  _Block_release(v7);

  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }
}

uint64_t sub_10006AD3C()
{

  return swift_deallocObject();
}

void sub_10006AD84(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset);
  *(v1 + OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset) = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v7 = v3;
  if (!a1 || (type metadata accessor for Asset(), a1 = a1, v4 = v7, v5 = static NSObject.== infix(_:_:)(), v4, (v5 & 1) == 0))
  {
LABEL_7:
    sub_10006AEA4();

    v6 = v7;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_8:
}

void sub_10006AEA4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView;
  v3 = [*&v0[OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView] superview];
  if (!v3)
  {
    [v0 addSubview:*&v0[v2]];
    v4 = *&v0[v2];
    v5 = [v4 superview];
    v6 = &selRef_setSuggestedName_;
    if (v5)
    {
      v7 = v5;
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = [v4 topAnchor];
      v9 = [v7 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];

      [v10 setConstant:2.0];
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
      v15 = [v11 leadingAnchor];
      v16 = [v13 leadingAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      [v17 setConstant:2.0];
      if (v17)
      {
        [v17 setActive:1];
      }

      v18 = &selRef_setSuggestedName_;
      v6 = v14;
    }

    else
    {
      v17 = 0;
      v13 = v11;
      v18 = &selRef_setSuggestedName_;
    }

    v19 = *&v1[v2];
    v20 = [v19 superview];
    if (v20)
    {
      v21 = v20;
      [v19 v6[278]];
      v22 = [v19 trailingAnchor];
      v23 = [v21 trailingAnchor];
      v24 = [v22 v18[207]];

      [v24 setConstant:-2.0];
      if (v24)
      {
        [v24 setActive:1];
      }
    }

    else
    {
      v24 = 0;
      v21 = v19;
    }

    v25 = *&v1[v2];
    v26 = sub_100028DA0(0, 1, 2.0);

    v3 = v26;
  }

  v27 = *&v1[v2];
  v28 = *&v1[OBJC_IVAR____TtC7Journal10MosaicCell_journalAsset];
  v29 = *&v27[OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAsset];
  *&v27[OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAsset] = v28;
  if (!v29)
  {
    if (!v28)
    {
      return;
    }

    v36 = 0;
    v28 = v28;
    goto LABEL_24;
  }

  v36 = v29;
  if (!v28)
  {
LABEL_24:
    v34 = v27;
    goto LABEL_25;
  }

  type metadata accessor for Asset();
  v28 = v28;
  v30 = v27;
  v31 = v36;
  v32 = static NSObject.== infix(_:_:)();

  if ((v32 & 1) == 0)
  {
LABEL_25:
    v35 = *&v27[OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView];
    *&v27[OBJC_IVAR____TtC7Journal15CanvasAssetView_journalAssetView] = 0;

    sub_100069638();
    v33 = v36;
    goto LABEL_26;
  }

  v33 = v31;
LABEL_26:
}

char *sub_10006B2F0(void *a1, uint64_t a2)
{
  type metadata accessor for PhotoAsset();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    type metadata accessor for PhotoAssetView();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = v6;
    if (a2 == 8)
    {
LABEL_8:
      [*&v7[OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView] setPreferredImageDynamicRange:1];
      v16 = *&v7[OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset];
      *&v7[OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset] = v5;
      v17 = a1;

      sub_10007188C();
LABEL_9:

      return v7;
    }

    v8 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v9 = v6[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
    v6[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = a2;
    v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
    v11 = v6[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated];
    v12 = v6;
    if (v11 == 1)
    {
      if (sub_10003C2FC(a2, v9))
      {
LABEL_7:

        goto LABEL_8;
      }

      a2 = v7[v8];
    }

    v13 = *&v12[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v14 = *((swift_isaMask & *v13) + 0x58);
    v15 = v13;
    v14(0, a2);

    sub_100070F50();
    v7[v10] = 1;
    goto LABEL_7;
  }

  type metadata accessor for VideoAsset();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    type metadata accessor for VideoAssetGridView();
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v21 = v20;
    if (a2 != 8)
    {
      v22 = v20[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v20[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = a2;
      v23 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      if (v20[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1 || (sub_10003C2FC(a2, v22) & 1) == 0)
      {
        sub_1000991CC();
        v21[v23] = 1;
      }
    }

    v24 = CADynamicRangeConstrainedHigh;
    v7 = v21;
    sub_100815EE0(v24);
    sub_100815F8C(2);
    v25 = *&v7[OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset];
    *&v7[OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset] = v19;
    v26 = a1;
    sub_100099584(v25);

    return v7;
  }

  type metadata accessor for LinkAsset();
  if (swift_dynamicCastClass())
  {
    type metadata accessor for LinkAssetGridView();
    return sub_1006AE2EC(a1, a2);
  }

  type metadata accessor for ContactAsset();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    type metadata accessor for ContactAssetGridView();
    v29 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = v29;
    if (a2 != 8)
    {
      v30 = v29[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v29[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = a2;
      v31 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      v32 = v29[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated];
      v33 = v29;
      if (v32 != 1 || (sub_10003C2FC(a2, v30) & 1) == 0)
      {
        sub_10032A548();
        v7[v31] = 1;
      }
    }

    v34 = *&v7[OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset];
    *&v7[OBJC_IVAR____TtC7Journal16ContactAssetView_contactAsset] = v28;
    v35 = a1;

    sub_100745BF4();
    return v7;
  }

  type metadata accessor for AudioAsset();
  v37 = swift_dynamicCastClass();
  if (v37)
  {
    v38 = v37;
    type metadata accessor for AudioAssetTranscriptionGridView();
    v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v40 = v39;
    if (a2 != 8)
    {
      v41 = v39[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v39[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = a2;
      v42 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      if (v39[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1 || (sub_10003C2FC(a2, v41) & 1) == 0)
      {
        sub_100709F30();
        v40[v42] = 1;
      }
    }

    v43 = *&v40[OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset];
    *&v40[OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset] = v38;
    v17 = a1;
    v7 = v40;

    sub_1000AA014();
    goto LABEL_9;
  }

  type metadata accessor for ThirdPartyMediaAsset();
  v44 = swift_dynamicCastClass();
  if (v44)
  {
    v45 = v44;
    v46 = a1;
    return sub_1005498EC(v45, a2);
  }

  type metadata accessor for MusicAsset();
  if (swift_dynamicCastClass() || (type metadata accessor for PodcastAsset(), swift_dynamicCastClass()) || (type metadata accessor for BookAsset(), swift_dynamicCastClass()))
  {
    type metadata accessor for MediaAssetGridView();
    return sub_1003AEDB4(a1, a2);
  }

  type metadata accessor for ConfettiAsset();
  v47 = swift_dynamicCastClass();
  if (v47)
  {
    v48 = v47;
    type metadata accessor for ConfettiAssetGridView();
    v49 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v50 = v49;
    if (a2 != 8)
    {
      v51 = v49[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v49[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = a2;
      v52 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      if (v49[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1 || (sub_10003C2FC(a2, v51) & 1) == 0)
      {
        sub_10054EAC0();
        v50[v52] = 1;
      }
    }

    v53 = *&v50[OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset];
    *&v50[OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset] = v48;
    v17 = a1;
    v7 = v50;

    sub_10033D324();
    goto LABEL_9;
  }

  return sub_10006BEA8(a1, a2);
}

uint64_t type metadata accessor for LinkAsset()
{
  result = qword_100AD79E0;
  if (!qword_100AD79E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  type metadata accessor for MosaicCell();
  v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_100004F84(v6, &qword_100AD1420);
  return v9;
}

uint64_t sub_10006BA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AE9B88);

  return sub_10006B8F4(a1, a2, a3);
}

uint64_t type metadata accessor for ContactAsset()
{
  result = qword_100AD83E8;
  if (!qword_100AD83E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ThirdPartyMediaAsset()
{
  result = qword_100AF6B38;
  if (!qword_100AF6B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for MusicAsset()
{
  result = qword_100AD6F18;
  if (!qword_100AD6F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PodcastAsset()
{
  result = qword_100AE9D70;
  if (!qword_100AE9D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for BookAsset()
{
  result = qword_100AD42C0;
  if (!qword_100AD42C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for ConfettiAsset()
{
  result = qword_100AED6C8;
  if (!qword_100AED6C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10006BEA8(void *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v175 - v5;
  type metadata accessor for PhotoAsset();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    type metadata accessor for PhotoAssetView();
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = a1;
    v11 = [v9 init];
    v12 = v11;
    if (a2 == 8)
    {
LABEL_8:
      v21 = *(v12 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset);
      *(v12 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset) = v8;
      v22 = v10;

      sub_10007188C();
LABEL_9:

LABEL_10:
      return v12;
    }

    v13 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v14 = *(v11 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
    *(v11 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
    v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
    v16 = *(v11 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
    v17 = v11;
    if (v16 == 1)
    {
      if (sub_10003C2FC(a2, v14))
      {
LABEL_7:

        goto LABEL_8;
      }

      a2 = *(v12 + v13);
    }

    v18 = *&v17[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v19 = *((swift_isaMask & *v18) + 0x58);
    v20 = v18;
    v19(0, a2);

    sub_100070F50();
    *(v12 + v15) = 1;
    goto LABEL_7;
  }

  type metadata accessor for VideoAsset();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    type metadata accessor for VideoAssetView();
    v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v26 = a1;
    v27 = [v25 init];
    v12 = v27;
    if (a2 != 8)
    {
      v28 = *(v27 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      *(v27 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
      v29 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      v30 = *(v27 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
      v31 = v27;
      if (v30 != 1 || (sub_10003C2FC(a2, v28) & 1) == 0)
      {
        (*((swift_isaMask & *v31) + 0x100))();
        *(v12 + v29) = 1;
      }
    }

    v32 = *(v12 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
    *(v12 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset) = v24;
    v33 = v26;
    sub_100099584(v32);

    return v12;
  }

  type metadata accessor for AudioAsset();
  v35 = swift_dynamicCastClass();
  if (v35)
  {
    v36 = v35;
    type metadata accessor for AudioAssetView();
    v37 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v38 = a1;
    v39 = [v37 init];
    v12 = v39;
    if (a2 != 8)
    {
      v40 = *(v39 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      *(v39 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
      v41 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      v42 = *(v39 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
      v43 = v39;
      if (v42 != 1 || (sub_10003C2FC(a2, v40) & 1) == 0)
      {
        (*((swift_isaMask & *v43) + 0x100))();
        *(v12 + v41) = 1;
      }
    }

    v44 = *(v12 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset);
    *(v12 + OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset) = v36;
    v22 = v38;

    sub_1000AA014();
    goto LABEL_9;
  }

  type metadata accessor for LivePhotoAsset();
  v45 = swift_dynamicCastClass();
  if (v45)
  {
    v46 = v45;
    type metadata accessor for LivePhotoAssetView();
    v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v48 = a1;
    v49 = [v47 init];
    v12 = v49;
    if (a2 == 8)
    {
LABEL_33:
      v58 = *(v12 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset);
      *(v12 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset) = v46;
      v22 = v48;

      sub_100074F78();
      goto LABEL_9;
    }

    v50 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v51 = *(v49 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
    *(v49 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
    v52 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
    v53 = *(v49 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
    v54 = v49;
    if (v53 == 1)
    {
      if (sub_10003C2FC(a2, v51))
      {
LABEL_32:

        goto LABEL_33;
      }

      a2 = *(v12 + v50);
    }

    v55 = *&v54[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v56 = *((swift_isaMask & *v55) + 0x58);
    v57 = v55;
    v56(0, a2);

    sub_100073E04();
    sub_100074D28();
    *(v12 + v52) = 1;
    goto LABEL_32;
  }

  type metadata accessor for MultiPinMapAsset();
  v59 = swift_dynamicCastClass();
  if (v59)
  {
    v60 = v59;
    type metadata accessor for MapAssetView();
    v61 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = a1;
    v62 = [v61 init];
    v12 = v62;
    if (a2 == 8)
    {
LABEL_41:
      sub_100074C10(v60, 0);
      goto LABEL_10;
    }

    v63 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v64 = *(v62 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
    *(v62 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
    v65 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
    v66 = *(v62 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
    v67 = v62;
    if (v66 == 1)
    {
      if (sub_10003C2FC(a2, v64))
      {
LABEL_40:

        goto LABEL_41;
      }

      LOBYTE(a2) = *(v12 + v63);
    }

    sub_1000738CC(10, a2);
    *(v67 + OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad) = 1;
    [v67 setNeedsLayout];
    *(v12 + v65) = 1;
    goto LABEL_40;
  }

  type metadata accessor for MusicAsset();
  v68 = swift_dynamicCastClass();
  if (v68 || (type metadata accessor for PodcastAsset(), (v68 = swift_dynamicCastClass()) != 0) || (type metadata accessor for BookAsset(), (v68 = swift_dynamicCastClass()) != 0))
  {
    v69 = v68;
    type metadata accessor for MediaAssetView();
    v70 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = a1;
    v71 = [v70 init];
    v12 = v71;
    if (a2 != 8)
    {
      v72 = *(v71 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      *(v71 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
      v73 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      v74 = *(v71 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
      v75 = v71;
      if (v74 != 1 || (sub_10003C2FC(a2, v72) & 1) == 0)
      {
        (*((swift_isaMask & *v75) + 0x100))();
        *(v12 + v73) = 1;
      }
    }

    (*((swift_isaMask & *v12) + 0x1D0))(v69);
    goto LABEL_10;
  }

  type metadata accessor for WorkoutIconAsset();
  v76 = swift_dynamicCastClass();
  if (v76)
  {
    v77 = v76;
    type metadata accessor for WorkoutActivityGridView();
    v78 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v79 = a1;
    v80 = [v78 init];
    v12 = v80;
    if (a2 != 8)
    {
      v81 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
      v82 = *(v80 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      *(v80 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
      v83 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      v84 = *(v80 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
      v85 = v80;
      v176 = v83;
      if (v84 == 1)
      {
        v86 = v85;
        if (sub_10003C2FC(a2, v82))
        {

          goto LABEL_72;
        }

        a2 = *(v12 + v81);
        v85 = v86;
      }

      v106 = *&v85[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
      v107 = *((swift_isaMask & *v106) + 0x58);
      v108 = v85;
      v109 = v106;
      v107(7, a2);

      v110 = type metadata accessor for TaskPriority();
      (*(*(v110 - 8) + 56))(v6, 1, 1, v110);
      v111 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v112 = static MainActor.shared.getter();
      v113 = swift_allocObject();
      v113[2] = v112;
      v113[3] = &protocol witness table for MainActor;
      v113[4] = v111;

      sub_1003E9628(0, 0, v6, &unk_10095F870, v113);

      *(v12 + v176) = 1;
    }

LABEL_72:
    v114 = *(v12 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset);
    *(v12 + OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset) = v77;
    v22 = v79;

    sub_1000A0344();
    goto LABEL_9;
  }

  type metadata accessor for WorkoutRouteAsset();
  v87 = swift_dynamicCastClass();
  if (v87)
  {
    v88 = v87;
    type metadata accessor for RouteAssetView();
    v89 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v90 = a1;
    v91 = [v89 init];
    v12 = v91;
    if (a2 != 8)
    {
      v92 = *(v91 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      *(v91 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
      v93 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      v94 = *(v91 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
      v95 = v91;
      if (v94 != 1 || (sub_10003C2FC(a2, v92) & 1) == 0)
      {
        sub_100213060();
        *(v12 + v93) = 1;
      }
    }

    v96 = *(v12 + OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset);
    *(v12 + OBJC_IVAR____TtC7Journal14RouteAssetView_routeAsset) = v88;
    v22 = v90;

    sub_10020FF5C();
    goto LABEL_9;
  }

  type metadata accessor for MotionActivityAsset();
  v97 = swift_dynamicCastClass();
  if (v97)
  {
    v98 = v97;
    type metadata accessor for MotionActivityGridView();
    v99 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v100 = a1;
    v101 = [v99 init];
    v102 = v101;
    if (a2 != 8)
    {
      v103 = v101[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v101[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = a2;
      v104 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      if (v101[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1 || (sub_10003C2FC(a2, v103) & 1) == 0)
      {
        sub_1003F43E0();
        v102[v104] = 1;
      }
    }

    v105 = *&v102[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset];
    *&v102[OBJC_IVAR____TtC7Journal23MotionActivityAssetView_motionActivityAsset] = v98;
    v22 = v100;
    v12 = v102;

    sub_1001F567C();
LABEL_69:

    goto LABEL_9;
  }

  type metadata accessor for GenericMapAsset();
  v115 = swift_dynamicCastClass();
  if (v115)
  {
    v116 = v115;
    type metadata accessor for GenericMapAssetView();
    v117 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v118 = a1;
    v119 = [v117 init];
    v12 = v119;
    if (a2 == 8)
    {
LABEL_80:
      v128 = *(v12 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset);
      *(v12 + OBJC_IVAR____TtC7Journal19GenericMapAssetView_mapAsset) = v116;
      v22 = v118;

      sub_1007195FC();
      goto LABEL_9;
    }

    v120 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    v121 = *(v119 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
    *(v119 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
    v122 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
    v123 = *(v119 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
    v124 = v119;
    if (v123 == 1)
    {
      if (sub_10003C2FC(a2, v121))
      {
LABEL_79:

        goto LABEL_80;
      }

      a2 = *(v12 + v120);
    }

    v125 = *&v124[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v126 = *((swift_isaMask & *v125) + 0x58);
    v127 = v125;
    v126(10, a2);

    sub_1007195FC();
    *(v12 + v122) = 1;
    goto LABEL_79;
  }

  type metadata accessor for StateOfMindAsset();
  v129 = swift_dynamicCastClass();
  if (v129)
  {
    v130 = v129;
    type metadata accessor for StateOfMindAssetGridView();
    v131 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v132 = a1;
    v133 = [v131 init];
    v134 = v133;
    if (a2 != 8)
    {
      v135 = v133[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
      v133[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = a2;
      v136 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      if (v133[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1 || (sub_10003C2FC(a2, v135) & 1) == 0)
      {
        sub_10047A7F4();
        v134[v136] = 1;
      }
    }

    v137 = *&v134[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset];
    *&v134[OBJC_IVAR____TtC7Journal20StateOfMindAssetView_stateOfMindAsset] = v130;
    v22 = v132;
    v12 = v134;

    sub_1000F6624();
    goto LABEL_69;
  }

  type metadata accessor for DrawingAsset();
  v138 = swift_dynamicCastClass();
  if (v138)
  {
    v139 = v138;
    type metadata accessor for DrawingAssetView();
    v140 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v141 = a1;
    v142 = [v140 init];
    v12 = v142;
    if (a2 != 8)
    {
      v143 = *(v142 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      *(v142 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
      v144 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
      v145 = *(v142 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
      v146 = v142;
      if (v145 != 1 || (sub_10003C2FC(a2, v143) & 1) == 0)
      {
        *(v12 + v144) = 1;
      }
    }

    v147 = v141;
    sub_10071B748(v139);
  }

  else
  {
    type metadata accessor for ThirdPartyMediaAsset();
    v148 = swift_dynamicCastClass();
    if (v148)
    {
      v149 = v148;
      type metadata accessor for MediaAssetView();
      v150 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v151 = a1;
      v152 = [v150 init];
      v12 = v152;
      if (a2 != 8)
      {
        v153 = *(v152 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
        *(v152 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
        v154 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
        v155 = *(v152 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
        v156 = v152;
        if (v155 != 1 || (sub_10003C2FC(a2, v153) & 1) == 0)
        {
          (*((swift_isaMask & *v156) + 0x100))();
          *(v12 + v154) = 1;
        }
      }

      (*((swift_isaMask & *v12) + 0x1D0))(v149);
    }

    else
    {
      type metadata accessor for ConfettiAsset();
      v157 = swift_dynamicCastClass();
      if (v157)
      {
        v158 = v157;
        type metadata accessor for ConfettiAssetView();
        v159 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v160 = a1;
        v161 = [v159 init];
        v12 = v161;
        if (a2 != 8)
        {
          v162 = *(v161 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
          *(v161 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
          v163 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
          v164 = *(v161 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
          v165 = v161;
          if (v164 != 1 || (sub_10003C2FC(a2, v162) & 1) == 0)
          {
            (*((swift_isaMask & *v165) + 0x100))();
            *(v12 + v163) = 1;
          }
        }

        v166 = *(v12 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset);
        *(v12 + OBJC_IVAR____TtC7Journal17ConfettiAssetView_confettiAsset) = v158;
        v22 = v160;

        sub_10033D324();
        goto LABEL_9;
      }

      type metadata accessor for UnknownAsset();
      if (!swift_dynamicCastClass())
      {
        return 0;
      }

      type metadata accessor for UnknownAssetView();
      v167 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v12 = v167;
      if (a2 != 8)
      {
        v168 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
        v169 = *(v167 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
        *(v167 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = a2;
        v170 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
        v171 = *(v167 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated);
        v22 = v167;
        if (v171 != 1 || (sub_10003C2FC(a2, v169) & 1) == 0)
        {
          v172 = *&v22[OBJC_IVAR____TtC7Journal16UnknownAssetView_symbolAndTextFallbackView];
          if (v172)
          {
            v173 = *(v12 + v168);
            v174 = v172;
            sub_10021BE90(v173);
          }

          *(v12 + v170) = 1;
        }

        goto LABEL_10;
      }
    }
  }

  return v12;
}

uint64_t sub_10006CFB4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10006CFEC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t type metadata accessor for MapAssetView()
{
  result = qword_100AD90C8;
  if (!qword_100AD90C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006D078()
{
  sub_10006D1E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10006D1E4()
{
  if (!qword_100ADE4E0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADE4E0);
    }
  }
}

void sub_10006D260()
{
  v1 = sub_1000F24EC(&qword_100AD7CD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v56 - v2;
  v4 = sub_1000F24EC(&unk_100AD7CE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v56 - v6;
  v8 = sub_1000F24EC(&unk_100AE92B0);
  v67 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v56 - v13;
  v15 = __chkstk_darwin(v12);
  v68 = (&v56 - v16);
  __chkstk_darwin(v15);
  v19 = (&v56 - v18);
  v20 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (!v20)
  {
    goto LABEL_14;
  }

  v65 = v17;
  v21 = v20;
  v22 = [v21 dataSource];
  if (!v22)
  {

LABEL_14:
    if (qword_100ACFBF8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000617C(v49, qword_100B2F718);
    v68 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v68, v50, "DataSource is not UICollectionViewDiffableDataSource", v51, 2u);
    }

    v52 = v68;

    return;
  }

  v62 = v19;
  v64 = v21;
  v23 = v22;
  sub_1000F24EC(&unk_100AD7CC0);
  v24 = swift_dynamicCastClass();
  if (!v24)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v60 = v23;
  v61 = v3;
  v25 = v24;
  sub_10006DD7C();
  v63 = v0;
  sub_1001E4B10();
  v26 = v63;
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v62;
  (*((swift_isaMask & *v26) + 0x4E0))(v7);
  (*(v5 + 8))(v7, v4);
  v59 = v25;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v28 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  if (v28 == NSDiffableDataSourceSnapshot.numberOfItems.getter() && (v29 = *(NSDiffableDataSourceSnapshot.reloadedItemIdentifiers.getter() + 16), , !v29))
  {
    v58 = 0;
  }

  else
  {
    v58 = *(v26 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_disableReloadAnimations) ^ 1;
  }

  v31 = v65;
  v30 = v66;
  v32 = v67;
  if (qword_100ACFBF8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000617C(v33, qword_100B2F718);
  v34 = *(v32 + 16);
  v34(v14, v68, v8);
  v34(v31, v27, v8);
  v66 = v34;
  v34(v30, v27, v8);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  v65 = v35;
  if (!os_log_type_enabled(v35, v36))
  {
    v48 = v32;
    v53 = *(v32 + 8);
    v53(v30, v8);
    v53(v31, v8);
    v54 = v14;
    v40 = v53;
    v53(v54, v8);
    v47 = v64;
    v46 = v65;
    goto LABEL_22;
  }

  v57 = v36;
  v37 = swift_slowAlloc();
  *v37 = 134218496;
  v38 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  v39 = v14;
  v40 = *(v32 + 8);
  v40(v39, v8);
  *(v37 + 4) = v38;
  *(v37 + 12) = 2048;
  v41 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  v40(v31, v8);
  *(v37 + 14) = v41;
  *(v37 + 22) = 2048;
  v42 = *(NSDiffableDataSourceSnapshot.reconfiguredItemIdentifiers.getter() + 16);

  v43 = *(NSDiffableDataSourceSnapshot.reloadedItemIdentifiers.getter() + 16);

  v44 = __OFADD__(v42, v43);
  v45 = v42 + v43;
  if (!v44)
  {
    v40(v30, v8);
    *(v37 + 24) = v45;
    v46 = v65;
    _os_log_impl(&_mh_execute_header, v65, v57, "-- Applying new snapshot --\nOld item count: %ld\nNew item count: %ld\nChanged items count: %ld", v37, 0x20u);

    v47 = v64;
    v48 = v67;
LABEL_22:

    v55 = v61;
    (v66)(v61, v27, v8);
    (*(v48 + 56))(v55, 0, 1, v8);
    (*((swift_isaMask & *v63) + 0x390))(v55);
    sub_100004F84(v55, &qword_100AD7CD8);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
    swift_unknownObjectRelease();

    v40(v68, v8);
    v40(v27, v8);

    return;
  }

  __break(1u);
}

uint64_t sub_10006DA78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10006DAB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000065A8(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10006DAF4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_mapView] = 0;
  v4[OBJC_IVAR____TtC7Journal12MapAssetView_mapType] = 0;
  v9 = OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView;
  v11 = [objc_opt_self() effectWithStyle:6];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v10] = v12;
  v13 = OBJC_IVAR____TtC7Journal12MapAssetView_labelView;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView;
  type metadata accessor for SymbolAndPlatterFallbackView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView____lazy_storage___platterBlurMaskView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_locations] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_annotationsDict] = &_swiftEmptyDictionarySingleton;
  v15 = OBJC_IVAR____TtC7Journal12MapAssetView_latestImageRequestID;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset] = 0;
  v17 = &v4[OBJC_IVAR____TtC7Journal12MapAssetView_platterPadding];
  *v17 = xmmword_100948650;
  v17[1] = xmmword_100948650;
  v18 = &v4[OBJC_IVAR____TtC7Journal12MapAssetView_platterLabelPadding];
  __asm { FMOV            V1.2D, #12.0 }

  *v18 = xmmword_100948660;
  v18[1] = _Q1;
  v24 = &v4[OBJC_IVAR____TtC7Journal12MapAssetView_gradientLabelPadding];
  *v24 = xmmword_100948670;
  v24[1] = xmmword_100948670;
  v25 = OBJC_IVAR____TtC7Journal12MapAssetView_clusterAnnotationsDict;
  *&v4[v25] = sub_100073348(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_newReplacementAnnotation] = 0;
  v4[OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad] = 0;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for MapAssetView();
  v26 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  sub_10007361C();

  return v26;
}