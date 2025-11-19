void sub_1000B18E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v60 - v5;
  v7 = type metadata accessor for HeadphoneModel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v60 - v13;
  v67.receiver = v1;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    swift_beginAccess();
    sub_1000145EC(v16 + 16, v65);
    swift_unknownObjectRelease();
    v17 = v66;
    if (v66)
    {
      v18 = sub_10000E7E4(v65, v66);
      v63 = &v60;
      v19 = *(v17 - 8);
      v20 = *(v19 + 64);
      __chkstk_darwin(v18);
      v64 = v8;
      v22 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v22);
      sub_10000E950(v65, &qword_10011FBC0, &unk_1000D5EF0);
      v23 = *v22;
      v24 = v7;
      v62 = v7;
      v25 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v23 + v25, v12);
      (*(v19 + 8))(v22, v17);
      sub_10000E828(v12, v14);
      v61 = v14;
      sub_10000E390(v14, v6);
      (*(v64 + 56))(v6, 0, 1, v24);
      v26 = &v1[OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_model];
      swift_beginAccess();
      sub_100013144(v6, v26);
      swift_endAccess();
      v27 = [v1 contentView];
      v28 = v1;
      v29 = sub_1000B0FCC();
      [v27 addSubview:v29];

      v63 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1000D5C90;
      v31 = OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView;
      v32 = [*&v1[OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController____lazy_storage___imageView] centerXAnchor];
      v33 = [v28 contentView];
      v34 = [v33 mainContentGuide];

      v35 = [v34 centerXAnchor];
      v36 = [v32 constraintEqualToAnchor:v35];

      *(v30 + 32) = v36;
      v37 = [*&v28[v31] topAnchor];
      v38 = [v28 contentView];
      v39 = [v38 mainContentGuide];

      v40 = [v39 topAnchor];
      v41 = [v37 constraintEqualToAnchor:v40];

      *(v30 + 40) = v41;
      v42 = [*&v28[v31] bottomAnchor];
      v43 = [v28 contentView];
      v44 = [v43 mainContentGuide];

      v45 = [v44 bottomAnchor];
      v46 = [v42 constraintEqualToAnchor:v45];

      *(v30 + 48) = v46;
      sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v63 activateConstraints:isa];

      if ((*(v64 + 48))(v26, 1, v62) == 1)
      {
        __break(1u);
      }

      else
      {
        v48 = *&v28[OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_featureManager];
        v50 = *(v26 + 144);
        v49 = *(v26 + 152);
        sub_100008438(&unk_1001200F0, &unk_1000D5F10);
        v51 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
        v52 = *(v51 - 8);
        v53 = *(v52 + 72);
        v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1000D5250;
        (*(v52 + 104))(v55 + v54, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.usbLosslessAudio(_:), v51);

        dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

        sub_10000E8F4(v61);
      }

      return;
    }

    sub_10000E950(v65, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C768 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000A570(v56, qword_10011FCF8);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "USB Lossless Audio: Headphone Model is nil, exiting", v59, 2u);
  }
}

void sub_1000B2188()
{
  v1 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v45 = &v43 - v3;
  v4 = type metadata accessor for HeadphoneModel(0);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v9;
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v12._countAndFlagsBits = 0xD000000000000018;
  v51._object = 0xE000000000000000;
  v12._object = 0x80000001000E21E0;
  v13.value._object = 0x80000001000E2200;
  v13.value._countAndFlagsBits = 0xD00000000000001ALL;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v51);

  v15 = String._bridgeToObjectiveC()();

  [v0 setTitle:v15];

  v16 = [v10 mainBundle];
  v52._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0xD00000000000001BLL;
  v17._object = 0x80000001000E2220;
  v18.value._object = 0x80000001000E2200;
  v18.value._countAndFlagsBits = 0xD00000000000001ALL;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v52);

  v20 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v20];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    swift_beginAccess();
    sub_1000145EC(v22 + 16, aBlock);
    swift_unknownObjectRelease();
    v23 = v48;
    if (v48)
    {
      v24 = sub_10000E7E4(aBlock, v48);
      v25 = *(v23 - 1);
      v26 = *(v25 + 64);
      __chkstk_darwin(v24);
      v28 = (&v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v28);
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v29 = *v28;
      v30 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v29 + v30, v8);
      (*(v25 + 8))(v28, v23);
      v31 = v46;
      sub_10000E828(v8, v46);
      v32 = v45;
      sub_10000E390(v31, v45);
      (*(v43 + 56))(v32, 0, 1, v44);
      v33 = OBJC_IVAR____TtC20HeadphoneProxService35USBHeadphoneLossLessAudioController_model;
      swift_beginAccess();
      sub_100013144(v32, v0 + v33);
      swift_endAccess();
      sub_100033A5C(0);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v35 = String._bridgeToObjectiveC()();

      v49 = sub_1000B2B14;
      v50 = v34;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000C034;
      v48 = &unk_1001084D0;
      v36 = _Block_copy(aBlock);
      v37 = [objc_opt_self() actionWithTitle:v35 style:0 handler:v36];

      _Block_release(v36);

      v38 = [v0 addAction:v37];

      sub_10000E8F4(v31);
      return;
    }

    sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C768 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000A570(v39, qword_10011FCF8);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Hearing Protection: Headphone Model is nil, exiting", v42, 2u);
  }
}

void sub_1000B27BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B5D54(0);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for USBHeadphoneLossLessAudioController()
{
  result = qword_10011FD48;
  if (!qword_10011FD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B2A10()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B2ADC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B2B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000B2B34()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewDidLoad");
  [v0 setDismissalType:1];
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v34 = [v2 imageNamed:v3];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v34];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v1 contentView];
  [v5 addSubview:v4];

  v33 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000D5240;
  v7 = [v4 topAnchor];
  v8 = [v1 contentView];
  v9 = [v8 mainContentGuide];

  v10 = [v9 topAnchor];
  v11 = [v7 constraintEqualToAnchor:v10];

  *(v6 + 32) = v11;
  v12 = [v4 centerXAnchor];
  v13 = [v1 contentView];
  v14 = [v13 mainContentGuide];

  v15 = [v14 centerXAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  *(v6 + 40) = v16;
  v17 = [v4 leadingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 mainContentGuide];

  v20 = [v19 leadingAnchor];
  v21 = [v17 constraintGreaterThanOrEqualToAnchor:v20];

  *(v6 + 48) = v21;
  v22 = [v4 trailingAnchor];
  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v25 = [v24 trailingAnchor];
  v26 = [v22 constraintLessThanOrEqualToAnchor:v25];

  *(v6 + 56) = v26;
  v27 = [v4 bottomAnchor];

  v28 = [v1 contentView];
  v29 = [v28 mainContentGuide];

  v30 = [v29 bottomAnchor];
  v31 = [v27 constraintLessThanOrEqualToAnchor:v30];

  *(v6 + 64) = v31;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints:isa];
}

void sub_1000B3024(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_1000B3458;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100108560;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_1000B34A0;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100108588;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_1000B32DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000B3420()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B3488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000B34D8(uint64_t *a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v65 - v4;
  v6 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v65 - v8;
  v10 = type metadata accessor for HeadphoneAssets(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HeadphoneViewModel(0);
  sub_10000E88C(a1 + *(v15 + 44), v9, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000E950(v9, &qword_10011CCF0, qword_1000D61B0);
  }

  else
  {
    sub_1000A9BF0(v9, v14);
    v16 = (a1 + *(v15 + 56));
    v17 = v16[11];
    v18 = v16[13];
    v79 = v16[12];
    v80 = v18;
    v19 = v16[7];
    v20 = v16[9];
    v75 = v16[8];
    v76 = v20;
    v21 = v16[9];
    v22 = v16[11];
    v77 = v16[10];
    v78 = v22;
    v23 = v16[3];
    v24 = v16[5];
    v71 = v16[4];
    v72 = v24;
    v25 = v16[5];
    v26 = v16[7];
    v73 = v16[6];
    v74 = v26;
    v27 = v16[1];
    v67 = *v16;
    v68 = v27;
    v28 = v16[3];
    v30 = *v16;
    v29 = v16[1];
    v69 = v16[2];
    v70 = v28;
    v93 = v17;
    v94 = v79;
    v31 = v16[14];
    v95 = v16[13];
    v96 = v31;
    v89 = v19;
    v90 = v75;
    v91 = v21;
    v92 = v77;
    v85 = v23;
    v86 = v71;
    v87 = v25;
    v88 = v73;
    v81 = v31;
    v82 = v30;
    v83 = v29;
    v84 = v69;
    v32 = v14;
    if (sub_100026134(&v82) == 1)
    {
      sub_1000A55F8(v14);
    }

    else
    {
      v102[11] = v93;
      v102[12] = v94;
      v102[13] = v95;
      v102[14] = v96;
      v102[7] = v89;
      v102[8] = v90;
      v102[9] = v91;
      v102[10] = v92;
      v102[3] = v85;
      v102[4] = v86;
      v102[5] = v87;
      v102[6] = v88;
      v102[0] = v82;
      v102[1] = v83;
      v102[2] = v84;
      v66[11] = v78;
      v66[12] = v79;
      v66[13] = v80;
      v66[14] = v81;
      v66[7] = v74;
      v66[8] = v75;
      v66[9] = v76;
      v66[10] = v77;
      v66[4] = v71;
      v66[5] = v72;
      v66[6] = v73;
      v66[0] = v67;
      v66[1] = v68;
      v66[2] = v69;
      v66[3] = v70;
      sub_1000944B8(a1, v5);
      (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
      v33 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_viewModel;
      v34 = v65[0];
      swift_beginAccess();
      sub_10000A304(v66, &v97);
      sub_10004D3E8(v5, &v34[v33]);
      swift_endAccess();
      v35 = *a1;
      v36 = a1[1];
      v37 = String._bridgeToObjectiveC()();
      [v34 setTitle:v37];

      v38 = a1[2];
      v39 = a1[3];
      v40 = String._bridgeToObjectiveC()();
      [v34 setSubtitle:v40];

      v41 = a1[6];
      v42 = a1[7];
      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v44 = String._bridgeToObjectiveC()();
      v100 = sub_1000B43C8;
      v101 = v43;
      v97.n128_u64[0] = _NSConcreteStackBlock;
      v97.n128_u64[1] = 1107296256;
      v98 = sub_10000C034;
      v99 = &unk_100108618;
      v45 = _Block_copy(&v97);
      v46 = [objc_opt_self() actionWithTitle:v44 style:1 handler:v45];

      _Block_release(v45);

      v47 = *&v34[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction];
      *&v34[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_secondaryAction] = v46;
      v48 = v46;

      if (v48)
      {
        v49 = [v34 addAction:v48];
      }

      v50 = *(v10 + 20);
      v51 = objc_allocWithZone(SFMediaPlayerItem);
      URL._bridgeToObjectiveC()(v52);
      v54 = v53;
      v55 = [v51 initWithURL:v53];

      [v55 setShouldLoop:1];
      v56 = [objc_allocWithZone(SFMediaPlayerView) init];
      [v56 addMovieItem:v55];
      v57 = v56;
      v58 = [v34 contentView];
      v59 = v97.n128_u64[0];
      [v97.n128_u64[0] setTranslatesAutoresizingMaskIntoConstraints:0];
      [v58 addLayoutGuide:v97.n128_u64[1]];
      [v58 addSubview:v59];
      [v58 sendSubviewToBack:v59];

      v60 = objc_opt_self();
      v61 = [v34 contentView];
      v62 = [v61 mainContentGuide];

      sub_1000ABDA8(v62);
      sub_10000F5A0();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v60 activateConstraints:isa];

      sub_10000A3B4(&v97);
      sub_1000A55F8(v32);
      v64 = *&v34[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView];
      *&v34[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView] = v57;
    }
  }
}

id sub_1000B3C28(char a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for HeadphoneAssets(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HeadphoneNotYoursViewController();
  v29.receiver = v1;
  v29.super_class = v16;
  objc_msgSendSuper2(&v29, "viewWillAppear:", a1 & 1);
  v17 = OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(&v1[v17], v6, &qword_10011F2E0, &unk_1000D8580);
  v18 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v18 - 8) + 48))(v6, 1, v18))
  {
    sub_10000E950(v6, &qword_10011F2E0, &unk_1000D8580);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_4:
    sub_10000E950(v10, &qword_10011CCF0, qword_1000D61B0);
    return [*&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView] play];
  }

  sub_10000E88C(&v6[*(v18 + 44)], v10, &qword_10011CCF0, qword_1000D61B0);
  sub_10000E950(v6, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  sub_1000A9BF0(v10, v15);
  v20 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView];
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 currentTraitCollection];
    v24 = [v23 userInterfaceStyle];

    if (v24 == 2)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    URL._bridgeToObjectiveC()(1);
    v27 = v26;
    [v22 updateViewForAssetType:v25 adjustmentsURL:v26];
  }

  sub_1000A55F8(v15);
  return [*&v1[OBJC_IVAR____TtC20HeadphoneProxService31HeadphoneNotYoursViewController_movieView] play];
}

void sub_1000B4074()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B90EC(0);
      swift_unknownObjectRelease();
    }
  }
}

id sub_1000B41C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneNotYoursViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeadphoneNotYoursViewController()
{
  result = qword_10011FDC8;
  if (!qword_10011FDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B42D0()
{
  sub_100025E40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000B4390()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B43D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B43E8(int a1)
{
  v2 = objc_opt_self();
  v3 = [v2 airPodsMax];
  v4 = [v3 productID];

  if (v4 == a1)
  {
    goto LABEL_7;
  }

  v5 = [v2 airPodsMax];
  v6 = [v5 altProductID];

  if (v6 == a1)
  {
    goto LABEL_7;
  }

  v7 = [v2 airPods];
  v8 = [v7 productID];

  if (v8 == a1 || (v9 = [v2 airPodsSecondGeneration], v10 = objc_msgSend(v9, "productID"), v9, v10 == a1) || sub_1000B4564(a1) || (v11 = objc_msgSend(v2, "b688"), v12 = objc_msgSend(v11, "productID"), v11, v12 == a1))
  {
LABEL_7:
    LOBYTE(v13) = 1;
  }

  else if ((a1 - 8217) > 7)
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    v13 = 0xA5u >> (a1 - 25);
  }

  return v13 & 1;
}

BOOL sub_1000B4564(int a1)
{
  v2 = objc_opt_self();
  v3 = [v2 airPodsPro];
  v4 = [v3 productID];

  if (v4 == a1)
  {
    return 1;
  }

  v5 = [v2 b698];
  v6 = [v5 productID];

  if (v6 == a1)
  {
    return 1;
  }

  v7 = [v2 b698];
  v8 = [v7 altProductID];

  if (v8 == a1)
  {
    return 1;
  }

  v9 = [v2 b788];
  v10 = [v9 productID];

  if (v10 == a1)
  {
    return 1;
  }

  v12 = [v2 b788];
  v13 = [v12 altProductID];

  return v13 == a1;
}

void *sub_1000B46B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000CD5C4(0, v1, 0);
    v3 = (a1 + 56);
    do
    {
      v8 = *(v3 - 3);
      v9 = *(v3 - 2);
      v10 = *(v3 - 1);
      v11 = *v3;

      sub_100008438(&unk_100120020, &qword_1000D7C38);
      sub_100008438(&unk_10011D078, &qword_1000DA4F0);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1000CD5C4((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[4 * v5];
      v6[4] = v12;
      v6[5] = v13;
      v6[6] = v14;
      v6[7] = v15;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1000B47F0(unint64_t a1)
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

  v17 = _swiftEmptyArrayStorage;
  result = sub_1000CD664(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1000CD664((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1000084D4(0, &qword_100120100, UNNotificationSource_ptr);
        v16 = &off_100108CB8;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10000E9B0(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1000CD664((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1000084D4(0, &qword_100120100, UNNotificationSource_ptr);
        v16 = &off_100108CB8;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10000E9B0(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B49F8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011FDE0);
  v1 = sub_10000A570(v0, qword_10011FDE0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000B4D14()
{
  v0 = type metadata accessor for HeadphoneViewModel(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = result + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
      Strong = swift_unknownObjectWeakLoadStrong();
      v13 = *(v11 + 8);
      result = swift_unknownObjectRelease();
      if (Strong)
      {
        ObjectType = swift_getObjectType();
        v15 = (*(v13 + 32))(ObjectType, v13);
        sub_1000BB69C(v15, v3);
        (*(v13 + 48))(v3, ObjectType, v13);
        swift_unknownObjectRelease();
        return sub_1000CE1E0(v3, type metadata accessor for HeadphoneViewModel);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1000B4F34()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(v1 + *(v2 + 136));
  if (v3 == 8217 || v3 == 8222)
  {
    return 0;
  }

  v6 = v2;
  v7 = objc_opt_self();
  v8 = [v7 b688];
  v9 = [v8 productID];

  if (v3 == v9)
  {
    return 0;
  }

  v10 = *(v1 + *(v6 + 136));
  v11 = [v7 b487];
  v12 = [v11 productID];

  return v10 != v12;
}

uint64_t sub_1000B5040(uint64_t a1)
{
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 80) = 256;
  *(v1 + 88) = 0;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_useMovieForNextBatteryView) = 1;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_batteryDebounceTime) = 0;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_temporarilyPair) = 0;
  v3 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep) = 16;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_hasAutoDismissed) = 0;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_spatialProfileEnrollmentViewController) = 0;
  v4 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_batteryVideoView);
  *v4 = 0;
  v4[1] = 0;
  sub_1000CE178(a1, v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model, type metadata accessor for HeadphoneModel);
  v5 = *(a1 + 136);
  sub_1000CE1E0(a1, type metadata accessor for HeadphoneModel);
  v6 = *(v1 + v3);
  *(v1 + v3) = qword_1000DA658[v5];
  sub_1000CC0E4(v6);
  v7 = type metadata accessor for HeadphoneAnalyticsController(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_10004D5F8((v10 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics));
  *(v1 + 72) = v10;
  v11 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice);
  *v11 = sub_1000B519C;
  v11[1] = 0;
  return v1;
}

void sub_1000B519C(uint64_t a1, uint64_t a2)
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requesting device unlock", v7, 2u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v10[4] = sub_1000CE784;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000B5470;
  v10[3] = &unk_100108C00;
  v9 = _Block_copy(v10);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v9);
}

uint64_t sub_1000B532C(char a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    return a2(a1 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B5470(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2 != 0;

  v3(v4);
}

int *sub_1000B54C8()
{
  v1 = *(v0 + 72);
  v2 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(v2 + *(v3 + 136));
  v5 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics);
  result = type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0);
  v7 = &v5[result[6]];
  *v7 = v4;
  v7[8] = 0;
  v8 = *(v2 + 136);
  if (v8 <= 8)
  {
    if (*(v2 + 136) > 6u)
    {
      if (v8 != 7)
      {
        if (v8 != 8)
        {
          return result;
        }

        *v5 = 5;
        v10 = result[32];
        goto LABEL_24;
      }

LABEL_16:
      *v5 = 3;
      return result;
    }

    if (v8 - 3 < 2 || v8 == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(v2 + 136) > 0xAu)
    {
      if (v8 - 11 >= 2)
      {
        if (v8 != 13)
        {
          if (v8 == 14)
          {
            *v5 = 4;
          }

          return result;
        }

        *v5 = 0;
        v10 = result[29];
LABEL_24:
        v5[v10] = 2;
        return result;
      }

      goto LABEL_16;
    }

    if (v8 == 9)
    {
      if (*(v2 + *(v3 + 84)) == 1)
      {
        *v5 = 2;
        v5[result[10]] = 2;
        return result;
      }

      v10 = result[43];
      goto LABEL_24;
    }

    if (v8 == 10)
    {
      *v5 = 1;
    }
  }

  return result;
}

uint64_t sub_1000B562C(uint64_t result)
{
  if (result <= 0x1Cu && ((1 << result) & 0x1FFD0FFF) != 0)
  {
    v2 = *(v1 + 72);
    return sub_10004D458(result, 2);
  }

  return result;
}

uint64_t sub_1000B5678()
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A570(v1, qword_10011FDE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Requested announce continue, turning on all supported apps", v4, 2u);
  }

  v5 = v0[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v5 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 68)) = 0;
  v6 = objc_opt_self();
  [v6 setHasUserSeenAnnounceCallsOptOutScreen:1];
  [v6 setHasUserSeenAnnounceNotificationsOptOutScreen:1];
  v7 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (v7[*(type metadata accessor for HeadphoneModel(0) + 104)] != 1)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Siri is not allowed on lock screen, not enabling apps", v21, 2u);
    }

    return sub_1000B5D54(0);
  }

  swift_beginAccess();
  v8 = v0[5];
  if (!v8)
  {
    return sub_1000B5D54(0);
  }

  v9 = (*sub_10000E7E4(v0 + 2, v8) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter);
  v10 = v9[3];
  v11 = v9[4];
  sub_10000E7E4(v9, v10);
  (*(v11 + 8))(1, v10, v11);
  if (!v0[5])
  {
    return sub_1000B5D54(0);
  }

  sub_10000E9C8((v0 + 2), v23);
  v12 = sub_10000E7E4(v23, v23[3]);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = *(*v12 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000CE388;
  *(v15 + 24) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000CE8C4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100064F5C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B49D0;
  aBlock[3] = &unk_100108B10;
  v17 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    sub_10000EA94(v23);
    return sub_1000B5D54(0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B5A70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  p_cache = &OBJC_METACLASS____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController.cache;
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    if (*(v2 + 8))
    {
      v3 = *(v2 + 96);

      v4 = *(v3 + 16);
      if (v4)
      {
        swift_beginAccess();
        v5 = (v3 + 72);
        do
        {
          if (*(v5 - 8) == 1)
          {
            v7 = *(v5 - 5);
            v6 = *(v5 - 4);
            v8 = *(v5 - 2);
            v9 = *v5;
            v10 = swift_weakLoadStrong();
            if (v10)
            {
              v11 = v10;
              swift_beginAccess();
              if (*(v11 + 40))
              {
                sub_10000E9C8(v11 + 16, v23);
                v12 = v9;

                v13 = *sub_10000E7E4(v23, v24);
                sub_10006CB3C(1, v7, v6);

                sub_10000EA94(v23);
              }

              else
              {
              }
            }
          }

          v5 += 6;
          --v4;
        }

        while (v4);

        p_cache = (&OBJC_METACLASS____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController + 16);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = p_cache[448] + result;
    swift_beginAccess();
    v16 = *(v15 + 1);
    if (v16)
    {
      v17 = *v15;
      v18 = *(v15 + 3);
      v19 = *(v15 + 5);

      swift_beginAccess();
      v20 = swift_weakLoadStrong();
      if (v20)
      {
        v21 = v20;
        swift_beginAccess();
        if (*(v21 + 40))
        {
          sub_10000E9C8(v21 + 16, v23);

          v22 = *sub_10000E7E4(v23, v24);
          sub_10006CB3C(1, v17, v16);

          return sub_10000EA94(v23);
        }
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_1000B5D54(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep;
    v4 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep);
    sub_1000CC0C4(v4);
    v5 = sub_1000BDCA4(v4);
    sub_1000CC0E4(v4);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    sub_1000CC0E4(v6);
  }

  v7 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep;
  while (1)
  {
    v8 = *(v2 + v7);
    sub_1000CC0C4(v8);
    v9 = sub_1000BE260(v8);
    sub_1000CC0E4(v8);
    if (v9)
    {
      switch(*(v2 + v7))
      {
        case 0:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_1000493C4();
          break;
        case 1:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100049220();
          break;
        case 2:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004AF14();
          break;
        case 3:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100047E70();
          break;
        case 4:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004B25C();
          break;
        case 5:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004A884();
          break;
        case 6:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004AA28();
          break;
        case 7:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_1000498B0();
          break;
        case 8:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100049BF8();
          break;
        case 9:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004B400();
          break;
        case 0xALL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100049D9C();
          break;
        case 0xBLL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100049F40();
          break;
        case 0xCLL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_1000481B8();
          break;
        case 0xDLL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_10004835C();
          break;
        case 0xELL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_1000486A4();
          break;
        case 0xFLL:
          if (!swift_unknownObjectWeakLoadStrong())
          {
            return;
          }

          sub_100048500();
          break;
        case 0x10:
          goto LABEL_10;
        default:
          v17 = *(v2 + v7);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1000CC0D4(v17);
            sub_10004A42C(v17);
            swift_unknownObjectRelease();

            sub_1000CC0E4(v17);
          }

          return;
      }

      goto LABEL_16;
    }

    v10 = *(v2 + v7);
    if (v10 == 16)
    {
      break;
    }

    sub_1000CC0D4(*(v2 + v7));
    v11 = sub_1000BDCA4(v10);
    sub_1000CC0E4(v10);
    v12 = *(v2 + v7);
    *(v2 + v7) = v11;
    sub_1000CC0E4(v12);
  }

LABEL_10:
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A570(v13, qword_10011FDE0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Nothing else to display after pairing, dismissing", v16, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100047C68();
LABEL_16:

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000B615C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested battery status finished", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 116)) = 0;

  return sub_1000B5D54(0);
}

void sub_1000B626C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested device connect", v5, 2u);
  }

  v6 = *(v0 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 40)) = 0;
  if (*(v0 + 80) == 1)
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Already connecting", v8, 2u);
    }
  }

  else
  {
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    if (*(v10 + *(type metadata accessor for HeadphoneModel(0) + 116)) == 1)
    {
      v12 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice);
      v11 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice + 8);
      v13 = swift_allocObject();
      swift_weakInit();
      v14 = swift_allocObject();
      v14[2] = sub_1000CE674;
      v14[3] = v9;
      v14[4] = v13;

      v12(sub_1000CE680, v14);
    }

    else
    {

      sub_1000B654C();
    }
  }
}

uint64_t sub_1000B654C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 88))
    {
      v1 = *(Strong + 88);

      v2 = sub_100040EB4();

      if (v2)
      {
        return result;
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    *(v4 + 80) = 1;
    sub_1000B4D14();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (*(v5 + 40))
    {
      sub_10000E9C8(v5 + 16, v7);

      v6 = *sub_10000E7E4(v7, v7[3]);
      sub_10006B6A4();
      return sub_10000EA94(v7);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000B6688()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v2 = type metadata accessor for HeadphoneModel(0);
  if (*(v1 + *(v2 + 136)) == 8223 && *(v1 + *(v2 + 188)) == 1)
  {
    return sub_1000B626C();
  }

  sub_1000B626C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100048ED8();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000B6720()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested control center training finished", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 60)) = 0;

  sub_1000B5D54(0);
}

uint64_t sub_1000B6840()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested customize announce notifications", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 68)) = 1;
  v7 = objc_opt_self();
  [v7 setHasUserSeenAnnounceCallsOptOutScreen:1];
  [v7 setHasUserSeenAnnounceNotificationsOptOutScreen:1];
  result = swift_beginAccess();
  v9 = v1[5];
  if (v9)
  {
    v10 = (*sub_10000E7E4(v1 + 2, v9) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter);
    v11 = v10[3];
    v12 = v10[4];
    sub_10000E7E4(v10, v11);
    result = (*(v12 + 8))(1, v11, v12);
    if (v1[5])
    {
      sub_10000E9C8((v1 + 2), v20);
      v13 = sub_10000E7E4(v20, v20[3]);
      v14 = swift_allocObject();
      swift_weakInit();
      v15 = *(*v13 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue);
      v16 = swift_allocObject();
      *(v16 + 16) = sub_1000CE350;
      *(v16 + 24) = v14;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1000CE358;
      *(v17 + 24) = v16;
      v19[4] = sub_10006278C;
      v19[5] = v17;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 1107296256;
      v19[2] = sub_1000B49D0;
      v19[3] = &unk_100108A98;
      v18 = _Block_copy(v19);
      swift_retain_n();

      dispatch_sync(v15, v18);
      _Block_release(v18);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
      }

      else
      {
        return sub_10000EA94(v20);
      }
    }
  }

  return result;
}

uint64_t sub_1000B6B80()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  *v4 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v0);
  v5 = _dispatchPreconditionTest(_:)();
  result = (*(v1 + 8))(v4, v0);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  p_cache = &OBJC_METACLASS____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController.cache;
  if (Strong)
  {
    v9 = Strong + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
    swift_beginAccess();
    if (*(v9 + 8))
    {
      v10 = *(v9 + 96);

      v11 = *(v10 + 16);
      if (v11)
      {
        swift_beginAccess();
        v12 = (v10 + 72);
        do
        {
          if (*(v12 - 8) == 1)
          {
            v14 = *(v12 - 5);
            v13 = *(v12 - 4);
            v15 = *(v12 - 2);
            v16 = *v12;
            v17 = swift_weakLoadStrong();
            if (v17)
            {
              v18 = v17;
              swift_beginAccess();
              if (*(v18 + 40))
              {
                sub_10000E9C8(v18 + 16, v32);
                v19 = v16;

                v20 = *sub_10000E7E4(v32, v33);
                sub_10006CB3C(1, v14, v13);

                sub_10000EA94(v32);
              }

              else
              {
              }
            }
          }

          v12 += 6;
          --v11;
        }

        while (v11);

        p_cache = (&OBJC_METACLASS____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController + 16);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (v21)
  {
    v22 = p_cache[448] + v21;
    swift_beginAccess();
    v23 = *(v22 + 1);
    if (v23)
    {
      v24 = *v22;
      v25 = *(v22 + 3);
      v26 = *(v22 + 5);

      swift_beginAccess();
      v27 = swift_weakLoadStrong();
      if (v27)
      {
        v28 = v27;
        swift_beginAccess();
        if (*(v28 + 40))
        {
          sub_10000E9C8(v28 + 16, v32);

          v29 = *sub_10000E7E4(v32, v33);
          sub_10006CB3C(1, v24, v23);

          sub_10000EA94(v32);
          goto LABEL_23;
        }
      }
    }

    else
    {
    }
  }

LABEL_23:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = swift_unknownObjectWeakLoadStrong();

    if (v30)
    {
      sub_100048014();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B6FA4()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested customize announce notifications finished", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 72)) = 0;

  return sub_1000B5D54(0);
}

uint64_t sub_1000B70E4(uint64_t (*a1)(void))
{
  v3 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested disconnect", v7, 2u);
  }

  *(v3 + 80) = 3;
  sub_1000B4D14();
  result = swift_beginAccess();
  v9 = *(v3 + 40);
  if (v9)
  {
    v10 = *sub_10000E7E4((v3 + 16), v9);
    return a1();
  }

  return result;
}

uint64_t sub_1000B7234()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested launch of bluetooth settings", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 124)) = 1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10004CEC4();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000B736C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested marketing upsell finished", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 112)) = 0;

  sub_1000B5D54(0);
}

uint64_t sub_1000B747C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested non genuine don't connect", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 124)) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B75F0(const char *a1, void (*a2)(void))
{
  v5 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  swift_beginAccess();
  v10 = *(v5 + 40);
  if (v10)
  {
    v11 = *sub_10000E7E4((v5 + 16), v10);
    a2();
  }

  return sub_1000B5D54(0);
}

uint64_t sub_1000B771C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Skip Config for Mute Call", v5, 2u);
  }

  result = swift_beginAccess();
  v7 = *(v1 + 40);
  if (v7)
  {
    v8 = *sub_10000E7E4((v1 + 16), v7);
    result = sub_10006D940();
    if ((result & 1) == 0)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      sub_100047C68();
      return swift_unknownObjectRelease();
    }

    v9 = *(v1 + 40);
    if (v9)
    {
      v10 = *sub_10000E7E4((v1 + 16), v9);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_100049568();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1000B7878()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Skip Config for Adaptive Controls", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if ((*(v6 + 136) & 0xFE) == 2)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100047C68();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1000B5D54(0);
  }
}

uint64_t sub_1000B79D8(const char *a1, void (*a2)(void))
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B7B00(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E4F206E727554;
    }

    else
    {
      v9 = 0x776F4E20746F4ELL;
    }

    v10 = sub_100078978(v9, 0xE700000000000000, &v14);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested %s For Adaptive Controls - Adaptive Mode", v7, 0xCu);
    sub_10000EA94(v8);
  }

  if (a1)
  {
    swift_beginAccess();
    v11 = *(v2 + 40);
    if (v11)
    {
      v12 = *sub_10000E7E4((v2 + 16), v11);
      sub_10006DDDC(1);
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000498B0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B7CC0(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E4F206E727554;
    }

    else
    {
      v9 = 0x776F4E20746F4ELL;
    }

    v10 = sub_100078978(v9, 0xE700000000000000, &v20);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested %s For Adaptive Controls - PersonalizedVolume", v7, 0xCu);
    sub_10000EA94(v8);
  }

  v11 = v2[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  v12 = *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 104);
  if (a1)
  {
    *(v11 + v12) = 0;
    swift_beginAccess();
    v13 = v2[5];
    if (v13)
    {
      v14 = *sub_10000E7E4(v2 + 2, v13);
      sub_10006DF68(1);
    }
  }

  else
  {
    *(v11 + v12) = 1;
  }

  v15 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v16 = *&v15[*(type metadata accessor for HeadphoneModel(0) + 136)];
  v17 = [objc_opt_self() b768e];
  v18 = [v17 productID];

  if (v18 == v16)
  {
    return sub_1000B5D54(0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100049A54();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B7F2C(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E4F206E727554;
    }

    else
    {
      v9 = 0x776F4E20746F4ELL;
    }

    v10 = sub_100078978(v9, 0xE700000000000000, &v17);

    *(v7 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested %s For Adaptive Controls - Conversation Awareness", v7, 0xCu);
    sub_10000EA94(v8);
  }

  v11 = v2[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  v12 = *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 108);
  if (a1)
  {
    *(v11 + v12) = 0;
    swift_beginAccess();
    v13 = v2[5];
    if (v13)
    {
      v14 = *sub_10000E7E4(v2 + 2, v13);
      sub_10006E28C(1);
    }
  }

  else
  {
    *(v11 + v12) = 1;
  }

  v15 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if ((v15[136] & 0xFE) != 2)
  {
    return sub_1000B5D54(0);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B8158()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Continue for Whats New", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 168)) = 0;
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (v7[136] != 4)
  {
    return sub_1000B5D54(0);
  }

  swift_beginAccess();
  v8 = v1[5];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = sub_10000E7E4(v1 + 2, v8);
  v10 = *(*v9 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
  v11 = *v9 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v13 = *(v11 + 144);
  v12 = *(v11 + 152);

  v14.value._countAndFlagsBits = v13;
  v14.value._object = v12;
  LOBYTE(v13) = HeadphoneProxFeatureManager.shouldShowPauseMediaOnSleepCard(deviceAddress:)(v14);

  v16 = v1[5];
  if (v13)
  {
    if (v16)
    {
      v17 = *sub_10000E7E4(v1 + 2, v16);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_100048D34();
        return swift_unknownObjectRelease();
      }
    }

    return result;
  }

  if (!v16)
  {
LABEL_20:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  v18 = sub_10000E7E4(v1 + 2, v16);
  v19 = *(*v18 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
  v20 = *v18 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v22 = *(v20 + 144);
  v21 = *(v20 + 152);

  v23.value._countAndFlagsBits = v22;
  v23.value._object = v21;
  LOBYTE(v22) = HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(v23);

  v24 = v1[5];
  if ((v22 & 1) == 0)
  {
    if (v24)
    {
      v26 = sub_10000E7E4(v1 + 2, v24);
      v27 = *(*v26 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
      v28 = *v26 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v30 = *(v28 + 144);
      v29 = *(v28 + 152);

      v31.value._countAndFlagsBits = v30;
      v31.value._object = v29;
      LOBYTE(v30) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v31);

      if (v30)
      {
        return sub_1000B8488();
      }
    }

    goto LABEL_20;
  }

  if (v24)
  {
    v25 = *sub_10000E7E4(v1 + 2, v24);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100049D9C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B8488()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v4 = *(v2 + 144);
  v3 = *(v2 + 152);

  LOBYTE(v4) = sub_1000220A4();

  if (v4)
  {
    result = swift_beginAccess();
    v6 = *(v1 + 40);
    if (v6)
    {
      v7 = *sub_10000E7E4((v1 + 16), v6);
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_100048848();
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    if (qword_10011C608 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_100122FF0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "showing showHearingProtection false", v11, 2u);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100047C68();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B8610()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Turn On for Head Gestures", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 164)) = 0;
  swift_beginAccess();
  v7 = v1[5];
  if (v7)
  {
    v8 = sub_10000E7E4(v1 + 2, v7);
    v9 = *(*v8 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
    v10 = *v8 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v12 = *(v10 + 144);
    v11 = *(v10 + 152);

    v13.value._countAndFlagsBits = v12;
    v13.value._object = v11;
    HeadphoneProxFeatureManager.setHeadGesturesConfig(deviceAddress:enabled:)(v13, 1);
  }

  v14 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if ((v14[136] & 0xFE) != 4)
  {
    return sub_1000B5D54(0);
  }

  v15 = v1[5];
  if (v15)
  {
    v16 = sub_10000E7E4(v1 + 2, v15);
    v17 = *(*v16 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
    v18 = *v16 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v20 = *(v18 + 144);
    v19 = *(v18 + 152);

    v21.value._countAndFlagsBits = v20;
    v21.value._object = v19;
    LOBYTE(v20) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v21);

    if (v20)
    {
      return sub_1000B8488();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B8884()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Not Now for Head Gestures", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 164)) = 1;
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if ((v7[136] & 0xFE) != 4)
  {
    return sub_1000B5D54(0);
  }

  swift_beginAccess();
  v8 = v1[5];
  if (v8)
  {
    v9 = sub_10000E7E4(v1 + 2, v8);
    v10 = *(*v9 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
    v11 = *v9 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v13 = *(v11 + 144);
    v12 = *(v11 + 152);

    v14.value._countAndFlagsBits = v13;
    v14.value._object = v12;
    LOBYTE(v13) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v14);

    if (v13)
    {
      return sub_1000B8488();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B8A84()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Set Up for Live Translation", v5, 2u);
  }

  result = swift_beginAccess();
  v7 = *(v1 + 40);
  if (v7)
  {
    v8 = *sub_10000E7E4((v1 + 16), v7);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10004A0E4();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B8BBC(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Requested Not Now for Live Translation", v9, 2u);
  }

  swift_beginAccess();
  v10 = *(v3 + 40);
  if (v10)
  {
    v11 = *sub_10000E7E4((v3 + 16), v10);
    sub_100077448(a1, a2 & 1);
  }

  return sub_1000B5D54(0);
}

uint64_t sub_1000B8CF0()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested Turn On for Pause Media on Sleep", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = sub_10000E7E4((v1 + 16), v6);
    v8 = *(*v7 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
    v9 = *v7 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v11 = *(v9 + 144);
    v10 = *(v9 + 152);

    v12.value._countAndFlagsBits = v11;
    v12.value._object = v10;
    HeadphoneProxFeatureManager.setPauseMediaOnSleepConfig(deviceAddress:enabled:)(v12, 1);
  }

  return sub_1000B8E68();
}

uint64_t sub_1000B8E68()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 40);
  if (!v2)
  {
LABEL_9:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  v3 = sub_10000E7E4((v0 + 16), v2);
  v4 = *(*v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
  v5 = *v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v7 = *(v5 + 144);
  v6 = *(v5 + 152);

  v8.value._countAndFlagsBits = v7;
  v8.value._object = v6;
  LOBYTE(v7) = HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(v8);

  v10 = *(v1 + 40);
  if ((v7 & 1) == 0)
  {
    if (v10)
    {
      v12 = sub_10000E7E4((v1 + 16), v10);
      v13 = *(*v12 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
      v14 = *v12 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v16 = *(v14 + 144);
      v15 = *(v14 + 152);

      v17.value._countAndFlagsBits = v16;
      v17.value._object = v15;
      LOBYTE(v16) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v17);

      if (v16)
      {
        return sub_1000B8488();
      }
    }

    goto LABEL_9;
  }

  if (v10)
  {
    v11 = *sub_10000E7E4((v1 + 16), v10);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100049D9C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B8FF0()
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_10011FDE0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requested Not Now for Pause Media on Sleep", v3, 2u);
  }

  return sub_1000B8E68();
}

uint64_t sub_1000B90EC(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Requested repair instructions", v7, 2u);
  }

  v8 = v2[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v8 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 132)) = 0;
  v9 = a1 & 1;
  *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_temporarilyPair) = a1 & 1;
  swift_beginAccess();
  v10 = v2[5];
  if (v10)
  {
    v11 = v2[6];
    sub_1000A06AC((v2 + 2), v2[5]);
    (*(v11 + 104))(v9, v10, v11);
  }

  swift_endAccess();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (v13[*(type metadata accessor for HeadphoneModel(0) + 116)] == 1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice);
    v14 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice + 8);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = sub_1000CE6FC;
    v17[3] = v12;
    v17[4] = v16;

    v15(sub_1000CE8C8, v17);
  }

  else
  {

    sub_1000B9394();
  }
}

uint64_t sub_1000B9394()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v0 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v0);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchTime();
  v36 = *(v39 - 8);
  v7 = *(v36 + 64);
  v8 = __chkstk_darwin(v39);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_10004AD70();
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  if (v14)
  {
    v15 = v14;
    swift_beginAccess();
    v16 = *(v15 + 40);
    if (v16)
    {
      v17 = v6;
      v18 = *(v15 + 48);
      sub_1000A06AC(v15 + 16, *(v15 + 40));
      v19 = *(v18 + 80);
      v20 = v18;
      v6 = v17;
      v19(1, v16, v20);
    }

    swift_endAccess();
  }

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (!v21 || (v22 = v21 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model, swift_beginAccess(), v23 = *(v22 + *(type metadata accessor for HeadphoneModel(0) + 132)), result = , v23))
  {
    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v33 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v32 = v12;
    + infix(_:_:)();
    v25 = v35;
    v34 = v3;
    v36 = *(v36 + 8);
    (v36)(v10, v39);
    v26 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    aBlock[4] = sub_1000CE744;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100108BB0;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_10001C380();
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
    v28 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v29 = v32;
    v30 = v33;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v27);

    (*(v25 + 8))(v28, v0);
    (*(v37 + 8))(v6, v34);
    (v36)(v29, v39);
  }

  return result;
}

uint64_t sub_1000B9924()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000B997C();
  }

  return result;
}

void sub_1000B997C()
{
  if (!*(v0 + 80))
  {
    sub_1000B626C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v2 = Strong + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView, v3 = swift_unknownObjectWeakLoadStrong(), v4 = *(v2 + 8), swift_unknownObjectRelease(), !v3) || (ObjectType = swift_getObjectType(), v6 = (*(v4 + 32))(ObjectType, v4), swift_unknownObjectRelease(), v6 != 3))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100048ED8();

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1000B9A58(char a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    return a2();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_100047C68();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B9ADC()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested skip features", v5, 2u);
  }

  swift_beginAccess();
  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = *sub_10000E7E4((v1 + 16), v6);
    if (qword_10011C750 != -1)
    {
      swift_once();
    }

    v8 = qword_1001231E0;
    v9 = v7 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v10 = type metadata accessor for HeadphoneModel(0);
    sub_1000A594C(*(v9 + *(v10 + 136)), v8);
  }

  return sub_1000BB0FC("Requested post pairing view", 1);
}

void sub_1000B9C90(const char *a1, char a2)
{
  v5 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v10 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 148)) = a2;

  sub_1000B5D54(0);
}

uint64_t sub_1000B9DAC()
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_10011FDE0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requested Hey Siri enrollment privacy", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = swift_unknownObjectRelease();
    if (Strong)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = String._bridgeToObjectiveC()();
        v9 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v8];

        if (v9)
        {
          [v9 setPresentingViewController:v7];
        }

        [v9 present];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1000B9F78()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested skip Find My install", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 88)) = 1;

  return sub_1000B5D54(0);
}

uint64_t sub_1000BA08C()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested to install Find My", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 88)) = 0;
  swift_beginAccess();
  if (*(v1 + 40))
  {
    sub_10007C1A0();
  }

  return sub_1000B5D54(0);
}

uint64_t sub_1000BA1BC()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested to continue from Linking", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 92)) = 0;

  return sub_1000B5D54(0);
}

void sub_1000BA2CC()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested spatial audio profile create", v5, 2u);
  }

  v6 = *(v1 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 80)) = 0;
  v7 = [objc_opt_self() profileEnrollmentViewController];
  v8 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1000CE390;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100019340;
  v11[3] = &unk_100108B38;
  v9 = _Block_copy(v11);

  [v7 setDismissalHandler:v9];
  _Block_release(v9);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = v7;
    sub_10004B5A4(v10);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1000BA4D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000BA54C("Spatial profile enrollment dismissed", 3);
  }

  return result;
}

uint64_t sub_1000BA54C(const char *a1, char a2)
{
  v5 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + 72) + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v10 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 80)) = a2;

  return sub_1000B5D54(0);
}

id sub_1000BA668(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A570(v6, qword_10011FDE0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v18 = *(a1 + 16);
  v17 = *(a1 + 40);

  sub_1000CE78C(&v18, v16);
  sub_10000E88C(&v17, v16, &unk_100120010, &unk_1000DA4E0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  sub_1000CE7E8(&v18);
  sub_10000E950(&v17, &unk_100120010, &unk_1000DA4E0);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100078978(v7, v8, v16);
    *(v11 + 12) = 1024;
    *(v11 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v9, v10, "Requested toggle announce for %s, enabled: %{BOOL}d", v11, 0x12u);
    sub_10000EA94(v12);
  }

  result = swift_beginAccess();
  v14 = *(v3 + 40);
  if (v14)
  {
    v15 = *sub_10000E7E4((v3 + 16), v14);
    return sub_10006CB3C(a2 & 1, v7, v8);
  }

  return result;
}

uint64_t sub_1000BA864()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested turn off announce", v5, 2u);
  }

  v6 = v1[9] + OBJC_IVAR____TtC20HeadphoneProxService28HeadphoneAnalyticsController_metrics;
  *(v6 + *(type metadata accessor for HeadphoneAnalyticsController.HeadphoneProxCardFeaturesEvent(0) + 72)) = 1;
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (v7[136] != 11)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_25;
    }

    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Turning off Announce Notifications";
    goto LABEL_24;
  }

  v8 = v7[*(type metadata accessor for HeadphoneModel(0) + 168)];
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  if (v8 == 1)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Announce Messages enabled, turning off everything but Messages", v12, 2u);
    }

    if (*(v7 + 1))
    {
      v13 = *(v7 + 12);
      v14 = *(v13 + 16);
      if (v14)
      {
        v38 = v7;

        swift_beginAccess();
        v15 = (v13 + 40);
        do
        {
          v17 = *(v15 - 1);
          v16 = *v15;
          if (v17 != 0xD000000000000013 || 0x80000001000E0CC0 != v16)
          {
            v19 = v15[2];
            v20 = v15[4];
            v21 = *(v15 - 1);
            v22 = *v15;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v23 = v1[5];
              if (v23)
              {
                v24 = *sub_10000E7E4(v1 + 2, v23);
                v25 = v20;

                sub_10006CB3C(0, v17, v16);
              }
            }
          }

          v15 += 6;
          --v14;
        }

        while (v14);

        v7 = v38;
      }
    }

    goto LABEL_27;
  }

  if (v11)
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = "Announce Messages not enabled, turning off Announce Notifications";
LABEL_24:
    _os_log_impl(&_mh_execute_header, v9, v10, v27, v26, 2u);
  }

LABEL_25:

  swift_beginAccess();
  v28 = v1[5];
  if (v28)
  {
    v29 = (*sub_10000E7E4(v1 + 2, v28) + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter);
    v30 = v29[3];
    v31 = v29[4];
    sub_10000E7E4(v29, v30);
    (*(v31 + 8))(0, v30, v31);
  }

LABEL_27:
  if (!*&v7[*(type metadata accessor for HeadphoneModel(0) + 164)])
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Announce Calls not originally enabled, turning off", v34, 2u);
    }

    swift_beginAccess();
    v35 = v1[5];
    if (v35)
    {
      v36 = *sub_10000E7E4(v1 + 2, v35);
      sub_10006CB3C(0, 0xD000000000000015, 0x80000001000E0A10);
    }
  }

  return sub_1000B5D54(0);
}

uint64_t sub_1000BAD18()
{
  v1 = v0;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011FDE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requested turn off optimized battery charging", v5, 2u);
  }

  result = swift_beginAccess();
  v7 = *(v1 + 40);
  if (v7)
  {
    v8 = *sub_10000E7E4((v1 + 16), v7);
    return sub_10006E5B0();
  }

  return result;
}

uint64_t sub_1000BAE28()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);

  LOBYTE(v3) = sub_1000216CC(v3, v2);

  if (v3)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_100048B90();
    return swift_unknownObjectRelease();
  }

  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A570(v5, qword_10011FDE0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "showHearingTest denied, flase.", v8, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000BAF88()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (*(v1 + 152))
  {
    v2 = *(v1 + 144);
    v3 = *(v1 + 152);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v4 = sub_100021CB0(v2, v3);

  if ((v4 & 1) == 0)
  {
    return sub_1000BAE28();
  }

  if (qword_10011C608 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A570(v5, qword_100122FF0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "showing showYodelHearingSwitchListeningModeUpsellCard", v8, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000489EC();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000BB0FC(const char *a1, char a2)
{
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  sub_1000B5D54(a2 & 1);
}

void sub_1000BB1F8(unsigned __int8 a1)
{
  if (a1 > 7u)
  {
    if (a1 > 0x12u)
    {
      if (a1 == 25)
      {
        v29 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
        swift_beginAccess();
        if (*(v29 + 152))
        {
          v30 = *(v29 + 144);
          v31 = *(v29 + 152);
        }

        v36 = objc_opt_self();

        v37 = String._bridgeToObjectiveC()();

        [v36 setProxCardShowed:1 forDevice:v37];
      }

      else if (a1 == 19 && *(v1 + 80))
      {
        v11 = v1;
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_10000A570(v12, qword_10011FDE0);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "Non genuine card appeared, unpairing device", v15, 2u);
        }

        sub_1000B70E4(sub_10006C500);
        v16 = objc_allocWithZone(NSUserDefaults);
        v17 = String._bridgeToObjectiveC()();
        v18 = [v16 initWithSuiteName:v17];

        if (v18)
        {
          sub_1000A3538(&off_100102A90);
          sub_100008438(&unk_1001200A0, &unk_1000DA540);
          swift_arrayDestroy();
          v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v20 = v11 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
          swift_beginAccess();
          if (*(v20 + 152))
          {
            v21 = *(v20 + 144);
            String.uppercased()();
          }

          else
          {
            v38 = (v20 + *(type metadata accessor for HeadphoneModel(0) + 56));
            v40 = *v38;
            v39 = v38[1];
          }

          v41 = String._bridgeToObjectiveC()();

          [v18 setObject:v19.super.isa forKey:v41];
        }
      }
    }

    else if (a1 == 8)
    {
      swift_beginAccess();
      v24 = *(v1 + 40);
      if (v24)
      {
        v25 = v1;
        v26 = *sub_10000E7E4((v1 + 16), v24);
        sub_10006D940();
        v27 = *(v25 + 40);
        if (v27)
        {
          v28 = *sub_10000E7E4((v25 + 16), v27);
          sub_10006DC58();
        }
      }
    }

    else if (a1 == 13)
    {
      swift_beginAccess();
      v2 = *(v1 + 40);
      if (v2)
      {
        v3 = sub_10000E7E4((v1 + 16), v2);
        v4 = *(*v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
        v5 = *v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v7 = *(v5 + 144);
        v6 = *(v5 + 152);

        v8.value._countAndFlagsBits = v7;
        v8.value._object = v6;
        HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(v8);
      }
    }

    return;
  }

  switch(a1)
  {
    case 5u:
      swift_beginAccess();
      v22 = *(v1 + 40);
      if (!v22)
      {
        return;
      }

      v23 = (v1 + 16);
      goto LABEL_32;
    case 6u:
      swift_beginAccess();
      v32 = *(v1 + 40);
      if (!v32)
      {
        return;
      }

      v33 = v1;
      v34 = *sub_10000E7E4((v1 + 16), v32);
      sub_10006CE54();
      v22 = *(v33 + 40);
      if (!v22)
      {
        return;
      }

      v23 = (v33 + 16);
LABEL_32:
      v35 = *sub_10000E7E4(v23, v22);
      sub_10006D350();
      return;
    case 7u:
      swift_beginAccess();
      v9 = *(v1 + 40);
      if (v9)
      {
        v10 = *sub_10000E7E4((v1 + 16), v9);
        sub_10006D4D4();
      }

      break;
  }
}

uint64_t sub_1000BB69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v301 = &v299 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v299 - v8;
  v10 = type metadata accessor for HeadphoneViewModel(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v299 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v299 - v15;
  v17 = type metadata accessor for HeadphoneModel(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v299 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v299 - v22;
  v302 = a1;
  switch(a1)
  {
    case 1:
      v56 = v303;
      sub_1000C0FB8(a2);
      break;
    case 2:
      v56 = v303;
      sub_1000C476C(a2);
      break;
    case 3:
      v56 = v303;
      sub_1000C1340(a2);
      break;
    case 4:
      v56 = v303;
      sub_1000C1894(a2);
      break;
    case 5:
    case 6:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      v38 = v10[11];
      v39 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v39 - 8) + 56))(a2 + v38, 1, 1, v39);
      v40 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v41 = (a2 + v10[13]);
      *v41 = 0u;
      v41[1] = 0u;
      v42 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v43 = v317;
      v42[12] = v316;
      v42[13] = v43;
      v42[14] = v318;
      v44 = v313;
      v42[8] = v312;
      v42[9] = v44;
      v45 = v315;
      v42[10] = v314;
      v42[11] = v45;
      v46 = v309;
      v42[4] = v308;
      v42[5] = v46;
      v47 = v311;
      v42[6] = v310;
      v42[7] = v47;
      v48 = v305;
      *v42 = v304;
      v42[1] = v48;
      v49 = v307;
      v42[2] = v306;
      v42[3] = v49;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v50 = (a2 + v10[19]);
      v50[5] = 0u;
      v50[6] = 0u;
      v50[3] = 0u;
      v50[4] = 0u;
      v50[1] = 0u;
      v50[2] = 0u;
      *v50 = 0u;
      v51 = (a2 + v10[20]);
      *v51 = 0;
      v51[1] = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(56);
      *(a2 + 8) = v52;
      *(a2 + 16) = sub_100033A5C(57);
      *(a2 + 24) = v53;
      *(a2 + 32) = sub_100033A5C(59);
      *(a2 + 40) = v54;
      v55 = 58;
      goto LABEL_46;
    case 7:
      v56 = v303;
      sub_1000C1B38(a2);
      break;
    case 8:
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v225 = v10[11];
      v226 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v226 - 8) + 56))(a2 + v225, 1, 1, v226);
      v227 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v228 = (a2 + v10[13]);
      *v228 = 0u;
      v228[1] = 0u;
      v229 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v230 = v317;
      v229[12] = v316;
      v229[13] = v230;
      v229[14] = v318;
      v231 = v313;
      v229[8] = v312;
      v229[9] = v231;
      v232 = v315;
      v229[10] = v314;
      v229[11] = v232;
      v233 = v309;
      v229[4] = v308;
      v229[5] = v233;
      v234 = v311;
      v229[6] = v310;
      v229[7] = v234;
      v235 = v305;
      *v229 = v304;
      v229[1] = v235;
      v236 = v307;
      v229[2] = v306;
      v229[3] = v236;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v237 = (a2 + v10[19]);
      v237[5] = 0u;
      v237[6] = 0u;
      v237[3] = 0u;
      v237[4] = 0u;
      v237[1] = 0u;
      v237[2] = 0u;
      *v237 = 0u;
      v238 = (a2 + v10[20]);
      *v238 = 0;
      v238[1] = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(69);
      *(a2 + 8) = v239;
      v109 = 70;
      goto LABEL_34;
    case 9:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      v93 = v10[11];
      v94 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v94 - 8) + 56))(a2 + v93, 1, 1, v94);
      v95 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v96 = (a2 + v10[13]);
      *v96 = 0u;
      v96[1] = 0u;
      v97 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v98 = v317;
      v97[12] = v316;
      v97[13] = v98;
      v97[14] = v318;
      v99 = v313;
      v97[8] = v312;
      v97[9] = v99;
      v100 = v315;
      v97[10] = v314;
      v97[11] = v100;
      v101 = v309;
      v97[4] = v308;
      v97[5] = v101;
      v102 = v311;
      v97[6] = v310;
      v97[7] = v102;
      v103 = v305;
      *v97 = v304;
      v97[1] = v103;
      v104 = v307;
      v97[2] = v306;
      v97[3] = v104;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v105 = (a2 + v10[19]);
      v105[5] = 0u;
      v105[6] = 0u;
      v105[3] = 0u;
      v105[4] = 0u;
      v105[1] = 0u;
      v105[2] = 0u;
      *v105 = 0u;
      v106 = (a2 + v10[20]);
      *v106 = 0;
      v106[1] = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(78);
      *(a2 + 8) = v107;
      *(a2 + 16) = sub_100033A5C(79);
      *(a2 + 24) = v108;
      v109 = 80;
      goto LABEL_34;
    case 10:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      v209 = v10[11];
      v210 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v210 - 8) + 56))(a2 + v209, 1, 1, v210);
      v211 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v212 = (a2 + v10[13]);
      *v212 = 0u;
      v212[1] = 0u;
      v213 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v214 = v317;
      v213[12] = v316;
      v213[13] = v214;
      v213[14] = v318;
      v215 = v313;
      v213[8] = v312;
      v213[9] = v215;
      v216 = v315;
      v213[10] = v314;
      v213[11] = v216;
      v217 = v309;
      v213[4] = v308;
      v213[5] = v217;
      v218 = v311;
      v213[6] = v310;
      v213[7] = v218;
      v219 = v305;
      *v213 = v304;
      v213[1] = v219;
      v220 = v307;
      v213[2] = v306;
      v213[3] = v220;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v221 = (a2 + v10[19]);
      v221[5] = 0u;
      v221[6] = 0u;
      v221[3] = 0u;
      v221[4] = 0u;
      v221[1] = 0u;
      v221[2] = 0u;
      *v221 = 0u;
      v222 = (a2 + v10[20]);
      *v222 = 0;
      v222[1] = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(81);
      *(a2 + 8) = v223;
      *(a2 + 16) = sub_100033A5C(82);
      *(a2 + 24) = v224;
      v109 = 83;
LABEL_34:
      *(a2 + 32) = sub_100033A5C(v109);
      *(a2 + 40) = v240;
      v55 = 71;
      goto LABEL_46;
    case 11:
      v56 = v303;
      sub_1000C1ECC(a2);
      break;
    case 12:
      v56 = v303;
      sub_1000C21E8(a2);
      break;
    case 13:
      v56 = v303;
      sub_1000C24AC(a2);
      break;
    case 14:
      *(a2 + 96) = 0;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      v76 = v10[11];
      v77 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v77 - 8) + 56))(a2 + v76, 1, 1, v77);
      v78 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v79 = (a2 + v10[13]);
      *v79 = 0u;
      v79[1] = 0u;
      v80 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v81 = v317;
      v80[12] = v316;
      v80[13] = v81;
      v80[14] = v318;
      v82 = v313;
      v80[8] = v312;
      v80[9] = v82;
      v83 = v315;
      v80[10] = v314;
      v80[11] = v83;
      v84 = v309;
      v80[4] = v308;
      v80[5] = v84;
      v85 = v311;
      v80[6] = v310;
      v80[7] = v85;
      v86 = v305;
      *v80 = v304;
      v80[1] = v86;
      v87 = v307;
      v80[2] = v306;
      v80[3] = v87;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v88 = (a2 + v10[19]);
      v88[5] = 0u;
      v88[6] = 0u;
      v88[3] = 0u;
      v88[4] = 0u;
      v88[1] = 0u;
      v88[2] = 0u;
      *v88 = 0u;
      v89 = (a2 + v10[20]);
      *v89 = 0;
      v89[1] = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(96);
      *(a2 + 8) = v90;
      *(a2 + 16) = sub_100033A5C(97);
      *(a2 + 24) = v91;
      *(a2 + 32) = sub_100033A5C(98);
      *(a2 + 40) = v92;
      v55 = 99;
      goto LABEL_46;
    case 15:
      v141 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      v56 = v303;
      swift_beginAccess();
      v300 = type metadata accessor for HeadphoneModel;
      sub_1000CE178(v56 + v141, v23, type metadata accessor for HeadphoneModel);
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v142 = v10[11];
      v143 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v143 - 8) + 56))(a2 + v142, 1, 1, v143);
      v144 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v145 = (a2 + v10[13]);
      *v145 = 0u;
      v145[1] = 0u;
      v146 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v147 = v317;
      v146[12] = v316;
      v146[13] = v147;
      v146[14] = v318;
      v148 = v313;
      v146[8] = v312;
      v146[9] = v148;
      v149 = v315;
      v146[10] = v314;
      v146[11] = v149;
      v150 = v309;
      v146[4] = v308;
      v146[5] = v150;
      v151 = v311;
      v146[6] = v310;
      v146[7] = v151;
      v152 = v305;
      *v146 = v304;
      v146[1] = v152;
      v153 = v307;
      v146[2] = v306;
      v146[3] = v153;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v154 = (a2 + v10[19]);
      v154[5] = 0u;
      v154[6] = 0u;
      v154[3] = 0u;
      v154[4] = 0u;
      v154[1] = 0u;
      v154[2] = 0u;
      *v154 = 0u;
      v155 = (a2 + v10[20]);
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(106);
      *(a2 + 8) = v156;
      *(a2 + 16) = sub_100033A5C(107);
      *(a2 + 24) = v157;
      *(a2 + 32) = sub_100033A5C(108);
      *(a2 + 40) = v158;
      *(a2 + 48) = sub_100033A5C(109);
      *(a2 + 56) = v159;
      v160 = *(v23 + 14);
      v161 = *(v23 + 15);
      sub_10007C0D4(v160);
      sub_1000CE1E0(v23, v300);
      *v155 = v160;
      v155[1] = v161;
      break;
    case 16:
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v60 = v10[11];
      v61 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v61 - 8) + 56))(a2 + v60, 1, 1, v61);
      v62 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v63 = (a2 + v10[13]);
      *v63 = 0u;
      v63[1] = 0u;
      v64 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v65 = v317;
      v64[12] = v316;
      v64[13] = v65;
      v64[14] = v318;
      v66 = v313;
      v64[8] = v312;
      v64[9] = v66;
      v67 = v315;
      v64[10] = v314;
      v64[11] = v67;
      v68 = v309;
      v64[4] = v308;
      v64[5] = v68;
      v69 = v311;
      v64[6] = v310;
      v64[7] = v69;
      v70 = v305;
      *v64 = v304;
      v64[1] = v70;
      v71 = v307;
      v64[2] = v306;
      v64[3] = v71;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v72 = (a2 + v10[19]);
      v72[5] = 0u;
      v72[6] = 0u;
      v72[3] = 0u;
      v72[4] = 0u;
      v72[1] = 0u;
      v72[2] = 0u;
      *v72 = 0u;
      v73 = (a2 + v10[20]);
      *v73 = 0;
      v73[1] = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(48);
      *(a2 + 8) = v74;
      v75 = 5;
      goto LABEL_39;
    case 17:
    case 36:
    case 37:
    case 39:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v24 = v10[11];
      v25 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v25 - 8) + 56))(a2 + v24, 1, 1, v25);
      v26 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v27 = (a2 + v10[13]);
      *v27 = 0u;
      v27[1] = 0u;
      v28 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v29 = v317;
      v28[12] = v316;
      v28[13] = v29;
      v28[14] = v318;
      v30 = v313;
      v28[8] = v312;
      v28[9] = v30;
      v31 = v315;
      v28[10] = v314;
      v28[11] = v31;
      v32 = v309;
      v28[4] = v308;
      v28[5] = v32;
      v33 = v311;
      v28[6] = v310;
      v28[7] = v33;
      v34 = v305;
      *v28 = v304;
      v28[1] = v34;
      v35 = v307;
      v28[2] = v306;
      v28[3] = v35;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v36 = (a2 + v10[19]);
      v36[5] = 0u;
      v36[6] = 0u;
      v36[3] = 0u;
      v36[4] = 0u;
      v36[1] = 0u;
      v36[2] = 0u;
      *v36 = 0u;
      v37 = (a2 + v10[20]);
      *v37 = 0;
      v37[1] = 0;
      *(a2 + v10[21]) = 0;
      goto LABEL_3;
    case 18:
      v56 = v303;
      sub_1000C2774(a2);
      break;
    case 19:
      *(v16 + 6) = 0;
      v187 = (v16 + 48);
      *(v16 + 7) = 0xE000000000000000;
      v300 = (v16 + 32);
      *(v16 + 4) = 0u;
      *(v16 + 5) = 0u;
      *(v16 + 12) = 0;
      v188 = v10[11];
      v189 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v189 - 8) + 56))(&v16[v188], 1, 1, v189);
      v190 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v191 = &v16[v10[13]];
      *v191 = 0u;
      *(v191 + 1) = 0u;
      v192 = &v16[v10[14]];
      sub_10001309C(&v304);
      v193 = v317;
      *(v192 + 12) = v316;
      *(v192 + 13) = v193;
      *(v192 + 14) = v318;
      v194 = v313;
      *(v192 + 8) = v312;
      *(v192 + 9) = v194;
      v195 = v315;
      *(v192 + 10) = v314;
      *(v192 + 11) = v195;
      v196 = v309;
      *(v192 + 4) = v308;
      *(v192 + 5) = v196;
      v197 = v311;
      *(v192 + 6) = v310;
      *(v192 + 7) = v197;
      v198 = v305;
      *v192 = v304;
      *(v192 + 1) = v198;
      v199 = v307;
      *(v192 + 2) = v306;
      *(v192 + 3) = v199;
      v16[v10[15]] = 0;
      v16[v10[16]] = 0;
      *&v16[v10[17]] = _swiftEmptyArrayStorage;
      *&v16[v10[18]] = _swiftEmptyArrayStorage;
      v200 = &v16[v10[19]];
      *(v200 + 5) = 0u;
      *(v200 + 6) = 0u;
      *(v200 + 3) = 0u;
      *(v200 + 4) = 0u;
      *(v200 + 1) = 0u;
      *(v200 + 2) = 0u;
      *v200 = 0u;
      v201 = &v16[v10[20]];
      *v201 = 0;
      *(v201 + 1) = 0;
      *&v16[v10[21]] = 0;
      *&v16[v10[22]] = 0;
      v16[v10[23]] = 0;
      v16[v10[24]] = 0;
      *v16 = sub_100033A5C(115);
      *(v16 + 1) = v202;
      *(v16 + 2) = sub_100033A5C(116);
      *(v16 + 3) = v203;
      v56 = v303;
      v204 = v303 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v205 = *(v204 + 136);
      v206 = v16 + 40;
      if (v205)
      {
        *v300 = sub_100033A5C(120);
        *v206 = v207;
        v208 = 121;
        v206 = v16 + 56;
      }

      else
      {
        v208 = 2;
        v187 = v300;
      }

      *v187 = sub_100033A5C(v208);
      *v206 = v298;
      v186 = v16;
      goto LABEL_53;
    case 20:
      v56 = v303;
      sub_1000C38E0(a2);
      break;
    case 21:
      v56 = v303;
      sub_1000C3C3C(a2);
      break;
    case 22:
      v56 = v303;
      sub_1000C40F8(a2);
      break;
    case 23:
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v243 = v10[11];
      v244 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v244 - 8) + 56))(a2 + v243, 1, 1, v244);
      v245 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v246 = (a2 + v10[13]);
      *v246 = 0u;
      v246[1] = 0u;
      v247 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v248 = v317;
      v247[12] = v316;
      v247[13] = v248;
      v247[14] = v318;
      v249 = v313;
      v247[8] = v312;
      v247[9] = v249;
      v250 = v315;
      v247[10] = v314;
      v247[11] = v250;
      v251 = v309;
      v247[4] = v308;
      v247[5] = v251;
      v252 = v311;
      v247[6] = v310;
      v247[7] = v252;
      v253 = v305;
      *v247 = v304;
      v247[1] = v253;
      v254 = v307;
      v247[2] = v306;
      v247[3] = v254;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v255 = (a2 + v10[19]);
      v255[5] = 0u;
      v255[6] = 0u;
      v255[3] = 0u;
      v255[4] = 0u;
      v255[1] = 0u;
      v255[2] = 0u;
      *v255 = 0u;
      v256 = (a2 + v10[20]);
      *v256 = 0;
      v256[1] = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(36);
      *(a2 + 8) = v257;
      *(a2 + 16) = sub_100033A5C(37);
      *(a2 + 24) = v258;
      v75 = 2;
LABEL_39:
      *(a2 + 32) = sub_100033A5C(v75);
      *(a2 + 40) = v259;
      goto LABEL_47;
    case 24:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v260 = v10[11];
      v261 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v261 - 8) + 56))(a2 + v260, 1, 1, v261);
      v262 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v263 = (a2 + v10[13]);
      *v263 = 0u;
      v263[1] = 0u;
      v264 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v265 = v317;
      v264[12] = v316;
      v264[13] = v265;
      v264[14] = v318;
      v266 = v313;
      v264[8] = v312;
      v264[9] = v266;
      v267 = v315;
      v264[10] = v314;
      v264[11] = v267;
      v268 = v309;
      v264[4] = v308;
      v264[5] = v268;
      v269 = v311;
      v264[6] = v310;
      v264[7] = v269;
      v270 = v305;
      *v264 = v304;
      v264[1] = v270;
      v271 = v307;
      v264[2] = v306;
      v264[3] = v271;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v272 = (a2 + v10[19]);
      v272[5] = 0u;
      v272[6] = 0u;
      v272[3] = 0u;
      v272[4] = 0u;
      v272[1] = 0u;
      v272[2] = 0u;
      *v272 = 0u;
      v273 = (a2 + v10[20]);
      *v273 = 0;
      v273[1] = 0;
LABEL_3:
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      goto LABEL_47;
    case 25:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v124 = v10[11];
      v125 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v125 - 8) + 56))(a2 + v124, 1, 1, v125);
      v126 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v127 = (a2 + v10[13]);
      *v127 = 0u;
      v127[1] = 0u;
      v128 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v129 = v317;
      v128[12] = v316;
      v128[13] = v129;
      v128[14] = v318;
      v130 = v313;
      v128[8] = v312;
      v128[9] = v130;
      v131 = v315;
      v128[10] = v314;
      v128[11] = v131;
      v132 = v309;
      v128[4] = v308;
      v128[5] = v132;
      v133 = v311;
      v128[6] = v310;
      v128[7] = v133;
      v134 = v305;
      *v128 = v304;
      v128[1] = v134;
      v135 = v307;
      v128[2] = v306;
      v128[3] = v135;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v136 = (a2 + v10[19]);
      v136[5] = 0u;
      v136[6] = 0u;
      v136[3] = 0u;
      v136[4] = 0u;
      v136[1] = 0u;
      v136[2] = 0u;
      *v136 = 0u;
      v137 = (a2 + v10[20]);
      *v137 = 0;
      v137[1] = 0;
      *(a2 + v10[21]) = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(53);
      *(a2 + 8) = v138;
      *(a2 + 16) = sub_100033A5C(54);
      *(a2 + 24) = v139;
      *(a2 + 32) = sub_100033A5C(55);
      *(a2 + 40) = v140;
      v55 = 1;
      goto LABEL_46;
    case 26:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0xE000000000000000;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0xE000000000000000;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v110 = v10[11];
      v111 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v111 - 8) + 56))(a2 + v110, 1, 1, v111);
      v112 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v113 = (a2 + v10[13]);
      *v113 = 0u;
      v113[1] = 0u;
      v114 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v115 = v317;
      v114[12] = v316;
      v114[13] = v115;
      v114[14] = v318;
      v116 = v313;
      v114[8] = v312;
      v114[9] = v116;
      v117 = v315;
      v114[10] = v314;
      v114[11] = v117;
      v118 = v309;
      v114[4] = v308;
      v114[5] = v118;
      v119 = v311;
      v114[6] = v310;
      v114[7] = v119;
      v120 = v305;
      *v114 = v304;
      v114[1] = v120;
      v121 = v307;
      v114[2] = v306;
      v114[3] = v121;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v122 = (a2 + v10[19]);
      v122[5] = 0u;
      v122[6] = 0u;
      v122[3] = 0u;
      v122[4] = 0u;
      v122[1] = 0u;
      v122[2] = 0u;
      *v122 = 0u;
      v123 = (a2 + v10[20]);
      *v123 = 0;
      v123[1] = 0;
      *(a2 + v10[21]) = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      v55 = 34;
      goto LABEL_46;
    case 27:
      *(a2 + 48) = 0;
      *(a2 + 56) = 0xE000000000000000;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      *(a2 + 96) = 0;
      v274 = v10[11];
      v275 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v275 - 8) + 56))(a2 + v274, 1, 1, v275);
      v276 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v277 = (a2 + v10[13]);
      *v277 = 0u;
      v277[1] = 0u;
      v278 = (a2 + v10[14]);
      sub_10001309C(&v304);
      v279 = v317;
      v278[12] = v316;
      v278[13] = v279;
      v278[14] = v318;
      v280 = v313;
      v278[8] = v312;
      v278[9] = v280;
      v281 = v315;
      v278[10] = v314;
      v278[11] = v281;
      v282 = v309;
      v278[4] = v308;
      v278[5] = v282;
      v283 = v311;
      v278[6] = v310;
      v278[7] = v283;
      v284 = v305;
      *v278 = v304;
      v278[1] = v284;
      v285 = v307;
      v278[2] = v306;
      v278[3] = v285;
      *(a2 + v10[15]) = 0;
      *(a2 + v10[16]) = 0;
      *(a2 + v10[17]) = _swiftEmptyArrayStorage;
      *(a2 + v10[18]) = _swiftEmptyArrayStorage;
      v286 = (a2 + v10[19]);
      v286[5] = 0u;
      v286[6] = 0u;
      v286[3] = 0u;
      v286[4] = 0u;
      v286[1] = 0u;
      v286[2] = 0u;
      *v286 = 0u;
      v287 = (a2 + v10[20]);
      *v287 = 0;
      v287[1] = 0;
      *(a2 + v10[21]) = 0;
      *(a2 + v10[22]) = 0;
      *(a2 + v10[23]) = 0;
      *(a2 + v10[24]) = 0;
      *a2 = sub_100033A5C(122);
      *(a2 + 8) = v288;
      *(a2 + 16) = sub_100033A5C(123);
      *(a2 + 24) = v289;
      *(a2 + 32) = sub_100033A5C(124);
      *(a2 + 40) = v290;
      v55 = 3;
LABEL_46:
      *(a2 + 48) = sub_100033A5C(v55);
      *(a2 + 56) = v291;
LABEL_47:
      v56 = v303;
      break;
    case 28:
      v56 = v303;
      sub_1000C457C(a2);
      break;
    case 29:
      v241 = a2;
      v242 = 29;
      goto LABEL_44;
    case 30:
      v241 = a2;
      v242 = 30;
      goto LABEL_44;
    case 31:
      v241 = a2;
      v242 = 31;
LABEL_44:
      v56 = v303;
      sub_1000C4E28(v242, v241);
      break;
    case 32:
      v162 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      v56 = v303;
      swift_beginAccess();
      sub_1000CE178(v56 + v162, v21, type metadata accessor for HeadphoneModel);
      *(v14 + 4) = 0u;
      *(v14 + 5) = 0u;
      *(v14 + 12) = 0;
      v163 = v10[11];
      v164 = type metadata accessor for HeadphoneAssets(0);
      (*(*(v164 - 8) + 56))(&v14[v163], 1, 1, v164);
      v165 = v10[12];
      type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
      swift_storeEnumTagMultiPayload();
      v166 = &v14[v10[13]];
      *v166 = 0u;
      *(v166 + 1) = 0u;
      v167 = &v14[v10[14]];
      sub_10001309C(&v304);
      v168 = v317;
      *(v167 + 12) = v316;
      *(v167 + 13) = v168;
      *(v167 + 14) = v318;
      v169 = v313;
      *(v167 + 8) = v312;
      *(v167 + 9) = v169;
      v170 = v315;
      *(v167 + 10) = v314;
      *(v167 + 11) = v170;
      v171 = v309;
      *(v167 + 4) = v308;
      *(v167 + 5) = v171;
      v172 = v311;
      *(v167 + 6) = v310;
      *(v167 + 7) = v172;
      v173 = v305;
      *v167 = v304;
      *(v167 + 1) = v173;
      v174 = v307;
      *(v167 + 2) = v306;
      *(v167 + 3) = v174;
      v14[v10[15]] = 0;
      v14[v10[16]] = 0;
      *&v14[v10[17]] = _swiftEmptyArrayStorage;
      *&v14[v10[18]] = _swiftEmptyArrayStorage;
      v175 = &v14[v10[19]];
      *(v175 + 5) = 0u;
      *(v175 + 6) = 0u;
      *(v175 + 3) = 0u;
      *(v175 + 4) = 0u;
      *(v175 + 1) = 0u;
      *(v175 + 2) = 0u;
      *v175 = 0u;
      v176 = &v14[v10[20]];
      *v176 = 0;
      *(v176 + 1) = 0;
      *&v14[v10[21]] = 0;
      *&v14[v10[22]] = 0;
      v14[v10[23]] = 0;
      v14[v10[24]] = 0;
      *v14 = sub_100033A5C(110);
      *(v14 + 1) = v177;
      *(v14 + 2) = sub_100033A5C(111);
      *(v14 + 3) = v178;
      if (sub_10001E474(*&v21[*(v17 + 136)]))
      {
        v179 = sub_100033A5C(112);
        v300 = v180;

        v181 = v300;
        *(v14 + 2) = v179;
        *(v14 + 3) = v181;
      }

      *(v14 + 4) = sub_100033A5C(113);
      *(v14 + 5) = v182;
      v183 = sub_100033A5C(114);
      v185 = v184;
      sub_1000CE1E0(v21, type metadata accessor for HeadphoneModel);
      *(v14 + 6) = v183;
      *(v14 + 7) = v185;
      v186 = v14;
LABEL_53:
      sub_1000CE240(v186, a2, type metadata accessor for HeadphoneViewModel);
      break;
    case 33:
      v58 = a2;
      v59 = 33;
      goto LABEL_37;
    case 34:
      v58 = a2;
      v59 = 34;
      goto LABEL_37;
    case 35:
      v58 = a2;
      v59 = 35;
LABEL_37:
      v56 = v303;
      sub_1000C5130(v59, v58);
      break;
    case 38:
      type metadata accessor for HeadphoneTrackWorkoutViewController();
      v56 = v303;
      v57 = v303 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      sub_10002FD54(*(v57 + *(v17 + 136)), a2);
      break;
    default:
      v56 = v303;
      sub_1000C0C94(a2);
      break;
  }

  v292 = v10[11];
  sub_10000E88C(a2 + v292, v9, &qword_10011CCF0, qword_1000D61B0);
  v293 = type metadata accessor for HeadphoneAssets(0);
  v294 = (*(*(v293 - 8) + 48))(v9, 1, v293);
  sub_10000E950(v9, &qword_10011CCF0, qword_1000D61B0);
  if (v294 == 1)
  {
    v295 = v301;
    sub_1000C53FC(v302, v301);
    sub_10000EA2C(v295, a2 + v292, &qword_10011CCF0, qword_1000D61B0);
  }

  v296 = v56 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_10002C508(*(v296 + *(v17 + 136)), &v304);
  result = sub_10000EA2C(&v304, a2 + v10[14], &unk_10011FF80, &qword_1000D8590);
  *(a2 + v10[21]) = *(v296 + *(v17 + 136));
  return result;
}

void sub_1000BD484(char a1)
{
  v2 = v1;
  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011FDE0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Device did finish connecting", v7, 2u);
  }

  if (a1)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  *(v2 + 80) = v8;
  sub_1000B4D14();
  if (*(v2 + 88))
  {
    v9 = *(v2 + 88);

    sub_100041A64(a1 & 1);
  }

  if ((a1 & 1) == 0)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    sub_10004A288();
    goto LABEL_16;
  }

  if (*(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_temporarilyPair) == 1)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    sub_10004B0B8();
LABEL_16:

    swift_unknownObjectRelease();
    return;
  }

  v10 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (*(v10 + *(type metadata accessor for HeadphoneModel(0) + 172)) == 1)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "User has already seen tutorials for this product, skipping cards", v13, 2u);
    }

    sub_1000B5D54(1);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
      v16 = swift_unknownObjectWeakLoadStrong();
      v17 = *(v15 + 8);
      swift_unknownObjectRelease();
      if (v16)
      {
        ObjectType = swift_getObjectType();
        (*(v17 + 56))(ObjectType, v17);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1000BD740()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_hasAutoDismissed;
  if (*(v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_hasAutoDismissed))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = *(v8 + 8);
    swift_unknownObjectRelease();
    if (v9)
    {
      ObjectType = swift_getObjectType();
      v12 = (*(v10 + 32))(ObjectType, v10);
      swift_unknownObjectRelease();
      if (v12 == 17)
      {
        return;
      }
    }
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_currentView;
    v15 = swift_unknownObjectWeakLoadStrong();
    v16 = *(v14 + 8);
    swift_unknownObjectRelease();
    if (v15)
    {
      v17 = swift_getObjectType();
      v18 = (*(v16 + 32))(v17, v16);
      swift_unknownObjectRelease();
      if (v18 == 19)
      {
        return;
      }
    }
  }

  v19 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v20 = *(v19 + 136);
  sub_1000CE178(v19, v5, type metadata accessor for HeadphoneModel);
  v21 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*&v5[v2[34]]];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 hasLid];
  }

  else
  {
    v23 = 0;
  }

  v24 = 0x4601u >> v20;
  sub_1000CE1E0(v5, type metadata accessor for HeadphoneModel);
  if (*(v19 + v2[25]) != 1)
  {
    if (((v24 | ((*(v19 + v2[31]) & 0x400u) >> 10) | v23) & 1) != 0 || *(v19 + v2[33]))
    {
      return;
    }

    if (qword_10011C770 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000A570(v29, qword_10011FDE0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_31;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Dismissing because device does not want status";
    goto LABEL_30;
  }

  if (*(v19 + v2[44]) & 1) == 0 && (v24)
  {
    if (qword_10011C770 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A570(v25, qword_10011FDE0);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Skipping auto dismiss while waiting for genuine check", v28, 2u);
    }

    return;
  }

  if (qword_10011C770 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000A570(v34, qword_10011FDE0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "Auto dismissing on lid close";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);
  }

LABEL_31:

  *(v1 + v6) = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100047C68();
    swift_unknownObjectRelease();
  }
}

void sub_1000BDBCC()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v2 = v1 + *(type metadata accessor for HeadphoneModel(0) + 180);
  v3 = *(v2 + 8);
  if (v3 != 255)
  {
    v4 = *v2;
    if (v3)
    {
      v5 = *v2;
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      swift_willThrowTypedImpl();
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10001C2A0(v4, 0);
      sub_10004A700(v4);
      swift_unknownObjectRelease();
      sub_10007BF80(v4, v3);
    }
  }
}

uint64_t sub_1000BDCA4(void *a1)
{
  v2 = a1;
  v3 = 13;
  switch(a1)
  {
    case 0uLL:
      v4 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      if (*(v4 + 136) != 1)
      {
        v3 = 1;
        goto LABEL_39;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000A570(v5, qword_10011FDE0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "End Call upsell finished";
        goto LABEL_26;
      }

      goto LABEL_27;
    case 1uLL:
      goto LABEL_39;
    case 2uLL:
      v3 = 3;
      goto LABEL_39;
    case 3uLL:
      v10 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      if (*(v10 + 136) != 11)
      {
        goto LABEL_15;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000A570(v11, qword_10011FDE0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_27;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Announce notifications upsell finished";
      goto LABEL_26;
    case 4uLL:
      v12 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      if (*(v12 + 136) == 12)
      {
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000A570(v13, qword_10011FDE0);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          v9 = "Spatial audio profile upsell finished";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
        }

LABEL_27:

LABEL_28:
        v3 = 16;
      }

      else
      {
        v3 = 7;
      }

      goto LABEL_39;
    case 5uLL:
      v3 = 6;
      goto LABEL_39;
    case 6uLL:
      v3 = 2;
      goto LABEL_39;
    case 7uLL:
      v3 = 5;
      goto LABEL_39;
    case 8uLL:
LABEL_15:
      v3 = 10;
      goto LABEL_39;
    case 9uLL:
      v3 = 11;
      goto LABEL_39;
    case 0xAuLL:
      v3 = 9;
      goto LABEL_39;
    case 0xBuLL:
      v3 = 14;
      goto LABEL_39;
    case 0xCuLL:
      v14 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v15 = v14 + *(type metadata accessor for HeadphoneModel(0) + 180);
      v16 = *(v15 + 8);
      if (v16 == 255)
      {
        return 16;
      }

      v3 = *v15;
      if (v16)
      {
        v28 = *v15;
        sub_100008438(&unk_10011D970, &unk_1000D6500);
        swift_willThrowTypedImpl();
        return 16;
      }

      else
      {
        sub_1000CE65C(*v15, v16);
        sub_10001C2A0(v3, 0);
LABEL_39:
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_10000A570(v17, qword_10011FDE0);
        sub_1000CC0C4(v2);
        sub_1000CC0C4(v3);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        sub_1000CC0E4(v3);
        sub_1000CC0E4(v2);
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          *v20 = 136315394;
          sub_100008438(&unk_100120080, &qword_1000DA538);
          v21 = String.init<A>(reflecting:)();
          v23 = sub_100078978(v21, v22, &v28);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2080;
          v24 = sub_1000B4AC0();
          v26 = sub_100078978(v24, v25, &v28);

          *(v20 + 14) = v26;
          _os_log_impl(&_mh_execute_header, v18, v19, "Prox Card: Getting Next Step: %s For: %s", v20, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          sub_1000CC0E4(v3);
        }

        sub_1000CC0E4(v2);
        return v3;
      }

    case 0xDuLL:
      v3 = 4;
      goto LABEL_39;
    case 0xEuLL:
      v3 = 15;
      goto LABEL_39;
    case 0xFuLL:
      v3 = 12;
      goto LABEL_39;
    case 0x10uLL:
      return v2;
    default:
      sub_1000CC0D4(a1);
      goto LABEL_28;
  }
}

uint64_t sub_1000BE260(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 1) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = v227 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  __chkstk_darwin(v5);
  v9 = v227 - v8 + 24;
  if (a1 == 16)
  {
LABEL_2:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  v229[3] = &type metadata for AudioAccessoryFeatures;
  v229[4] = sub_10009B230();
  LOBYTE(v229[0]) = 0;
  sub_1000CC0D4(a1);
  v12 = isFeatureEnabled(_:)();
  sub_10000EA94(v229);
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v1 + 40);
    if (v13)
    {
      if ([*(*sub_10000E7E4((v1 + 16) v13) + OBJC:"isTemporaryPairingConnectionAllowed" IVAR:? :? :? :? TtC20HeadphoneProxService19HeadphoneInteractor:?deviceManager)])
      {
        if (sub_1000B4AC0() == 0x79726574746142 && v14 == 0xE700000000000000)
        {
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v15 & 1) == 0)
          {
            if (qword_10011C770 != -1)
            {
              swift_once();
            }

            v145 = type metadata accessor for Logger();
            sub_10000A570(v145, qword_10011FDE0);
            sub_1000CC0D4(a1);
            v146 = Logger.logObject.getter();
            v147 = static os_log_type_t.default.getter();
            sub_1000CC0E4(a1);
            if (os_log_type_enabled(v146, v147))
            {
              v148 = swift_slowAlloc();
              v149 = swift_slowAlloc();
              v229[0] = v149;
              *v148 = 136315138;
              v150 = sub_1000B4AC0();
              v152 = sub_100078978(v150, v151, v229);

              *(v148 + 4) = v152;
              _os_log_impl(&_mh_execute_header, v146, v147, "Skip showing %s as the device is managed.", v148, 0xCu);
              sub_10000EA94(v149);

              sub_1000CC0E4(a1);
            }

            else
            {

LABEL_185:
              v183 = a1;
LABEL_186:
              sub_1000CC0E4(v183);
            }

            goto LABEL_2;
          }
        }
      }
    }
  }

  switch(a1)
  {
    case 0uLL:
      v16 = objc_allocWithZone(NSUserDefaults);
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 initWithSuiteName:v17];

      if (v18)
      {
        v19 = String._bridgeToObjectiveC()();
        v20 = [v18 BOOLForKey:v19];

        if (v20)
        {
          if (qword_10011C770 != -1)
          {
            swift_once();
          }

          v21 = type metadata accessor for Logger();
          sub_10000A570(v21, qword_10011FDE0);
          sub_1000CC0D4(0);
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v229[0] = v25;
            *v24 = 136315138;
            v26 = sub_1000B4AC0();
            v28 = sub_100078978(v26, v27, v229);

            *(v24 + 4) = v28;
            _os_log_impl(&_mh_execute_header, v22, v23, "Should show %s? overridingEndCall prox", v24, 0xCu);
            sub_10000EA94(v25);
          }

          v29 = 0;
          goto LABEL_188;
        }
      }

      swift_beginAccess();
      v201 = *(v1 + 40);
      if (!v201)
      {
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v209 = type metadata accessor for Logger();
        sub_10000A570(v209, qword_10011FDE0);
        v210 = Logger.logObject.getter();
        v211 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v210, v211))
        {
          v212 = swift_slowAlloc();
          *v212 = 0;
          _os_log_impl(&_mh_execute_header, v210, v211, "Should show endCall status is nil", v212, 2u);
        }

        v183 = 0;
        goto LABEL_186;
      }

      v202 = v1;
      v203 = *sub_10000E7E4((v1 + 16), v201);
      v204 = sub_10006CE54();
      v205 = v202 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v206 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*(v205 + v3[34])];
      if (v206)
      {
        v207 = v206;
        v208 = [v206 supportsEndCallProx];
      }

      else
      {
        v208 = 0;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v213 = type metadata accessor for Logger();
      sub_10000A570(v213, qword_10011FDE0);
      sub_1000CC0D4(0);
      v214 = Logger.logObject.getter();
      v215 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v214, v215))
      {
        v216 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        *v216 = 136315906;
        v217 = sub_1000B4AC0();
        v219 = sub_100078978(v217, v218, &v228);

        *(v216 + 4) = v219;
        *(v216 + 12) = 2080;
        LOBYTE(v10) = v208 & v204;
        if ((v208 & v204) != 0)
        {
          v220 = 5457241;
        }

        else
        {
          v220 = 20302;
        }

        if ((v208 & v204) != 0)
        {
          v221 = 0xE300000000000000;
        }

        else
        {
          v221 = 0xE200000000000000;
        }

        v222 = sub_100078978(v220, v221, &v228);

        *(v216 + 14) = v222;
        *(v216 + 22) = 1024;
        *(v216 + 24) = v208;
        *(v216 + 28) = 1024;
        *(v216 + 30) = v204 & 1;
        _os_log_impl(&_mh_execute_header, v214, v215, "Should show %s? %s \n supportsEndCallProx:%{BOOL}d, endCallStatus:%{BOOL}d ", v216, 0x22u);
        swift_arrayDestroy();

        sub_1000CC0E4(0);
      }

      else
      {

        sub_1000CC0E4(0);
        LOBYTE(v10) = v208 & v204;
      }

      return v10 & 1;
    case 1uLL:
      if (sub_1000B4F34())
      {
        if (qword_10011C750 != -1)
        {
          swift_once();
        }

        v10 = qword_1001231E0;
        v98 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
        swift_beginAccess();
        LOBYTE(v10) = sub_1000A566C(*(v98 + v3[34]), v10) ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v153 = type metadata accessor for Logger();
      sub_10000A570(v153, qword_10011FDE0);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_77;
      }

      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v227[0] = v82;
      *v81 = 136315394;
      v154 = sub_1000B4AC0();
      v156 = sub_100078978(v154, v155, v227);

      *(v81 + 4) = v156;
      *(v81 + 12) = 1024;
      *(v81 + 14) = v10 & 1;
      v118 = "Should show %s? %{BOOL}d";
      goto LABEL_76;
    case 2uLL:
      v64 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v65 = *(v64 + v3[28]);
      v66 = (v64 + v3[26]);
      v67 = v66[1];
      v68 = v66[2];
      v69 = v66[3];
      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_10000A570(v70, qword_10011FDE0);
      v10 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v227[0] = v73;
        *v72 = 136316162;
        v74 = sub_1000B4AC0();
        v76 = sub_100078978(v74, v75, v227);

        *(v72 + 4) = v76;
        *(v72 + 12) = 1024;
        *(v72 + 14) = v65 ^ 1;
        *(v72 + 18) = 1024;
        *(v72 + 20) = v67 ^ 1;
        *(v72 + 24) = 1024;
        *(v72 + 26) = v68;
        *(v72 + 30) = 1024;
        *(v72 + 32) = v69;
        _os_log_impl(&_mh_execute_header, v10, v71, "Should show %s? not temporarily paired = %{BOOL}d, HS not enabled = %{BOOL}d, locale supported = %{BOOL}d, accessory supported = %{BOOL}d", v72, 0x24u);
        sub_10000EA94(v73);
      }

      LOBYTE(v10) = ((v65 | v67) ^ 1) & v68 & v69;
      return v10 & 1;
    case 3uLL:
      v86 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v87 = *(v86 + v3[28]);
      v88 = *(v86 + v3[35]);
      LODWORD(v10) = *(v86 + v3[40]);
      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      sub_10000A570(v89, qword_10011FDE0);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v226 = swift_slowAlloc();
        v227[0] = v226;
        *v92 = 136315906;
        v93 = sub_1000B4AC0();
        v95 = sub_100078978(v93, v94, v227);

        *(v92 + 4) = v95;
        *(v92 + 12) = 1024;
        *(v92 + 14) = v87 ^ 1;
        *(v92 + 18) = 1024;
        *(v92 + 20) = v88;
        *(v92 + 24) = 1024;
        *(v92 + 26) = v10;
        _os_log_impl(&_mh_execute_header, v90, v91, "Should show %s? not temporarily paired = %{BOOL}d, has software volume = %{BOOL}d, needs announce = %{BOOL}d", v92, 0x1Eu);
        sub_10000EA94(v226);
      }

      if ((v87 & 1) != 0 || !*(v86 + v3[33]) && (v88 & 1) == 0)
      {
        goto LABEL_2;
      }

      return v10 & 1;
    case 4uLL:
      v46 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v47 = v3[28];
      if (*(v46 + 152))
      {
        v48 = *(v46 + 144);
        v49 = *(v46 + 152);
      }

      v160 = *(v46 + v47);
      v10 = objc_opt_self();

      v161 = String._bridgeToObjectiveC()();

      LODWORD(v10) = [v10 isProxCardEnrollmentSupportedForDevice:v161];

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v162 = type metadata accessor for Logger();
      sub_10000A570(v162, qword_10011FDE0);
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v227[0] = v166;
        *v165 = 136315650;
        v167 = sub_1000B4AC0();
        v169 = sub_100078978(v167, v168, v227);

        *(v165 + 4) = v169;
        *(v165 + 12) = 1024;
        *(v165 + 14) = v160 ^ 1;
        *(v165 + 18) = 1024;
        *(v165 + 20) = v10;
        _os_log_impl(&_mh_execute_header, v163, v164, "Should show %s? not temporarily paired = %{BOOL}d, needs spatial profile setup = %{BOOL}d", v165, 0x18u);
        sub_10000EA94(v166);
      }

      LOBYTE(v10) = (v160 ^ 1) & v10;
      return v10 & 1;
    case 5uLL:
      v99 = v1;
      v100 = objc_allocWithZone(LSApplicationRecord);
      v171 = sub_1000CBF9C(0xD000000000000010, 0x80000001000DBF50, 0);
      v172 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      sub_1000CE178(v99 + v172, v9, type metadata accessor for HeadphoneModel);
      v173 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*&v9[v3[34]]];
      if (v173)
      {
        v174 = v173;
        v175 = [v173 supportsFindMyNetwork];

        sub_1000CE1E0(v9, type metadata accessor for HeadphoneModel);
        if (!v171 && v175)
        {
          if (qword_10011C770 != -1)
          {
            swift_once();
          }

          v176 = type metadata accessor for Logger();
          sub_10000A570(v176, qword_10011FDE0);
          v10 = Logger.logObject.getter();
          v177 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v10, v177))
          {
            v178 = swift_slowAlloc();
            *v178 = 0;
            _os_log_impl(&_mh_execute_header, v10, v177, "FindMy not installed and device supports Find My, will show Install Find My view", v178, 2u);

            v29 = 5;
            goto LABEL_188;
          }

          goto LABEL_141;
        }
      }

      else
      {
        sub_1000CE1E0(v9, type metadata accessor for HeadphoneModel);
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v179 = type metadata accessor for Logger();
      sub_10000A570(v179, qword_10011FDE0);
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&_mh_execute_header, v180, v181, "FindMy is installed, won't show Install Find My view", v182, 2u);

        v183 = 5;
        goto LABEL_186;
      }

      goto LABEL_147;
    case 6uLL:
      v108 = v1;
      v109 = objc_allocWithZone(LSApplicationRecord);
      v171 = sub_1000CBF9C(0xD000000000000010, 0x80000001000DBF50, 0);
      v185 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      sub_1000CE178(v108 + v185, v7, type metadata accessor for HeadphoneModel);
      v186 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*&v7[v3[34]]];
      if (v186)
      {
        v187 = v186;
        v188 = [v186 supportsFindMyNetwork];

        sub_1000CE1E0(v7, type metadata accessor for HeadphoneModel);
        if (!v171 && v188)
        {
          if (qword_10011C770 != -1)
          {
            swift_once();
          }

          v189 = type metadata accessor for Logger();
          sub_10000A570(v189, qword_10011FDE0);
          v10 = Logger.logObject.getter();
          v190 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v10, v190))
          {
            v191 = swift_slowAlloc();
            *v191 = 0;
            _os_log_impl(&_mh_execute_header, v10, v190, "FindMy not installed and device supports Find My, will show AirPods Linking view", v191, 2u);

            v29 = 6;
            goto LABEL_188;
          }

LABEL_141:

          LOBYTE(v10) = 1;
          return v10 & 1;
        }
      }

      else
      {
        sub_1000CE1E0(v7, type metadata accessor for HeadphoneModel);
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v192 = type metadata accessor for Logger();
      sub_10000A570(v192, qword_10011FDE0);
      v180 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v180, v193))
      {
        v194 = swift_slowAlloc();
        *v194 = 0;
        _os_log_impl(&_mh_execute_header, v180, v193, "FindMy is installed, won't show AirPods Linking view", v194, 2u);

        v183 = 6;
        goto LABEL_186;
      }

LABEL_147:

      goto LABEL_157;
    case 7uLL:
      swift_beginAccess();
      v96 = *(v1 + 40);
      if (!v96)
      {
        goto LABEL_2;
      }

      v97 = *sub_10000E7E4((v1 + 16), v96);
      LOBYTE(v10) = sub_10006D940();
      return v10 & 1;
    case 8uLL:
      swift_beginAccess();
      if (*(v1 + 40))
      {
        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v119 = type metadata accessor for Logger();
        sub_10000A570(v119, qword_10011FDE0);
        v171 = Logger.logObject.getter();
        v120 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v171, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v227[0] = v122;
          *v121 = 136315394;
          v123 = sub_1000B4AC0();
          v125 = sub_100078978(v123, v124, v227);

          *(v121 + 4) = v125;
          *(v121 + 12) = 1024;
          *(v121 + 14) = 0;
          v126 = "Prox Card: Should Show %s: %{BOOL}d";
          v127 = v120;
          v128 = v171;
          v129 = v121;
          v130 = 18;
          goto LABEL_156;
        }

        goto LABEL_157;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v196 = type metadata accessor for Logger();
      sub_10000A570(v196, qword_10011FDE0);
      v171 = Logger.logObject.getter();
      v158 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v171, v158))
      {
        goto LABEL_157;
      }

      goto LABEL_155;
    case 9uLL:
      swift_beginAccess();
      v57 = *(v1 + 40);
      if (v57)
      {
        v58 = sub_10000E7E4((v1 + 16), v57);
        v59 = *(*v58 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
        v10 = *v58 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v60 = *(v10 + 144);
        v61 = *(v10 + 152);

        v62.value._countAndFlagsBits = v60;
        v62.value._object = v61;
        LOBYTE(v10) = HeadphoneProxFeatureManager.shouldShowTrackWorkoutCard(deviceAddress:)(v62);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v63 = type metadata accessor for Logger();
        sub_10000A570(v63, qword_10011FDE0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v170 = type metadata accessor for Logger();
      sub_10000A570(v170, qword_10011FDE0);
      v171 = Logger.logObject.getter();
      v158 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v171, v158))
      {
        goto LABEL_157;
      }

      goto LABEL_155;
    case 0xAuLL:
      swift_beginAccess();
      v110 = *(v1 + 40);
      if (v110)
      {
        v111 = sub_10000E7E4((v1 + 16), v110);
        v112 = *(*v111 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
        v10 = *v111 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v113 = *(v10 + 144);
        v114 = *(v10 + 152);

        v115.value._countAndFlagsBits = v113;
        v115.value._object = v114;
        LOBYTE(v10) = HeadphoneProxFeatureManager.shouldShowHeadGesturesCard(deviceAddress:)(v115);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v116 = type metadata accessor for Logger();
        sub_10000A570(v116, qword_10011FDE0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v195 = type metadata accessor for Logger();
      sub_10000A570(v195, qword_10011FDE0);
      v171 = Logger.logObject.getter();
      v158 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v171, v158))
      {
        goto LABEL_157;
      }

      goto LABEL_155;
    case 0xBuLL:
      swift_beginAccess();
      v39 = *(v1 + 40);
      if (v39)
      {
        v40 = sub_10000E7E4((v1 + 16), v39);
        v41 = *(*v40 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
        v10 = *v40 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v42 = *(v10 + 144);
        v43 = *(v10 + 152);

        v44.value._countAndFlagsBits = v42;
        v44.value._object = v43;
        LOBYTE(v10) = HeadphoneProxFeatureManager.shouldShowLiveTranslationCard(deviceAddress:)(v44);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_10000A570(v45, qword_10011FDE0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v159 = type metadata accessor for Logger();
      sub_10000A570(v159, qword_10011FDE0);
      v171 = Logger.logObject.getter();
      v158 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v171, v158))
      {
        goto LABEL_157;
      }

      goto LABEL_155;
    case 0xCuLL:
      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_10000A570(v50, qword_10011FDE0);
      v10 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v229[0] = v53;
        *v52 = 136315138;
        v54 = sub_1000B4AC0();
        v56 = sub_100078978(v54, v55, v229);

        *(v52 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v10, v51, "Prox Card: Should Show %s: true", v52, 0xCu);
        sub_10000EA94(v53);
      }

      goto LABEL_141;
    case 0xDuLL:
      swift_beginAccess();
      v101 = *(v1 + 40);
      if (v101)
      {
        v102 = sub_10000E7E4((v1 + 16), v101);
        v103 = *(*v102 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
        v10 = *v102 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v104 = *(v10 + 144);
        v105 = *(v10 + 152);

        v106.value._countAndFlagsBits = v104;
        v106.value._object = v105;
        LOBYTE(v10) = HeadphoneProxFeatureManager.shouldShowHeartRateMonitor(deviceAddress:)(v106);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        sub_10000A570(v107, qword_10011FDE0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v37, v38))
        {
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v184 = type metadata accessor for Logger();
      sub_10000A570(v184, qword_10011FDE0);
      v171 = Logger.logObject.getter();
      v158 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v171, v158))
      {
        goto LABEL_157;
      }

      goto LABEL_155;
    case 0xEuLL:
      swift_beginAccess();
      v30 = *(v1 + 40);
      if (v30)
      {
        v31 = sub_10000E7E4((v1 + 16), v30);
        v32 = *(*v31 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);
        v10 = *v31 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v33 = *(v10 + 144);
        v34 = *(v10 + 152);

        v35.value._countAndFlagsBits = v33;
        v35.value._object = v34;
        LOBYTE(v10) = HeadphoneProxFeatureManager.shouldShowYodelCard(deviceAddress:)(v35);

        if (qword_10011C770 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_10000A570(v36, qword_10011FDE0);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
LABEL_74:
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v228 = v82;
          *v81 = 136315394;
          v83 = sub_1000B4AC0();
          v85 = &v228;
LABEL_75:
          v117 = sub_100078978(v83, v84, v85);

          *(v81 + 4) = v117;
          *(v81 + 12) = 1024;
          *(v81 + 14) = v10 & 1;
          v118 = "Prox Card: Should Show %s: %{BOOL}d";
LABEL_76:
          _os_log_impl(&_mh_execute_header, v37, v38, v118, v81, 0x12u);
          sub_10000EA94(v82);
        }

LABEL_77:

        return v10 & 1;
      }

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v157 = type metadata accessor for Logger();
      sub_10000A570(v157, qword_10011FDE0);
      v171 = Logger.logObject.getter();
      v158 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v171, v158))
      {
LABEL_155:
        v197 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v227[0] = v122;
        *v197 = 136315138;
        v198 = sub_1000B4AC0();
        v200 = sub_100078978(v198, v199, v227);

        *(v197 + 4) = v200;
        v126 = "Prox Card: %s status check failed";
        v127 = v158;
        v128 = v171;
        v129 = v197;
        v130 = 12;
LABEL_156:
        _os_log_impl(&_mh_execute_header, v128, v127, v126, v129, v130);
        sub_10000EA94(v122);
      }

LABEL_157:

      goto LABEL_2;
    case 0xFuLL:
      type metadata accessor for HeadphoneProxFeatureManager();
      static HeadphoneProxFeatureManager.shared.getter();
      v10 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v77 = *(v10 + 144);
      v78 = *(v10 + 152);

      v79.value._countAndFlagsBits = v77;
      v79.value._object = v78;
      LOBYTE(v10) = HeadphoneProxFeatureManager.shouldShowUSBLosslessAudio(deviceAddress:)(v79);

      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_10000A570(v80, qword_10011FDE0);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_77;
      }

      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v227[0] = v82;
      *v81 = 136315394;
      v83 = sub_1000B4AC0();
      v85 = v227;
      goto LABEL_75;
    default:
      if (qword_10011C770 != -1)
      {
        swift_once();
      }

      v131 = type metadata accessor for Logger();
      sub_10000A570(v131, qword_10011FDE0);

      sub_1000CC0C4(a1);
      v132 = v1;

      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.default.getter();
      sub_1000CC0E4(a1);
      if (!os_log_type_enabled(v133, v134))
      {

        v140 = v132;

        goto LABEL_182;
      }

      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v229[0] = v136;
      *v135 = 136315394;
      v137 = sub_1000B4AC0();
      v139 = sub_100078978(v137, v138, v229);

      *(v135 + 4) = v139;
      *(v135 + 12) = 1024;
      v140 = v132;
      v141 = v132 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v142 = v141 + v3[45];
      v143 = *(v142 + 8);
      if (v143 == 255)
      {
        goto LABEL_89;
      }

      if (v143)
      {
        v228 = *v142;
        sub_100008438(&unk_10011D970, &unk_1000D6500);
        swift_willThrowTypedImpl();
LABEL_89:

        v144 = 0;
      }

      else
      {

        v144 = 1;
      }

      *(v135 + 14) = v144;

      _os_log_impl(&_mh_execute_header, v133, v134, "Prox Card: Should Show %s: %{BOOL}d", v135, 0x12u);
      sub_10000EA94(v136);

LABEL_182:
      v223 = v140 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
      swift_beginAccess();
      v224 = v223 + v3[45];
      v225 = *(v224 + 8);
      if (v225 == 255)
      {
        goto LABEL_185;
      }

      if (v225)
      {
        v228 = *v224;
        sub_100008438(&unk_10011D970, &unk_1000D6500);
        swift_willThrowTypedImpl();
        goto LABEL_185;
      }

      v29 = a1;
LABEL_188:
      sub_1000CC0E4(v29);
      LOBYTE(v10) = 1;
      break;
  }

  return v10 & 1;
}

uint64_t sub_1000C05F0()
{
  sub_10000E950(v0 + 16, &qword_10011FBC0, &unk_1000D5EF0);
  sub_100042298(v0 + 56);
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);

  sub_1000CE1E0(v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model, type metadata accessor for HeadphoneModel);
  sub_1000CC0E4(*(v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_postPairStep));

  v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_unlockDevice + 8);

  return v0;
}

uint64_t sub_1000C06A0()
{
  sub_1000C05F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphonePresenter()
{
  result = qword_10011FE68;
  if (!qword_10011FE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C074C()
{
  result = type metadata accessor for HeadphoneModel(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000C0858(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C087C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF0 && *(a1 + 8))
  {
    return (*a1 + 2147483632);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 15;
  if (v4 >= 0x11)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C08D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFEF)
  {
    *result = 0;
    *result = a2 - 2147483632;
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 15;
    }
  }

  return result;
}

void *sub_1000C092C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1000C0970()
{
  result = qword_10011FF60;
  if (!qword_10011FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF60);
  }

  return result;
}

void sub_1000C0A08()
{
  v1 = *(*v0 + 72);

  v2 = String._bridgeToObjectiveC()();

  sub_10004D7D4();
  sub_1000084D4(0, &qword_10011E0A0, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();
}

void sub_1000C0AEC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_10007BF98(a1, v1 + v3);
  swift_endAccess();
  sub_1000BD740();
  sub_1000B4D14();
  sub_1000BDBCC();
}

uint64_t sub_1000C0B58()
{
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A570(v0, qword_1001231C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Requested launch of bluetooth settings", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10004CEC4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000C0C94@<X0>(char *a1@<X8>)
{
  v3 = (type metadata accessor for HeadphoneModel(0) - 8);
  v4 = *(*v3 + 64);
  __chkstk_darwin();
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  *(a1 + 12) = 0;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v7[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v11 = &a1[v7[13]];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = &a1[v7[14]];
  sub_10001309C(v40);
  v13 = v40[11];
  v14 = v40[13];
  v15 = v40[14];
  *(v12 + 12) = v40[12];
  *(v12 + 13) = v14;
  *(v12 + 14) = v15;
  v16 = v40[7];
  v17 = v40[9];
  v18 = v40[10];
  *(v12 + 8) = v40[8];
  *(v12 + 9) = v17;
  *(v12 + 10) = v18;
  *(v12 + 11) = v13;
  v19 = v40[5];
  *(v12 + 4) = v40[4];
  *(v12 + 5) = v19;
  *(v12 + 6) = v40[6];
  *(v12 + 7) = v16;
  v20 = v40[1];
  *v12 = v40[0];
  *(v12 + 1) = v20;
  v21 = v40[3];
  *(v12 + 2) = v40[2];
  *(v12 + 3) = v21;
  a1[v7[15]] = 0;
  a1[v7[16]] = 0;
  *&a1[v7[17]] = &_swiftEmptyArrayStorage;
  *&a1[v7[18]] = &_swiftEmptyArrayStorage;
  v22 = &a1[v7[19]];
  *(v22 + 5) = 0u;
  *(v22 + 6) = 0u;
  *(v22 + 3) = 0u;
  *(v22 + 4) = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *v22 = 0u;
  v23 = &a1[v7[20]];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&a1[v7[21]] = 0;
  *&a1[v7[22]] = 0;
  a1[v7[23]] = 0;
  a1[v7[24]] = 0;
  *a1 = sub_100033A5C(13);
  *(a1 + 1) = v24;
  *(a1 + 10) = sub_100033A5C(16);
  *(a1 + 11) = v25;
  v26 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  if (*(v26 + v3[28]) == 1)
  {
    sub_100008438(&qword_10011EA80, &unk_1000DA490);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000D5250;
    sub_1000CE178(v26, v6, type metadata accessor for HeadphoneModel);
    v28 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v6);
    v30 = v29;
    sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_1000CDFF8();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v31 = sub_1000364D8(v27, 14);
    v33 = v32;

    *(a1 + 2) = v31;
    *(a1 + 3) = v33;
    *(a1 + 4) = sub_100033A5C(17);
    *(a1 + 5) = v34;
    result = sub_100033A5C(18);
    *(a1 + 6) = result;
    *(a1 + 7) = v36;
  }

  else
  {
    *(a1 + 2) = sub_100033A5C(15);
    *(a1 + 3) = v37;
    result = sub_100033A5C(4);
    *(a1 + 4) = result;
    *(a1 + 5) = v38;
  }

  return result;
}

uint64_t sub_1000C0FB8@<X0>(char *a1@<X8>)
{
  v3 = *(*(type metadata accessor for HeadphoneModel(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 12) = 0;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  v7 = v6[11];
  v8 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v8 - 8) + 56))(&a1[v7], 1, 1, v8);
  v9 = v6[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v10 = &a1[v6[13]];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  v11 = &a1[v6[14]];
  sub_10001309C(v47);
  v12 = v47[13];
  *(v11 + 12) = v47[12];
  *(v11 + 13) = v12;
  *(v11 + 14) = v47[14];
  v13 = v47[9];
  *(v11 + 8) = v47[8];
  *(v11 + 9) = v13;
  v14 = v47[11];
  *(v11 + 10) = v47[10];
  *(v11 + 11) = v14;
  v15 = v47[5];
  *(v11 + 4) = v47[4];
  *(v11 + 5) = v15;
  v16 = v47[7];
  *(v11 + 6) = v47[6];
  *(v11 + 7) = v16;
  v17 = v47[1];
  *v11 = v47[0];
  *(v11 + 1) = v17;
  v18 = v47[3];
  *(v11 + 2) = v47[2];
  *(v11 + 3) = v18;
  a1[v6[15]] = 0;
  a1[v6[16]] = 0;
  *&a1[v6[17]] = &_swiftEmptyArrayStorage;
  *&a1[v6[18]] = &_swiftEmptyArrayStorage;
  v19 = &a1[v6[19]];
  *(v19 + 5) = 0u;
  *(v19 + 6) = 0u;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *v19 = 0u;
  v20 = &a1[v6[20]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&a1[v6[21]] = 0;
  *&a1[v6[22]] = 0;
  a1[v6[23]] = 0;
  a1[v6[24]] = 0;
  *a1 = sub_100033A5C(13);
  *(a1 + 1) = v21;
  sub_100008438(&qword_10011EA80, &unk_1000DA490);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000D5250;
  v23 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v23, v5, type metadata accessor for HeadphoneModel);
  v24 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v5);
  v26 = v25;
  sub_1000CE1E0(v5, type metadata accessor for HeadphoneModel);
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_1000CDFF8();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  v27 = sub_1000364D8(v22, 14);
  v29 = v28;

  *(a1 + 2) = v27;
  *(a1 + 3) = v29;
  *(a1 + 6) = sub_100033A5C(1);
  *(a1 + 7) = v30;
  v31 = *(v23 + 80);
  v52 = *(v23 + 64);
  v53 = v31;
  v32 = *(v23 + 16);
  v48 = *v23;
  v49 = v32;
  v33 = *(v23 + 48);
  v50 = *(v23 + 32);
  v51 = v33;
  v34 = *(v19 + 6);
  v36 = *(v19 + 3);
  v35 = *(v19 + 4);
  v55[5] = *(v19 + 5);
  v55[6] = v34;
  v37 = *v19;
  v38 = *(v19 + 2);
  v55[1] = *(v19 + 1);
  v55[2] = v38;
  v54 = *(v23 + 96);
  v55[0] = v37;
  v55[3] = v36;
  v55[4] = v35;
  sub_10000E88C(&v48, &v46, &qword_10011EB18, &qword_1000D8960);
  sub_10000E950(v55, &qword_10011EB18, &qword_1000D8960);
  v39 = v53;
  *(v19 + 4) = v52;
  *(v19 + 5) = v39;
  *(v19 + 6) = v54;
  v40 = v49;
  *v19 = v48;
  *(v19 + 1) = v40;
  v41 = v51;
  *(v19 + 2) = v50;
  *(v19 + 3) = v41;
  *(a1 + 10) = sub_100033A5C(16);
  *(a1 + 11) = v42;
  result = sub_100033A5C(2 * (*(v23 + 136) == 11));
  *(a1 + 4) = result;
  *(a1 + 5) = v44;
  return result;
}

uint64_t sub_1000C1340@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(sub_100008438(&qword_10011FFA0, &qword_1000DA4A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v58 = &v56 - v4;
  v5 = type metadata accessor for HeadphoneModel(0);
  v6 = *(*(v5 - 1) + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v12 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v13 = v12[11];
  v14 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v12[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v16 = (a1 + v12[13]);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = (a1 + v12[14]);
  sub_10001309C(v60);
  v18 = v60[11];
  v19 = v60[13];
  v20 = v60[14];
  v17[12] = v60[12];
  v17[13] = v19;
  v17[14] = v20;
  v21 = v60[7];
  v22 = v60[9];
  v23 = v60[10];
  v17[8] = v60[8];
  v17[9] = v22;
  v17[10] = v23;
  v17[11] = v18;
  v24 = v60[5];
  v17[4] = v60[4];
  v17[5] = v24;
  v17[6] = v60[6];
  v17[7] = v21;
  v25 = v60[1];
  *v17 = v60[0];
  v17[1] = v25;
  v26 = v60[3];
  v17[2] = v60[2];
  v17[3] = v26;
  *(a1 + v12[15]) = 0;
  *(a1 + v12[16]) = 0;
  *(a1 + v12[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v12[18]) = &_swiftEmptyArrayStorage;
  v27 = (a1 + v12[19]);
  v27[5] = 0u;
  v27[6] = 0u;
  v27[3] = 0u;
  v27[4] = 0u;
  v27[1] = 0u;
  v27[2] = 0u;
  *v27 = 0u;
  v28 = (a1 + v12[20]);
  *v28 = 0;
  v28[1] = 0;
  *(a1 + v12[21]) = 0;
  *(a1 + v12[22]) = 0;
  v57 = v12[23];
  *(a1 + v57) = 0;
  *(a1 + v12[24]) = 0;
  v59 = v1;
  v29 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v30 = (v29 + v5[15]);
  v31 = *v30;
  v32 = v30[1];
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
  }

  else if (*(v29 + v5[21]) == 1)
  {
    sub_1000CE178(v29, v11, type metadata accessor for HeadphoneModel);
    v31 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v11);
    v32 = v34;
    sub_1000CE1E0(v11, type metadata accessor for HeadphoneModel);
  }

  else
  {
    v31 = sub_100033A5C(33);
    v32 = v35;
  }

  *a1 = v31;
  *(a1 + 8) = v32;
  if (*(v29 + v5[29]))
  {
    v36 = 10;
  }

  else
  {
    v36 = 8;
  }

  if (*(v29 + v5[29]))
  {
    v37 = 11;
  }

  else
  {
    v37 = 9;
  }

  if (*(v29 + v5[30]))
  {
    v38 = v37;
  }

  else
  {
    v38 = v36;
  }

  *(a1 + 32) = sub_100033A5C(v38);
  *(a1 + 40) = v39;
  *(a1 + 48) = sub_100033A5C(3);
  *(a1 + 56) = v40;
  sub_1000CE178(v29, v9, type metadata accessor for HeadphoneModel);
  v41 = *&v9[v5[34]];
  v42 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v41];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 isAirPods];
  }

  else
  {
    v44 = 0;
  }

  v45 = v58;
  v46 = sub_1000130C4(v41);
  sub_1000CE1E0(v9, type metadata accessor for HeadphoneModel);
  if ((v44 & 1) != 0 || v46)
  {
    *(a1 + 80) = sub_100033A5C(41);
    *(a1 + 88) = v47;
  }

  v48 = v5[37];
  if (!*(v29 + v48))
  {
    v52 = type metadata accessor for PersonalizationAssetManager.Asset();
    (*(*(v52 - 8) + 56))(v45, 1, 1, v52);
    goto LABEL_27;
  }

  v49 = *(v29 + v48);

  dispatch thunk of HeadphonePairing2.Assets.personalizationAsset.getter();

  v50 = type metadata accessor for PersonalizationAssetManager.Asset();
  if ((*(*(v50 - 8) + 48))(v45, 1, v50) == 1)
  {
LABEL_27:
    result = sub_10000E950(v45, &qword_10011FFA0, &qword_1000DA4A0);
    goto LABEL_28;
  }

  result = sub_10000E950(v45, &qword_10011FFA0, &qword_1000DA4A0);
  *(a1 + v57) = 1;
LABEL_28:
  if (*(v59 + 80) == 1 || *(v59 + 88) && (v53 = *(v59 + 88), , v54 = sub_100040AC0(), result = , (v54 & 1) != 0))
  {
    result = sub_100033A5C(40);
    *(a1 + 64) = result;
    *(a1 + 72) = v55;
  }

  return result;
}

uint64_t sub_1000C1894@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v3 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = v3[11];
  v5 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v7 = (a1 + v3[13]);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (a1 + v3[14]);
  sub_10001309C(v34);
  v9 = v34[11];
  v10 = v34[13];
  v11 = v34[14];
  v8[12] = v34[12];
  v8[13] = v10;
  v8[14] = v11;
  v12 = v34[7];
  v13 = v34[9];
  v14 = v34[10];
  v8[8] = v34[8];
  v8[9] = v13;
  v8[10] = v14;
  v8[11] = v9;
  v15 = v34[5];
  v8[4] = v34[4];
  v8[5] = v15;
  v8[6] = v34[6];
  v8[7] = v12;
  v16 = v34[1];
  *v8 = v34[0];
  v8[1] = v16;
  v17 = v34[3];
  v8[2] = v34[2];
  v8[3] = v17;
  *(a1 + v3[15]) = 0;
  *(a1 + v3[16]) = 0;
  *(a1 + v3[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v3[18]) = &_swiftEmptyArrayStorage;
  v18 = (a1 + v3[19]);
  v18[5] = 0u;
  v18[6] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  *v18 = 0u;
  v19 = (a1 + v3[20]);
  *v19 = 0;
  v19[1] = 0;
  *(a1 + v3[21]) = 0;
  *(a1 + v3[22]) = 0;
  *(a1 + v3[23]) = 0;
  *(a1 + v3[24]) = 0;
  *a1 = sub_100033A5C(44);
  *(a1 + 8) = v20;
  v21 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v22 = *(v21 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v23 = objc_opt_self();
  v24 = [v23 b465];
  v25 = [v24 productID];

  if (v25 != v22)
  {
    v27 = [v23 b463];
    v28 = [v27 productID];

    if (v28 == v22)
    {
      v26 = 47;
      goto LABEL_7;
    }

    v29 = [v23 b498];
    v30 = [v29 productID];

    if (v30 != v22)
    {
      v26 = 45;
      goto LABEL_7;
    }
  }

  v26 = 46;
LABEL_7:
  *(a1 + 16) = sub_100033A5C(v26);
  *(a1 + 24) = v31;
  result = sub_100033A5C(3);
  *(a1 + 48) = result;
  *(a1 + 56) = v33;
  return result;
}

uint64_t sub_1000C1B38@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v3 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = v3[11];
  v5 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v7 = (a1 + v3[13]);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (a1 + v3[14]);
  sub_10001309C(v42);
  v9 = v42[11];
  v10 = v42[13];
  v11 = v42[14];
  v8[12] = v42[12];
  v8[13] = v10;
  v8[14] = v11;
  v12 = v42[7];
  v13 = v42[9];
  v14 = v42[10];
  v8[8] = v42[8];
  v8[9] = v13;
  v8[10] = v14;
  v8[11] = v9;
  v15 = v42[5];
  v8[4] = v42[4];
  v8[5] = v15;
  v8[6] = v42[6];
  v8[7] = v12;
  v16 = v42[1];
  *v8 = v42[0];
  v8[1] = v16;
  v17 = v42[3];
  v8[2] = v42[2];
  v8[3] = v17;
  *(a1 + v3[15]) = 0;
  *(a1 + v3[16]) = 0;
  *(a1 + v3[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v3[18]) = &_swiftEmptyArrayStorage;
  v18 = (a1 + v3[19]);
  v18[5] = 0u;
  v18[6] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  *v18 = 0u;
  v19 = (a1 + v3[20]);
  *v19 = 0;
  v19[1] = 0;
  *(a1 + v3[21]) = 0;
  v20 = v3[22];
  *(a1 + v20) = 0;
  *(a1 + v3[23]) = 0;
  *(a1 + v3[24]) = 0;
  *a1 = sub_100033A5C(60);
  *(a1 + 8) = v21;
  v22 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v23 = *(v22 + *(type metadata accessor for HeadphoneModel(0) + 136));
  v24 = objc_opt_self();
  v25 = [v24 airPodsMax];
  LODWORD(v8) = [v25 productID];

  if (v8 == v23 || (v26 = [v24 airPodsMax], v27 = objc_msgSend(v26, "altProductID"), v26, v27 == v23))
  {
    v28 = 62;
  }

  else
  {
    v29 = [v24 b688];
    v30 = [v29 productID];

    if (v30 != v23 && v23 != 8219 && v23 != 8217)
    {
      v34 = [v24 powerBeatsPro];
      v35 = [v34 productID];

      if (v35 == v23 || v23 == 8221)
      {
        v36 = 64;
      }

      else
      {
        v38 = [v24 b494];
        v39 = [v38 productID];

        if (v39 == v23)
        {
          v36 = 65;
        }

        else
        {
          v40 = [v24 b465];
          v41 = [v40 productID];

          if (v41 != v23)
          {
            v28 = 61;
            goto LABEL_8;
          }

          v36 = 66;
        }
      }

      *(a1 + 16) = sub_100033A5C(v36);
      *(a1 + 24) = v37;
      *(a1 + v20) = sub_1000C8DBC();
      goto LABEL_9;
    }

    v28 = 63;
  }

LABEL_8:
  *(a1 + 16) = sub_100033A5C(v28);
  *(a1 + 24) = v31;
LABEL_9:
  result = sub_100033A5C(67);
  *(a1 + 32) = result;
  *(a1 + 40) = v33;
  return result;
}

uint64_t sub_1000C1ECC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v4 = v3[11];
  v5 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = v3[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v7 = (a1 + v3[13]);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = (a1 + v3[14]);
  sub_10001309C(v43);
  v9 = v43[11];
  v10 = v43[13];
  v11 = v43[14];
  v8[12] = v43[12];
  v8[13] = v10;
  v8[14] = v11;
  v12 = v43[7];
  v13 = v43[9];
  v14 = v43[10];
  v8[8] = v43[8];
  v8[9] = v13;
  v8[10] = v14;
  v8[11] = v9;
  v15 = v43[5];
  v8[4] = v43[4];
  v8[5] = v15;
  v8[6] = v43[6];
  v8[7] = v12;
  v16 = v43[1];
  *v8 = v43[0];
  v8[1] = v16;
  v17 = v43[3];
  v8[2] = v43[2];
  v8[3] = v17;
  *(a1 + v3[15]) = 0;
  *(a1 + v3[16]) = 0;
  *(a1 + v3[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v3[18]) = &_swiftEmptyArrayStorage;
  v18 = (a1 + v3[19]);
  v18[5] = 0u;
  v18[6] = 0u;
  v18[3] = 0u;
  v18[4] = 0u;
  v18[1] = 0u;
  v18[2] = 0u;
  *v18 = 0u;
  v19 = (a1 + v3[20]);
  *v19 = 0;
  v19[1] = 0;
  *(a1 + v3[21]) = 0;
  *(a1 + v3[22]) = 0;
  *(a1 + v3[23]) = 0;
  *(a1 + v3[24]) = 0;
  *a1 = sub_100033A5C(84);
  *(a1 + 8) = v20;
  *(a1 + 16) = sub_100033A5C(85);
  *(a1 + 24) = v21;
  v22 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v23 = type metadata accessor for HeadphoneModel(0);
  v24 = *(v22 + *(v23 + 136));
  v25 = objc_opt_self();
  v26 = [v25 b768e];
  v27 = [v26 productID];

  if (v24 == v27)
  {
    goto LABEL_5;
  }

  v28 = *(v22 + *(v23 + 136));
  v29 = [v25 b768m];
  v30 = [v29 productID];

  if (v28 == v30)
  {
    goto LABEL_5;
  }

  v31 = *(v22 + *(v23 + 136));
  v32 = [v25 b768e];
  v33 = [v32 altProductID];

  if (v31 == v33 || (v34 = *(v22 + *(v23 + 136)), v35 = [v25 b768m], v36 = objc_msgSend(v35, "altProductID"), v35, v34 == v36))
  {
LABEL_5:
    v37 = sub_100033A5C(86);
    v39 = v38;

    *(a1 + 16) = v37;
    *(a1 + 24) = v39;
  }

  *(a1 + 32) = sub_100033A5C(87);
  *(a1 + 40) = v40;
  result = sub_100033A5C(71);
  *(a1 + 48) = result;
  *(a1 + 56) = v42;
  return result;
}

uint64_t sub_1000C21E8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v8 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v9 = v8[11];
  v10 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v8[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v12 = (a1 + v8[13]);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (a1 + v8[14]);
  sub_10001309C(v36);
  v14 = v36[11];
  v15 = v36[13];
  v16 = v36[14];
  v13[12] = v36[12];
  v13[13] = v15;
  v13[14] = v16;
  v17 = v36[7];
  v18 = v36[9];
  v19 = v36[10];
  v13[8] = v36[8];
  v13[9] = v18;
  v13[10] = v19;
  v13[11] = v14;
  v20 = v36[5];
  v13[4] = v36[4];
  v13[5] = v20;
  v13[6] = v36[6];
  v13[7] = v17;
  v21 = v36[1];
  *v13 = v36[0];
  v13[1] = v21;
  v22 = v36[3];
  v13[2] = v36[2];
  v13[3] = v22;
  *(a1 + v8[15]) = 0;
  *(a1 + v8[16]) = 0;
  *(a1 + v8[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v8[18]) = &_swiftEmptyArrayStorage;
  v23 = (a1 + v8[19]);
  v23[5] = 0u;
  v23[6] = 0u;
  v23[3] = 0u;
  v23[4] = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  *v23 = 0u;
  v24 = (a1 + v8[20]);
  *v24 = 0;
  v24[1] = 0;
  *(a1 + v8[21]) = 0;
  *(a1 + v8[22]) = 0;
  *(a1 + v8[23]) = 0;
  *(a1 + v8[24]) = 0;
  *a1 = sub_100033A5C(88);
  *(a1 + 8) = v25;
  *(a1 + 32) = sub_100033A5C(89);
  *(a1 + 40) = v26;
  v27 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v1 + v27, v7, type metadata accessor for HeadphoneModel);
  v28 = *&v7[*(v4 + 144)];
  v29 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v28];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 isAirPods];
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_1000130C4(v28);
  result = sub_1000CE1E0(v7, type metadata accessor for HeadphoneModel);
  if ((v31 & 1) != 0 || v32)
  {
    result = sub_100033A5C(90);
    *(a1 + 80) = result;
    *(a1 + 88) = v34;
  }

  return result;
}

uint64_t sub_1000C24AC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v9 = v8[11];
  v10 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v8[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v12 = (a1 + v8[13]);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (a1 + v8[14]);
  sub_10001309C(v38);
  v14 = v38[11];
  v15 = v38[13];
  v16 = v38[14];
  v13[12] = v38[12];
  v13[13] = v15;
  v13[14] = v16;
  v17 = v38[7];
  v18 = v38[9];
  v19 = v38[10];
  v13[8] = v38[8];
  v13[9] = v18;
  v13[10] = v19;
  v13[11] = v14;
  v20 = v38[5];
  v13[4] = v38[4];
  v13[5] = v20;
  v13[6] = v38[6];
  v13[7] = v17;
  v21 = v38[1];
  *v13 = v38[0];
  v13[1] = v21;
  v22 = v38[3];
  v13[2] = v38[2];
  v13[3] = v22;
  *(a1 + v8[15]) = 0;
  *(a1 + v8[16]) = 0;
  *(a1 + v8[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v8[18]) = &_swiftEmptyArrayStorage;
  v23 = (a1 + v8[19]);
  v23[5] = 0u;
  v23[6] = 0u;
  v23[3] = 0u;
  v23[4] = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  *v23 = 0u;
  v24 = (a1 + v8[20]);
  *v24 = 0;
  v24[1] = 0;
  *(a1 + v8[21]) = 0;
  *(a1 + v8[22]) = 0;
  *(a1 + v8[23]) = 0;
  *(a1 + v8[24]) = 0;
  v25 = OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v1 + v25, v7, type metadata accessor for HeadphoneModel);
  v26 = *&v7[*(v4 + 144)];
  v27 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v26];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 isAirPods];
  }

  else
  {
    v29 = 0;
  }

  v30 = sub_1000130C4(v26);
  sub_1000CE1E0(v7, type metadata accessor for HeadphoneModel);
  if (v29 | v30)
  {
    v31 = 91;
  }

  else
  {
    v31 = 92;
  }

  *a1 = sub_100033A5C(v31);
  *(a1 + 8) = v32;
  *(a1 + 16) = sub_100033A5C(93);
  *(a1 + 24) = v33;
  *(a1 + 32) = sub_100033A5C(94);
  *(a1 + 40) = v34;
  result = sub_100033A5C(95);
  *(a1 + 48) = result;
  *(a1 + 56) = v36;
  return result;
}

void sub_1000C2774(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneAssets(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v176 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for URL();
  v173 = *(v177 - 8);
  v7 = *(v173 + 64);
  __chkstk_darwin(v177);
  v172 = &v171 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v9 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v10 = *(v4 + 56);
  v174 = v9[11];
  v10(a1 + v174, 1, 1, v3);
  v11 = v9[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v12 = (a1 + v9[13]);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (a1 + v9[14]);
  sub_10001309C(v192);
  v14 = v192[13];
  v13[12] = v192[12];
  v13[13] = v14;
  v13[14] = v192[14];
  v15 = v192[9];
  v13[8] = v192[8];
  v13[9] = v15;
  v16 = v192[11];
  v13[10] = v192[10];
  v13[11] = v16;
  v17 = v192[5];
  v13[4] = v192[4];
  v13[5] = v17;
  v18 = v192[7];
  v13[6] = v192[6];
  v13[7] = v18;
  v19 = v192[1];
  *v13 = v192[0];
  v13[1] = v19;
  v20 = v192[3];
  v13[2] = v192[2];
  v13[3] = v20;
  *(a1 + v9[15]) = 0;
  *(a1 + v9[16]) = 0;
  *(a1 + v9[18]) = &_swiftEmptyArrayStorage;
  v21 = (a1 + v9[19]);
  v21[5] = 0u;
  v21[6] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *v21 = 0u;
  v22 = (a1 + v9[20]);
  *v22 = 0;
  v22[1] = 0;
  *(a1 + v9[21]) = 0;
  *(a1 + v9[22]) = 0;
  *(a1 + v9[23]) = 0;
  *(a1 + v9[24]) = 0;
  v23 = sub_100033A5C(27);
  v25 = v24;
  *(a1 + 16) = v23;
  *(a1 + 24) = v24;
  v188 = a1;
  v184 = v1;
  v26 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v27 = type metadata accessor for HeadphoneModel(0);
  v28 = *(v26 + v27[31]);
  v29 = *(v26 + v27[34]);
  v178 = v4 + 56;
  v185 = v9;
  v175 = v10;
  LODWORD(v183) = v28;
  v189 = v25;
  if ((v29 - 8217) <= 7 && ((1 << (v29 - 25)) & 0xA5) != 0)
  {
    sub_1000B4564(v29);
    LODWORD(v190) = 1;
    goto LABEL_4;
  }

  if (sub_1000B4564(v29))
  {
    LODWORD(v190) = 0;
LABEL_4:
    v30 = *(v26 + v27[34]);
    v31 = *(v26 + v27[32]);
    v32 = objc_opt_self();
    v33 = [v32 b698];
    v34 = [v33 productID];

    v171 = v3;
    v180 = v32;
    if (v30 == v34)
    {
      if (v30 != v31 && *(v26 + 162) != 3)
      {
LABEL_7:
        if (v190)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    else if (v30 != v31)
    {
      goto LABEL_7;
    }

    v35 = *(v26 + v27[34]);
    v36 = [v32 airPodsPro];
    v37 = [v36 productID];

    if (v35 != v37 || *(v26 + 162) != 3)
    {
      v38 = *(v26 + v27[34]);
      v39 = [v32 b698];
      v40 = [v39 productID];

      if (v38 != v40 || *(v26 + 162) != 2)
      {
LABEL_18:
        v46 = [v32 b698];
        v47 = [v46 productID];

        v48 = sub_100050BE8(0x52554F595F544F4ELL, 0xE900000000000053, v47);
        v191 = v49;
        v50 = *(v26 + v27[18]);
        v182 = v48;
        if (v50 == 1)
        {
          v51 = v48;
          v52 = objc_opt_self();
          v53 = v191;

          v54 = [v52 systemRedColor];

          v186 = v54;
          v55 = v54;
          v56 = [v32 b698];
          v57 = [v56 productID];

          v58 = sub_100050BE8(0xD00000000000001CLL, 0x80000001000E26F0, v57);
          v60 = v59;

          LODWORD(v181) = 0;
          v61 = v188;
          v188[2] = v58;
          v61[3] = v60;
          LODWORD(v189) = 2;
          v187 = v51;
          v62 = v53;
          v63 = v190;
          goto LABEL_48;
        }

        v64 = [v32 b698];
        v65 = [v64 productID];

        v66 = sub_100050BE8(0xD00000000000001CLL, 0x80000001000E2670, v65);
        v68 = v67;

        v69 = v188;
        v188[2] = v66;
        v69[3] = v68;
        v70 = *(v26 + 152);
        if (v70)
        {
          v71 = *(v26 + 144);
          v72 = v184;
          swift_beginAccess();
          v73 = *(v72 + 40);
          v63 = v190;
          if (v73)
          {

            v187 = sub_10007B1A8(v71, v70);
            v62 = v74;

            if (v62)
            {

              v186 = 0;
              LODWORD(v181) = 0;
              LODWORD(v189) = 2;
              goto LABEL_48;
            }

            v187 = 0;
          }

          else
          {
            v187 = 0;
            v62 = 0;
          }

          v186 = 0;
          LODWORD(v189) = 255;
          LODWORD(v181) = 1;
        }

        else
        {
          v186 = 0;
          v187 = 0;
          v62 = 0;
          LODWORD(v189) = 255;
          LODWORD(v181) = 1;
          v63 = v190;
        }

LABEL_48:
        v121 = *(v26 + 152);
        LODWORD(v190) = v63;
        if (v121)
        {
          v122 = v62;
          v123 = *(v26 + 144);
          v124 = v184;
          swift_beginAccess();
          if (*(v124 + 40))
          {

            v125 = sub_10007B1A8(v123, v121);
            v80 = v126;

            if (v80)
            {
              v127 = v125;
            }

            else
            {
              v127 = 0;
            }
          }

          else
          {
            v127 = 0;
            v80 = 0;
          }

          v62 = v122;
        }

        else
        {
          v127 = 0;
          v80 = 0;
        }

        v128 = (v26 + v27[19]);
        v129 = v128[1];
        v130 = v182;
        if (v129 && (v131 = *v128, v132 = v184, swift_beginAccess(), *(v132 + 40)))
        {

          v133 = sub_10007B1A8(v131, v129);
          v135 = v134;

          if (!v135)
          {
            v133 = 0;
          }
        }

        else
        {
          v133 = 0;
          v135 = 0;
        }

        v78 = v127;
        if ((v183 & 0x80) == 0)
        {
          if (v80)
          {
            v91 = 0;
            if (v135)
            {
LABEL_65:

              v81 = v78;
              v191 = v80;
              v78 = v133;
              v80 = v135;
              v92 = 0;
              goto LABEL_73;
            }
          }

          else
          {
            v137 = objc_opt_self();
            v80 = v191;

            v91 = [v137 systemRedColor];
            v78 = v130;
            if (v135)
            {
              goto LABEL_65;
            }
          }

          v92 = [objc_opt_self() systemRedColor];
          v138 = v191;
          v81 = v78;
          v191 = v80;
          v78 = v130;
          v80 = v138;
LABEL_73:
          v140 = 0xD000000000000012;
          v93 = v190;
          if (!v190)
          {
            v140 = 0xD000000000000030;
          }

          v179 = v140;
          if (v181)
          {
LABEL_76:
            v184 = v62;
            sub_100008438(&unk_10011FFA8, &unk_1000DA4A8);
            v141 = swift_allocObject();
            *(v141 + 16) = xmmword_1000D66A0;
            *(v141 + 32) = v78;
            *(v141 + 40) = v80;
            *(v141 + 48) = v92;
            *(v141 + 56) = 0;
            v142 = v191;
            *(v141 + 64) = v81;
            *(v141 + 72) = v142;
            *(v141 + 80) = v91;
            v182 = v141;
            *(v141 + 88) = 1;
            LODWORD(v189) = 255;
            if (v93)
            {
LABEL_77:
              v143 = "MISMATCH_AIRPODS_SUBTITLE";
              v190 = v92;
              sub_1000CE04C(v78, v80, v92, 0);
              v183 = v81;
              v181 = v91;
              sub_1000CE04C(v81, v191, v91, 1u);
              v144 = [v180 airPods];
              v145 = [v144 productID];

              v146 = 0xD000000000000016;
LABEL_80:
              v151 = sub_100050BE8(v146, (v143 | 0x8000000000000000), v145);
              v106 = v188;
              *v188 = v151;
              v106[1] = v152;
              v153 = String._bridgeToObjectiveC()();

              v154 = [objc_opt_self() imageNamed:v153];

              if (v154)
              {
                v180 = v80;
                v155 = v172;
                URL.init(fileURLWithPath:)();
                v156 = v173;
                v157 = *(v173 + 16);
                v158 = v176;
                v179 = v78;
                v159 = v177;
                v157(v176, v155, v177);
                v160 = v171;
                v157((v158 + v171[5]), v155, v159);
                (*(v156 + 56))(v158 + v160[6], 1, 1, v159);
                v161 = v160[7];
                v162 = type metadata accessor for HeadphoneAssets.Feature(0);
                (*(*(v162 - 8) + 56))(v158 + v161, 1, 1, v162);
                v163 = v160[8];
                *(v158 + v160[9]) = 0;
                v164 = (v158 + v160[10]);
                *v164 = 0;
                v164[1] = 0;
                sub_100008438(&unk_10011D960, &qword_1000D5CF0);
                v165 = swift_allocObject();
                *(v165 + 16) = xmmword_1000D78E0;
                *(v165 + 32) = v154;
                v166 = v154;
                sub_1000CE094(v187, v184, v186, v189);
                sub_1000261AC(v183, v191, v181, 1u);
                sub_1000261AC(v179, v180, v190, 0);

                (*(v156 + 8))(v155, v159);
                *(v158 + v163) = v165;
                v167 = v174;
                sub_10000E950(v106 + v174, &qword_10011CCF0, qword_1000D61B0);
                sub_1000CE178(v158, v106 + v167, type metadata accessor for HeadphoneAssets);
                v175(v106 + v167, 0, 1, v160);
                sub_1000CE1E0(v158, type metadata accessor for HeadphoneAssets);
              }

              else
              {
                sub_1000CE094(v187, v184, v186, v189);
                sub_1000261AC(v183, v191, v181, 1u);
                sub_1000261AC(v78, v80, v190, 0);
              }

              v9 = v185;
              v103 = v182;
              goto LABEL_84;
            }

LABEL_79:
            v143 = "ightBud-1_case-1";
            v190 = v92;
            sub_1000CE04C(v78, v80, v92, 0);
            v183 = v81;
            v181 = v91;
            sub_1000CE04C(v81, v191, v91, 1u);
            v150 = [v180 b698];
            v145 = [v150 productID];

            v146 = 0xD000000000000014;
            goto LABEL_80;
          }

          goto LABEL_78;
        }

        if (v80)
        {
          v136 = 0;
          if (v135)
          {
LABEL_68:

            v91 = 0;
            v191 = v135;
            v92 = v136;
            v81 = v133;
            goto LABEL_73;
          }
        }

        else
        {
          v139 = objc_opt_self();
          v80 = v191;

          v136 = [v139 systemRedColor];
          v78 = v130;
          if (v135)
          {
            goto LABEL_68;
          }
        }

        v91 = [objc_opt_self() systemRedColor];
        v92 = v136;
        v81 = v130;
        goto LABEL_73;
      }
    }

LABEL_14:
    if (v30 != v31)
    {
      if ((v183 & 0x80) != 0 && (v75 = *(v26 + v27[34]), v76 = [v32 airPodsPro], v77 = objc_msgSend(v76, "productID"), v76, v75 == v77))
      {
        v78 = sub_100033A5C(31);
        v80 = v79;
        v81 = sub_100033A5C(32);
        v191 = v82;
        v83 = *(v26 + 162);
        v187 = 0;
        v62 = 0;
      }

      else
      {
        v78 = sub_100033A5C(32);
        v80 = v94;
        v81 = sub_100033A5C(31);
        v191 = v95;
        v96 = *(v26 + 162);
        v187 = 0;
        v62 = 0;
      }

      v186 = 0;
      v91 = 0;
      v92 = 0;
      v179 = 0xD000000000000030;
      LOBYTE(v93) = v190;
      goto LABEL_76;
    }

    v41 = *(v26 + v27[34]);
    v42 = [v32 airPodsPro];
    v43 = [v42 productID];

    if (v41 == v43 && *(v26 + 162) == 3)
    {
      v44 = 32;
      v45 = 31;
    }

    else
    {
      v44 = 31;
      v45 = 32;
    }

    v84 = v190;
    v85 = sub_100033A5C(v45);
    v87 = v86;
    v88 = v45;
    v78 = v85;
    v81 = sub_100033A5C(v88);
    v191 = v89;
    v187 = sub_100033A5C(v44);
    v62 = v90;

    v186 = 0;
    v91 = 0;
    v92 = 0;
    LODWORD(v189) = 2;
    v179 = 0xD000000000000030;
    v80 = v87;
    v93 = v84;
LABEL_78:
    sub_100008438(&unk_10011FFA8, &unk_1000DA4A8);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_1000D8C40;
    *(v147 + 32) = v78;
    *(v147 + 40) = v80;
    *(v147 + 48) = v92;
    *(v147 + 56) = 0;
    v148 = v191;
    *(v147 + 64) = v81;
    *(v147 + 72) = v148;
    *(v147 + 80) = v91;
    *(v147 + 88) = 1;
    v149 = v186;
    *(v147 + 96) = v187;
    *(v147 + 104) = v62;
    v184 = v62;
    *(v147 + 112) = v149;
    v182 = v147;
    *(v147 + 120) = v189;
    if (v93)
    {
      goto LABEL_77;
    }

    goto LABEL_79;
  }

  if ((v28 & 0x80) != 0 && (v97 = *(v26 + v27[34]), v98 = [objc_opt_self() airPods], v99 = objc_msgSend(v98, "productID"), v98, v97 == v99))
  {
    v100 = sub_100033A5C(31);
    v102 = v101;
    v103 = sub_1000CC210(0, 1, 1, &_swiftEmptyArrayStorage);
    v105 = *(v103 + 2);
    v104 = *(v103 + 3);
    v106 = v188;
    if (v105 >= v104 >> 1)
    {
      v103 = sub_1000CC210((v104 > 1), v105 + 1, 1, v103);
    }

    *(v103 + 2) = v105 + 1;
    v107 = &v103[32 * v105];
    *(v107 + 4) = v100;
    *(v107 + 5) = v102;
    *(v107 + 6) = 0;
    v107[56] = 0;
    v108 = 32;
  }

  else
  {
    v109 = sub_100033A5C(32);
    v111 = v110;
    v103 = sub_1000CC210(0, 1, 1, &_swiftEmptyArrayStorage);
    v113 = *(v103 + 2);
    v112 = *(v103 + 3);
    v106 = v188;
    if (v113 >= v112 >> 1)
    {
      v103 = sub_1000CC210((v112 > 1), v113 + 1, 1, v103);
    }

    *(v103 + 2) = v113 + 1;
    v114 = &v103[32 * v113];
    *(v114 + 4) = v109;
    *(v114 + 5) = v111;
    *(v114 + 6) = 0;
    v114[56] = 0;
    v108 = 31;
  }

  v115 = sub_100033A5C(v108);
  v118 = *(v103 + 2);
  v117 = *(v103 + 3);
  if (v118 >= v117 >> 1)
  {
    v168 = v115;
    v169 = v116;
    v170 = sub_1000CC210((v117 > 1), v118 + 1, 1, v103);
    v116 = v169;
    v103 = v170;
    v115 = v168;
  }

  *(v103 + 2) = v118 + 1;
  v119 = &v103[32 * v118];
  *(v119 + 4) = v115;
  *(v119 + 5) = v116;
  *(v119 + 6) = 0;
  v119[56] = 1;
  *v106 = sub_100033A5C(26);
  v106[1] = v120;
LABEL_84:
  *(v106 + v9[17]) = v103;
}

uint64_t sub_1000C38E0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v8 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v9 = v8[11];
  v10 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v8[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v12 = (a1 + v8[13]);
  *v12 = 0u;
  v12[1] = 0u;
  v13 = (a1 + v8[14]);
  sub_10001309C(v45);
  v14 = v45[13];
  v13[12] = v45[12];
  v13[13] = v14;
  v13[14] = v45[14];
  v15 = v45[9];
  v13[8] = v45[8];
  v13[9] = v15;
  v16 = v45[11];
  v13[10] = v45[10];
  v13[11] = v16;
  v17 = v45[5];
  v13[4] = v45[4];
  v13[5] = v17;
  v18 = v45[7];
  v13[6] = v45[6];
  v13[7] = v18;
  v19 = v45[1];
  *v13 = v45[0];
  v13[1] = v19;
  v20 = v45[3];
  v13[2] = v45[2];
  v13[3] = v20;
  *(a1 + v8[15]) = 0;
  *(a1 + v8[16]) = 0;
  *(a1 + v8[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v8[18]) = &_swiftEmptyArrayStorage;
  v21 = (a1 + v8[19]);
  v21[5] = 0u;
  v21[6] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  *v21 = 0u;
  v22 = (a1 + v8[20]);
  *v22 = 0;
  v22[1] = 0;
  *(a1 + v8[21]) = 0;
  *(a1 + v8[22]) = 0;
  *(a1 + v8[23]) = 0;
  *(a1 + v8[24]) = 0;
  v23 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v23, v7, type metadata accessor for HeadphoneModel);
  v24 = sub_100050E28(0x52554F595F544F4ELL, 0xE800000000000000, v7);
  v26 = v25;
  sub_1000CE1E0(v7, type metadata accessor for HeadphoneModel);
  *a1 = v24;
  *(a1 + 8) = v26;
  if (*(v23 + v4[31]))
  {
    v27 = 10;
  }

  else
  {
    v27 = 8;
  }

  if (*(v23 + v4[31]))
  {
    v28 = 11;
  }

  else
  {
    v28 = 9;
  }

  if (*(v23 + v4[32]))
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  *(a1 + 48) = sub_100033A5C(v29);
  *(a1 + 56) = v30;
  sub_1000CE178(v23, v7, type metadata accessor for HeadphoneModel);
  v31 = sub_100050A94(0x52554F595F544F4ELL, 0xE800000000000000, v7);
  v33 = v32;
  sub_1000CE1E0(v7, type metadata accessor for HeadphoneModel);
  v43 = v31;
  v44 = v33;

  v34._countAndFlagsBits = 0x4F464E495FLL;
  v34._object = 0xE500000000000000;
  String.append(_:)(v34);

  v35 = sub_1000363D4(v43, v44);
  v37 = v36;

  sub_1000CE178(v23, v7, type metadata accessor for HeadphoneModel);
  v38 = sub_100050BE8(v35, v37, *&v7[v4[36]]);
  v40 = v39;

  result = sub_1000CE1E0(v7, type metadata accessor for HeadphoneModel);
  *(a1 + 16) = v38;
  *(a1 + 24) = v40;
  return result;
}

uint64_t sub_1000C3C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v52 - v8;
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v12 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v13 = v12[11];
  v14 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  v15 = v12[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v16 = (a1 + v12[13]);
  *v16 = 0u;
  v16[1] = 0u;
  v17 = (a1 + v12[14]);
  sub_10001309C(v54);
  v18 = v54[11];
  v19 = v54[13];
  v20 = v54[14];
  v17[12] = v54[12];
  v17[13] = v19;
  v17[14] = v20;
  v21 = v54[7];
  v22 = v54[9];
  v23 = v54[10];
  v17[8] = v54[8];
  v17[9] = v22;
  v17[10] = v23;
  v17[11] = v18;
  v24 = v54[5];
  v17[4] = v54[4];
  v17[5] = v24;
  v17[6] = v54[6];
  v17[7] = v21;
  v25 = v54[1];
  *v17 = v54[0];
  v17[1] = v25;
  v26 = v54[3];
  v17[2] = v54[2];
  v17[3] = v26;
  *(a1 + v12[15]) = 0;
  *(a1 + v12[16]) = 0;
  *(a1 + v12[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v12[18]) = &_swiftEmptyArrayStorage;
  v27 = (a1 + v12[19]);
  v27[5] = 0u;
  v27[6] = 0u;
  v27[3] = 0u;
  v27[4] = 0u;
  v27[1] = 0u;
  v27[2] = 0u;
  *v27 = 0u;
  v28 = (a1 + v12[20]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v12[21];
  *(a1 + v12[22]) = 0;
  *(a1 + v12[23]) = 0;
  *(a1 + v12[24]) = 0;
  v30 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v31 = *(v30 + *(v3 + 136));
  *(a1 + v29) = v31;
  if ((v31 - 8217) <= 7 && ((1 << (v31 - 25)) & 0xA5) != 0 || (v36 = objc_opt_self(), v37 = [v36 b788], v38 = objc_msgSend(v37, "productID"), v37, v31 == v38) || (v39 = objc_msgSend(v36, "b788"), v40 = objc_msgSend(v39, "altProductID"), v39, v31 == v40))
  {
    *a1 = sub_100033A5C(7);
    *(a1 + 8) = v32;
    v33 = 51;
  }

  else
  {
    *a1 = sub_100033A5C(6);
    *(a1 + 8) = v41;
    sub_1000CE178(v30, v11, type metadata accessor for HeadphoneModel);
    v42 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*&v11[*(v3 + 136)]];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 buttonLocation];

      sub_1000CE1E0(v11, type metadata accessor for HeadphoneModel);
      if (!v44)
      {
        v33 = 52;
        goto LABEL_4;
      }
    }

    else
    {
      sub_1000CE1E0(v11, type metadata accessor for HeadphoneModel);
    }

    sub_1000CE178(v30, v9, type metadata accessor for HeadphoneModel);
    v45 = sub_1000CE0A8(*&v9[*(v3 + 136)]);
    sub_1000CE1E0(v9, type metadata accessor for HeadphoneModel);
    if (v45)
    {
      v33 = 49;
    }

    else
    {
      v46 = v53;
      sub_1000CE178(v30, v53, type metadata accessor for HeadphoneModel);
      v47 = *(v46 + *(v3 + 136));
      v48 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:v47];
      if (v48)
      {
        v49 = v48;
        v50 = [v48 isAirPods];
      }

      else
      {
        v50 = 0;
      }

      v51 = sub_1000130C4(v47);
      sub_1000CE1E0(v46, type metadata accessor for HeadphoneModel);
      if (v50 | v51)
      {
        v33 = 50;
      }

      else
      {
        v33 = 49;
      }
    }
  }

LABEL_4:
  result = sub_100033A5C(v33);
  *(a1 + 16) = result;
  *(a1 + 24) = v35;
  return result;
}

uint64_t sub_1000C40F8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v8 = v7[11];
  v9 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v9 - 8) + 56))(a1 + v8, 1, 1, v9);
  v10 = v7[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v11 = (a1 + v7[13]);
  *v11 = 0u;
  v11[1] = 0u;
  v12 = (a1 + v7[14]);
  sub_10001309C(v53);
  v13 = v53[11];
  v14 = v53[13];
  v15 = v53[14];
  v12[12] = v53[12];
  v12[13] = v14;
  v12[14] = v15;
  v16 = v53[7];
  v17 = v53[9];
  v18 = v53[10];
  v12[8] = v53[8];
  v12[9] = v17;
  v12[10] = v18;
  v12[11] = v13;
  v19 = v53[5];
  v12[4] = v53[4];
  v12[5] = v19;
  v12[6] = v53[6];
  v12[7] = v16;
  v20 = v53[1];
  *v12 = v53[0];
  v12[1] = v20;
  v21 = v53[3];
  v12[2] = v53[2];
  v12[3] = v21;
  *(a1 + v7[15]) = 0;
  v22 = v7[16];
  *(a1 + v22) = 0;
  *(a1 + v7[17]) = &_swiftEmptyArrayStorage;
  *(a1 + v7[18]) = &_swiftEmptyArrayStorage;
  v23 = (a1 + v7[19]);
  v23[5] = 0u;
  v23[6] = 0u;
  v23[3] = 0u;
  v23[4] = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  *v23 = 0u;
  v24 = (a1 + v7[20]);
  *v24 = 0;
  v24[1] = 0;
  *(a1 + v7[21]) = 0;
  *(a1 + v7[22]) = 0;
  *(a1 + v7[23]) = 0;
  *(a1 + v7[24]) = 0;
  v52 = v1;
  v25 = v1 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  sub_1000CE178(v25, v6, type metadata accessor for HeadphoneModel);
  v26 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v6);
  v28 = v27;
  sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
  *a1 = v26;
  *(a1 + 8) = v28;
  v51 = v3;
  LODWORD(v26) = *(v25 + *(v3 + 112));
  sub_1000CE178(v25, v6, type metadata accessor for HeadphoneModel);
  if (v26 == 1)
  {
    v29 = sub_100050A94(0xD000000000000010, 0x80000001000E2730, v6);
    v31 = v30;
    sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
    *(a1 + 32) = sub_100033A5C(38);
    *(a1 + 40) = v32;
    *(a1 + v22) = 1;
  }

  else
  {
    v33 = sub_100050A94(0xD000000000000010, 0x80000001000E2710, v6);
    v35 = v34;
    sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
    v29 = sub_1000363D4(v33, v35);
    v31 = v36;

    *(a1 + 32) = sub_100033A5C(35);
    *(a1 + 40) = v37;
    v38 = sub_1000363D4(0x5F5443454E4E4F43, 0xEA00000000004F54);
    v40 = v39;
    v41 = [objc_opt_self() mainBundle];
    v54._object = 0xE000000000000000;
    v42.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v42.value._object = 0xEB00000000656C62;
    v43._countAndFlagsBits = v38;
    v43._object = v40;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v42, v41, v44, v54);

    *(a1 + 48) = v45;
  }

  sub_1000CE178(v25, v6, type metadata accessor for HeadphoneModel);
  v46 = sub_100050BE8(v29, v31, *&v6[*(v51 + 136)]);
  v48 = v47;

  result = sub_1000CE1E0(v6, type metadata accessor for HeadphoneModel);
  *(a1 + 16) = v46;
  *(a1 + 24) = v48;
  if (*(v52 + 80) == 3)
  {
    result = sub_100033A5C(39);
    *(a1 + 64) = result;
    *(a1 + 72) = v50;
  }

  return result;
}

uint64_t sub_1000C457C@<X0>(char *a1@<X8>)
{
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0xE000000000000000;
  *(a1 + 12) = 0;
  v2 = type metadata accessor for HeadphoneViewModel(0);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  v3 = v2[11];
  v4 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v6 = &a1[v2[13]];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v7 = &a1[v2[14]];
  sub_10001309C(v25);
  v8 = v25[13];
  *(v7 + 12) = v25[12];
  *(v7 + 13) = v8;
  *(v7 + 14) = v25[14];
  v9 = v25[9];
  *(v7 + 8) = v25[8];
  *(v7 + 9) = v9;
  v10 = v25[11];
  *(v7 + 10) = v25[10];
  *(v7 + 11) = v10;
  v11 = v25[5];
  *(v7 + 4) = v25[4];
  *(v7 + 5) = v11;
  v12 = v25[7];
  *(v7 + 6) = v25[6];
  *(v7 + 7) = v12;
  v13 = v25[1];
  *v7 = v25[0];
  *(v7 + 1) = v13;
  v14 = v25[3];
  *(v7 + 2) = v25[2];
  *(v7 + 3) = v14;
  a1[v2[15]] = 0;
  a1[v2[16]] = 0;
  *&a1[v2[17]] = &_swiftEmptyArrayStorage;
  *&a1[v2[18]] = &_swiftEmptyArrayStorage;
  v15 = &a1[v2[19]];
  *(v15 + 5) = 0u;
  *(v15 + 6) = 0u;
  *(v15 + 3) = 0u;
  *(v15 + 4) = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  v16 = &a1[v2[20]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&a1[v2[21]] = 0;
  *&a1[v2[22]] = 0;
  a1[v2[23]] = 0;
  a1[v2[24]] = 0;
  v24[3] = &type metadata for HeadphonePresenter.AppleAccountFeatureFlags;
  v24[4] = sub_1000CE0C0();
  v17 = isFeatureEnabled(_:)();
  sub_10000EA94(v24);
  if (v17)
  {
    v18 = 127;
  }

  else
  {
    v18 = 125;
  }

  if (v17)
  {
    v19 = 4294967168;
  }

  else
  {
    v19 = 126;
  }

  *a1 = sub_100033A5C(v18);
  *(a1 + 1) = v20;
  *(a1 + 10) = sub_100033A5C(v19);
  *(a1 + 11) = v21;
  result = sub_100033A5C(0);
  *(a1 + 4) = result;
  *(a1 + 5) = v23;
  return result;
}

uint64_t sub_1000C476C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadphoneViewModel(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 2) = 0;
  *(v14 + 3) = 0xE000000000000000;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0xE000000000000000;
  *(v14 + 6) = 0;
  *(v14 + 7) = 0xE000000000000000;
  *(v14 + 4) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 12) = 0;
  v15 = *(v12 + 44);
  v16 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v70 = v10[12];
  swift_storeEnumTagMultiPayload();
  v17 = &v14[v10[13]];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = &v14[v10[14]];
  sub_10001309C(v74);
  v19 = v74[11];
  v20 = v74[13];
  v21 = v74[14];
  *(v18 + 12) = v74[12];
  *(v18 + 13) = v20;
  *(v18 + 14) = v21;
  v22 = v74[7];
  v23 = v74[9];
  v24 = v74[10];
  *(v18 + 8) = v74[8];
  *(v18 + 9) = v23;
  *(v18 + 10) = v24;
  *(v18 + 11) = v19;
  v25 = v74[5];
  v26 = v74[6];
  *(v18 + 4) = v74[4];
  *(v18 + 5) = v25;
  *(v18 + 6) = v26;
  *(v18 + 7) = v22;
  v27 = v74[1];
  *v18 = v74[0];
  *(v18 + 1) = v27;
  v28 = v74[3];
  *(v18 + 2) = v74[2];
  *(v18 + 3) = v28;
  v14[v10[16]] = 0;
  *&v14[v10[17]] = _swiftEmptyArrayStorage;
  *&v14[v10[18]] = _swiftEmptyArrayStorage;
  v29 = &v14[v10[19]];
  *(v29 + 5) = 0u;
  *(v29 + 6) = 0u;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 1) = 0u;
  *(v29 + 2) = 0u;
  *v29 = 0u;
  v30 = &v14[v10[20]];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v14[v10[21]] = 0;
  *&v14[v10[22]] = 0;
  v14[v10[23]] = 0;
  v14[v10[24]] = 0;
  v31 = v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model;
  swift_beginAccess();
  v32 = (v31 + v6[14]);
  v34 = *v32;
  v33 = v32[1];
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
  }

  else if (*(v31 + v6[21]) == 1)
  {
    sub_1000CE178(v31, v9, type metadata accessor for HeadphoneModel);
    v34 = sub_100050E28(0x5F544355444F5250, 0xEC000000454D414ELL, v9);
    v33 = v36;
    sub_1000CE1E0(v9, type metadata accessor for HeadphoneModel);
  }

  else
  {
    v34 = sub_100033A5C(33);
    v33 = v37;
  }

  *v14 = v34;
  *(v14 + 1) = v33;
  if (*(v31 + 136) != 13)
  {
    v38 = (v31 + v6[14]);
    v40 = *v38;
    v39 = v38[1];
    sub_100008438(&qword_10011EA80, &unk_1000DA490);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1000D5250;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_1000CDFF8();
    *(v41 + 32) = v40;
    *(v41 + 40) = v39;

    v42 = sub_1000364D8(v41, 42);
    v44 = v43;

    *(v14 + 2) = v42;
    *(v14 + 3) = v44;
    v45 = *(v31 + v6[45] + 8);
    if (v45)
    {
      v46 = 2;
    }

    else
    {
      v46 = 0;
    }

    if (v45 == 255)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    *(v14 + 4) = sub_100033A5C(v47);
    *(v14 + 5) = v48;
  }

  v49 = v10[15];
  swift_beginAccess();
  v50 = *(v2 + 40);
  if (v50)
  {
    v51 = sub_10000E7E4((v2 + 16), *(v2 + 40));
    v69 = v49;
    v52 = *(v50 - 8);
    v53 = *(v52 + 64);
    __chkstk_darwin(v51);
    v55 = &v69 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v55);
    type metadata accessor for HeadphoneInteractor();
    v56 = sub_100078158();
    (*(v52 + 8))(v55, v50);
    v57 = sub_1000CAAE4(v56, v2);
    v73[0] = v57;
    v58 = sub_1000CB184(v56, v73);

    v73[0] = v58;
    v59 = v58;
    v60 = sub_1000CB388(v2, v73);
    *(v14 + 12) = v58;
    *(v14 + 6) = v60;
    *(v14 + 7) = v61;
    v62 = v71;
    sub_1000C9424(v71);

    sub_1000CE114(v62, &v14[v70]);
    v14[v69] = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_useMovieForNextBatteryView);
  }

  else
  {
    v63 = v71;
    sub_1000C9424(v71);
    sub_1000CE114(v63, &v14[v70]);
    v14[v49] = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_useMovieForNextBatteryView);
    if (qword_10011C770 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_10000A570(v64, qword_10011FDE0);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "skipping OBC due to missing battery info !", v67, 2u);
    }
  }

  sub_1000CE178(v14, v72, type metadata accessor for HeadphoneViewModel);
  return sub_1000CE1E0(v14, type metadata accessor for HeadphoneViewModel);
}

uint64_t sub_1000C4E28@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for HeadphoneViewModel(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 2) = 0;
  v8 = v7 + 16;
  *(v7 + 3) = 0xE000000000000000;
  v9 = v7 + 24;
  *(v7 + 4) = 0;
  v10 = v7 + 32;
  *(v7 + 5) = 0xE000000000000000;
  v11 = v7 + 40;
  *(v7 + 6) = 0;
  *(v7 + 7) = 0xE000000000000000;
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 12) = 0;
  v12 = v4[13];
  v13 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v13 - 8) + 56))(&v7[v12], 1, 1, v13);
  v14 = v4[14];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v15 = &v7[v4[15]];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v16 = &v7[v4[16]];
  sub_10001309C(v37);
  v17 = v37[13];
  *(v16 + 12) = v37[12];
  *(v16 + 13) = v17;
  *(v16 + 14) = v37[14];
  v18 = v37[9];
  *(v16 + 8) = v37[8];
  *(v16 + 9) = v18;
  v19 = v37[11];
  *(v16 + 10) = v37[10];
  *(v16 + 11) = v19;
  v20 = v37[5];
  *(v16 + 4) = v37[4];
  *(v16 + 5) = v20;
  v21 = v37[7];
  *(v16 + 6) = v37[6];
  *(v16 + 7) = v21;
  v22 = v37[1];
  *v16 = v37[0];
  *(v16 + 1) = v22;
  v23 = v37[3];
  *(v16 + 2) = v37[2];
  *(v16 + 3) = v23;
  v7[v4[17]] = 0;
  v7[v4[18]] = 0;
  *&v7[v4[19]] = _swiftEmptyArrayStorage;
  *&v7[v4[20]] = _swiftEmptyArrayStorage;
  v24 = &v7[v4[21]];
  *(v24 + 5) = 0u;
  *(v24 + 6) = 0u;
  *(v24 + 3) = 0u;
  *(v24 + 4) = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *v24 = 0u;
  v25 = &v7[v4[22]];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v7[v4[23]] = 0;
  *&v7[v4[24]] = 0;
  v7[v4[25]] = 0;
  v7[v4[26]] = 0;
  switch(a1)
  {
    case 31:
      *v7 = sub_100033A5C(137);
      *(v7 + 1) = v32;
      v31 = sub_100033A5C(138);
      v27 = 140;
      v28 = 139;
      goto LABEL_7;
    case 30:
      *v7 = sub_100033A5C(133);
      *(v7 + 1) = v29;
      v31 = sub_100033A5C(134);
      v27 = 136;
      v28 = 135;
LABEL_7:
      *(v7 + 2) = v31;
      *(v7 + 3) = v30;
      v8 = v7 + 32;
      v9 = v7 + 40;
      v10 = v7 + 48;
      v11 = v7 + 56;
      goto LABEL_8;
    case 29:
      *v7 = sub_100033A5C(129);
      *(v7 + 1) = v26;
      v27 = 132;
      v28 = 130;
LABEL_8:
      *v8 = sub_100033A5C(v28);
      *v9 = v33;
      *v10 = sub_100033A5C(v27);
      *v11 = v34;
      break;
  }

  return sub_1000CE240(v7, v36, type metadata accessor for HeadphoneViewModel);
}

uint64_t sub_1000C5130@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HeadphoneViewModel(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0xE000000000000000;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0xE000000000000000;
  *(v8 + 6) = 0;
  *(v8 + 7) = 0xE000000000000000;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 12) = 0;
  v9 = v5[13];
  v10 = type metadata accessor for HeadphoneAssets(0);
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  v11 = v5[14];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  swift_storeEnumTagMultiPayload();
  v12 = &v8[v5[15]];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v13 = &v8[v5[16]];
  sub_10001309C(v36);
  v14 = v36[13];
  *(v13 + 12) = v36[12];
  *(v13 + 13) = v14;
  *(v13 + 14) = v36[14];
  v15 = v36[9];
  *(v13 + 8) = v36[8];
  *(v13 + 9) = v15;
  v16 = v36[11];
  *(v13 + 10) = v36[10];
  *(v13 + 11) = v16;
  v17 = v36[5];
  *(v13 + 4) = v36[4];
  *(v13 + 5) = v17;
  v18 = v36[7];
  *(v13 + 6) = v36[6];
  *(v13 + 7) = v18;
  v19 = v36[1];
  *v13 = v36[0];
  *(v13 + 1) = v19;
  v20 = v36[3];
  *(v13 + 2) = v36[2];
  *(v13 + 3) = v20;
  v8[v5[17]] = 0;
  v8[v5[18]] = 0;
  *&v8[v5[19]] = _swiftEmptyArrayStorage;
  *&v8[v5[20]] = _swiftEmptyArrayStorage;
  v21 = &v8[v5[21]];
  *(v21 + 5) = 0u;
  *(v21 + 6) = 0u;
  *(v21 + 3) = 0u;
  *(v21 + 4) = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *v21 = 0u;
  v22 = &v8[v5[22]];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v8[v5[23]] = 0;
  *&v8[v5[24]] = 0;
  v8[v5[25]] = 0;
  v8[v5[26]] = 0;
  switch(a1)
  {
    case '#':
      *v8 = sub_100033A5C(166);
      *(v8 + 1) = v28;
      v29 = [objc_opt_self() currentDevice];
      v30 = [v29 userInterfaceIdiom];

      if (v30)
      {
        v31 = 4294967208;
      }

      else
      {
        v31 = 4294967207;
      }

      *(v8 + 2) = sub_100033A5C(v31);
      *(v8 + 3) = v32;
      v24 = 170;
      v25 = 169;
      goto LABEL_10;
    case '""':
      *v8 = sub_100033A5C(155);
      *(v8 + 1) = v26;
      *(v8 + 2) = sub_100033A5C(156);
      *(v8 + 3) = v27;
      v24 = 161;
      v25 = 159;
      goto LABEL_10;
    case '!':
      *v8 = sub_100033A5C(145);
      *(v8 + 1) = v23;
      v24 = 154;
      v25 = 153;
LABEL_10:
      *(v8 + 4) = sub_100033A5C(v25);
      *(v8 + 5) = v33;
      *(v8 + 6) = sub_100033A5C(v24);
      *(v8 + 7) = v34;
      break;
  }

  return sub_1000CE240(v8, a2, type metadata accessor for HeadphoneViewModel);
}

uint64_t sub_1000C53FC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v444) = a1;
  v443 = a2;
  v420 = type metadata accessor for HeadphonePairing2.Assets.ViewIdentifier();
  v419 = *(v420 - 8);
  v3 = *(v419 + 64);
  __chkstk_darwin(v420);
  v418 = &v379 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v429 = type metadata accessor for HeadphonePairing2.Assets.AdjustedImageIdentifier();
  v428 = *(v429 - 8);
  v5 = *(v428 + 64);
  v6 = __chkstk_darwin(v429);
  v412 = &v379 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v427 = &v379 - v8;
  v406 = type metadata accessor for HeadphonePairing2.Assets.VideoViewIdentifier();
  v405 = *(v406 - 8);
  v9 = *(v405 + 64);
  v10 = __chkstk_darwin(v406);
  v399 = &v379 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v393 = &v379 - v12;
  v437 = type metadata accessor for HeadphoneAssets(0);
  v436 = *(v437 - 8);
  v13 = *(v436 + 64);
  v14 = __chkstk_darwin(v437);
  v424._reserved = &v379 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v424._clients = &v379 - v17;
  __chkstk_darwin(v16);
  v402 = &v379 - v18;
  v19 = type metadata accessor for HeadphoneModel(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v400 = &v379 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = type metadata accessor for HeadphonePairing2.Assets.FileIdentifier();
  v396 = *(v398 - 8);
  v22 = *(v396 + 64);
  __chkstk_darwin(v398);
  v395 = &v379 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100008438(&unk_100120000, &qword_1000D62D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v401 = &v379 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v404 = &v379 - v28;
  v431 = type metadata accessor for GenericAsset();
  v432 = *(v431 - 8);
  v29 = *(v432 + 64);
  v30 = __chkstk_darwin(v431);
  v394 = &v379 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v430 = &v379 - v32;
  v33 = sub_100008438(&qword_10011CF08, &unk_1000D7310);
  v424.super.isa = *(v33 - 8);
  v34 = *(v424.super.isa + 8);
  v35 = __chkstk_darwin(v33 - 8);
  v449 = &v379 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v448 = &v379 - v38;
  v39 = __chkstk_darwin(v37);
  v424._urlString = (&v379 - v40);
  v41 = __chkstk_darwin(v39);
  v410 = &v379 - v42;
  v43 = __chkstk_darwin(v41);
  v421 = &v379 - v44;
  v45 = __chkstk_darwin(v43);
  v391 = &v379 - v46;
  v47 = __chkstk_darwin(v45);
  v397 = &v379 - v48;
  v49 = __chkstk_darwin(v47);
  v409 = &v379 - v50;
  v51 = __chkstk_darwin(v49);
  v423 = &v379 - v52;
  v53 = __chkstk_darwin(v51);
  v425 = &v379 - v54;
  __chkstk_darwin(v53);
  v422 = &v379 - v55;
  v435 = type metadata accessor for HeadphonePairing2.Assets.VideoIdentifier();
  v439 = *(v435 - 8);
  v56 = *(v439 + 8);
  __chkstk_darwin(v435);
  v434 = &v379 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v433 = type metadata accessor for AdjustedAsset();
  v442 = *(v433 - 8);
  v58 = *(v442 + 64);
  v59 = __chkstk_darwin(v433);
  v411 = &v379 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59);
  v416 = &v379 - v62;
  v63 = __chkstk_darwin(v61);
  v407 = &v379 - v64;
  v65 = __chkstk_darwin(v63);
  v413 = &v379 - v66;
  v67 = __chkstk_darwin(v65);
  v69 = &v379 - v68;
  v70 = __chkstk_darwin(v67);
  v403 = &v379 - v71;
  v72 = __chkstk_darwin(v70);
  v415 = &v379 - v73;
  v74 = __chkstk_darwin(v72);
  v76 = &v379 - v75;
  v77 = __chkstk_darwin(v74);
  v414 = &v379 - v78;
  __chkstk_darwin(v77);
  v80 = &v379 - v79;
  v446 = type metadata accessor for URL();
  v445 = *(v446 - 8);
  v81 = *(v445 + 64);
  v82 = __chkstk_darwin(v446);
  v426 = &v379 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __chkstk_darwin(v82);
  v447 = &v379 - v85;
  v86 = __chkstk_darwin(v84);
  v417 = &v379 - v87;
  v88 = __chkstk_darwin(v86);
  v424._baseURL = (&v379 - v89);
  v90 = __chkstk_darwin(v88);
  v390 = &v379 - v91;
  v92 = __chkstk_darwin(v90);
  v392 = &v379 - v93;
  v94 = __chkstk_darwin(v92);
  v408 = &v379 - v95;
  v96 = __chkstk_darwin(v94);
  v98 = &v379 - v97;
  v99 = __chkstk_darwin(v96);
  v101 = &v379 - v100;
  v102 = __chkstk_darwin(v99);
  v104 = &v379 - v103;
  v105 = __chkstk_darwin(v102);
  v107 = &v379 - v106;
  __chkstk_darwin(v105);
  v438 = &v379 - v108;
  v109 = &v2[OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_model];
  swift_beginAccess();
  if (*(v109 + *(v19 + 84)) != 1)
  {
    return sub_1000CB8E0(v444, v443);
  }

  v385 = v69;
  v110 = v444;
  v386 = v2;
  if (!*(v109 + *(v19 + 148)))
  {
    return (*(v436 + 56))(v443, 1, 1, v437);
  }

  v380 = v98;
  v389 = v109;
  v388 = v19;
  v111 = v439;
  v112 = *(v439 + 13);
  v113 = v434;
  v381 = enum case for HeadphonePairing2.Assets.VideoIdentifier.connectLoop(_:);
  v114 = v435;
  v383 = v439 + 104;
  v382 = v112;
  v112(v434);

  dispatch thunk of HeadphonePairing2.Assets.video(_:)();

  v115 = *(v111 + 1);
  v439 = (v111 + 8);
  v384 = v115;
  v115(v113, v114);
  AdjustedAsset.adjustmentURL.getter();
  v116 = *(v442 + 8);
  v117 = v433;
  v442 += 8;
  v387 = v116;
  v116(v80, v433);
  v118 = *(v445 + 32);
  v119 = v438;
  v441 = v445 + 32;
  v440 = v118;
  v118(v438, v107, v446);
  if (v110 > 0x13u)
  {
    if (v110 == 20 || v110 == 22)
    {
      v149 = v389;
      swift_beginAccess();
      v150 = *(v149 + *(v388 + 148));
      v151 = v437;
      v152 = v445;
      if (v150)
      {
        swift_endAccess();
        v153 = v434;
        v154 = v435;
        v382(v434, v381, v435);

        dispatch thunk of HeadphonePairing2.Assets.video(_:)();

        v384(v153, v154);
        v155 = v430;
        AdjustedAsset.asset.getter();
        v387(v76, v117);
        v156 = v425;
        GenericAsset.fileURL.getter();
        (*(v432 + 8))(v155, v431);
        v157 = v446;
        if ((*(v152 + 48))(v156, 1, v446) != 1)
        {
          v178 = v440;
          v440(v101, v156, v157);
          v179 = v443;
          v178(v443, v438, v157);
          v178(v179 + v151[5], v101, v157);
          (*(v152 + 56))(v179 + v151[6], 1, 1, v157);
          v180 = v151[7];
          v181 = type metadata accessor for HeadphoneAssets.Feature(0);
          (*(*(v181 - 8) + 56))(v179 + v180, 1, 1, v181);
          *(v179 + v151[8]) = _swiftEmptyArrayStorage;
          *(v179 + v151[9]) = 0;
          v182 = (v179 + v151[10]);
          *v182 = 0;
          v182[1] = 0;
          return (*(v436 + 56))(v179, 0, 1, v151);
        }

        (*(v152 + 8))(v438, v157);
      }

      else
      {
        v176 = v446;
        (*(v445 + 8))(v438, v446);
        swift_endAccess();
        v156 = v425;
        (*(v152 + 56))(v425, 1, 1, v176);
      }

      v177 = v443;
      sub_10000E950(v156, &qword_10011CF08, &unk_1000D7310);
      return (*(v436 + 56))(v177, 1, 1, v151);
    }

    v122 = v437;
    v120 = v445;
    v121 = v446;
    if (v110 == 21)
    {
      v143 = v389;
      swift_beginAccess();
      if (*(v143 + *(v388 + 148)))
      {
        swift_endAccess();
        v144 = v434;
        v145 = v435;
        v382(v434, enum case for HeadphonePairing2.Assets.VideoIdentifier.repairLoop(_:), v435);

        v146 = v414;
        dispatch thunk of HeadphonePairing2.Assets.video(_:)();

        v384(v144, v145);
        v147 = v430;
        AdjustedAsset.asset.getter();
        v387(v146, v433);
        v148 = v422;
        GenericAsset.fileURL.getter();
        (*(v432 + 8))(v147, v431);
        if ((v120[6])(v148, 1, v121) != 1)
        {
          v191 = v148;
          v192 = v440;
          v440(v104, v191, v121);
          v193 = v443;
          v192(v443, v119, v121);
          v192(v193 + v122[5], v104, v121);
          v120[7](v193 + v122[6], 1, 1, v121);
          v194 = v122[7];
          v195 = type metadata accessor for HeadphoneAssets.Feature(0);
          (*(*(v195 - 8) + 56))(v193 + v194, 1, 1, v195);
          *(v193 + v122[8]) = _swiftEmptyArrayStorage;
          *(v193 + v122[9]) = 0;
          v196 = (v193 + v122[10]);
          *v196 = 0;
          v196[1] = 0;
          return (*(v436 + 56))(v193, 0, 1, v122);
        }

        (v120[1])(v119, v121);
      }

      else
      {
        (v120[1])(v119, v121);
        swift_endAccess();
        v148 = v422;
        v120[7](v422, 1, 1, v121);
      }

      v183 = v443;
      sub_10000E950(v148, &qword_10011CF08, &unk_1000D7310);
      v166 = *(v436 + 56);
      v167 = v183;
      return v166(v167, 1, 1, v122);
    }

LABEL_24:
    (v120[1])(v119, v121);
    v166 = *(v436 + 56);
    v167 = v443;
    return v166(v167, 1, 1, v122);
  }

  if (v110 == 2)
  {
    v158 = *(v389 + 161);
    v159 = v445;
    v121 = v446;
    if (v158 == 4 || v158 == 2)
    {
      v160 = v428;
      if (*(v389 + *(v388 + 148)))
      {
        v161 = v434;
        v162 = v435;
        v382(v434, enum case for HeadphonePairing2.Assets.VideoIdentifier.loopCharging(_:), v435);

        v163 = v413;
        dispatch thunk of HeadphonePairing2.Assets.video(_:)();

        v384(v161, v162);
        v164 = v430;
        AdjustedAsset.asset.getter();
        v387(v163, v117);
        v165 = v421;
        GenericAsset.fileURL.getter();
        (*(v432 + 8))(v164, v431);
      }

      else
      {
        v165 = v421;
        (*(v445 + 56))(v421, 1, 1, v446);
      }

      v205 = sub_1000CC7D4(0, 1, 1, _swiftEmptyArrayStorage, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
      v207 = v205[2];
      v206 = v205[3];
      if (v207 >= v206 >> 1)
      {
        v205 = sub_1000CC7D4(v206 > 1, v207 + 1, 1, v205, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
      }

      isa = v424.super.isa;
      v205[2] = v207 + 1;
      v209 = *(isa + 80);
      v210 = *(isa + 9);
      sub_10000A450(v165, v205 + ((v209 + 32) & ~v209) + v210 * v207, &qword_10011CF08, &unk_1000D7310);
      v425 = *(v160 + 104);
      (v425)(v427, enum case for HeadphonePairing2.Assets.AdjustedImageIdentifier.caseClosedCharging(_:), v429);
      v211 = v388;
      v212 = v389;
      v213 = *(v389 + *(v388 + 148));
      v424._reserved = &enum case for HeadphonePairing2.Assets.VideoViewIdentifier.loopCharging(_:);
      if (v213)
      {
        v214 = &enum case for HeadphonePairing2.Assets.ViewIdentifier.caseClosedCharging(_:);
LABEL_58:
        v225 = v419;
        v226 = v418;
        v227 = v420;
        (*(v419 + 104))(v418, *v214, v420);

        v426 = dispatch thunk of HeadphonePairing2.Assets.view(_:)();

        (*(v225 + 8))(v226, v227);
        v211 = v388;
        v212 = v389;
LABEL_60:
        urlString = v424._urlString;
        if (*(v212 + *(v211 + 148)))
        {
          v229 = v434;
          v230 = v435;
          v382(v434, v381, v435);

          v444 = v209;
          v209 = urlString;
          v231 = v117;
          v232 = v416;
          dispatch thunk of HeadphonePairing2.Assets.video(_:)();

          v384(v229, v230);
          v233 = v430;
          AdjustedAsset.asset.getter();
          v234 = v231;
          urlString = v209;
          LODWORD(v209) = v444;
          v387(v232, v234);
          GenericAsset.fileURL.getter();
          (*(v432 + 8))(v233, v431);
        }

        else
        {
          (*(v159 + 56))(v424._urlString, 1, 1, v121);
        }

        v236 = v205[2];
        v235 = v205[3];
        v237 = v236 + 1;
        if (v236 >= v235 >> 1)
        {
          v205 = sub_1000CC7D4(v235 > 1, v236 + 1, 1, v205, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
        }

        v205[2] = v237;
        v444 = v205;
        v238 = v205 + ((v209 + 32) & ~v209);
        sub_10000A450(urlString, v238 + v210 * v236, &qword_10011CF08, &unk_1000D7310);
        v239 = (v159 + 48);
        v240 = _swiftEmptyArrayStorage;
        do
        {
          v241 = v448;
          sub_10000E88C(v238, v448, &qword_10011CF08, &unk_1000D7310);
          v242 = v241;
          v243 = v449;
          sub_10000A450(v242, v449, &qword_10011CF08, &unk_1000D7310);
          if ((*v239)(v243, 1, v121) == 1)
          {
            sub_10000E950(v243, &qword_10011CF08, &unk_1000D7310);
          }

          else
          {
            v440(v447, v243, v121);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v240 = sub_1000CCD74(0, *(v240 + 2) + 1, 1, v240, &qword_100120040, &qword_1000DA508, &type metadata accessor for URL);
            }

            v245 = *(v240 + 2);
            v244 = *(v240 + 3);
            if (v245 >= v244 >> 1)
            {
              v240 = sub_1000CCD74(v244 > 1, v245 + 1, 1, v240, &qword_100120040, &qword_1000DA508, &type metadata accessor for URL);
            }

            *(v240 + 2) = v245 + 1;
            v159 = v445;
            v246 = &v240[((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v245];
            v121 = v446;
            v440(v246, v447, v446);
          }

          v238 += v210;
          --v237;
        }

        while (v237);
        if (!*(v240 + 2))
        {

          (*(v428 + 8))(v427, v429);
          (*(v159 + 8))(v438, v121);

          return (*(v436 + 56))(v443, 1, 1, v437);
        }

        v247 = *(v159 + 16);
        v248 = v417;
        v247(v417, &v240[(*(v159 + 80) + 32) & ~*(v159 + 80)], v121);

        baseURL = v424._baseURL;
        v440(v424._baseURL, v248, v121);
        clients = v424._clients;
        v251 = v438;
        v247(v424._clients, v438, v121);
        v252 = v437;
        v247(&clients[*(v437 + 20)], baseURL, v121);
        (*(v159 + 56))(&clients[v252[6]], 1, 1, v121);
        v253 = v252[7];
        v254 = type metadata accessor for HeadphoneAssets.Feature(0);
        (*(*(v254 - 8) + 56))(&clients[v253], 1, 1, v254);
        v255 = &clients[v252[10]];
        *v255 = 0;
        *(v255 + 1) = 0;
        v256 = *(v389 + *(v388 + 148));
        v257 = _swiftEmptyArrayStorage;
        if (!v256)
        {
          v283 = v386;
LABEL_90:

          v288 = &v283[OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_batteryVideoView];
          v289 = *&v283[OBJC_IVAR____TtC20HeadphoneProxService18HeadphonePresenter_batteryVideoView];
          if (v289)
          {
            v290 = *(v288 + 1);
            v291 = *(v159 + 8);
            v292 = v289;
            v291(v424._baseURL, v121);
            (*(v428 + 8))(v427, v429);
            v291(v251, v121);
            *v255 = v289;
            *(v255 + 1) = v290;
          }

          else if (*(v389 + *(v388 + 148)))
          {
            v449 = v257;
            v293 = v405;
            v294 = *(v405 + 104);
            v295 = *v424._reserved;
            v448 = v255;
            v296 = v399;
            v297 = v406;
            v294(v399, v295, v406);

            v298 = dispatch thunk of HeadphonePairing2.Assets.videoView(_:)();
            v300 = v299;

            (*(v293 + 8))(v296, v297);
            v257 = v449;
            v301 = *(v159 + 8);
            v301(v424._baseURL, v121);
            (*(v428 + 8))(v427, v429);
            v301(v438, v121);
            v302 = v448;
            *v448 = v298;
            *(v302 + 1) = v300;
            v303 = *v288;
            *v288 = v298;
            *(v288 + 1) = v300;
            v304 = v298;
          }

          else
          {
            v320 = *(v159 + 8);
            v320(v424._baseURL, v121);
            (*(v428 + 8))(v427, v429);
            v320(v251, v121);
          }

          v321 = v252[9];
          v219 = v424._clients;
          *(v424._clients + v252[8]) = v257;
          *&v219[v321] = v426;
          v322 = v443;
          sub_1000CE178(v219, v443, type metadata accessor for HeadphoneAssets);
          (*(v436 + 56))(v322, 0, 1, v252);
          return sub_1000CE1E0(v219, type metadata accessor for HeadphoneAssets);
        }

        v448 = v255;
        v258 = v428;
        v447 = (v428 + 104);
        v259 = v412;
        v260 = v429;
        (v425)(v412, enum case for HeadphonePairing2.Assets.AdjustedImageIdentifier.leftBud(_:), v429);

        v261 = v411;
        dispatch thunk of HeadphonePairing2.Assets.adjustedImage(_:)();
        v262 = *(v258 + 8);
        v440 = (v258 + 8);
        v441 = v262;
        v262(v259, v260);
        v263 = objc_opt_self();
        v264 = v430;
        AdjustedAsset.asset.getter();
        GenericAsset.fileName.getter();
        v265 = *(v432 + 8);
        v266 = v431;
        v265(v264, v431);
        v439 = v265;
        v267 = String._bridgeToObjectiveC()();
        v449 = v256;
        v268 = v267;

        AdjustedAsset.asset.getter();
        v269 = GenericAsset.bundle.getter();
        v265(v264, v266);
        v270 = v263;
        v271 = [v263 imageNamed:v268 inBundle:v269];

        v387(v261, v433);
        v454[0] = v271;
        v272 = v429;
        (v425)(v259, enum case for HeadphonePairing2.Assets.AdjustedImageIdentifier.rightBud(_:), v429);
        v121 = v446;
        dispatch thunk of HeadphonePairing2.Assets.adjustedImage(_:)();
        (v441)(v259, v272);
        AdjustedAsset.asset.getter();
        GenericAsset.fileName.getter();
        v273 = v431;
        v274 = v439;
        v439(v264, v431);
        v275 = String._bridgeToObjectiveC()();

        AdjustedAsset.asset.getter();
        v276 = GenericAsset.bundle.getter();
        v274(v264, v273);
        v277 = [v270 imageNamed:v275 inBundle:v276];

        v387(v261, v433);
        v454[1] = v277;
        dispatch thunk of HeadphonePairing2.Assets.adjustedImage(_:)();
        AdjustedAsset.asset.getter();
        GenericAsset.fileName.getter();
        v274(v264, v273);
        v278 = String._bridgeToObjectiveC()();

        AdjustedAsset.asset.getter();
        v279 = GenericAsset.bundle.getter();
        v274(v264, v273);
        v120 = &v453;
        v252 = v437;
        v280 = [v270 imageNamed:v278 inBundle:v279];

        v281 = v261;
        v257 = _swiftEmptyArrayStorage;
        v387(v281, v433);
        v282 = 0;
        v454[2] = v280;
        v451 = _swiftEmptyArrayStorage;
        v283 = v386;
LABEL_77:
        if (v282 <= 3)
        {
          v284 = 3;
        }

        else
        {
          v284 = v282;
        }

        v251 = v438;
        while (1)
        {
          if (v282 == 3)
          {

            sub_100008438(&unk_100120010, &unk_1000DA4E0);
            swift_arrayDestroy();
            v159 = v445;
            v255 = v448;
            goto LABEL_90;
          }

          if (v284 == v282)
          {
            break;
          }

          v285 = v454[v282++];
          if (v285)
          {
            v286 = v285;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v451 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v451 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v287 = *((v451 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v257 = v451;
            goto LABEL_77;
          }
        }

        __break(1u);
LABEL_133:
        v350 = _swiftEmptyArrayStorage;
LABEL_134:
        v372 = v390;
        (v120[2])(v283, v390, v121);
        v373 = v283;
        v374 = sub_1000B46B4(v350);

        v375 = v120[1];
        (v375)(v372, v121);
        (v375)(v392, v121);
        v376 = v404;
        sub_10000E950(v404, &unk_100120000, &qword_1000D62D0);
        v377 = v447;
        *(v373 + *(v447 + 5)) = v440;
        *(v373 + *(v377 + 6)) = v374;
        v444(v373, 0, 1);
        sub_10000A450(v373, v376, &unk_100120000, &qword_1000D62D0);
        goto LABEL_108;
      }
    }

    else
    {
      v185 = v428;
      if (*(v389 + *(v388 + 148)))
      {
        v186 = v434;
        v187 = v435;
        v382(v434, enum case for HeadphonePairing2.Assets.VideoIdentifier.loopCharged(_:), v435);

        v188 = v407;
        dispatch thunk of HeadphonePairing2.Assets.video(_:)();

        v384(v186, v187);
        v189 = v430;
        AdjustedAsset.asset.getter();
        v387(v188, v117);
        v190 = v410;
        GenericAsset.fileURL.getter();
        (*(v432 + 8))(v189, v431);
      }

      else
      {
        v190 = v410;
        (*(v445 + 56))(v410, 1, 1, v446);
      }

      v205 = sub_1000CC7D4(0, 1, 1, _swiftEmptyArrayStorage, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
      v222 = v205[2];
      v221 = v205[3];
      if (v222 >= v221 >> 1)
      {
        v205 = sub_1000CC7D4(v221 > 1, v222 + 1, 1, v205, &qword_100120048, &unk_1000DA510, &qword_10011CF08, &unk_1000D7310);
      }

      v223 = v424.super.isa;
      v205[2] = v222 + 1;
      v209 = *(v223 + 80);
      v210 = *(v223 + 9);
      sub_10000A450(v190, v205 + ((v209 + 32) & ~v209) + v210 * v222, &qword_10011CF08, &unk_1000D7310);
      v425 = *(v185 + 104);
      (v425)(v427, enum case for HeadphonePairing2.Assets.AdjustedImageIdentifier.caseClosedCharged(_:), v429);
      v211 = v388;
      v212 = v389;
      v224 = *(v389 + *(v388 + 148));
      v424._reserved = &enum case for HeadphonePairing2.Assets.VideoViewIdentifier.loopCharged(_:);
      if (v224)
      {
        v214 = &enum case for HeadphonePairing2.Assets.ViewIdentifier.caseClosedCharged(_:);
        goto LABEL_58;
      }
    }

    v426 = 0;
    goto LABEL_60;
  }

  v120 = v445;
  v121 = v446;
  if (v110 != 3)
  {
    v122 = v437;
    if (v110 == 18)
    {
      v123 = v426;
      URL.init(fileURLWithPath:)();
      v124 = v120[2];
      reserved = v424._reserved;
      (v124)(v424._reserved, v119, v121);
      (v124)(&reserved[v122[5]], v123, v121);
      v120[7](&reserved[v122[6]], 1, 1, v121);
      v126 = v122[7];
      v127 = type metadata accessor for HeadphoneAssets.Feature(0);
      (*(*(v127 - 8) + 56))(&reserved[v126], 1, 1, v127);
      v128 = v122[9];
      v449 = v122[8];
      *&reserved[v128] = 0;
      v129 = &reserved[v122[10]];
      *v129 = 0;
      *(v129 + 1) = 0;
      v130 = v388;
      v131 = v389;
      v132 = *(v389 + *(v388 + 136));
      v133 = objc_opt_self();
      v134 = [v133 airPods];
      v135 = [v134 productID];

      if (v132 == v135 || (v136 = *(v131 + *(v130 + 136)), v137 = [v133 airPodsSecondGeneration], v138 = objc_msgSend(v137, "productID"), v137, v136 == v138))
      {
        v139 = &v455;
        v140 = String._bridgeToObjectiveC()();
        v141 = [objc_opt_self() imageNamed:v140];

        v456 = v141;
      }

      else
      {
        v139 = &v457;
        v215 = String._bridgeToObjectiveC()();
        v141 = [objc_opt_self() imageNamed:v215];

        v458 = v141;
      }

      v216 = _swiftEmptyArrayStorage;
      v451 = _swiftEmptyArrayStorage;
      if (v141)
      {
        v217 = v141;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v451 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v451 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v378 = *((v451 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v216 = v451;
      }

      sub_10000E950((v139 + 32), &unk_100120010, &unk_1000DA4E0);
      v218 = v120[1];
      (v218)(v426, v121);
      (v218)(v438, v121);
      v219 = v424._reserved;
      *(v424._reserved + v449) = v216;
      v220 = v443;
      sub_1000CE178(v219, v443, type metadata accessor for HeadphoneAssets);
      (*(v436 + 56))(v220, 0, 1, v122);
      return sub_1000CE1E0(v219, type metadata accessor for HeadphoneAssets);
    }

    goto LABEL_24;
  }

  v168 = v389;
  swift_beginAccess();
  if (!*(v168 + *(v388 + 148)))
  {
    (v120[1])(v119, v121);
    swift_endAccess();
    v173 = v423;
    v120[7](v423, 1, 1, v121);
    goto LABEL_35;
  }

  swift_endAccess();
  v169 = v434;
  v170 = v435;
  v382(v434, enum case for HeadphonePairing2.Assets.VideoIdentifier.connectEngage(_:), v435);

  v171 = v415;
  dispatch thunk of HeadphonePairing2.Assets.video(_:)();

  v384(v169, v170);
  v172 = v430;
  AdjustedAsset.asset.getter();
  v387(v171, v117);
  v173 = v423;
  GenericAsset.fileURL.getter();
  v174 = *(v432 + 8);
  v432 += 8;
  v174(v172, v431);
  v175 = v120[6];
  if ((v175)(v173, 1, v121) == 1)
  {
    (v120[1])(v438, v121);
LABEL_35:
    v184 = v173;
LABEL_96:
    sub_10000E950(v184, &qword_10011CF08, &unk_1000D7310);
    return (*(v436 + 56))(v443, 1, 1, v437);
  }

  v197 = v380;
  v440(v380, v173, v121);
  v198 = v389;
  swift_beginAccess();
  if (!*(v198 + *(v388 + 148)))
  {
    v305 = v120[1];
    (v305)(v197, v121);
    (v305)(v438, v121);
    swift_endAccess();
    v203 = v409;
    v120[7](v409, 1, 1, v121);
    goto LABEL_95;
  }

  swift_endAccess();
  v199 = v434;
  v200 = v435;
  v382(v434, v381, v435);

  v201 = v403;
  dispatch thunk of HeadphonePairing2.Assets.video(_:)();

  v384(v199, v200);
  v202 = v430;
  AdjustedAsset.asset.getter();
  v387(v201, v117);
  v203 = v409;
  GenericAsset.fileURL.getter();
  v174(v202, v431);
  if ((v175)(v203, 1, v121) == 1)
  {
    v204 = v120[1];
    (v204)(v380, v121);
    (v204)(v438, v121);
LABEL_95:
    v184 = v203;
    goto LABEL_96;
  }

  v440(v408, v203, v121);
  v306 = type metadata accessor for HeadphoneAssets.Feature(0);
  v307 = *(v306 - 8);
  v308 = *(v307 + 56);
  v447 = v306;
  v444 = v308;
  v429 = v307 + 56;
  v308(v404, 1, 1);
  if (*(v389 + *(v388 + 148)))
  {
    v309 = v396;
    v310 = v395;
    (*(v396 + 104))(v395, enum case for HeadphonePairing2.Assets.FileIdentifier.featureTimings(_:), v398);

    v311 = v394;
    dispatch thunk of HeadphonePairing2.Assets.file(_:)();

    (*(v309 + 8))(v310, v398);
    v312 = v397;
    GenericAsset.fileURL.getter();
    v174(v311, v431);
    if ((v175)(v312, 1, v121) != 1)
    {
      v313 = v392;
      v440(v392, v312, v121);
      v314 = v389;
      swift_beginAccess();
      if (!*(v314 + *(v388 + 148)))
      {
        (v120[1])(v313, v121);
        swift_endAccess();
        v319 = v391;
        v120[7](v391, 1, 1, v121);
        goto LABEL_110;
      }

      swift_endAccess();
      v315 = v434;
      v316 = v435;
      v382(v434, enum case for HeadphonePairing2.Assets.VideoIdentifier.features(_:), v435);

      v317 = v385;
      dispatch thunk of HeadphonePairing2.Assets.video(_:)();

      v384(v315, v316);
      v318 = v430;
      AdjustedAsset.asset.getter();
      v387(v317, v117);
      v319 = v391;
      GenericAsset.fileURL.getter();
      v174(v318, v431);
      if ((v175)(v319, 1, v121) == 1)
      {
        (v120[1])(v392, v121);
LABEL_110:
        v323 = v438;
        sub_10000E950(v319, &qword_10011CF08, &unk_1000D7310);
        goto LABEL_111;
      }

      v440(v390, v319, v121);
      URL._bridgeToObjectiveC()(&v424);
      v345 = v344;
      v346 = SFPlaybackTimeRangesFromFeaturesTimeURL();

      sub_1000084D4(0, &qword_10011D068, NSValue_ptr);
      v347 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v347 >> 62)
      {
        goto LABEL_137;
      }

      v348 = *((v347 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_117:
      v283 = v401;
      v440 = v347;
      if (v348)
      {
        v349 = 0;
        v442 = v347 & 0xC000000000000001;
        v441 = v347 & 0xFFFFFFFFFFFFFF8;
        v350 = _swiftEmptyArrayStorage;
        v351 = v389;
        while (1)
        {
          if (v442)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            swift_unknownObjectRelease();
            v352 = v349 + 1;
            if (__OFADD__(v349, 1))
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v349 >= *(v441 + 16))
            {
              goto LABEL_136;
            }

            v352 = v349 + 1;
            if (__OFADD__(v349, 1))
            {
LABEL_135:
              __break(1u);
LABEL_136:
              __break(1u);
LABEL_137:
              v348 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_117;
            }
          }

          v353 = v348;
          v451 = 0;
          v452 = 0xE000000000000000;
          _StringGuts.grow(_:)(16);

          v451 = 0x5F45525554414546;
          v452 = 0xE800000000000000;
          v450 = v349;
          v354._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v354);

          v355._countAndFlagsBits = 0x454C5449545FLL;
          v355._object = 0xE600000000000000;
          String.append(_:)(v355);
          v356 = v451;
          v357 = v452;
          v358 = v400;
          sub_1000CE178(v351, v400, type metadata accessor for HeadphoneModel);
          v449 = sub_100050E28(v356, v357, v358);
          v448 = v359;

          sub_1000CE1E0(v358, type metadata accessor for HeadphoneModel);
          v451 = 0;
          v452 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v451 = 0x5F45525554414546;
          v452 = 0xE800000000000000;
          v450 = v349;
          v360._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v360);

          v361._countAndFlagsBits = 0x504952435345445FLL;
          v361._object = 0xEC0000004E4F4954;
          String.append(_:)(v361);
          v362 = v451;
          v363 = v452;
          sub_1000CE178(v351, v358, type metadata accessor for HeadphoneModel);
          v364 = sub_100050E28(v362, v363, v358);
          v366 = v365;

          sub_1000CE1E0(v358, type metadata accessor for HeadphoneModel);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v350 = sub_1000CC31C(0, v350[2] + 1, 1, v350);
          }

          v368 = v350[2];
          v367 = v350[3];
          v347 = v368 + 1;
          if (v368 >= v367 >> 1)
          {
            v350 = sub_1000CC31C((v367 > 1), v368 + 1, 1, v350);
          }

          v350[2] = v347;
          v369 = &v350[4 * v368];
          v370 = v448;
          v369[4] = v449;
          v369[5] = v370;
          v369[6] = v364;
          v369[7] = v366;
          ++v349;
          v348 = v353;
          v371 = v352 == v353;
          v120 = v445;
          v121 = v446;
          v283 = v401;
          if (v371)
          {
            goto LABEL_134;
          }
        }
      }

      goto LABEL_133;
    }
  }

  else
  {
    v312 = v397;
    v120[7](v397, 1, 1, v121);
  }

  sub_10000E950(v312, &qword_10011CF08, &unk_1000D7310);
LABEL_108:
  v323 = v438;
LABEL_111:
  v324 = v120[2];
  v325 = v402;
  (v324)(v402, v323, v121);
  v326 = v437;
  v327 = v380;
  (v324)(v325 + *(v437 + 20), v380, v121);
  v328 = v326[6];
  v329 = v408;
  (v324)(v325 + v328, v408, v121);
  v120[7](v325 + v328, 0, 1, v121);
  v330 = v326[7];
  (v444)(v325 + v330, 1, 1, v447);
  *(v325 + v326[8]) = _swiftEmptyArrayStorage;
  *(v325 + v326[9]) = 0;
  v331 = (v325 + v326[10]);
  *v331 = 0;
  v331[1] = 0;
  v332 = v404;
  sub_1000CE2A8(v404, v325 + v330);
  v333 = v389;
  swift_beginAccess();
  if (*(v333 + *(v388 + 148)))
  {
    swift_endAccess();
    v334 = v327;
    v335 = v405;
    v336 = v393;
    v337 = v406;
    (*(v405 + 104))(v393, enum case for HeadphonePairing2.Assets.VideoViewIdentifier.intro(_:), v406);

    v338 = dispatch thunk of HeadphonePairing2.Assets.videoView(_:)();
    v449 = v339;

    (*(v335 + 8))(v336, v337);
    sub_10000E950(v332, &unk_100120000, &qword_1000D62D0);
    v340 = v120[1];
    (v340)(v408, v121);
    (v340)(v334, v121);
    (v340)(v438, v121);
    v341 = v449;
    *v331 = v338;
    v331[1] = v341;
  }

  else
  {
    sub_10000E950(v332, &unk_100120000, &qword_1000D62D0);
    v342 = v120[1];
    (v342)(v329, v121);
    (v342)(v327, v121);
    (v342)(v323, v121);
    swift_endAccess();
  }

  v219 = v402;
  v343 = v443;
  sub_1000CE178(v402, v443, type metadata accessor for HeadphoneAssets);
  (*(v436 + 56))(v343, 0, 1, v437);
  return sub_1000CE1E0(v219, type metadata accessor for HeadphoneAssets);
}