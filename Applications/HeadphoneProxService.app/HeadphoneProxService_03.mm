uint64_t sub_100054864(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  sub_100062810(a1, &v12 - v5, type metadata accessor for HeadphoneViewModel);
  v7 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v6, v1 + v8);
  swift_endAccess();
  if (*(a1 + 72))
  {
    v9 = *(a1 + 64);
    v10 = String._bridgeToObjectiveC()();
    [v1 showActivityIndicatorWithStatus:v10];
  }

  return sub_10005719C(v1, *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState));
}

uint64_t sub_1000549B0()
{
  v1 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v5 = sub_100008438(&unk_100120000, &qword_1000D62D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for HeadphoneAssets.Feature(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(v0 + v14, v4, &qword_10011F2E0, &unk_1000D8580);
  v15 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v15 - 8) + 48))(v4, 1, v15) || (v16 = &v4[*(v15 + 44)], v17 = type metadata accessor for HeadphoneAssets(0), (*(*(v17 - 8) + 48))(v16, 1, v17)))
  {
    sub_10000E950(v4, &qword_10011F2E0, &unk_1000D8580);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  else
  {
    sub_10000E88C(&v16[*(v17 + 28)], v8, &unk_100120000, &qword_1000D62D0);
    sub_10000E950(v4, &qword_10011F2E0, &unk_1000D8580);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_100064E50(v8, v13, type metadata accessor for HeadphoneAssets.Feature);
      sub_100057A24(v13);
      return sub_100062878(v13, type metadata accessor for HeadphoneAssets.Feature);
    }
  }

  sub_10000E950(v8, &unk_100120000, &qword_1000D62D0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000B9ADC();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100054CE4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) initWithImage:a1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [objc_opt_self() systemGray2Color];
  [v2 setTintColor:v3];

  v4 = [v1 contentView];
  [v4 addSubview:v2];

  v5 = [v1 contentView];
  v6 = [v5 mainContentGuide];

  v7 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D6000;
  v9 = [v2 topAnchor];
  v10 = [v6 topAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];

  *(v8 + 32) = v11;
  v12 = [v2 bottomAnchor];
  v13 = [v6 bottomAnchor];
  v14 = [v12 constraintLessThanOrEqualToAnchor:v13];

  *(v8 + 40) = v14;
  v15 = [v2 centerYAnchor];
  v16 = [v6 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v8 + 48) = v17;
  v18 = [v2 centerXAnchor];

  v19 = [v6 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v8 + 56) = v20;
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];
}

void sub_100055024()
{
  v1 = v0;
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
  memcpy(__dst, (v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer), sizeof(__dst));
  v4 = __dst[0];
  memcpy(__src, (v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer + 8), 0x128uLL);
  memcpy(v40, (v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer + 8), sizeof(v40));
  v39 = __dst[0];
  if (sub_1000627F8(&v39) == 1)
  {
    v36 = v4;
    memcpy(v37, __src, sizeof(v37));
    v5 = v2;
    sub_10000E88C(__dst, v35, &qword_10011E760, &qword_1000D8598);
    sub_10000E950(&v36, &qword_10011E760, &qword_1000D8598);
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
  }

  else
  {
    v36 = v4;
    memcpy(v37, __src, sizeof(v37));
    v10 = v2;
    sub_10000E88C(__dst, v35, &qword_10011E760, &qword_1000D8598);
    v11 = v4;
    sub_10000E950(&v36, &qword_10011E760, &qword_1000D8598);
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v9 = v19;
    v8 = v17;
    v7 = v15;
    v6 = v13;
  }

  [v2 setFrame:{v6, v7, v8, v9}];
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000D6000;
  sub_1000084D4(0, &qword_10011DC20, NSNumber_ptr);
  *(v20 + 32) = NSNumber.init(floatLiteral:)(0.16825);
  *(v20 + 40) = NSNumber.init(floatLiteral:)(0.31596);
  *(v20 + 48) = NSNumber.init(floatLiteral:)(0.67362);
  *(v20 + 56) = NSNumber.init(floatLiteral:)(0.8865);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations:isa];

  v22 = [objc_opt_self() whiteColor];
  v23 = [v22 CGColor];

  type metadata accessor for CGColor(0);
  v37[2] = v24;
  v36 = v23;
  v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v25 + 16) = 4;
  sub_10003CE5C(&v36, v25 + 32);
  sub_10003CE5C(&v36, v25 + 64);
  sub_10003CE5C(&v36, v25 + 96);
  sub_10004D3D8(&v36, (v25 + 128));
  v26 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors:v26];

  v27 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureGradient);
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureGradient) = v2;
  v28 = v2;

  memcpy(v35, v3, sizeof(v35));
  v29 = v35[0];
  memcpy(v34, (v3 + 8), sizeof(v34));
  memcpy(v37, (v3 + 8), sizeof(v37));
  v36 = v35[0];
  if (sub_1000627F8(&v36) == 1)
  {
    sub_10000E88C(v35, __src, &qword_10011E760, &qword_1000D8598);

    __src[0] = v29;
    memcpy(&__src[1], v34, 0x128uLL);
    sub_10000E950(__src, &qword_10011E760, &qword_1000D8598);
  }

  else
  {
    __src[0] = v29;
    memcpy(&__src[1], v34, 0x128uLL);
    sub_10000E88C(v35, v32, &qword_10011E760, &qword_1000D8598);
    v30 = v29;
    sub_10000E950(__src, &qword_10011E760, &qword_1000D8598);
    v31 = [v30 layer];

    [v31 setMask:v28];
  }
}

void sub_1000554C8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneAssets.Feature(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v79 - v9;
  v11 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel);
  if (!v11)
  {
    return;
  }

  v12 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody);
  if (!v12)
  {
    return;
  }

  v85 = v3;
  v13 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(v1 + v13, v10, &qword_10011F2E0, &unk_1000D8580);
  v14 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v14 - 8) + 48))(v10, 1, v14))
  {
    sub_10000E950(v10, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  v84 = a1;
  v15 = &v10[*(v14 + 56)];
  v16 = *(v15 + 13);
  v104 = *(v15 + 12);
  v105 = v16;
  v106 = *(v15 + 14);
  v17 = *(v15 + 9);
  v100 = *(v15 + 8);
  v101 = v17;
  v18 = *(v15 + 11);
  v102 = *(v15 + 10);
  v103 = v18;
  v19 = *(v15 + 5);
  v96 = *(v15 + 4);
  v97 = v19;
  v20 = *(v15 + 7);
  v98 = *(v15 + 6);
  v99 = v20;
  v21 = *(v15 + 1);
  v92 = *v15;
  v93 = v21;
  v22 = *(v15 + 3);
  v94 = *(v15 + 2);
  v95 = v22;
  v23 = v12;
  v24 = v11;
  sub_10000E88C(&v92, &v89, &unk_10011FF80, &qword_1000D8590);
  sub_10000E950(v10, &qword_10011F2E0, &unk_1000D8580);
  v112 = v104;
  v113 = v105;
  v114 = v106;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v111 = v103;
  v107[4] = v96;
  v107[5] = v97;
  v107[6] = v98;
  v107[7] = v99;
  v107[0] = v92;
  v107[1] = v93;
  v107[2] = v94;
  v107[3] = v95;
  if (sub_100026134(v107) == 1)
  {

    return;
  }

  v82 = v23;
  v83 = v24;
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState) = 1;
  sub_10000E950(&v92, &unk_10011FF80, &qword_1000D8590);
  v86 = v1;
  if (v108 == 1)
  {
    sub_100055024();
  }

  v80 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v81 = type metadata accessor for HeadphoneAssets.Feature;
  sub_100062810(v84, &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadphoneAssets.Feature);
  v25 = *(v4 + 80);
  v26 = (v25 + 24) & ~v25;
  v27 = v5 + 7;
  v28 = (v27 + v26) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v80;
  v80 = type metadata accessor for HeadphoneAssets.Feature;
  sub_100064E50(v6, v30 + v26, type metadata accessor for HeadphoneAssets.Feature);
  *(v30 + v28) = v83;
  v31 = v82;
  *(v30 + v29) = v82;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100062810(v84, v6, v81);
  v33 = (v25 + 16) & ~v25;
  v34 = swift_allocObject();
  sub_100064E50(v6, v34 + v33, v80);
  ObjectType = v34;
  *(v34 + ((v27 + v33) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v82 = v31;
  v83 = v83;
  v36 = sub_100054344();
  v37 = *v35;
  v79 = v30;
  if (v37)
  {
    v38 = v35;
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = sub_10006244C;
    v40[4] = v30;
    v41 = *v38;
    v42 = v38[1];
    swift_getObjectType();
    v88 = v41;

    v43 = v41;
    dispatch thunk of VideoPlaybackControllable.startedHandler.setter();
    v44 = *v38;
    *v38 = v88;
    v38[1] = v42;
  }

  (v36)(&v89, 0);
  v46 = sub_100054344();
  if (*v45)
  {
    v47 = v45;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = *v47;
    v49 = v47[1];
    swift_getObjectType();
    v88 = v48;

    v50 = v48;
    dispatch thunk of VideoPlaybackControllable.completedHandler.setter();
    v51 = *v47;
    *v47 = v88;
    v47[1] = v49;
  }

  (v46)(&v89, 0);
  v52 = *(v84 + *(v85 + 20));
  if (v52 >> 62)
  {
    if (v52 < 0)
    {
      v63 = *(v84 + *(v85 + 20));
    }

    v53 = _CocoaArrayWrapper.endIndex.getter();
    if (v53)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
LABEL_15:
      if (v53 < 1)
      {
        __break(1u);
        return;
      }

      v54 = 0;
      v55 = _swiftEmptyArrayStorage;
      do
      {
        if ((v52 & 0xC000000000000001) != 0)
        {
          v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v56 = *(v52 + 8 * v54 + 32);
        }

        v57 = v56;
        [v56 CMTimeRangeValue];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_1000CCB2C(0, *(v55 + 2) + 1, 1, v55);
        }

        v59 = *(v55 + 2);
        v58 = *(v55 + 3);
        if (v59 >= v58 >> 1)
        {
          v55 = sub_1000CCB2C((v58 > 1), v59 + 1, 1, v55);
        }

        ++v54;

        *(v55 + 2) = v59 + 1;
        v60 = &v55[48 * v59];
        v61 = v89;
        v62 = v91;
        *(v60 + 3) = v90;
        *(v60 + 4) = v62;
        *(v60 + 2) = v61;
      }

      while (v53 != v54);
    }
  }

  v64 = v86 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
  swift_beginAccess();
  v65 = *v64;
  if (*v64)
  {
    v66 = *(v64 + 8);
    v67 = *v64;
    swift_getObjectType();
    *&v89 = v65;
    v68 = swift_allocObject();
    v69 = ObjectType;
    *(v68 + 16) = sub_1000625FC;
    *(v68 + 24) = v69;
    v70 = v65;

    dispatch thunk of VideoPlaybackControllable.setPlaybackNotificationTimeRanges(_:handler:)();
  }

  else
  {
  }

  v71 = v82;
  v72 = v83;
  v73 = *v64;
  if (*v64)
  {
    v74 = *(v64 + 8);
    v75 = *v64;
    swift_getObjectType();
    *&v89 = v73;
    dispatch thunk of VideoPlaybackControllable.transitionToFeatures()();
  }

  v76 = objc_opt_self();
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v91 = sub_10006276C;
  *(&v91 + 1) = v77;
  *&v89 = _NSConcreteStackBlock;
  *(&v89 + 1) = 1107296256;
  *&v90 = sub_100019340;
  *(&v90 + 1) = &unk_100105C38;
  v78 = _Block_copy(&v89);

  [v76 animateWithDuration:0 delay:v78 options:0 animations:0.5 completion:0.0];

  _Block_release(v78);
}

void sub_100055DDC(char a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureGradient);
  if (v3)
  {
    v6 = v3;
    v7 = String._bridgeToObjectiveC()();
    [v6 removeAnimationForKey:v7];

    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() animationWithKeyPath:v8];

    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
    v11 = [v10 CGColor];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v12 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v13 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.949];
    v14 = [v13 CGColor];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v15 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v16 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.3188];
    v17 = [v16 CGColor];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v18 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v19 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
    v20 = [v19 CGColor];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v21 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v22 = [objc_opt_self() whiteColor];
    v23 = [v22 CGColor];

    type metadata accessor for CGColor(0);
    v24 = (static Array._allocateBufferUninitialized(minimumCapacity:)() & 0xFFFFFFFFFFFFFF8);
    v24[2] = 4;
    v24[4] = v23;
    v24[5] = v23;
    v24[6] = v23;
    v24[7] = v23;
    v25 = v23;
    if (a1)
    {
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 setFromValue:isa];

      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v28 = Array._bridgeToObjectiveC()().super.isa;

      [v9 setFromValue:v28];

      v27.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [v9 setToValue:v27.super.isa];

    v29 = v9;
    [v29 setDuration:a2];
    v30 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    [v29 setTimingFunction:v30];

    [v29 setRemovedOnCompletion:0];
    [v29 setFillMode:kCAFillModeForwards];

    v31 = String._bridgeToObjectiveC()();
    [v6 addAnimation:v29 forKey:v31];
  }
}

uint64_t sub_1000562E0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011E560);
  v1 = sub_10000A570(v0, qword_10011E560);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000563A8()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_1001230A0);
  sub_10000A570(v0, qword_1001230A0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100056428()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[9];

  v4 = v0[11];
  sub_1000622D4(v0[10]);
  v5 = v0[13];
  sub_1000622D4(v0[12]);

  return swift_deallocClassInstance();
}

void sub_100056480(void **a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v12 - v4);
  v6 = *a1;
  v7 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(v6 + v7, v5, &qword_10011F2E0, &unk_1000D8580);
  v8 = type metadata accessor for HeadphoneViewModel(0);
  if (!(*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    v10 = *v5;
    v9 = v5[1];
  }

  sub_10000E950(v5, &qword_10011F2E0, &unk_1000D8580);
  v11 = String._bridgeToObjectiveC()();

  [v6 setTitle:v11];
}

void sub_1000565E0(void **a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - v4;
  v6 = *a1;
  v7 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(v6 + v7, v5, &qword_10011F2E0, &unk_1000D8580);
  v8 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    sub_10000E950(v5, &qword_10011F2E0, &unk_1000D8580);
  }

  else
  {
    v10 = *(v5 + 10);
    v9 = *(v5 + 11);

    sub_10000E950(v5, &qword_10011F2E0, &unk_1000D8580);
    if (v9)
    {
      goto LABEL_5;
    }
  }

LABEL_5:
  v11 = String._bridgeToObjectiveC()();

  [v6 setBottomTrayTitle:v11];
}

void sub_100056764(id *a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = *a1;
  v7 = [*a1 actions];
  sub_1000084D4(0, &qword_10011E780, PRXAction_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock[0] = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v37 = v5;
    v38 = v6;
    v6 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v8 + 8 * v6 + 32);
      }

      v12 = v11;
      v5 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v13 = [v11 title];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v14 == sub_100033A5C(43) && v16 == v17)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v10 = *(aBlock[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_6:
      v6 = v6 + 1;
      if (v5 == i)
      {
        v6 = v38;
        v20 = aBlock[0];
        v5 = v37;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *(v20 + 16);
  }

  if (v21 <= 0)
  {
    v22 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
    swift_beginAccess();
    sub_10000E88C(v6 + v22, v5, &qword_10011F2E0, &unk_1000D8580);
    v23 = type metadata accessor for HeadphoneViewModel(0);
    if ((*(*(v23 - 8) + 48))(v5, 1, v23))
    {
      sub_10000E950(v5, &qword_10011F2E0, &unk_1000D8580);
    }

    else
    {
      v24 = v5[*(v23 + 96)];
      sub_10000E950(v5, &qword_10011F2E0, &unk_1000D8580);
      if (v24)
      {
        sub_100033A5C(43);
        v25 = swift_allocObject();
        *(v25 + 16) = v6;
        v26 = v6;
        v27 = String._bridgeToObjectiveC()();

        aBlock[4] = sub_100064EB8;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10000C034;
        aBlock[3] = &unk_1001062F0;
        v28 = _Block_copy(aBlock);
        v29 = [objc_opt_self() actionWithTitle:v27 style:1 handler:v28];

        _Block_release(v28);

        v30 = String._bridgeToObjectiveC()();
        swift_beginAccess();
        objc_setAssociatedObject(v29, &unk_1001230B8, v30, 1);
        swift_endAccess();

        if (qword_10011C720 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_10000A570(v31, qword_1001231C0);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Device Disambiguation: Add launchBTSettingsAction", v34, 2u);
        }

        v35 = [v26 addAction:v29];
      }
    }
  }
}

uint64_t sub_100056CC0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000C0B58();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100056D2C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 actions];
  sub_1000084D4(0, &qword_10011E780, PRXAction_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v3;
  if (v3 >> 62)
  {
    goto LABEL_56;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_3:
    v5 = 0;
    v36 = v1;
    v6 = &unk_100116000;
    v7 = &unk_1001230B8;
    v35 = v4;
    while (1)
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = __OFADD__(v5, 1);
        v10 = v5 + 1;
        if (v9)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v5 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v8 = *(v34 + 32 + 8 * v5);
        v9 = __OFADD__(v5, 1);
        v10 = v5 + 1;
        if (v9)
        {
          goto LABEL_54;
        }
      }

      v37 = v8;
      v38 = v10;
      v11 = [v1 actions];
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = _swiftEmptyArrayStorage;
      if (v12 >> 62)
      {
        break;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_10;
      }

LABEL_36:
      v27 = _swiftEmptyArrayStorage;
LABEL_37:

      if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
      {
        v28 = _CocoaArrayWrapper.endIndex.getter();
        if (v28)
        {
LABEL_40:
          v29 = 0;
          do
          {
            if ((v27 & 0xC000000000000001) != 0)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v29 >= *(v27 + 16))
              {
                goto LABEL_53;
              }

              v30 = *(v27 + 8 * v29 + 32);
            }

            v31 = v30;
            v32 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_52;
            }

            [v1 v6[294]];

            ++v29;
          }

          while (v32 != v28);
        }
      }

      else
      {
        v28 = *(v27 + 16);
        if (v28)
        {
          goto LABEL_40;
        }
      }

      v5 = v38;
      if (v38 == v4)
      {
      }
    }

    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_36;
    }

LABEL_10:
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    v1 = (v12 & 0xFFFFFFFFFFFFFF8);
    v39 = v12;
    while (1)
    {
      if (v15)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= v1[2])
        {
          goto LABEL_51;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
        }

        goto LABEL_3;
      }

      swift_beginAccess();
      v19 = objc_getAssociatedObject(v17, v7);
      swift_endAccess();
      if (v19)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }

      v44[0] = v42;
      v44[1] = v43;
      if (*(&v43 + 1))
      {
        if (swift_dynamicCast())
        {
          v20 = v13;
          v21 = v1;
          v22 = v15;
          v23 = v7;
          v24 = v6;
          if (v40 == 0xD000000000000016 && 0x80000001000E06A0 == v41)
          {

            goto LABEL_27;
          }

          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v25)
          {
LABEL_27:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v45[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v6 = v24;
          v7 = v23;
          v15 = v22;
          v1 = v21;
          v13 = v20;
          v12 = v39;
          goto LABEL_13;
        }
      }

      else
      {
        sub_10000E950(v44, &qword_10011DC40, &qword_1000D7C40);
      }

LABEL_13:
      ++v14;
      if (v18 == v13)
      {
        v27 = v45;
        v4 = v35;
        v1 = v36;
        goto LABEL_37;
      }
    }
  }
}

uint64_t sub_10005719C(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = off_10011E580;
    v4 = off_10011E580[2];

    if (v4)
    {
      v6 = 0;
      v7 = (v3 + 5);
      while (v6 < v3[2])
      {
        ++v6;
        v9 = *(v7 - 1);
        v8 = *v7;
        v17 = a1;
        v16 = 1;

        v9(&v17, &v16);

        v7 += 2;
        if (v4 == v6)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = off_10011E578;
    v11 = off_10011E578[2];

    if (v11)
    {
      v12 = 0;
      v13 = (v10 + 5);
      while (v12 < v10[2])
      {
        ++v12;
        v15 = *(v13 - 1);
        v14 = *v13;
        v17 = a1;
        v16 = 0;

        v15(&v17, &v16);

        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_15;
    }
  }

LABEL_11:
}

void sub_10005733C(char a1)
{
  v2 = v1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for HeadphoneConnectViewController();
  objc_msgSendSuper2(&v25, "viewWillAppear:", a1 & 1);
  if (v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_shouldFadeInElements] == 1)
  {
    v4 = [v2 contentView];
    v5 = [v4 titleView];

    if (v5)
    {
      [v5 setAlpha:0.0];
    }

    v6 = [v2 contentView];
    v7 = [v6 auxiliaryViews];

    if (!v7)
    {
      __break(1u);
      return;
    }

    sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [v11 setAlpha:0.0];

        ++v10;
        if (v13 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v14 = objc_opt_self();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000622B4;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100105B48;
    v16 = _Block_copy(aBlock);

    [v14 animateWithDuration:65538 delay:v16 options:0 animations:1.5 completion:0.8];
    _Block_release(v16);
  }

  if (qword_10011C6B0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A570(v17, qword_10011E560);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Playing movie", v20, 2u);
  }

  v21 = &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  swift_beginAccess();
  v22 = *v21;
  if (*v21)
  {
    v23 = *(v21 + 1);
    swift_getObjectType();
    aBlock[6] = v22;
    dispatch thunk of VideoPlaybackControllable.play()();
  }
}

uint64_t sub_10005773C(char a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for HeadphoneConnectViewController();
  v24.receiver = v2;
  v24.super_class = v8;
  objc_msgSendSuper2(&v24, "viewDidDisappear:", a1 & 1);
  if (qword_10011C6B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A570(v9, qword_10011E560);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Stopping movie", v12, 2u);
  }

  v13 = &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  swift_beginAccess();
  v14 = *v13;
  if (*v13 && (v15 = *(v13 + 1), v16 = *v13, swift_getObjectType(), v23[0] = v14, dispatch thunk of VideoPlaybackControllable.stop()(), *v13))
  {
    [*v13 removeFromSuperview];
    v17 = *v13;
  }

  else
  {
    v17 = 0;
  }

  *v13 = 0;
  *(v13 + 1) = 0;

  v18 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v7, &v2[v19]);
  swift_endAccess();
  sub_100062284(v22);
  memcpy(v23, &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], sizeof(v23));
  memcpy(&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], v22, 0x130uLL);
  return sub_10000E950(v23, &qword_10011E760, &qword_1000D8598);
}

void sub_100057A24(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v53 - v5;
  v7 = type metadata accessor for HeadphoneModel(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    sub_10000E88C(v15 + 16, v62, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v16 = v63;
    if (v63)
    {
      v54 = v6;
      v55 = a1;
      v17 = sub_10000E7E4(v62, v63);
      v18 = *(v16 - 8);
      v19 = *(v18 + 64);
      __chkstk_darwin(v17);
      v21 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v21);
      sub_10000E950(v62, &qword_10011FBC0, &unk_1000D5EF0);
      v22 = *v21;
      v23 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_100062810(v22 + v23, v11, type metadata accessor for HeadphoneModel);
      (*(v18 + 8))(v21, v16);
      sub_100064E50(v11, v13, type metadata accessor for HeadphoneModel);
      v24 = *&v13[*(v7 + 136)];
      sub_10009BBB4(v58);
      if (v58[3])
      {
        sub_100008438(&qword_10011CB58, &qword_1000D85C0);
        sub_100008438(&qword_10011E770, &qword_1000D85C8);
        v25 = swift_dynamicCast();
        v26 = v55;
        if (v25)
        {
          if (*(&v60 + 1))
          {
            sub_10000E9B0(&v59, v62);
            v27 = [v1 contentView];
            v28 = [v27 dismissButton];

            if (v28)
            {
              [v28 setAlpha:0.0];
            }

            v29 = v1;
            v30 = &v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
            v31 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 16];
            v32 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 24];
            *v30 = 0;
            v30[8] = 0;
            v30[32] = 0;
            *(v30 + 2) = 0;
            *(v30 + 3) = 0;
            sub_1000622D4(v31);
            v33 = *(v13 + 19);
            if (v33)
            {
              *&v59 = *(v13 + 18);
              *(&v59 + 1) = v33;
              v58[0] = 45;
              v58[1] = 0xE100000000000000;
              v56 = 58;
              v57 = 0xE100000000000000;
              sub_100008480();
              v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v36 = v35;
            }

            else
            {
              v34 = 0;
              v36 = 0xE000000000000000;
            }

            type metadata accessor for HeadphoneProxFeatureManager();
            static HeadphoneProxFeatureManager.shared.getter();
            v43 = type metadata accessor for HeadphoneIEDObserver();
            v44 = *(v43 + 48);
            v45 = *(v43 + 52);
            swift_allocObject();

            HeadphoneIEDObserver.init(bluetoothAddress:)();
            dispatch thunk of HeadphoneProxFeatureManager.headphoneIEDObserver.setter();

            static HeadphoneProxFeatureManager.shared.getter();
            v46 = dispatch thunk of HeadphoneProxFeatureManager.headphoneIEDObserver.getter();

            if (v46)
            {
              __chkstk_darwin(v47);
              withObservationTracking<A>(_:onChange:)();
              v48 = type metadata accessor for TaskPriority();
              v49 = v54;
              (*(*(v48 - 8) + 56))(v54, 1, 1, v48);
              v50 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v51 = swift_allocObject();
              v51[2] = 0;
              v51[3] = 0;
              v51[4] = v50;
              v51[5] = v34;
              v51[6] = v36;
              sub_100065B00(0, 0, v49, &unk_1000D85D8, v51);

              sub_10000E950(v49, &qword_10011CAA8, &unk_1000D85A0);
              v52 = sub_10000E7E4(v62, v63);
              sub_100061124(v26, *v52, v29);

              sub_10000EA94(v62);
              goto LABEL_20;
            }

            goto LABEL_25;
          }
        }

        else
        {
          v61 = 0;
          v59 = 0u;
          v60 = 0u;
        }
      }

      else
      {
        sub_10000E950(v58, &qword_10011CB48, &qword_1000D85B0);
        v59 = 0u;
        v60 = 0u;
        v61 = 0;
        v26 = v55;
      }

      sub_10000E950(&v59, &qword_10011E768, &qword_1000D85B8);
      sub_1000554C8(v26);
LABEL_20:
      sub_100062878(v13, type metadata accessor for HeadphoneModel);
      return;
    }

    sub_10000E950(v62, &qword_10011FBC0, &unk_1000D5EF0);
  }

  v37 = MobileGestalt_get_current_device();
  if (!v37)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v38 = v37;
  MobileGestalt_get_appleInternalInstallCapability();

  if (qword_10011C6B0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000A570(v39, qword_10011E560);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "_transitionToFeatures no model!", v42, 2u);
  }
}

void sub_100058190(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100058214(void *a1, uint64_t a2, const char *a3, const char *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
    swift_beginAccess();
    if (!*v9)
    {
LABEL_16:

      return;
    }

    v10 = *(v9 + 8);
    v11 = *v9;
    [a1 setEnabled:0];
    swift_getObjectType();
    if (dispatch thunk of VideoPlaybackControllable.isPaused.getter())
    {
      if (qword_10011C6B8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_10000A570(v12, qword_1001230A0);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_13;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = v14;
      v17 = v13;
      v18 = a3;
    }

    else
    {
      if (qword_10011C6B8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000A570(v19, qword_1001230A0);
      v13 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v13, v20))
      {
        goto LABEL_13;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = v20;
      v17 = v13;
      v18 = a4;
    }

    _os_log_impl(&_mh_execute_header, v17, v16, v18, v15, 2u);

LABEL_13:

    v21 = *&v8[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 16];
    if (v21)
    {
      v22 = *&v8[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 24];

      v21(0);
      sub_1000622D4(v21);
    }

    v8 = v11;
    goto LABEL_16;
  }
}

void sub_10005845C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [a1 setEnabled:0];
    if (qword_10011C6B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_1001230A0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Video Continue: skipping forward, marking current video skipped", v7, 2u);
    }

    v8 = &v3[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
    v8[8] = 1;
    v9 = *(v8 + 2);
    if (v9)
    {
      v10 = *(v8 + 3);

      v9(1);
      sub_1000622D4(v9);
    }
  }
}

void sub_1000585C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  memcpy(__dst, &Strong[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], sizeof(__dst));
  sub_10000E88C(__dst, v78, &qword_10011E760, &qword_1000D8598);

  memcpy(v78, __dst, 0x130uLL);
  if (sub_1000627F8(v78) == 1)
  {
    return;
  }

  v8 = swift_unknownObjectUnownedLoadStrong();
  [v8 setTitle:0];

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = *&v9[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction];
  v11 = v10;

  if (v10)
  {
    v12 = swift_unknownObjectUnownedLoadStrong();
    v13 = [v12 addAction:v11];
  }

  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = *&v14[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction];
  v16 = v15;

  if (v15)
  {
    v17 = swift_unknownObjectUnownedLoadStrong();
    [v17 removeAction:v16];
  }

  v18 = swift_unknownObjectUnownedLoadStrong();
  [v18 hideActivityIndicator];

  v19 = swift_unknownObjectUnownedLoadStrong();
  LOBYTE(v18) = v19[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState];

  v20 = swift_unknownObjectUnownedLoadStrong();
  sub_10005719C(v20, v18);

  v21 = *(a2 + *(type metadata accessor for HeadphoneAssets.Feature(0) + 24));
  if (!v21[2])
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v21[4];
  v23 = v21[5];
  v24 = v21[6];
  v25 = v21[7];

  v26 = String._bridgeToObjectiveC()();
  [a3 setText:v26];

  v27 = String._bridgeToObjectiveC()();

  [a4 setText:v27];

  v28 = swift_unknownObjectUnownedLoadStrong();
  v29 = [v28 view];

  if (!v29)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v30 = objc_opt_self();
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v30 deactivateConstraints:isa];

  v32 = Array._bridgeToObjectiveC()().super.isa;
  v76 = v30;
  [v30 activateConstraints:v32];

  v33 = sub_10002B2D0(3u);
  if ((v78[18] & 1) == 0)
  {
    [v78[33] setConstant:v33];
  }

  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1000D5D20;
  v35 = [a3 topAnchor];
  v36 = [v78[1] bottomAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:10.0];

  *(v34 + 32) = v37;
  v38 = [a3 leadingAnchor];
  v39 = swift_unknownObjectUnownedLoadStrong();
  v40 = [v39 contentView];

  v41 = [v40 mainContentGuide];
  v42 = [v41 leadingAnchor];

  v43 = [v38 constraintEqualToAnchor:v42];
  *(v34 + 40) = v43;
  v44 = [a3 trailingAnchor];
  v45 = swift_unknownObjectUnownedLoadStrong();
  v46 = [v45 contentView];

  v47 = [v46 mainContentGuide];
  v48 = [v47 trailingAnchor];

  v49 = [v44 constraintEqualToAnchor:v48];
  *(v34 + 48) = v49;
  v50 = [a4 topAnchor];
  v51 = [a3 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51 constant:PRXMinimumInterItemMargin];

  *(v34 + 56) = v52;
  v53 = [a4 leadingAnchor];
  v54 = swift_unknownObjectUnownedLoadStrong();
  v55 = [v54 contentView];

  v56 = [v55 mainContentGuide];
  v57 = [v56 leadingAnchor];

  v58 = [v53 constraintEqualToAnchor:v57];
  *(v34 + 64) = v58;
  v59 = [a4 trailingAnchor];
  v60 = swift_unknownObjectUnownedLoadStrong();
  v61 = [v60 contentView];

  v62 = [v61 mainContentGuide];
  v63 = [v62 trailingAnchor];

  v64 = [v59 constraintEqualToAnchor:v63];
  *(v34 + 72) = v64;
  v65 = [a4 bottomAnchor];
  v66 = swift_unknownObjectUnownedLoadStrong();
  v67 = [v66 contentView];

  v68 = [v67 mainContentGuide];
  v69 = [v68 bottomAnchor];

  v70 = [v65 constraintEqualToAnchor:v69];
  *(v34 + 80) = v70;
  v71 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v71];

  v72 = swift_unknownObjectUnownedLoadStrong();
  v73 = [v72 navigationController];

  if (v73)
  {
    v74 = [v73 parentViewController];

    if (v74)
    {
      v75 = [v74 view];

      if (v75)
      {

        [v75 layoutIfNeeded];
        sub_10000E950(__dst, &qword_10011E760, &qword_1000D8598);

        return;
      }

      goto LABEL_18;
    }
  }

  sub_10000E950(__dst, &qword_10011E760, &qword_1000D8598);
}

void sub_100058F10(unint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v6) = a2;
  v8 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v76 - v10;
  v12 = type metadata accessor for HeadphoneViewModel(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v17 = 0.5;
  }

  else
  {
    v17 = 0.1667;
  }

  v18 = type metadata accessor for HeadphoneAssets.Feature(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v19 = *(a3 + *(v18 + 24));
  if (*(v19 + 16) <= a1)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    v75 = _CocoaArrayWrapper.endIndex.getter();
    v54 = v75 - 1;
    if (!__OFSUB__(v75, 1))
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

  v83 = v18;
  v20 = 0.0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_27;
  }

  v78 = v16;
  v81 = a3;
  v80 = v6;
  v79 = a1;
  v21 = (v19 + 32 * a1);
  v23 = v21[4];
  v22 = v21[5];
  v24 = v21[6];
  v25 = v21[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v82 = v22;
  if (Strong)
  {
    v27 = Strong;
    v77 = v23;
    v28 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel);
    v29 = v28;

    if (v28)
    {

      v30 = String._bridgeToObjectiveC()();

      [v29 setText:v30];
    }
  }

  else
  {
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = *(v31 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody);
    v33 = v31;
    v34 = v32;

    if (v32)
    {

      v35 = String._bridgeToObjectiveC()();

      [v34 setText:v35];
    }
  }

  swift_beginAccess();
  v36 = swift_unknownObjectWeakLoadStrong();
  a3 = v81;
  a1 = v79;
  if (v36)
  {
    v6 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
    v37 = v36;
    swift_beginAccess();
    sub_10000E88C(v37 + v6, v11, &qword_10011F2E0, &unk_1000D8580);

    v38 = (*(v13 + 48))(v11, 1, v12);
    LOBYTE(v6) = v80;
    if (v38 != 1)
    {
      v77 = v25;
      v39 = v78;
      sub_100064E50(v11, v78, type metadata accessor for HeadphoneViewModel);
      v40 = *(v39 + *(v12 + 84));
      v41 = objc_opt_self();
      v42 = [v41 b768e];
      v43 = [v42 productID];

      if ((v40 == v43 || (v44 = [v41 b768e], v45 = objc_msgSend(v44, "altProductID"), v44, v40 == v45)) && !a1)
      {
        swift_beginAccess();
        v57 = swift_unknownObjectWeakLoadStrong();
        a3 = v81;
        if (v57)
        {
          v58 = *(v57 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel);
          v59 = v57;
          v60 = v58;

          if (v58)
          {
            v61 = [objc_opt_self() mainBundle];
            v85._object = 0xE000000000000000;
            v62._countAndFlagsBits = 0xD000000000000018;
            v62._object = 0x80000001000E05C0;
            v63.value._object = 0x80000001000E05E0;
            v63.value._countAndFlagsBits = 0xD000000000000011;
            v64._countAndFlagsBits = 0;
            v64._object = 0xE000000000000000;
            v85._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v62, v63, v61, v64, v85);

            v65 = String._bridgeToObjectiveC()();
            a3 = v81;

            [v60 setText:v65];
          }
        }

        swift_beginAccess();
        v66 = swift_unknownObjectWeakLoadStrong();
        if (v66)
        {
          v67 = *(v66 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody);
          v68 = v66;
          v69 = v67;

          if (v67)
          {
            v70 = [objc_opt_self() mainBundle];
            v86._object = 0xE000000000000000;
            v71._countAndFlagsBits = 0xD00000000000001ELL;
            v71._object = 0x80000001000E0600;
            v72.value._object = 0x80000001000E05E0;
            v72.value._countAndFlagsBits = 0xD000000000000011;
            v73._countAndFlagsBits = 0;
            v73._object = 0xE000000000000000;
            v86._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v71, v72, v70, v73, v86);

            v74 = String._bridgeToObjectiveC()();
            a3 = v81;

            [v69 setText:v74];
          }
        }

        sub_100062878(v78, type metadata accessor for HeadphoneViewModel);
        LOBYTE(v6) = v80;
      }

      else
      {
        sub_100062878(v78, type metadata accessor for HeadphoneViewModel);
        a3 = v81;
      }

      goto LABEL_22;
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    LOBYTE(v6) = v80;
  }

  sub_10000E950(v11, &qword_10011F2E0, &unk_1000D8580);
LABEL_22:
  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46)
  {
    v47 = v46;
    v48 = [v46 view];

    if (!v48)
    {
LABEL_47:
      __break(1u);
      return;
    }

    [v48 setNeedsLayout];
  }

  else
  {
  }

  v20 = 1.0;
LABEL_27:
  v49 = objc_opt_self();
  v50 = swift_allocObject();
  *(v50 + 16) = a4;
  *(v50 + 24) = v20;
  aBlock[4] = sub_1000627EC;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100105CD8;
  v51 = _Block_copy(aBlock);

  [v49 animateWithDuration:0 delay:v51 options:0 animations:v17 completion:0.0];
  _Block_release(v51);
  v52 = *(a3 + *(v83 + 20));
  if (v52 >> 62)
  {
    goto LABEL_44;
  }

  v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = v53 - 1;
  if (__OFSUB__(v53, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_29:
  if (v54 == a1 && (v6 & 1) == 0)
  {
    swift_beginAccess();
    v55 = swift_unknownObjectWeakLoadStrong();
    if (v55)
    {
      v56 = v55;
      sub_100055DDC(0, 2.0);
    }
  }
}

void sub_100059810(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1000543A8();

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 setAlpha:a1];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 contentView];

    v13 = [v12 auxiliaryViews];
    if (v13)
    {
      sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v14 >> 62)
      {
        goto LABEL_30;
      }

      for (j = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
      {
        v16 = 0;
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          [v17 setAlpha:1.0];

          ++v16;
          if (v19 == j)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_31:
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100059A7C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong contentView];

    v5 = [v4 titleView];
    if (v5)
    {
      [v5 setAlpha:a1];
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 contentView];

    v9 = [v8 auxiliaryViews];
    if (v9)
    {
      sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v12 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          [v13 setAlpha:a1];

          ++v12;
          if (v15 == i)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100059CC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneConnectViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeadphoneConnectViewController()
{
  result = qword_10011E738;
  if (!qword_10011E738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100059E9C()
{
  sub_100025E40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for HeadphoneDigitalEngravingManager.Record.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphoneDigitalEngravingManager.Record.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005A108()
{
  result = qword_10011E748;
  if (!qword_10011E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E748);
  }

  return result;
}

unint64_t sub_10005A160()
{
  result = qword_10011E750;
  if (!qword_10011E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E750);
  }

  return result;
}

unint64_t sub_10005A1B8()
{
  result = qword_10011E758;
  if (!qword_10011E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E758);
  }

  return result;
}

uint64_t sub_10005A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(sub_100008438(&qword_10011CAA8, &unk_1000D85A0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10005A2C4, 0, 0);
}

uint64_t sub_10005A2C4()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_10005A3CC;
    v5 = v0[6];
    v4 = v0[7];

    return sub_100063094(v5, v4);
  }

  else
  {
    v7 = v0[8];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10005A3CC(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_10005A4CC, 0, 0);
}

uint64_t sub_10005A4CC()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    if (qword_10011C6B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E560);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "video: Device received!", v5, 2u);
    }

    v6 = *(v0 + 64);
    v7 = *(v0 + 72);

    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v7;
    v10 = v1;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v9;
    v12[5] = v10;
    sub_100064FAC(0, 0, v6, &unk_1000D8648, v12);
  }

  v13 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10005A6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005A754, v7, v6);
}

uint64_t sub_10005A754()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = [v2 primaryPlacement] == 1 && objc_msgSend(*(v0 + 24), "secondaryPlacement") == 1;
  *(*(v0 + 16) + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar) = v3;
  v4 = *(v0 + 8);

  return v4();
}

void (*sub_10005A7FC(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;

  return sub_100064D54;
}

void sub_10005A88C(uint64_t a1, char *a2)
{
  v3 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (qword_10011C6B0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A570(v9, qword_10011E560);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v33 = v6;
    v13 = v12;
    v35[0] = swift_slowAlloc();
    *v13 = 136315394;
    LODWORD(v34) = dispatch thunk of HeadphoneIEDObserver.primaryInEarStatus.getter();
    type metadata accessor for AAPlacement(0);
    v14 = String.init<A>(describing:)();
    v16 = sub_100078978(v14, v15, v35);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    LODWORD(v34) = dispatch thunk of HeadphoneIEDObserver.secondaryInEarStatus.getter();
    v17 = String.init<A>(describing:)();
    v19 = sub_100078978(v17, v18, v35);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "video: IED  Primary: %s Secondary: %s", v13, 0x16u);
    swift_arrayDestroy();

    v6 = v33;
  }

  __chkstk_darwin(v20);
  *(&v33 - 2) = v8;
  *(&v33 - 1) = a2;
  withObservationTracking<A>(_:onChange:)();
  if (*&v8[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex])
  {
LABEL_15:

    return;
  }

  if (dispatch thunk of HeadphoneIEDObserver.primaryInEarStatus.getter() != 1)
  {
    v8[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar] = 0;
    goto LABEL_15;
  }

  v21 = dispatch thunk of HeadphoneIEDObserver.secondaryInEarStatus.getter();
  v8[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar] = v21 == 1;
  if (v21 != 1)
  {
    goto LABEL_15;
  }

  v22 = &v8[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  swift_beginAccess();
  v23 = *v22;
  if (!*v22)
  {
    goto LABEL_15;
  }

  v24 = *(v22 + 1);
  v25 = *v22;
  swift_getObjectType();
  v34 = v23;
  if ((dispatch thunk of VideoPlaybackControllable.isPaused.getter() & 1) == 0)
  {
    goto LABEL_15;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "video: IED Setting continueAction enabled from observer", v28, 2u);
  }

  v29 = type metadata accessor for TaskPriority();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  type metadata accessor for MainActor();
  v30 = v8;
  v31 = static MainActor.shared.getter();
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v30;
  sub_1000652AC(0, 0, v6, &unk_1000D8668, v32);
}

uint64_t sub_10005AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005ADA4, v6, v5);
}

uint64_t sub_10005ADA4()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction);
  if (v3)
  {
    [v3 setEnabled:1];
  }

  **(v0 + 16) = v3 == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_10005AE38(uint64_t a1, uint64_t a2, SEL *a3, void *a4, void *a5)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  memcpy(__dst, &Strong[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], sizeof(__dst));
  sub_10000E88C(__dst, v154, &qword_10011E760, &qword_1000D8598);

  memcpy(v154, __dst, 0x130uLL);
  if (sub_1000627F8(v154) != 1)
  {
    v132 = a4;
    v133 = a3;
    v10 = swift_unknownObjectUnownedLoadStrong();
    v11 = String._bridgeToObjectiveC()();
    [v10 setTitle:v11];

    v12 = swift_unknownObjectUnownedLoadStrong();
    v135 = *&v12[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction];
    v136 = *&v12[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction];
    v137 = *&v12[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction];
    v13 = v137;
    v14 = v135;
    v15 = v136;

    v16 = 0;
    v17 = _swiftEmptyArrayStorage;
    *&v138 = _swiftEmptyArrayStorage;
LABEL_3:
    if (v16 <= 3)
    {
      v18 = 3;
    }

    else
    {
      v18 = v16;
    }

    while (1)
    {
      if (v16 == 3)
      {
        v131 = a2;
        sub_100008438(&qword_10011E788, &qword_1000D8630);
        swift_arrayDestroy();
        if (v17 >> 62)
        {
          goto LABEL_25;
        }

        v22 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }

      if (v18 == v16)
      {
        break;
      }

      v19 = v134[v16++ + 4];
      if (v19)
      {
        v20 = v19;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v138;
        goto LABEL_3;
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
        break;
      }

LABEL_14:
      v23 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v24 = *(v17 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v27 = swift_unknownObjectUnownedLoadStrong();
        [v27 removeAction:v25];

        ++v23;
        if (v26 == v22)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_26:

    v28 = swift_unknownObjectUnownedLoadStrong();
    [v28 hideActivityIndicator];

    v29 = swift_unknownObjectUnownedLoadStrong();
    v30 = v29[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState];

    v31 = swift_unknownObjectUnownedLoadStrong();
    sub_10005719C(v31, v30);

    if ((v131 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v32 = v133;
      v34 = *(v33 + 48);
      if (*(v33 + 48))
      {
LABEL_29:
        if (v34 != 1)
        {
          v45 = swift_unknownObjectUnownedLoadStrong();
          v46 = *(v33 + 16);
          v47 = *(v33 + 24);

          v48 = String._bridgeToObjectiveC()();

          [v45 setTitle:v48];

          v49 = swift_unknownObjectUnownedLoadStrong();
          v50 = String._bridgeToObjectiveC()();
          [v49 setSubtitle:v50];

          v51 = String._bridgeToObjectiveC()();
          [(SEL *)v32 setText:v51];

          v52 = *(v33 + 32);
          v53 = *(v33 + 40);

          v44 = String._bridgeToObjectiveC()();

          [v132 setText:v44];
          goto LABEL_35;
        }

        v35 = *(v33 + 16);
        v36 = *(v33 + 24);

        v37 = String._bridgeToObjectiveC()();

        [(SEL *)v32 setText:v37];

        v38 = *(v33 + 32);
        v39 = *(v33 + 40);

        v40 = String._bridgeToObjectiveC()();

        [v132 setText:v40];

        v41 = swift_unknownObjectUnownedLoadStrong();
        v42 = String._bridgeToObjectiveC()();
        [v41 setTitle:v42];

        v43 = swift_unknownObjectUnownedLoadStrong();
        v44 = String._bridgeToObjectiveC()();
LABEL_34:
        [v43 setSubtitle:v44];

LABEL_35:
        v62 = swift_unknownObjectUnownedLoadStrong();
        v63 = [v62 contentView];

        v64 = [v63 titleView];
        v32 = &unk_100116000;
        if (v64)
        {
          [v64 setAlpha:0.0];
        }

        v65 = swift_unknownObjectUnownedLoadStrong();
        v66 = [v65 contentView];

        v67 = [v66 subtitleLabel];
        if (v67)
        {
          [v67 setAlpha:0.0];
        }

        v68 = swift_unknownObjectUnownedLoadStrong();
        v69 = [v68 contentView];

        v70 = [v69 auxiliaryViews];
        if (v70)
        {
          sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
          v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v30 >> 62)
          {
            goto LABEL_53;
          }

          for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
          {
            v72 = 0;
            while (1)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v72 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_51;
                }

                v73 = *(v30 + 8 * v72 + 32);
              }

              v74 = v73;
              v75 = v72 + 1;
              if (__OFADD__(v72, 1))
              {
                break;
              }

              [v73 v32[120]];

              ++v72;
              if (v75 == i)
              {
                goto LABEL_54;
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

LABEL_54:

          v76 = swift_unknownObjectUnownedLoadStrong();
          v77 = [v76 view];

          if (v77)
          {
            [v77 setNeedsLayout];

            v78 = swift_unknownObjectUnownedLoadStrong();
            v79 = [v78 view];

            if (v79)
            {
              [v79 layoutIfNeeded];

              v80 = swift_unknownObjectUnownedLoadStrong();
              v81 = sub_10000E7E4(a5, a5[3]);
              sub_100061A90(0, *v81, 0, v80);

              v82 = swift_unknownObjectUnownedLoadStrong();
              v83 = [v82 view];

              if (v83)
              {

                v84 = objc_opt_self();
                sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;
                [v84 deactivateConstraints:isa];

                v86 = Array._bridgeToObjectiveC()().super.isa;
                v130 = v84;
                [v84 activateConstraints:v86];

                v149 = v154[12];
                v150 = v154[13];
                v151 = v154[14];
                v152 = v154[15];
                v145 = v154[8];
                v146 = v154[9];
                v147 = v154[10];
                v148 = v154[11];
                v143 = v154[6];
                v144 = v154[7];
                v138 = v154[1];
                v139 = v154[2];
                v141 = v154[4];
                v142 = v154[5];
                v140 = v154[3];
                v87 = sub_10002B2D0(3u);
                if ((v154[9] & 1) == 0)
                {
                  [*(&v154[16] + 1) setConstant:v87];
                }

                sub_100008438(&unk_10011D960, &qword_1000D5CF0);
                v88 = swift_allocObject();
                *(v88 + 16) = xmmword_1000D5D20;
                v89 = [(SEL *)v133 topAnchor];
                v90 = [*(&v154[0] + 1) bottomAnchor];
                v91 = [v89 constraintGreaterThanOrEqualToAnchor:v90 constant:10.0];

                *(v88 + 32) = v91;
                v92 = [(SEL *)v133 leadingAnchor];
                v93 = swift_unknownObjectUnownedLoadStrong();
                v94 = [v93 contentView];

                v95 = [v94 mainContentGuide];
                v96 = [v95 leadingAnchor];

                v97 = [v92 constraintEqualToAnchor:v96];
                *(v88 + 40) = v97;
                v98 = [(SEL *)v133 trailingAnchor];
                v99 = swift_unknownObjectUnownedLoadStrong();
                v100 = [v99 contentView];

                v101 = [v100 mainContentGuide];
                v102 = [v101 trailingAnchor];

                v103 = [v98 constraintEqualToAnchor:v102];
                *(v88 + 48) = v103;
                v104 = [v132 topAnchor];
                v105 = [(SEL *)v133 bottomAnchor];
                v106 = [v104 constraintEqualToAnchor:v105 constant:PRXMinimumInterItemMargin];

                *(v88 + 56) = v106;
                v107 = [v132 leadingAnchor];
                v108 = swift_unknownObjectUnownedLoadStrong();
                v109 = [v108 contentView];

                v110 = [v109 mainContentGuide];
                v111 = [v110 leadingAnchor];

                v112 = [v107 constraintEqualToAnchor:v111];
                *(v88 + 64) = v112;
                v113 = [v132 trailingAnchor];
                v114 = swift_unknownObjectUnownedLoadStrong();
                v115 = [v114 contentView];

                v116 = [v115 mainContentGuide];
                v117 = [v116 trailingAnchor];

                v118 = [v113 constraintEqualToAnchor:v117];
                *(v88 + 72) = v118;
                v119 = [v132 bottomAnchor];
                v120 = swift_unknownObjectUnownedLoadStrong();
                v121 = [v120 contentView];

                v122 = [v121 mainContentGuide];
                v123 = [v122 bottomAnchor];

                v124 = [v119 constraintEqualToAnchor:v123];
                *(v88 + 80) = v124;
                v125 = Array._bridgeToObjectiveC()().super.isa;

                [v130 activateConstraints:v125];

                v126 = swift_unknownObjectUnownedLoadStrong();
                v127 = [v126 navigationController];

                if (!v127 || (v128 = [v127 parentViewController], v127, !v128))
                {
                  sub_10000E950(__dst, &qword_10011E760, &qword_1000D8598);
                  goto LABEL_64;
                }

                v129 = [v128 view];

                if (v129)
                {
                  [v129 layoutIfNeeded];
                  sub_10000E950(__dst, &qword_10011E760, &qword_1000D8598);

LABEL_64:

                  return;
                }

LABEL_70:
                __break(1u);
                return;
              }

LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_68;
      }
    }

    else
    {
      v32 = v133;
      if (!*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      v33 = *(v131 + 32);

      v34 = *(v33 + 48);
      if (*(v33 + 48))
      {
        goto LABEL_29;
      }
    }

    v54 = String._bridgeToObjectiveC()();
    [(SEL *)v32 setText:v54];

    v55 = String._bridgeToObjectiveC()();
    [v132 setText:v55];

    v56 = swift_unknownObjectUnownedLoadStrong();
    v57 = *(v33 + 16);
    v58 = *(v33 + 24);

    v59 = String._bridgeToObjectiveC()();

    [v56 setTitle:v59];

    v43 = swift_unknownObjectUnownedLoadStrong();
    v60 = *(v33 + 32);
    v61 = *(v33 + 40);

    v44 = String._bridgeToObjectiveC()();

    goto LABEL_34;
  }
}

void sub_10005BD4C(char a1, char *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v6 = sub_10000E7E4(a4, a4[3]);
    sub_100061A90(a3, *v6, 1, a2);
    v7 = [a2 view];
    if (v7)
    {
      v8 = v7;
      [v7 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10005BDF0(void *a1, char a2, uint64_t a3, double a4)
{
  LOBYTE(v6) = a2;
  result = [a1 auxiliaryViews];
  if (result)
  {
    v8 = result;
    sub_1000084D4(0, &qword_10011CFA0, UIView_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      v12 = 1.0;
      if (a3 >= 4)
      {
        v13 = 1.0;
      }

      else
      {
        v13 = a4;
      }

      if (a3 <= 3)
      {
        v12 = a4;
      }

      if (v6)
      {
        a4 = v13;
      }

      else
      {
        a4 = v12;
      }

      a3 = &unk_100116000;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(v9 + 8 * v11 + 32);
        }

        v6 = v14;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        [v14 setAlpha:a4];

        ++v11;
        if (v15 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_23:
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10005BF54(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v32 = a1;
  v33 = a8;
  v31 = a6;
  v18 = sub_100008438(&qword_10011E778, &qword_1000D85F8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v31 - v21;
  v34 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  *(v23 + 32) = a10;
  *(v23 + 40) = a4;
  *(v23 + 48) = a5;
  *(v23 + 56) = a6;
  *(v23 + 64) = a7;
  v39 = sub_1000640D8;
  v40 = v23;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100019340;
  v38 = &unk_100105FA8;
  v24 = _Block_copy(&aBlock);

  v25 = a3;

  (*(v19 + 16))(v22, v32, v18);
  v26 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v31;
  *(v27 + 3) = a7;
  v28 = v33;
  *(v27 + 4) = v25;
  *(v27 + 5) = v28;
  (*(v19 + 32))(&v27[v26], v22, v18);
  v39 = sub_1000641D0;
  v40 = v27;
  aBlock = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_1000194C0;
  v38 = &unk_100105FF8;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  [v34 animateWithDuration:0 delay:v24 options:v29 animations:a9 completion:0.0];
  _Block_release(v29);
  _Block_release(v24);
}

void sub_10005C228(uint64_t a1, char *a2, char a3, uint64_t a4, void (*a5)(void), double a6)
{
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);

  v10(v12);

  v13 = [a2 contentView];
  v14 = [v13 titleView];

  if (v14)
  {
    [v14 setAlpha:a6];
  }

  v15 = [a2 contentView];
  v16 = [v15 titleView];

  if (v16)
  {
    [v16 setNeedsLayout];
  }

  v17 = [a2 contentView];
  v18 = [v17 titleView];

  if (v18)
  {
    [v18 layoutIfNeeded];
  }

  v19 = [a2 contentView];
  v20 = [v19 subtitleLabel];

  if (v20)
  {
    [v20 setAlpha:a6];
  }

  v21 = [a2 contentView];
  v22 = [v21 subtitleLabel];

  if (v22)
  {
    [v22 setNeedsLayout];
  }

  v23 = [a2 contentView];
  v24 = [v23 subtitleLabel];

  if (v24)
  {
    [v24 layoutIfNeeded];
  }

  v25 = sub_1000543A8();
  v26 = v25;
  if (v25 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v29 = *(v26 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      [v29 setAlpha:a6];

      ++v28;
      if (v31 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:

  if (a3)
  {
    v32 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
    swift_beginAccess();
    v33 = *&a2[v32];
    if (v33)
    {
      [v33 setAlpha:a6];
    }

    v34 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint];
    if (v34)
    {
      [v34 setActive:0];
    }

LABEL_46:
    v53 = [a2 contentView];
    a5();

    return;
  }

  if (v54 != 1)
  {
    v49 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint];
    if (v49)
    {
      [v49 setActive:0];
    }

    v50 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
    swift_beginAccess();
    v51 = *&a2[v50];
    if (v51)
    {
      v52 = 1.0;
      if (v54 <= 4)
      {
        v52 = a6;
      }

      [v51 setAlpha:v52];
    }

    goto LABEL_46;
  }

  v35 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
  swift_beginAccess();
  v36 = *&a2[v35];
  if (v36)
  {
    [v36 setAlpha:0.0];
  }

  v37 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint;
  v38 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint];
  if (v38)
  {
    [v38 setActive:0];
  }

  v39 = [a2 view];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 heightAnchor];

    v42 = [a2 view];
    if (v42)
    {
      v43 = v42;
      [v42 bounds];
      v45 = v44;

      v46 = [v41 constraintEqualToConstant:v45];
      v47 = *&a2[v37];
      *&a2[v37] = v46;
      v48 = v46;

      if (v48)
      {
        [v48 setActive:1];
      }

      goto LABEL_46;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10005C72C(int a1, void (*a2)(void), int a3, id a4, uint64_t a5)
{
  v8 = [a4 contentView];
  a2();

  v9 = *(a5 + 96);
  if (v9)
  {
    v10 = *(a5 + 104);

    v9(a4);
    sub_1000622D4(v9);
  }

  sub_100008438(&qword_10011E778, &qword_1000D85F8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10005C7E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, id a5, void *a6, void *a7, void *a8, uint64_t a9)
{
  v101 = a8;
  v103 = a7;
  v104 = a4;
  v99 = a6;
  v12 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v98 = &v90 - v14;
  v15 = type metadata accessor for HeadphoneAssets.Feature(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v100 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000A570(v18, qword_1001230A0);

  v102 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v16;
    v23 = a5;
    v24 = swift_slowAlloc();
    *v24 = 134218496;
    *(v24 + 4) = a1;
    *(v24 + 12) = 1024;
    v25 = a2;
    *(v24 + 14) = a2 & 1;
    *(v24 + 18) = 2048;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_54:

      __break(1u);
      return result;
    }

    v27 = *&Strong[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];

    *(v24 + 20) = v27;

    _os_log_impl(&_mh_execute_header, v20, v21, "Time range handler called %ld %{BOOL}d %ld", v24, 0x1Cu);

    a2 = v25;
    a5 = v23;
    v16 = v22;
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v29 = result;
  if (a1 >= 1)
  {
    v30 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if ((v104 & 0xC000000000000001) != 0)
    {
      goto LABEL_51;
    }

    if ((v30 & 0x8000000000000000) == 0)
    {
LABEL_14:
      if (v30 < *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v104 + 8 * v30 + 32);

        goto LABEL_16;
      }

      __break(1u);
      goto LABEL_53;
    }

    __break(1u);
  }

  v30 = 0;
  if ((v104 & 0xC000000000000001) == 0)
  {
    goto LABEL_14;
  }

LABEL_51:
  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_16:
  v32 = a9;
  v33 = swift_allocObject();
  v34 = v33;
  *(v33 + 16) = v31;
  v35 = *(v31 + 49);
  v97 = a2;
  if ((a2 & 1) == 0)
  {
    if (v35)
    {

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Video: end of range continue button", v51, 2u);
      }

      if (v29[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 8])
      {
      }

      else
      {
        v68 = &v29[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
        swift_beginAccess();
        v69 = *v68;
        if (*v68)
        {
          v70 = *(v68 + 1);
          v71 = *v68;
          swift_getObjectType();
          v106 = v69;
          dispatch thunk of VideoPlaybackControllable.pause()();
        }

        v72 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction;
        v73 = *&v29[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction];
        v74 = &unk_100116000;
        if (v73)
        {
          v75 = *(v31 + 80);
          if (v75)
          {
            v76 = *(v31 + 88);
            v77 = swift_allocObject();
            *(v77 + 16) = v29;
            v78 = swift_allocObject();
            *(v78 + 16) = v29;
            v79 = v73;
            v80 = v29;
            sub_100062D70(v75);
            v81 = v75(sub_100062D2C, v77, sub_100062D5C, v78);

            v74 = &unk_100116000;

            sub_1000622D4(v75);
          }

          else
          {
            v79 = v73;
            v81 = 1;
          }

          [v79 v74[407]];
        }

        v82 = v29;
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 67109120;
          v86 = *&v29[v72];
          v87 = v86 && ([v86 isEnabled] & 1) != 0;
          *(v85 + 4) = v87;

          _os_log_impl(&_mh_execute_header, v83, v84, "Video: paused button enabled %{BOOL}d", v85, 8u);
        }

        else
        {

          v83 = v82;
        }

        v88 = *(&v82->isa + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction);
        if (v88)
        {
          v89 = v88;
          [v89 v74[407]];
        }

        else
        {
        }
      }
    }

    goto LABEL_24;
  }

  if (!v35)
  {
LABEL_24:
    v93 = v16;
    v95 = v33;

    goto LABEL_25;
  }

  sub_10000E9C8(a5, v105);
  v94 = a5;
  v36 = v100;
  sub_100062810(a9, v100, type metadata accessor for HeadphoneAssets.Feature);
  v93 = v16;
  v37 = (*(v16 + 80) + 104) & ~*(v16 + 80);
  v38 = swift_allocObject();
  v38[2] = v29;
  v38[3] = v34;
  v92 = a9;
  v39 = v103;
  v40 = v99;
  v38[4] = v104;
  v38[5] = v40;
  v96 = v17;
  v41 = v101;
  v38[6] = v39;
  v38[7] = v41;
  sub_10000E9B0(v105, (v38 + 8));
  v42 = v36;
  a5 = v94;
  sub_100064E50(v42, v38 + v37, type metadata accessor for HeadphoneAssets.Feature);
  v43 = &v29[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  v44 = *&v29[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 24];
  v91 = *&v29[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex + 16];
  *(v43 + 2) = sub_100062EAC;
  *(v43 + 3) = v38;

  v45 = v29;
  v95 = v34;

  v32 = v92;

  v46 = v40;
  v47 = v103;
  v48 = v41;
  v17 = v96;
  sub_1000622D4(v91);
LABEL_25:
  v52 = v17;
  v94 = v29;
  v96 = v31;
  if (a1 > 0)
  {
    v53 = a1 + 1;
  }

  else
  {
    v53 = 0;
  }

  v92 = v53;
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v54, v55, "Video: animateViewForIndexAction called %ld", v56, 0xCu);
  }

  v57 = type metadata accessor for TaskPriority();
  v58 = v98;
  (*(*(v57 - 8) + 56))(v98, 1, 1, v57);
  sub_10000E9C8(a5, v105);
  v59 = v100;
  sub_100062810(v32, v100, type metadata accessor for HeadphoneAssets.Feature);
  type metadata accessor for MainActor();
  v60 = v104;

  v61 = v99;
  v62 = v103;
  v63 = v101;
  v64 = static MainActor.shared.getter();
  v65 = (*(v93 + 80) + 104) & ~*(v93 + 80);
  v66 = swift_allocObject();
  v66[2] = v64;
  v66[3] = &protocol witness table for MainActor;
  v66[4] = v60;
  v66[5] = v61;
  v66[6] = v62;
  v66[7] = v63;
  sub_10000E9B0(v105, (v66 + 8));
  sub_100064E50(v59, v66 + v65, type metadata accessor for HeadphoneAssets.Feature);
  v67 = v66 + ((v52 + v65 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v67 = v92;
  v67[8] = v97 & 1;
  sub_100064FAC(0, 0, v58, &unk_1000D85E8, v66);
}

uint64_t sub_10005D194(char a1, char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v90 = a8;
  v91 = a5;
  v92 = a6;
  v14 = type metadata accessor for HeadphoneAssets.Feature(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v17 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v93 = a7;
  v94 = &v87 - v19;
  v20 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  v21 = a4 & 0xC000000000000001;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(a4 + 8 * v20 + 32);

      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_31;
  }

  v86 = *&a2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v89 = a9;
  swift_beginAccess();
  v23 = *(a3 + 16);
  *(a3 + 16) = v22;

  if (a1)
  {
    if (qword_10011C6B8 == -1)
    {
LABEL_7:
      v24 = type metadata accessor for Logger();
      sub_10000A570(v24, qword_1001230A0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v25, v26, "Video: user did skip current video index:%ld", v27, 0xCu);
      }

      v28 = type metadata accessor for TaskPriority();
      (*(*(v28 - 8) + 56))(v94, 1, 1, v28);
      sub_10000E9C8(v90, v95);
      sub_100062810(v89, &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadphoneAssets.Feature);
      type metadata accessor for MainActor();

      v91 = v91;
      v92 = v92;
      v29 = v93;
      v93 = a2;
      v30 = static MainActor.shared.getter();
      v31 = a4;
      v32 = (*(v15 + 80) + 104) & ~*(v15 + 80);
      v33 = v20;
      v34 = (v32 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v36 = (v32 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      v37[2] = v30;
      v37[3] = &protocol witness table for MainActor;
      v39 = v91;
      v38 = v92;
      v37[4] = v31;
      v37[5] = v39;
      v37[6] = v38;
      v37[7] = v29;
      sub_10000E9B0(v95, (v37 + 8));
      sub_100064E50(v35, v37 + v32, type metadata accessor for HeadphoneAssets.Feature);
      v40 = v37 + v34;
      *v40 = v33;
      v40[8] = 1;
      v41 = v94;
      *(v37 + v36) = v93;
      *(v37 + ((v36 + 15) & 0xFFFFFFFFFFFFFFF8)) = 3;
      sub_100064FAC(0, 0, v41, &unk_1000D8628, v37);
    }

LABEL_31:
    swift_once();
    goto LABEL_7;
  }

  v88 = v15;
  v42 = a4;
  swift_beginAccess();
  v43 = *(a3 + 16);
  v44 = v43[8];
  v45 = v43[9];
  v46 = v43[7];

  v47 = v44(v46);

  if (v21)
  {
    v49 = v42;
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
    v52 = *(v50 + 49);
    v87 = v50;
    if (v52 == 2)
    {
      if (qword_10011C6B8 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_10000A570(v53, qword_1001230A0);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134217984;
        *(v56 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v54, v55, "Video: showed empty dual button video view index:%ld", v56, 0xCu);
      }

      v57 = type metadata accessor for TaskPriority();
      (*(*(v57 - 8) + 56))(v94, 1, 1, v57);
      sub_10000E9C8(v90, v95);
      v58 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_100062810(v89, v58, type metadata accessor for HeadphoneAssets.Feature);
      type metadata accessor for MainActor();

      v59 = v91;
      v60 = v92;
      v61 = v93;
      v62 = static MainActor.shared.getter();
      v63 = v49;
      v64 = (*(v88 + 80) + 104) & ~*(v88 + 80);
      v65 = v20;
      v66 = (v16 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      v67[2] = v62;
      v67[3] = &protocol witness table for MainActor;
      v67[4] = v63;
      v67[5] = v59;
      v67[6] = v60;
      v67[7] = v61;
      sub_10000E9B0(v95, (v67 + 8));
      sub_100064E50(v58, v67 + v64, type metadata accessor for HeadphoneAssets.Feature);
      v68 = v67 + v66;
      *v68 = v65;
      v68[8] = 0;
      v69 = &unk_1000D8618;
    }

    else
    {
      if (qword_10011C6B8 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      sub_10000A570(v70, qword_1001230A0);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v71, v72, "Video: user did not skip current video index:%ld", v73, 0xCu);
      }

      v74 = type metadata accessor for TaskPriority();
      (*(*(v74 - 8) + 56))(v94, 1, 1, v74);
      sub_10000E9C8(v90, v95);
      sub_100062810(v89, &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadphoneAssets.Feature);
      type metadata accessor for MainActor();

      v91 = v91;
      v75 = v92;
      v76 = v93;
      v93 = a2;
      v77 = static MainActor.shared.getter();
      v78 = v49;
      v79 = (*(v88 + 80) + 104) & ~*(v88 + 80);
      v80 = v20;
      v81 = (v79 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v83 = (v79 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      v67[2] = v77;
      v67[3] = &protocol witness table for MainActor;
      v84 = v91;
      v67[4] = v78;
      v67[5] = v84;
      v67[6] = v75;
      v67[7] = v76;
      sub_10000E9B0(v95, (v67 + 8));
      sub_100064E50(v82, v67 + v79, type metadata accessor for HeadphoneAssets.Feature);
      v85 = v67 + v81;
      *v85 = v80;
      v85[8] = 0;
      *(v67 + v83) = v93;
      v69 = &unk_1000D8608;
    }

    sub_100064FAC(0, 0, v94, v69, v67);
  }

  if ((v47 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v49 = v42;
    if (v47 < *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v51 = *(v42 + 8 * v47 + 32);

      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005DA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1432) = v16;
  *(v8 + 1424) = v15;
  *(v8 + 1656) = v14;
  *(v8 + 1408) = v13;
  *(v8 + 1400) = a8;
  *(v8 + 1392) = a7;
  *(v8 + 1384) = a6;
  *(v8 + 1376) = a5;
  *(v8 + 1368) = a4;
  *(v8 + 1440) = type metadata accessor for MainActor();
  *(v8 + 1448) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 1456) = v10;
  *(v8 + 1464) = v9;

  return _swift_task_switch(sub_10005DB44, v10, v9);
}

uint64_t sub_10005DB44()
{
  v1 = *(v0 + 1440);
  v2 = *sub_10000E7E4(*(v0 + 1400), *(*(v0 + 1400) + 24));
  v3 = type metadata accessor for B788FeatureContent();
  *(v0 + 1472) = v3;
  *(v0 + 1192) = v3;
  *(v0 + 1200) = &off_100103248;
  *(v0 + 1168) = v2;

  *(v0 + 1480) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1488) = v5;
  *(v0 + 1496) = v4;

  return _swift_task_switch(sub_10005DC0C, v5, v4);
}

uint64_t sub_10005DC0C()
{
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1504) = sub_10000A570(v1, qword_1001230A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1656);
    v5 = *(v0 + 1416);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 0;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v0 + 1368);

  v16 = *(v0 + 1416);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > v16)
    {
      v17 = *(*(v0 + 1368) + 8 * v16 + 32);

      goto LABEL_9;
    }

    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v28 = *(v0 + 1368);
  v29 = *(v0 + 1416);
  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v16 = *(v0 + 1416);
LABEL_9:
  *(v0 + 1512) = v17;
  v18 = *(v0 + 1440);
  v19 = *(v0 + 1656);
  v20 = *(v0 + 1392);
  v21 = swift_allocObject();
  *(v0 + 1520) = v21;
  sub_10000E9C8(v0 + 1168, v0 + 1208);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = v20;
  *(v22 + 32) = v16;
  sub_10000E9B0((v0 + 1208), v22 + 40);
  *(v21 + 16) = sub_100064F58;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  *(v0 + 1528) = v23;
  *(v23 + 16) = 0;
  *(v23 + 24) = v16;
  *(v23 + 32) = 0;
  v24 = v20;
  v25 = static MainActor.shared.getter();
  *(v0 + 1536) = v25;
  v26 = swift_task_alloc();
  *(v0 + 1544) = v26;
  *(v26 + 16) = 0x3FD0000000000000;
  *(v26 + 24) = v21;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  *(v26 + 48) = v19;
  *(v26 + 56) = v16;
  *(v26 + 64) = sub_100064F64;
  *(v26 + 72) = v23;
  *(v26 + 80) = v17;
  v27 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 1552) = v8;
  *v8 = v0;
  v8[1] = sub_10005DF24;
  v10 = &protocol witness table for MainActor;
  v13 = sub_100064FA4;
  v12 = 0x80000001000E0620;
  v15 = &type metadata for () + 8;
  v9 = v25;
  v11 = 0xD00000000000003BLL;
  v14 = v26;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10005DF24()
{
  v1 = *v0;
  v2 = *(*v0 + 1552);
  v3 = *(*v0 + 1544);
  v4 = *(*v0 + 1536);
  v8 = *v0;

  v5 = *(v1 + 1496);
  v6 = *(v1 + 1488);

  return _swift_task_switch(sub_10005E084, v6, v5);
}

uint64_t sub_10005E084()
{
  v1 = v0[185];
  v2 = v0[176];

  v5 = *(v2 + *(type metadata accessor for HeadphoneAssets.Feature(0) + 20));
  v0[195] = v5;
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v6 - 1;
    if (!__OFSUB__(v6, 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    return _swift_task_switch(v6, v3, v4);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 == v0[177])
  {
    v8 = v0[174];
    sub_100055DDC(0, 2.0);
  }

  v9 = v0[191];
  v10 = v0[190];
  v11 = v0[189];

  sub_10000EA94(v0 + 146);
  v4 = v0[183];
  v3 = v0[182];
  v6 = sub_10005E17C;

  return _swift_task_switch(v6, v3, v4);
}

uint64_t sub_10005E17C()
{
  v1 = (v0[178] + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView);
  v2 = swift_beginAccess();
  v5 = *v1;
  if (*v1 && (v6 = v1[1], v7 = *v1, swift_getObjectType(), v0[169] = v5, v2 = dispatch thunk of VideoPlaybackControllable.play()(), (v8 = *v1) != 0))
  {
    v9 = v1[1];
    ObjectType = swift_getObjectType();
    v0[170] = v8;
    v11 = async function pointer to dispatch thunk of VideoPlaybackControllable.fastForward(to:)[1];
    v12 = swift_task_alloc();
    v0[196] = v12;
    *v12 = v0;
    v12[1] = sub_10005E290;
    v2 = v0[179];
    v3 = ObjectType;
    v4 = v9;
  }

  else
  {
    __break(1u);
  }

  return dispatch thunk of VideoPlaybackControllable.fastForward(to:)(v2, v3, v4);
}

uint64_t sub_10005E290(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1568);
  v7 = *v1;
  *(*v1 + 1657) = a1;

  v4 = *(v2 + 1464);
  v5 = *(v2 + 1456);

  return _swift_task_switch(sub_10005E3B8, v5, v4);
}

uint64_t sub_10005E3B8()
{
  v1 = *(v0 + 1504);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1657);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Video: PK did skip %{BOOL}d", v5, 8u);
  }

  v6 = *(v0 + 1657);

  v10 = *(v0 + 1432);
  if (v6 == 1 && (v11 = __OFADD__(v10, 1), ++v10, v11))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 1576) = v10;
    v12 = *(v0 + 1472);
    v13 = *(v0 + 1440);
    v14 = *sub_10000E7E4(*(v0 + 1400), *(*(v0 + 1400) + 24));
    *(v0 + 1272) = v12;
    *(v0 + 1280) = &off_100103248;
    *(v0 + 1248) = v14;

    *(v0 + 1584) = static MainActor.shared.getter();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v16;
    *(v0 + 1592) = v15;
    *(v0 + 1600) = v16;
    v7 = sub_10005E51C;
    v8 = v15;
  }

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005E51C()
{
  v1 = *(v0 + 1504);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1576);
    v5 = *(v0 + 1656);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v4;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 1;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v0 + 1368);

  v15 = *(v0 + 1576);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v16 = *(v0 + 1368);
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v18 = *(v0 + 1368);
  if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = *(v18 + 8 * v15 + 32);

LABEL_8:
  *(v0 + 1608) = v17;
  v19 = *(v0 + 1392);
  v20 = *(v0 + 1384);
  v21 = *(v0 + 1376);
  if (!*(v17 + 48))
  {
    v30 = String._bridgeToObjectiveC()();
    [v21 setText:v30];

    v31 = String._bridgeToObjectiveC()();
    [v20 setText:v31];

    v32 = *(v17 + 16);
    v33 = *(v17 + 24);

    v34 = String._bridgeToObjectiveC()();

    [v19 setTitle:v34];

    v35 = *(v17 + 32);
    v36 = *(v17 + 40);

    v29 = String._bridgeToObjectiveC()();

    goto LABEL_12;
  }

  if (*(v17 + 48) == 1)
  {
    v22 = *(v17 + 16);
    v23 = *(v17 + 24);

    v24 = String._bridgeToObjectiveC()();

    [v21 setText:v24];

    v25 = *(v17 + 32);
    v26 = *(v17 + 40);

    v27 = String._bridgeToObjectiveC()();

    [v20 setText:v27];

    v28 = String._bridgeToObjectiveC()();
    [v19 setTitle:v28];

    v29 = String._bridgeToObjectiveC()();
LABEL_12:
    [v19 setSubtitle:v29];
    goto LABEL_14;
  }

  v37 = *(v17 + 16);
  v38 = *(v17 + 24);

  v39 = String._bridgeToObjectiveC()();

  [v19 setTitle:v39];

  v40 = String._bridgeToObjectiveC()();
  [v19 setSubtitle:v40];

  v41 = String._bridgeToObjectiveC()();
  [v21 setText:v41];

  v42 = *(v17 + 32);
  v43 = *(v17 + 40);

  v29 = String._bridgeToObjectiveC()();

  [v20 setText:v29];
LABEL_14:
  v44 = *(v0 + 1392);

  v45 = [v44 contentView];
  v46 = [v45 titleView];

  if (v46)
  {
    [v46 setAlpha:0.0];
  }

  v47 = [*(v0 + 1392) contentView];
  v48 = [v47 subtitleLabel];

  if (v48)
  {
    [v48 setAlpha:0.0];
  }

  v15 = [*(v0 + 1392) view];
  if (!v15)
  {
    goto LABEL_34;
  }

  v49 = v15;
  v50 = *(v0 + 1392);
  [v15 setNeedsLayout];

  v15 = [v50 view];
  if (!v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v51 = v15;
  v52 = *(v0 + 1576);
  v53 = *(v0 + 1392);
  [v15 layoutIfNeeded];

  v54 = swift_allocObject();
  *(v0 + 1616) = v54;
  sub_10000E9C8(v0 + 1248, v0 + 1288);
  v55 = swift_allocObject();
  *(v55 + 16) = 1;
  *(v55 + 24) = v53;
  *(v55 + 32) = v52;
  sub_10000E9B0((v0 + 1288), v55 + 40);
  *(v54 + 16) = sub_100064F58;
  *(v54 + 24) = v55;
  v56 = *(v0 + 1392);
  if (v52 != 4)
  {
    v61 = v56;
    goto LABEL_29;
  }

  v57 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
  memcpy((v0 + 320), &v56[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], 0x130uLL);
  memcpy((v0 + 16), &v56[v57], 0x130uLL);
  v58 = sub_1000627F8((v0 + 16));
  v59 = *(v0 + 1392);
  if (v58 == 1)
  {
    v60 = v59;
  }

  else
  {
    v62 = *(v0 + 584);
    v63 = *(v0 + 544);
    *(v0 + 1120) = *(v0 + 528);
    *(v0 + 1136) = v63;
    *(v0 + 1152) = *(v0 + 560);
    v64 = *(v0 + 480);
    *(v0 + 1056) = *(v0 + 464);
    *(v0 + 1072) = v64;
    v65 = *(v0 + 512);
    *(v0 + 1088) = *(v0 + 496);
    *(v0 + 1104) = v65;
    v66 = *(v0 + 416);
    *(v0 + 992) = *(v0 + 400);
    *(v0 + 1008) = v66;
    v67 = *(v0 + 448);
    *(v0 + 1024) = *(v0 + 432);
    *(v0 + 1040) = v67;
    v68 = *(v0 + 352);
    *(v0 + 928) = *(v0 + 336);
    *(v0 + 944) = v68;
    v69 = *(v0 + 384);
    *(v0 + 960) = *(v0 + 368);
    *(v0 + 976) = v69;
    v70 = v59;
    sub_10000E88C(v0 + 320, v0 + 624, &qword_10011E760, &qword_1000D8598);
    [v62 setConstant:sub_10002B2D0(4u)];
    sub_10000E950(v0 + 320, &qword_10011E760, &qword_1000D8598);
    v60 = *(v0 + 1392);
  }

  v71 = [v60 navigationController];
  if (!v71)
  {
    goto LABEL_29;
  }

  v72 = v71;
  v73 = [v71 parentViewController];

  if (!v73)
  {
    goto LABEL_29;
  }

  v74 = [v73 view];

  if (!v74)
  {
LABEL_36:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v15, v8, v9, v10, v11, v12, v13, v14);
  }

  [v74 layoutIfNeeded];

LABEL_29:
  v75 = *(v0 + 1576);
  v76 = *(v0 + 1440);
  v77 = *(v0 + 1656);
  v78 = *(v0 + 1392);
  v79 = swift_allocObject();
  *(v0 + 1624) = v79;
  *(v79 + 16) = 1;
  *(v79 + 24) = v75;
  *(v79 + 32) = 0x3FF0000000000000;
  v80 = static MainActor.shared.getter();
  *(v0 + 1632) = v80;
  v81 = swift_task_alloc();
  *(v0 + 1640) = v81;
  *(v81 + 16) = 0x3FE0000000000000;
  *(v81 + 24) = v54;
  *(v81 + 32) = v78;
  *(v81 + 40) = 0x3FF0000000000000;
  *(v81 + 48) = v77;
  *(v81 + 56) = v75;
  *(v81 + 64) = sub_100064F64;
  *(v81 + 72) = v79;
  *(v81 + 80) = v17;
  v82 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v15 = swift_task_alloc();
  *(v0 + 1648) = v15;
  *v15 = v0;
  *(v15 + 8) = sub_10005ECB4;
  v9 = &protocol witness table for MainActor;
  v12 = sub_100064FA4;
  v11 = 0x80000001000E0620;
  v14 = &type metadata for () + 8;
  v8 = v80;
  v10 = 0xD00000000000003BLL;
  v13 = v81;

  return withCheckedContinuation<A>(isolation:function:_:)(v15, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10005ECB4()
{
  v1 = *v0;
  v2 = *(*v0 + 1648);
  v3 = *(*v0 + 1640);
  v4 = *(*v0 + 1632);
  v8 = *v0;

  v5 = *(v1 + 1600);
  v6 = *(v1 + 1592);

  return _swift_task_switch(sub_10005EE14, v6, v5);
}

uint64_t sub_10005EE14()
{
  v1 = v0[198];
  v2 = v0[195];

  if (v2 >> 62)
  {
    if (v0[195] < 0)
    {
      v3 = v0[195];
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  v4 = v0[203];
  v5 = v0[202];
  v6 = v0[201];

  sub_10000EA94(v0 + 156);
  v7 = v0[183];
  v8 = v0[182];

  return _swift_task_switch(sub_10005EEC4, v8, v7);
}

uint64_t sub_10005EEC4()
{
  v1 = *(v0 + 1448);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1592) = v15;
  *(v8 + 1376) = v14;
  *(v8 + 1368) = v13;
  *(v8 + 1360) = a8;
  *(v8 + 1352) = a7;
  *(v8 + 1344) = a6;
  *(v8 + 1336) = a5;
  *(v8 + 1328) = a4;
  *(v8 + 1384) = type metadata accessor for MainActor();
  *(v8 + 1392) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 1400) = v10;
  *(v8 + 1408) = v9;

  return _swift_task_switch(sub_10005EFEC, v10, v9);
}

uint64_t sub_10005EFEC()
{
  v1 = *(v0 + 1384);
  v2 = *sub_10000E7E4(*(v0 + 1360), *(*(v0 + 1360) + 24));
  v3 = type metadata accessor for B788FeatureContent();
  *(v0 + 1416) = v3;
  *(v0 + 1192) = v3;
  *(v0 + 1200) = &off_100103248;
  *(v0 + 1168) = v2;

  *(v0 + 1424) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1432) = v5;
  *(v0 + 1440) = v4;

  return _swift_task_switch(sub_10005F0B4, v5, v4);
}

uint64_t sub_10005F0B4()
{
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 1448) = sub_10000A570(v1, qword_1001230A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1592);
    v5 = *(v0 + 1376);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 0;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v0 + 1328);

  v16 = *(v0 + 1376);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > v16)
    {
      v17 = *(*(v0 + 1328) + 8 * v16 + 32);

      goto LABEL_9;
    }

    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v28 = *(v0 + 1328);
  v29 = *(v0 + 1376);
  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v16 = *(v0 + 1376);
LABEL_9:
  *(v0 + 1456) = v17;
  v18 = *(v0 + 1384);
  v19 = *(v0 + 1592);
  v20 = *(v0 + 1352);
  v21 = swift_allocObject();
  *(v0 + 1464) = v21;
  sub_10000E9C8(v0 + 1168, v0 + 1208);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = v20;
  *(v22 + 32) = v16;
  sub_10000E9B0((v0 + 1208), v22 + 40);
  *(v21 + 16) = sub_100064F58;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  *(v0 + 1472) = v23;
  *(v23 + 16) = 0;
  *(v23 + 24) = v16;
  *(v23 + 32) = 0;
  v24 = v20;
  v25 = static MainActor.shared.getter();
  *(v0 + 1480) = v25;
  v26 = swift_task_alloc();
  *(v0 + 1488) = v26;
  *(v26 + 16) = 0x3FD0000000000000;
  *(v26 + 24) = v21;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  *(v26 + 48) = v19;
  *(v26 + 56) = v16;
  *(v26 + 64) = sub_100064F64;
  *(v26 + 72) = v23;
  *(v26 + 80) = v17;
  v27 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 1496) = v8;
  *v8 = v0;
  v8[1] = sub_10005F3CC;
  v10 = &protocol witness table for MainActor;
  v13 = sub_100064FA4;
  v12 = 0x80000001000E0620;
  v15 = &type metadata for () + 8;
  v9 = v25;
  v11 = 0xD00000000000003BLL;
  v14 = v26;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10005F3CC()
{
  v1 = *v0;
  v2 = *(*v0 + 1496);
  v3 = *(*v0 + 1488);
  v4 = *(*v0 + 1480);
  v8 = *v0;

  v5 = *(v1 + 1440);
  v6 = *(v1 + 1432);

  return _swift_task_switch(sub_10005F52C, v6, v5);
}

uint64_t sub_10005F52C()
{
  v1 = v0[178];
  v2 = v0[171];

  v5 = *(v2 + *(type metadata accessor for HeadphoneAssets.Feature(0) + 20));
  v0[188] = v5;
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    v7 = v6 - 1;
    if (!__OFSUB__(v6, 1))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    return _swift_task_switch(v6, v3, v4);
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 == v0[172])
  {
    v8 = v0[169];
    sub_100055DDC(0, 2.0);
  }

  v9 = v0[184];
  v10 = v0[183];
  v11 = v0[182];

  sub_10000EA94(v0 + 146);
  v4 = v0[176];
  v3 = v0[175];
  v6 = sub_10005F624;

  return _swift_task_switch(v6, v3, v4);
}

uint64_t sub_10005F624(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 1376);
  *(v3 + 1512) = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 1416);
    v7 = *(v3 + 1384);
    v8 = *sub_10000E7E4(*(v3 + 1360), *(*(v3 + 1360) + 24));
    *(v3 + 1272) = v6;
    *(v3 + 1280) = &off_100103248;
    *(v3 + 1248) = v8;

    *(v3 + 1520) = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    a3 = v10;
    *(v3 + 1528) = v9;
    *(v3 + 1536) = v10;
    a1 = sub_10005F6F4;
    a2 = v9;
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10005F6F4()
{
  v1 = *(v0 + 1448);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1512);
    v5 = *(v0 + 1592);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v4;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 1;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v0 + 1328);

  v15 = *(v0 + 1512);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v16 = *(v0 + 1328);
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  v18 = *(v0 + 1328);
  if (v15 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = *(v18 + 8 * v15 + 32);

LABEL_8:
  *(v0 + 1544) = v17;
  v19 = *(v0 + 1352);
  v20 = *(v0 + 1344);
  v21 = *(v0 + 1336);
  if (!*(v17 + 48))
  {
    v30 = String._bridgeToObjectiveC()();
    [v21 setText:v30];

    v31 = String._bridgeToObjectiveC()();
    [v20 setText:v31];

    v32 = *(v17 + 16);
    v33 = *(v17 + 24);

    v34 = String._bridgeToObjectiveC()();

    [v19 setTitle:v34];

    v35 = *(v17 + 32);
    v36 = *(v17 + 40);

    v29 = String._bridgeToObjectiveC()();

    goto LABEL_12;
  }

  if (*(v17 + 48) == 1)
  {
    v22 = *(v17 + 16);
    v23 = *(v17 + 24);

    v24 = String._bridgeToObjectiveC()();

    [v21 setText:v24];

    v25 = *(v17 + 32);
    v26 = *(v17 + 40);

    v27 = String._bridgeToObjectiveC()();

    [v20 setText:v27];

    v28 = String._bridgeToObjectiveC()();
    [v19 setTitle:v28];

    v29 = String._bridgeToObjectiveC()();
LABEL_12:
    [v19 setSubtitle:v29];
    goto LABEL_14;
  }

  v37 = *(v17 + 16);
  v38 = *(v17 + 24);

  v39 = String._bridgeToObjectiveC()();

  [v19 setTitle:v39];

  v40 = String._bridgeToObjectiveC()();
  [v19 setSubtitle:v40];

  v41 = String._bridgeToObjectiveC()();
  [v21 setText:v41];

  v42 = *(v17 + 32);
  v43 = *(v17 + 40);

  v29 = String._bridgeToObjectiveC()();

  [v20 setText:v29];
LABEL_14:
  v44 = *(v0 + 1352);

  v45 = [v44 contentView];
  v46 = [v45 titleView];

  if (v46)
  {
    [v46 setAlpha:0.0];
  }

  v47 = [*(v0 + 1352) contentView];
  v48 = [v47 subtitleLabel];

  if (v48)
  {
    [v48 setAlpha:0.0];
  }

  v15 = [*(v0 + 1352) view];
  if (!v15)
  {
    goto LABEL_34;
  }

  v49 = v15;
  v50 = *(v0 + 1352);
  [v15 setNeedsLayout];

  v15 = [v50 view];
  if (!v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v51 = v15;
  v52 = *(v0 + 1512);
  v53 = *(v0 + 1352);
  [v15 layoutIfNeeded];

  v54 = swift_allocObject();
  *(v0 + 1552) = v54;
  sub_10000E9C8(v0 + 1248, v0 + 1288);
  v55 = swift_allocObject();
  *(v55 + 16) = 1;
  *(v55 + 24) = v53;
  *(v55 + 32) = v52;
  sub_10000E9B0((v0 + 1288), v55 + 40);
  *(v54 + 16) = sub_100064F58;
  *(v54 + 24) = v55;
  v56 = *(v0 + 1352);
  if (v52 != 4)
  {
    v61 = v56;
    goto LABEL_29;
  }

  v57 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
  memcpy((v0 + 320), &v56[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], 0x130uLL);
  memcpy((v0 + 16), &v56[v57], 0x130uLL);
  v58 = sub_1000627F8((v0 + 16));
  v59 = *(v0 + 1352);
  if (v58 == 1)
  {
    v60 = v59;
  }

  else
  {
    v62 = *(v0 + 584);
    v63 = *(v0 + 544);
    *(v0 + 1120) = *(v0 + 528);
    *(v0 + 1136) = v63;
    *(v0 + 1152) = *(v0 + 560);
    v64 = *(v0 + 480);
    *(v0 + 1056) = *(v0 + 464);
    *(v0 + 1072) = v64;
    v65 = *(v0 + 512);
    *(v0 + 1088) = *(v0 + 496);
    *(v0 + 1104) = v65;
    v66 = *(v0 + 416);
    *(v0 + 992) = *(v0 + 400);
    *(v0 + 1008) = v66;
    v67 = *(v0 + 448);
    *(v0 + 1024) = *(v0 + 432);
    *(v0 + 1040) = v67;
    v68 = *(v0 + 352);
    *(v0 + 928) = *(v0 + 336);
    *(v0 + 944) = v68;
    v69 = *(v0 + 384);
    *(v0 + 960) = *(v0 + 368);
    *(v0 + 976) = v69;
    v70 = v59;
    sub_10000E88C(v0 + 320, v0 + 624, &qword_10011E760, &qword_1000D8598);
    [v62 setConstant:sub_10002B2D0(4u)];
    sub_10000E950(v0 + 320, &qword_10011E760, &qword_1000D8598);
    v60 = *(v0 + 1352);
  }

  v71 = [v60 navigationController];
  if (!v71)
  {
    goto LABEL_29;
  }

  v72 = v71;
  v73 = [v71 parentViewController];

  if (!v73)
  {
    goto LABEL_29;
  }

  v74 = [v73 view];

  if (!v74)
  {
LABEL_36:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v15, v8, v9, v10, v11, v12, v13, v14);
  }

  [v74 layoutIfNeeded];

LABEL_29:
  v75 = *(v0 + 1512);
  v76 = *(v0 + 1384);
  v77 = *(v0 + 1592);
  v78 = *(v0 + 1352);
  v79 = swift_allocObject();
  *(v0 + 1560) = v79;
  *(v79 + 16) = 1;
  *(v79 + 24) = v75;
  *(v79 + 32) = 0x3FF0000000000000;
  v80 = static MainActor.shared.getter();
  *(v0 + 1568) = v80;
  v81 = swift_task_alloc();
  *(v0 + 1576) = v81;
  *(v81 + 16) = 0x3FE0000000000000;
  *(v81 + 24) = v54;
  *(v81 + 32) = v78;
  *(v81 + 40) = 0x3FF0000000000000;
  *(v81 + 48) = v77;
  *(v81 + 56) = v75;
  *(v81 + 64) = sub_100064F64;
  *(v81 + 72) = v79;
  *(v81 + 80) = v17;
  v82 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v15 = swift_task_alloc();
  *(v0 + 1584) = v15;
  *v15 = v0;
  *(v15 + 8) = sub_10005FE8C;
  v9 = &protocol witness table for MainActor;
  v12 = sub_100064FA4;
  v11 = 0x80000001000E0620;
  v14 = &type metadata for () + 8;
  v8 = v80;
  v10 = 0xD00000000000003BLL;
  v13 = v81;

  return withCheckedContinuation<A>(isolation:function:_:)(v15, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10005FE8C()
{
  v1 = *v0;
  v2 = *(*v0 + 1584);
  v3 = *(*v0 + 1576);
  v4 = *(*v0 + 1568);
  v8 = *v0;

  v5 = *(v1 + 1536);
  v6 = *(v1 + 1528);

  return _swift_task_switch(sub_10005FFEC, v6, v5);
}

uint64_t sub_10005FFEC()
{
  v1 = v0[190];
  v2 = v0[188];

  if (v2 >> 62)
  {
    if (v0[188] < 0)
    {
      v3 = v0[188];
    }

    _CocoaArrayWrapper.endIndex.getter();
  }

  v4 = v0[195];
  v5 = v0[194];
  v6 = v0[193];

  sub_10000EA94(v0 + 156);
  v7 = v0[176];
  v8 = v0[175];

  return _swift_task_switch(sub_10006009C, v8, v7);
}

uint64_t sub_10006009C()
{
  v1 = *(v0 + 1392);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000600FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 280) = v14;
  *(v8 + 152) = v13;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 128) = a4;
  *(v8 + 176) = type metadata accessor for MainActor();
  *(v8 + 184) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 192) = v10;
  *(v8 + 200) = v9;

  return _swift_task_switch(sub_1000601B8, v10, v9);
}

uint64_t sub_1000601B8()
{
  v1 = *(v0 + 176);
  v2 = *sub_10000E7E4(*(v0 + 144), *(*(v0 + 144) + 24));
  *(v0 + 40) = type metadata accessor for B788FeatureContent();
  *(v0 + 48) = &off_100103248;
  *(v0 + 16) = v2;

  *(v0 + 208) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 216) = v4;
  *(v0 + 224) = v3;

  return _swift_task_switch(sub_100060274, v4, v3);
}

uint64_t sub_100060274()
{
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A570(v1, qword_1001230A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 160);
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = 0;
    *(v6 + 18) = 1024;
    *(v6 + 20) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v6, 0x18u);
  }

  v7 = *(v0 + 128);

  v16 = *(v0 + 160);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) > v16)
    {
      v17 = *(*(v0 + 128) + 8 * v16 + 32);

      goto LABEL_9;
    }

    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v28 = *(v0 + 128);
  v29 = *(v0 + 160);
  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v16 = *(v0 + 160);
LABEL_9:
  *(v0 + 232) = v17;
  v18 = *(v0 + 176);
  v19 = *(v0 + 280);
  v20 = *(v0 + 136);
  v21 = swift_allocObject();
  *(v0 + 240) = v21;
  sub_10000E9C8(v0 + 16, v0 + 56);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = v20;
  *(v22 + 32) = v16;
  sub_10000E9B0((v0 + 56), v22 + 40);
  *(v21 + 16) = sub_100064F58;
  *(v21 + 24) = v22;
  v23 = swift_allocObject();
  *(v0 + 248) = v23;
  *(v23 + 16) = 0;
  *(v23 + 24) = v16;
  *(v23 + 32) = 0;
  v24 = v20;
  v25 = static MainActor.shared.getter();
  *(v0 + 256) = v25;
  v26 = swift_task_alloc();
  *(v0 + 264) = v26;
  *(v26 + 16) = 0x3FD0000000000000;
  *(v26 + 24) = v21;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  *(v26 + 48) = v19;
  *(v26 + 56) = v16;
  *(v26 + 64) = sub_100064F64;
  *(v26 + 72) = v23;
  *(v26 + 80) = v17;
  v27 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 272) = v8;
  *v8 = v0;
  v8[1] = sub_100060588;
  v10 = &protocol witness table for MainActor;
  v13 = sub_100064FA4;
  v12 = 0x80000001000E0620;
  v15 = &type metadata for () + 8;
  v9 = v25;
  v11 = 0xD00000000000003BLL;
  v14 = v26;

  return withCheckedContinuation<A>(isolation:function:_:)(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100060588()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v8 = *v0;

  v5 = *(v1 + 224);
  v6 = *(v1 + 216);

  return _swift_task_switch(sub_1000606E8, v6, v5);
}

uint64_t sub_1000606E8()
{
  v1 = v0[26];
  v2 = v0[19];

  v3 = type metadata accessor for HeadphoneAssets.Feature(0);
  v6 = *(v2 + *(v3 + 20));
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v13 = *(v2 + *(v3 + 20));
    }

    v7 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v7 - 1;
    if (!__OFSUB__(v7, 1))
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
    return _swift_task_switch(v7, v4, v5);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v8 == v0[20])
  {
    v9 = v0[17];
    sub_100055DDC(0, 2.0);
  }

  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[29];

  sub_10000EA94(v0 + 2);
  v4 = v0[24];
  v5 = v0[25];
  v7 = sub_1000607D4;

  return _swift_task_switch(v7, v4, v5);
}

uint64_t sub_1000607D4()
{
  v1 = v0[23];
  v2 = v0[21];

  v3 = (v2 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView);
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = v3[1];
    v6 = *v3;
    swift_getObjectType();
    v0[15] = v4;
    dispatch thunk of VideoPlaybackControllable.play()();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100060884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v15;
  *(v8 + 56) = v13;
  *(v8 + 64) = v14;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  type metadata accessor for MainActor();
  *(v8 + 72) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 80) = v10;
  *(v8 + 88) = v9;

  return _swift_task_switch(sub_100060938, v10, v9);
}

uint64_t sub_100060938()
{
  v1 = *sub_10000E7E4(*(v0 + 48), *(*(v0 + 48) + 24));
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1000609F8;
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v11 = *(v0 + 56);

  return sub_1000634E8(v4, v3, 0, v7, v8, v5, v6, v1);
}

uint64_t sub_1000609F8()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_100060B18, v4, v3);
}

uint64_t sub_100060B18()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100060B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_100055DDC(1, 0.5);
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = a5;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = a6;
  v14 = _Block_copy(aBlock);

  [v12 animateWithDuration:0 delay:v14 options:0 animations:0.5 completion:0.0];
  _Block_release(v14);
}

void sub_100060CA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B6830();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100060D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100008438(&qword_10011E798, &qword_1000D8658);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  (*(v7 + 16))(v10, a1, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);

  dispatch thunk of HeadphoneProxFeatureManager.audioAccessoryDeviceHandler.setter();
}

uint64_t sub_100060E90(void *a1)
{
  v2 = [a1 bluetoothAddress];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_100008480();
  v7 = StringProtocol.capitalized.getter();
  if (!v6)
  {
  }

  if (v4 == v7 && v6 == v8)
  {

    goto LABEL_13;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_13:
    v12 = a1;
    sub_100008438(&qword_10011E798, &qword_1000D8658);
    CheckedContinuation.resume(returning:)();
    type metadata accessor for HeadphoneProxFeatureManager();
    static HeadphoneProxFeatureManager.shared.getter();
    dispatch thunk of HeadphoneProxFeatureManager.audioAccessoryDeviceHandler.setter();
  }

  return result;
}

uint64_t sub_100060FE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100061124(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for HeadphoneAssets.Feature(0);
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v83 - v12;
  v117[3] = type metadata accessor for B788FeatureContent();
  v117[4] = &off_100103248;
  v117[0] = a2;
  v14 = *&a3[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel];
  if (!v14 || (v88 = v7, (v15 = *&a3[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody]) == 0))
  {

    return sub_10000EA94(v117);
  }

  v87 = v6;
  v16 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  swift_beginAccess();
  sub_10000E88C(&a3[v16], v13, &qword_10011F2E0, &unk_1000D8580);
  v17 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v17 - 8) + 48))(v13, 1, v17))
  {

    sub_10000E950(v13, &qword_10011F2E0, &unk_1000D8580);
    return sub_10000EA94(v117);
  }

  v86 = a1;
  v19 = &v13[*(v17 + 56)];
  v20 = *(v19 + 13);
  v106 = *(v19 + 12);
  v107 = v20;
  v108 = *(v19 + 14);
  v21 = *(v19 + 9);
  v102 = *(v19 + 8);
  v103 = v21;
  v22 = *(v19 + 11);
  v104 = *(v19 + 10);
  v105 = v22;
  v23 = *(v19 + 5);
  v98 = *(v19 + 4);
  v99 = v23;
  v24 = *(v19 + 7);
  v100 = *(v19 + 6);
  v101 = v24;
  v25 = *(v19 + 1);
  v94 = *v19;
  v95 = v25;
  v26 = *(v19 + 3);
  v96 = *(v19 + 2);
  v97 = v26;

  v27 = v15;
  v28 = v14;
  sub_10000E88C(&v94, &v91, &unk_10011FF80, &qword_1000D8590);
  sub_10000E950(v13, &qword_10011F2E0, &unk_1000D8580);
  v114 = v106;
  v115 = v107;
  v116 = v108;
  v110 = v102;
  v111 = v103;
  v112 = v104;
  v113 = v105;
  v109[4] = v98;
  v109[5] = v99;
  v109[6] = v100;
  v109[7] = v101;
  v109[0] = v94;
  v109[1] = v95;
  v109[2] = v96;
  v109[3] = v97;
  if (sub_100026134(v109) == 1)
  {

    return sub_10000EA94(v117);
  }

  v29 = sub_10000B398();
  a3[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState] = 1;
  sub_10000E950(&v94, &unk_10011FF80, &qword_1000D8590);
  if (v110)
  {
    sub_100055024();
  }

  v30 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_10000E9C8(v117, &v91);
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v29;
  v31[4] = v28;
  v31[5] = v27;
  sub_10000E9B0(&v91, (v31 + 6));
  v31[11] = ObjectType;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E9C8(v117, &v91);
  sub_100062810(v86, &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HeadphoneAssets.Feature);
  v33 = v27;
  v34 = (*(v88 + 80) + 96) & ~*(v88 + 80);
  v35 = swift_allocObject();
  v35[2] = v32;
  v35[3] = v29;
  sub_10000E9B0(&v91, (v35 + 4));
  v35[9] = v28;
  v35[10] = v33;
  v35[11] = a3;
  v88 = v35;
  sub_100064E50(v9, v35 + v34, type metadata accessor for HeadphoneAssets.Feature);
  v36 = v33;
  v37 = v28;
  v84 = v36;
  v83 = v37;

  v38 = a3;
  v40 = sub_100054344();
  v41 = *v39;
  v85 = v31;
  if (v41)
  {
    v42 = v39;
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = sub_100062A70;
    v44[4] = v31;
    v45 = *v42;
    v46 = v42[1];
    swift_getObjectType();
    v90 = v45;

    v47 = v45;
    dispatch thunk of VideoPlaybackControllable.startedHandler.setter();
    v48 = *v42;
    *v42 = v90;
    v42[1] = v46;
  }

  (v40)(&v91, 0);
  v50 = sub_100054344();
  if (*v49)
  {
    v51 = v49;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v52 = *v51;
    v53 = v51[1];
    swift_getObjectType();
    v90 = v52;

    v54 = v52;
    dispatch thunk of VideoPlaybackControllable.completedHandler.setter();
    v55 = *v51;
    *v51 = v90;
    v51[1] = v53;
  }

  result = (v50)(&v91, 0);
  v56 = *(v86 + *(v87 + 20));
  if (v56 >> 62)
  {
    if (v56 < 0)
    {
      v67 = *(v86 + *(v87 + 20));
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v57 = result;
    ObjectType = v38;
    if (!result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    ObjectType = v38;
    if (!v57)
    {
LABEL_31:
      v68 = ObjectType + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView;
      swift_beginAccess();
      v69 = *v68;
      if (*v68)
      {
        v70 = *(v68 + 8);
        v71 = *v68;
        swift_getObjectType();
        *&v91 = v69;
        v72 = swift_allocObject();
        v73 = v88;
        *(v72 + 16) = sub_100062BA8;
        *(v72 + 24) = v73;
        v74 = v69;

        dispatch thunk of VideoPlaybackControllable.setPlaybackNotificationTimeRanges(_:handler:)();
      }

      else
      {
      }

      v76 = v83;
      v75 = v84;
      v77 = *v68;
      if (*v68)
      {
        v78 = *(v68 + 8);
        v79 = *v68;
        swift_getObjectType();
        *&v91 = v77;
        dispatch thunk of VideoPlaybackControllable.transitionToFeatures()();
      }

      v80 = objc_opt_self();
      v81 = swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v93 = sub_100064F20;
      *(&v93 + 1) = v81;
      *&v91 = _NSConcreteStackBlock;
      *(&v91 + 1) = 1107296256;
      *&v92 = sub_100019340;
      *(&v92 + 1) = &unk_100105DC8;
      v82 = _Block_copy(&v91);

      [v80 animateWithDuration:0 delay:v82 options:0 animations:0.5 completion:0.0];

      _Block_release(v82);
      return sub_10000EA94(v117);
    }
  }

  if (v57 >= 1)
  {
    v58 = 0;
    v59 = _swiftEmptyArrayStorage;
    do
    {
      if ((v56 & 0xC000000000000001) != 0)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v60 = *(v56 + 8 * v58 + 32);
      }

      v61 = v60;
      [v60 CMTimeRangeValue];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1000CCB2C(0, *(v59 + 2) + 1, 1, v59);
      }

      v63 = *(v59 + 2);
      v62 = *(v59 + 3);
      if (v63 >= v62 >> 1)
      {
        v59 = sub_1000CCB2C((v62 > 1), v63 + 1, 1, v59);
      }

      ++v58;

      *(v59 + 2) = v63 + 1;
      v64 = &v59[48 * v63];
      v65 = v91;
      v66 = v93;
      *(v64 + 3) = v92;
      *(v64 + 4) = v66;
      *(v64 + 2) = v65;
    }

    while (v57 != v58);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

void sub_100061A90(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v5 = a1;
  v6 = &a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex] = a1;
  v7 = qword_10011C6B8;

  if (v7 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_1001230A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v9, v10, "Video: setting currentIndex index:%ld", v11, 0xCu);
    }

    *(v6 + 8) = 0;
    v12 = [a4 actions];
    sub_1000084D4(0, &qword_10011E780, PRXAction_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      break;
    }

    v6 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = v5;
    if (!v6)
    {
      goto LABEL_20;
    }

LABEL_6:
    v14 = 0;
    v5 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v14;
      if (v16 == v6)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
  v44 = v5;
  if (v6)
  {
    goto LABEL_6;
  }

LABEL_20:

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v19 = _swiftEmptyArrayStorage[v18 + 4];
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [a4 removeAction:v19];

      ++v18;
      if (v21 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  v22 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction];
  if (!v22 || (v23 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction]) == 0 || (v24 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipVideoSegmentAction]) == 0)
  {
    v45 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v45, v32, "Video: Missing Buttons!", v33, 2u);
    }

    goto LABEL_56;
  }

  v45 = v22;
  v25 = v23;
  v26 = v24;
  v27 = sub_10000B398();
  if ((v27 & 0xC000000000000001) != 0)
  {
    v28 = v44;
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v30 = *(v41 + 49);
    swift_unknownObjectRelease();
    if (!v30)
    {
      goto LABEL_53;
    }

LABEL_40:
    if (v30 == 1)
    {
      if (v28 < 3)
      {
        [v45 setEnabled:(a3 & 1) == 0];
        v31 = [a4 addAction:v45];
        goto LABEL_54;
      }

      v36 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction;
      v37 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction];
      if (v37)
      {
        [v37 setEnabled:0];
        v38 = *&a4[v36];
        if (v38)
        {
          v39 = v38;
          v40 = [a4 addAction:v39];

          goto LABEL_55;
        }

        goto LABEL_64;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    v34 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction;
    v35 = *&a4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction];
    if (v35)
    {
      [v35 setEnabled:1];
      if (*&a4[v34])
      {

        [v26 setEnabled:1];
        v31 = [a4 addAction:v26];
        goto LABEL_54;
      }

      goto LABEL_62;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v28 = v44;
  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v44)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v29 = *(v27 + 8 * v44 + 32);

  v30 = *(v29 + 49);

  if (v30)
  {
    goto LABEL_40;
  }

LABEL_53:
  [v25 setEnabled:1];
  v31 = [a4 addAction:v25];
LABEL_54:
  v42 = v31;

LABEL_55:
LABEL_56:
}

id sub_1000620D8(uint64_t a1)
{
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_cardState] = 0;
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_shouldFadeInElements] = 1;
  v3 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
  sub_100062284(__src);
  memcpy(&v1[v3], __src, 0x130uLL);
  v4 = &v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieView];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureTitleBody] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_connectAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_learnAboutEarTipsAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_foundMyTipSizeAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_skipVideoSegmentAction] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_featureGradient] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_forceHeightConstraint] = 0;
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_type] = 3;
  v7 = &v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_currentVideoIndex];
  *v7 = 0;
  v7[8] = 0;
  v8 = type metadata accessor for HeadphoneConnectViewController();
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  v7[32] = 0;
  v10.receiver = v1;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, "initWithContentView:", a1);
}

double sub_100062284(_OWORD *a1)
{
  result = 0.0;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000622D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000622E4()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006231C()
{
  v1 = (type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);

  v10 = *(v7 + v1[8]);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

void sub_10006244C()
{
  v1 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v0 + 16);

  sub_1000585C0(v8, v0 + v2, v5, v6);
}

uint64_t sub_1000624F4()
{
  v1 = (type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v5 + v1[8]);

  v9 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_1000625FC(unint64_t a1, int a2)
{
  v5 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100058F10(a1, a2, v2 + v6, v7);
}

uint64_t sub_10006270C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100062744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10006278C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000627B4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000627F8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100062810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100062878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000628D8()
{
  dispatch thunk of HeadphoneIEDObserver.primaryInEarStatus.getter();

  return dispatch thunk of HeadphoneIEDObserver.secondaryInEarStatus.getter();
}

uint64_t sub_100062908()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BD1C;

  return sub_10005A224(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100062A18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_10000EA94((v0 + 48));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100062A84()
{
  v1 = (type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 96) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  sub_10000EA94((v0 + 32));

  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[7]);

  v9 = *(v0 + v3 + v1[8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100062C38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062CBC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062CF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100062D2C()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_deviceInEar) = 1;
  return [*(v1 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_continueAction) setEnabled:1];
}

uint64_t sub_100062D70(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100062D80()
{
  v1 = (type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + 24);

  v6 = *(v0 + 32);

  sub_10000EA94((v0 + 64));
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[7]);

  v9 = *(v0 + v3 + v1[8]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100062F30(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v5 = (*(v4 + 64) + ((*(v4 + 80) + 104) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v15 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + v5);
  v12 = *(v1 + v5 + 8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100064F50;

  return sub_100060884(a1, v15, v6, v7, v8, v9, v10, (v1 + 8));
}

uint64_t sub_100063094(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[7] = v4;
  v2[8] = v3;

  return _swift_task_switch(sub_100063130, v4, v3);
}

uint64_t sub_100063130()
{
  v1 = v0[4];
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = v0[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v18 = v0[6];

    v9 = 0;
    goto LABEL_12;
  }

  type metadata accessor for HeadphoneProxFeatureManager();
  static HeadphoneProxFeatureManager.shared.getter();
  v3 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

  if (*(v3 + 16))
  {
    v4 = sub_1000CD118(v0[3], v0[4]);
    if (v5)
    {
      v6 = v4;
      v7 = v0[6];

      v8 = *(*(v3 + 56) + 8 * v6);

      v9 = v8;
LABEL_12:
      v19 = v0[1];

      return v19(v9);
    }
  }

  v11 = v0[4];
  v10 = v0[5];
  v12 = v0[3];

  v13 = static MainActor.shared.getter();
  v0[9] = v13;
  v14 = swift_task_alloc();
  v0[10] = v14;
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  v15 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v16 = swift_task_alloc();
  v0[11] = v16;
  v17 = sub_100008438(&qword_10011E790, &qword_1000D8650);
  *v16 = v0;
  v16[1] = sub_100063324;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v13, &protocol witness table for MainActor, 0xD000000000000020, 0x80000001000E0670, sub_100064BBC, v14, v17);
}

uint64_t sub_100063324()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_100063484, v6, v5);
}

uint64_t sub_100063484()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1000634E8(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1288) = v14;
  *(v8 + 1280) = a7;
  *(v8 + 1272) = a6;
  *(v8 + 1264) = a5;
  *(v8 + 1256) = a4;
  *(v8 + 1377) = a3;
  *(v8 + 1376) = a2;
  *(v8 + 1248) = a1;
  *(v8 + 1192) = type metadata accessor for B788FeatureContent();
  *(v8 + 1200) = &off_100103248;
  *(v8 + 1168) = a8;
  *(v8 + 1296) = type metadata accessor for MainActor();

  *(v8 + 1304) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 1312) = v11;
  *(v8 + 1320) = v10;

  return _swift_task_switch(sub_1000635D4, v11, v10);
}

uint64_t sub_1000635D4()
{
  v1 = *(v0 + 1376);
  if (qword_10011C6B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_1001230A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1377);
    v6 = *(v0 + 1376);
    v7 = *(v0 + 1248);
    v8 = swift_slowAlloc();
    *v8 = 134218496;
    *(v8 + 4) = v7;
    *(v8 + 12) = 1024;
    *(v8 + 14) = v6;
    *(v8 + 18) = 1024;
    *(v8 + 20) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "_updateAnimation index:%ld isStartOfRange:%{BOOL}d didSKip:%{BOOL}d", v8, 0x18u);
  }

  v9 = *(v0 + 1256);

  if ((v9 & 0xC000000000000001) == 0)
  {
    v18 = *(v0 + 1248);
    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > v18)
    {
      v19 = *(*(v0 + 1256) + 8 * v18 + 32);

      goto LABEL_9;
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v88 = *(v0 + 1256);
  v89 = *(v0 + 1248);
  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  *(v0 + 1328) = v19;
  if (*(v0 + 1376) != 1)
  {
    v31 = 0;
    goto LABEL_24;
  }

  v20 = *(v0 + 1280);
  v21 = *(v0 + 1272);
  v22 = *(v0 + 1264);
  if (!*(v19 + 48))
  {
    v32 = String._bridgeToObjectiveC()();
    [v22 setText:v32];

    v33 = String._bridgeToObjectiveC()();
    [v21 setText:v33];

    v34 = *(v19 + 16);
    v35 = *(v19 + 24);

    v36 = String._bridgeToObjectiveC()();

    [v20 setTitle:v36];

    v37 = *(v19 + 32);
    v38 = *(v19 + 40);

    v30 = String._bridgeToObjectiveC()();

    goto LABEL_15;
  }

  if (*(v19 + 48) == 1)
  {
    v23 = *(v19 + 16);
    v24 = *(v19 + 24);

    v25 = String._bridgeToObjectiveC()();

    [v22 setText:v25];

    v26 = *(v19 + 32);
    v27 = *(v19 + 40);

    v28 = String._bridgeToObjectiveC()();

    [v21 setText:v28];

    v29 = String._bridgeToObjectiveC()();
    [v20 setTitle:v29];

    v30 = String._bridgeToObjectiveC()();
LABEL_15:
    [v20 setSubtitle:v30];
    goto LABEL_17;
  }

  v39 = *(v19 + 16);
  v40 = *(v19 + 24);

  v41 = String._bridgeToObjectiveC()();

  [v20 setTitle:v41];

  v42 = String._bridgeToObjectiveC()();
  [v20 setSubtitle:v42];

  v43 = String._bridgeToObjectiveC()();
  [v22 setText:v43];

  v44 = *(v19 + 32);
  v45 = *(v19 + 40);

  v30 = String._bridgeToObjectiveC()();

  [v21 setText:v30];
LABEL_17:
  v46 = *(v0 + 1280);

  v47 = [v46 contentView];
  v48 = [v47 titleView];

  if (v48)
  {
    [v48 setAlpha:0.0];
  }

  v49 = [*(v0 + 1280) contentView];
  v50 = [v49 subtitleLabel];

  if (v50)
  {
    [v50 setAlpha:0.0];
  }

  v10 = [*(v0 + 1280) view];
  if (!v10)
  {
    goto LABEL_45;
  }

  v51 = v10;
  v52 = *(v0 + 1280);
  [v10 setNeedsLayout];

  v10 = [v52 view];
  if (!v10)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v53 = v10;
  [v10 layoutIfNeeded];

  v31 = *(v0 + 1376);
LABEL_24:
  v54 = *(v0 + 1280);
  v55 = *(v0 + 1248);
  v56 = swift_allocObject();
  *(v0 + 1336) = v56;
  sub_10000E9C8(v0 + 1168, v0 + 1208);
  v57 = swift_allocObject();
  *(v57 + 16) = v31;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  sub_10000E9B0((v0 + 1208), v57 + 40);
  *(v56 + 16) = sub_10006405C;
  *(v56 + 24) = v57;
  if (v31)
  {
    v58 = *(v0 + 1280);
    if (*(v0 + 1248) != 4)
    {
      v65 = v58;
LABEL_35:
      v64 = 1.0;
      goto LABEL_36;
    }

    v59 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer;
    memcpy((v0 + 320), &v58[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneConnectViewController_movieContainer], 0x130uLL);
    memcpy((v0 + 16), &v58[v59], 0x130uLL);
    v60 = sub_1000627F8((v0 + 16));
    v61 = *(v0 + 1280);
    if (v60 == 1)
    {
      v62 = v61;
    }

    else
    {
      v66 = *(v0 + 584);
      v67 = *(v0 + 544);
      *(v0 + 1120) = *(v0 + 528);
      *(v0 + 1136) = v67;
      *(v0 + 1152) = *(v0 + 560);
      v68 = *(v0 + 480);
      *(v0 + 1056) = *(v0 + 464);
      *(v0 + 1072) = v68;
      v69 = *(v0 + 512);
      *(v0 + 1088) = *(v0 + 496);
      *(v0 + 1104) = v69;
      v70 = *(v0 + 416);
      *(v0 + 992) = *(v0 + 400);
      *(v0 + 1008) = v70;
      v71 = *(v0 + 448);
      *(v0 + 1024) = *(v0 + 432);
      *(v0 + 1040) = v71;
      v72 = *(v0 + 352);
      *(v0 + 928) = *(v0 + 336);
      *(v0 + 944) = v72;
      v73 = *(v0 + 384);
      *(v0 + 960) = *(v0 + 368);
      *(v0 + 976) = v73;
      v74 = v61;
      sub_10000E88C(v0 + 320, v0 + 624, &qword_10011E760, &qword_1000D8598);
      [v66 setConstant:sub_10002B2D0(4u)];
      sub_10000E950(v0 + 320, &qword_10011E760, &qword_1000D8598);
      v62 = *(v0 + 1280);
    }

    v75 = [v62 navigationController];
    if (!v75)
    {
      goto LABEL_35;
    }

    v76 = v75;
    v77 = [v75 parentViewController];

    if (!v77)
    {
      goto LABEL_35;
    }

    v78 = [v77 view];

    if (v78)
    {
      [v78 layoutIfNeeded];

      goto LABEL_35;
    }

LABEL_47:
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  v63 = *(v0 + 1280);
  v64 = 0.0;
LABEL_36:
  if (v1)
  {
    v79 = 0.5;
  }

  else
  {
    v79 = 0.25;
  }

  v80 = *(v0 + 1296);
  v81 = *(v0 + 1280);
  v82 = *(v0 + 1377);
  v83 = *(v0 + 1248);
  v84 = swift_allocObject();
  *(v0 + 1344) = v84;
  *(v84 + 16) = v31;
  *(v84 + 24) = v83;
  *(v84 + 32) = v64;
  v85 = static MainActor.shared.getter();
  *(v0 + 1352) = v85;
  v86 = swift_task_alloc();
  *(v0 + 1360) = v86;
  *(v86 + 16) = v79;
  *(v86 + 24) = v56;
  *(v86 + 32) = v81;
  *(v86 + 40) = v64;
  *(v86 + 48) = v82;
  *(v86 + 56) = v83;
  *(v86 + 64) = sub_10006407C;
  *(v86 + 72) = v84;
  *(v86 + 80) = v19;
  v87 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v10 = swift_task_alloc();
  *(v0 + 1368) = v10;
  *v10 = v0;
  v10[1] = sub_100063E04;
  v12 = &protocol witness table for MainActor;
  v15 = sub_10006408C;
  v14 = 0x80000001000E0620;
  v17 = &type metadata for () + 8;
  v11 = v85;
  v13 = 0xD00000000000003BLL;
  v16 = v86;

  return withCheckedContinuation<A>(isolation:function:_:)(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_100063E04()
{
  v1 = *v0;
  v2 = *(*v0 + 1368);
  v3 = *(*v0 + 1360);
  v4 = *(*v0 + 1352);
  v8 = *v0;

  v5 = *(v1 + 1320);
  v6 = *(v1 + 1312);

  return _swift_task_switch(sub_100063F64, v6, v5);
}

uint64_t sub_100063F64()
{
  v1 = *(v0 + 1304);
  v2 = *(v0 + 1288);

  v3 = type metadata accessor for HeadphoneAssets.Feature(0);
  v4 = *(v2 + *(v3 + 20));
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v12 = *(v2 + *(v3 + 20));
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 == *(v0 + 1248) && (*(v0 + 1376) & 1) == 0)
  {
    v7 = *(v0 + 1280);
    sub_100055DDC(0, 2.0);
  }

  v8 = *(v0 + 1344);
  v9 = *(v0 + 1336);
  v10 = *(v0 + 1328);

  sub_10000EA94((v0 + 1168));
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100064090()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000640F0()
{
  v1 = sub_100008438(&qword_10011E778, &qword_1000D85F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000641D0(int a1)
{
  v3 = *(*(sub_100008438(&qword_10011E778, &qword_1000D85F8) - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];

  return sub_10005C72C(a1, v4, v5, v6, v7);
}

uint64_t sub_100064254()
{
  v1 = (type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  sub_10000EA94((v0 + 64));
  v7 = v0 + v3;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);

  v10 = *(v7 + v1[8]);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10006438C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v5 = ((*(v4 + 80) + 104) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v1[2];
  v7 = v1[4];
  v16 = v1[3];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100064F50;

  return sub_1000600FC(a1, v17, v16, v7, v8, v9, v10, (v1 + 8));
}

uint64_t sub_100064504()
{
  v1 = (type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  sub_10000EA94((v0 + 64));
  v7 = v0 + v3;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);

  v10 = *(v7 + v1[8]);

  return _swift_deallocObject(v0, v4 + 9, v2 | 7);
}

uint64_t sub_100064634(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v5 = (*(v4 + 64) + ((*(v4 + 80) + 104) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v15 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + v5);
  v12 = *(v1 + v5 + 8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100064F50;

  return sub_10005EF24(a1, v15, v6, v7, v8, v9, v10, (v1 + 8));
}

uint64_t sub_100064798()
{
  v1 = (type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 104) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  sub_10000EA94((v0 + 64));
  v7 = v0 + v3;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + v1[7]);

  v10 = *(v7 + v1[8]);

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000648D8(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for HeadphoneAssets.Feature(0) - 8);
  v5 = ((*(v4 + 80) + 104) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = v1[3];
  v19 = v1[2];
  v8 = v1[5];
  v17 = v1[4];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = *(v1 + v7);
  v14 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100064F50;

  return sub_10005DA74(a1, v19, v18, v17, v8, v9, v10, (v1 + 8));
}

uint64_t sub_100064A58()
{
  sub_10000EA94((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100064AB4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100064AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100064F50;

  return sub_10005A6BC(a1, v4, v5, v7, v6);
}

uint64_t sub_100064BC4()
{
  v1 = sub_100008438(&qword_10011E798, &qword_1000D8658);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064C94(void *a1)
{
  v3 = *(*(sub_100008438(&qword_10011E798, &qword_1000D8658) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_100060E90(a1);
}

uint64_t sub_100064D14()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064D5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064D9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100064F50;

  return sub_10005AD0C(a1, v4, v5, v6);
}

uint64_t sub_100064E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100064FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E88C(a3, v27 - v11, &qword_10011CAA8, &unk_1000D85A0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000E950(v12, &qword_10011CAA8, &unk_1000D85A0);
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

      sub_10000E950(a3, &qword_10011CAA8, &unk_1000D85A0);

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

  sub_10000E950(a3, &qword_10011CAA8, &unk_1000D85A0);
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

uint64_t sub_1000652AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E88C(a3, v27 - v11, &qword_10011CAA8, &unk_1000D85A0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000E950(v12, &qword_10011CAA8, &unk_1000D85A0);
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

      sub_100008438(&qword_10011EB20, &qword_1000D8980);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000E950(a3, &qword_10011CAA8, &unk_1000D85A0);

      return v24;
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

  sub_10000E950(a3, &qword_10011CAA8, &unk_1000D85A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100008438(&qword_10011EB20, &qword_1000D8980);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000655C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0x100000000) != 0)
  {
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
  }

  if (a2)
  {
    v10 = 0xD000000000000016;
  }

  else
  {
    v10 = 0xD000000000000018;
  }

  if (a2)
  {
    v11 = "ptiveControlsStatus()";
  }

  else
  {
    v11 = "musicBeatsProxFlowCard";
  }

  v12 = v11 | 0x8000000000000000;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = v7;
  v14[6] = v9;
  v14[7] = 0x636973756DLL;
  v14[8] = 0xE500000000000000;
  v14[9] = v10;
  v14[10] = v12;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_10007BEC8;
  v16[4] = v14;

  sub_10001ABCC(sub_10007BF20, v16);
}

void *sub_100065790(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1000CD624(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_100008438(&qword_10011EA80, &unk_1000DA490);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000D5250;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1000CD624((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_100065B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10000E88C(a3, v27 - v11, &qword_10011CAA8, &unk_1000D85A0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000E950(v12, &qword_10011CAA8, &unk_1000D85A0);
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

const char *sub_100065DD4()
{
  if (*v0)
  {
    return "ProxCardMultiDeviceDetection";
  }

  else
  {
    return "AirPodsInEducation";
  }
}

uint64_t sub_100065E04()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011E7A0);
  v1 = sub_10000A570(v0, qword_10011E7A0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100065ECC()
{
  result = sub_10007C488(&off_100102B80);
  qword_10011E7B8 = result;
  unk_10011E7C0 = v1;
  return result;
}

uint64_t sub_100065EF8(uint64_t a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10007BF98(a1, v1 + v7);
  swift_endAccess();
  v8 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    sub_10007C964(v1 + v7, v6, type metadata accessor for HeadphoneModel);
    (*(v9 + 24))(v6, ObjectType, v9);
    swift_unknownObjectRelease();
    sub_10007C9CC(a1, type metadata accessor for HeadphoneModel);
    a1 = v6;
  }

  return sub_10007C9CC(a1, type metadata accessor for HeadphoneModel);
}

uint64_t sub_100066050()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager;
  if (*(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager))
  {
    v5 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager);
  }

  else
  {
    sub_1000084D4(0, &qword_10011EAB0, CKContainer_ptr);
    static CKContainer.AirTagsContainer.getter();
    static CKContainer.PersonalizationManateeContainer.getter();
    type metadata accessor for PersonalizationAssetManager();
    static PersonalizationAssetManager.defaultCacheDirectory.getter();
    v5 = PersonalizationAssetManager.__allocating_init(container:manateeContainer:cacheDirectory:)();
    v6 = *(v1 + v4);
    *(v1 + v4) = v5;
  }

  return v5;
}

uint64_t sub_100066150()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_1000661DC(void *a1)
{
  v154 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v154 - 1) + 64);
  v3 = __chkstk_darwin(v154);
  v5 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v148 = &v134 - v6;
  v155 = type metadata accessor for HeadphoneBatteryInfo(0);
  v7 = *(v155 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v155);
  v157 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v134 - v11;
  v149 = sub_100008438(&qword_10011EAC8, &qword_1000D88F0);
  v13 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v15 = &v134 - v14;
  v16 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v147 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v150 = &v134 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v134 - v23;
  __chkstk_darwin(v22);
  v151 = &v134 - v25;
  v153 = type metadata accessor for UUID();
  v26 = *(v153 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v153);
  v146 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = &v134 - v31;
  __chkstk_darwin(v30);
  v34 = &v134 - v33;
  v156 = a1;
  v35 = [a1 bleDevice];
  if (!v35)
  {
    return;
  }

  v36 = v35;
  v37 = [v35 advertisementFields];

  if (!v37)
  {
    return;
  }

  v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = [v156 identifier];
  if (!v39)
  {

    return;
  }

  v145 = v7;
  v40 = v39;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v152;
  v42 = (v152 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model);
  swift_beginAccess();
  if (((*(v42 + 136) | 4) == 0xE || *(v42 + v154[34]) == 8223 && *(v42 + v154[47]) == 1) && (*(v41 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_hasAutoConnected) & 1) == 0)
  {

    sub_100071360(v156);
    (*(v26 + 8))(v34, v153);
    return;
  }

  v141 = v38;
  v143 = v34;
  v43 = v154[12];
  v138 = v42;
  v44 = v151;
  sub_10000E88C(v42 + v43, v151, &qword_10011DE28, &unk_1000D98B0);
  sub_10000E88C(v44, v24, &qword_10011DE28, &unk_1000D98B0);
  v144 = v26;
  v45 = v26 + 48;
  v46 = *(v26 + 48);
  v47 = v153;
  v140 = v45;
  v139 = v46;
  v48 = v46(v24, 1, v153);
  v142 = v15;
  v49 = v48;
  sub_10000E950(v24, &qword_10011DE28, &unk_1000D98B0);
  v50 = v49 == 1;
  v51 = v142;
  v137 = v5;
  v52 = v150;
  if (!v50 || ([v156 needsSetup] & 1) != 0)
  {
    goto LABEL_28;
  }

  v53 = [v156 bleDevice];
  if (v53 && (v54 = v53, v55 = [v53 bluetoothAddress], v54, v55))
  {
    v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = sub_10006BB90(v56, v58);
    v61 = v60;
    sub_100022640(v56, v58);
    v62 = v138[19];
    if (v61)
    {
      v51 = v142;
      v52 = v150;
      if (!v62)
      {

        v47 = v153;
        goto LABEL_28;
      }

      if (v59 == v138[18] && v62 == v61)
      {

        v47 = v153;
      }

      else
      {
        v117 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v47 = v153;
        if ((v117 & 1) == 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v47 = v153;
      v51 = v142;
      v52 = v150;
      if (v62)
      {
        goto LABEL_28;
      }
    }
  }

  else if (v138[19])
  {
    goto LABEL_28;
  }

  if (qword_10011C6C0 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v63 = type metadata accessor for Logger();
    sub_10000A570(v63, qword_10011E7A0);
    v64 = v144;
    v65 = *(v144 + 16);
    v65(v32, v143, v47);
    v66 = v156;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v159[0] = v136;
      *v69 = 136315394;
      v135 = v66;
      v65(v146, v32, v153);
      v70 = String.init<A>(reflecting:)();
      v72 = v71;
      (*(v64 + 8))(v32, v153);
      v73 = sub_100078978(v70, v72, v159);

      *(v69 + 4) = v73;
      *(v69 + 12) = 2080;
      v160 = [v135 bleDevice];
      sub_100008438(&qword_10011EAE8, &unk_1000D88F8);
      v74 = String.init<A>(reflecting:)();
      v76 = sub_100078978(v74, v75, v159);

      *(v69 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v67, v68, "Updating identifier to %s from %s", v69, 0x16u);
      swift_arrayDestroy();

      v47 = v153;
    }

    else
    {

      (*(v64 + 8))(v32, v47);
    }

    v77 = v151;
    sub_10000E950(v151, &qword_10011DE28, &unk_1000D98B0);
    v65(v77, v143, v47);
    (*(v64 + 56))(v77, 0, 1, v47);
    v44 = v77;
    v51 = v142;
    v52 = v150;
LABEL_28:
    v78 = v144;
    (*(v144 + 16))(v52, v143, v47);
    (*(v78 + 56))(v52, 0, 1, v47);
    v79 = *(v149 + 48);
    sub_10000E88C(v44, v51, &qword_10011DE28, &unk_1000D98B0);
    sub_10000E88C(v52, v51 + v79, &qword_10011DE28, &unk_1000D98B0);
    v80 = v139;
    if (v139(v51, 1, v47) != 1)
    {
      v83 = v147;
      sub_10000E88C(v51, v147, &qword_10011DE28, &unk_1000D98B0);
      if (v80(v51 + v79, 1, v47) != 1)
      {
        v84 = v144;
        v85 = v146;
        (*(v144 + 32))(v146, v51 + v79, v47);
        sub_10007CA2C(&qword_10011EAE0, &type metadata accessor for UUID);
        v86 = v83;
        v87 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88 = *(v84 + 8);
        v88(v85, v47);
        sub_10000E950(v52, &qword_10011DE28, &unk_1000D98B0);
        v88(v86, v47);
        v44 = v151;
        sub_10000E950(v51, &qword_10011DE28, &unk_1000D98B0);
        v82 = v141;
        if (v87)
        {
          goto LABEL_37;
        }

LABEL_35:
        sub_10000E950(v44, &qword_10011DE28, &unk_1000D98B0);
        (*(v144 + 8))(v143, v47);
        return;
      }

      sub_10000E950(v52, &qword_10011DE28, &unk_1000D98B0);
      (*(v144 + 8))(v83, v47);
LABEL_34:
      sub_10000E950(v51, &qword_10011EAC8, &qword_1000D88F0);
      goto LABEL_35;
    }

    sub_10000E950(v52, &qword_10011DE28, &unk_1000D98B0);
    v81 = v80(v51 + v79, 1, v47);
    v82 = v141;
    if (v81 != 1)
    {

      goto LABEL_34;
    }

    sub_10000E950(v51, &qword_10011DE28, &unk_1000D98B0);
LABEL_37:
    v160 = 25452;
    v161 = 0xE200000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v82 + 16) && (v89 = sub_1000CD1FC(v159), (v90 & 1) != 0))
    {
      sub_10003CE5C(*(v82 + 56) + 32 * v89, &v160);
      sub_100047824(v159);
      v91 = swift_dynamicCast();
      v92 = v148;
      v32 = v91 ? v158 : 0;
    }

    else
    {
      sub_100047824(v159);
      v32 = 0;
      v92 = v148;
    }

    v160 = 0x7375746174537368;
    v161 = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    if (*(v82 + 16) && (v93 = sub_1000CD1FC(v159), (v94 & 1) != 0))
    {
      sub_10003CE5C(*(v82 + 56) + 32 * v93, &v160);
      sub_100047824(v159);

      if (swift_dynamicCast())
      {
        v95 = v158;
        goto LABEL_48;
      }
    }

    else
    {

      sub_100047824(v159);
    }

    v95 = 0;
LABEL_48:
    v96 = [v156 batteryInfo];
    if (!v96)
    {
      v102 = _swiftEmptyArrayStorage;
      goto LABEL_76;
    }

    v97 = v96;
    sub_1000084D4(0, &qword_10011EAD8, SFBatteryInfo_ptr);
    v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v99 = v98;
    LODWORD(v147) = v32;
    LODWORD(v146) = v95;
    if (v98 >> 62)
    {
      v118 = _CocoaArrayWrapper.endIndex.getter();
      v99 = v98;
      v100 = v118;
      if (!v118)
      {
LABEL_74:
        v102 = _swiftEmptyArrayStorage;
        goto LABEL_75;
      }
    }

    else
    {
      v100 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v100)
      {
        goto LABEL_74;
      }
    }

    if (v100 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_86:
    swift_once();
  }

  v101 = 0;
  v150 = (v99 & 0xC000000000000001);
  v102 = _swiftEmptyArrayStorage;
  LODWORD(v149) = enum case for BatteryIconStyle.unknown(_:);
  v103 = v99;
  do
  {
    if (v150)
    {
      v104 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v104 = *(v99 + 8 * v101 + 32);
    }

    v105 = v104;
    v106 = [v104 batteryState] == 2;
    v107 = [v105 batteryType];
    if (v107 >= 5)
    {
      v108 = 3;
    }

    else
    {
      v108 = 0x201000203uLL >> (8 * v107);
    }

    [v105 batteryLevel];
    v110 = v109;
    v111 = v155;
    v112 = *(v155 + 28);
    v113 = type metadata accessor for BatteryIconStyle();
    (*(*(v113 - 8) + 104))(&v12[v112], v149, v113);
    v114 = [objc_allocWithZone(AABattery) init];
    *v12 = v110;
    v12[8] = v106;
    v12[9] = v108;
    *&v12[*(v111 + 32)] = v114;
    sub_10007C964(v12, v157, type metadata accessor for HeadphoneBatteryInfo);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v102 = sub_1000CCD4C(0, v102[2] + 1, 1, v102);
    }

    v116 = v102[2];
    v115 = v102[3];
    if (v116 >= v115 >> 1)
    {
      v102 = sub_1000CCD4C(v115 > 1, v116 + 1, 1, v102);
    }

    ++v101;

    sub_10007C9CC(v12, type metadata accessor for HeadphoneBatteryInfo);
    v102[2] = v116 + 1;
    sub_10000A4B8(v157, v102 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v116);
    v99 = v103;
  }

  while (v100 != v101);
LABEL_75:

  v92 = v148;
  v47 = v153;
  v44 = v151;
  LOBYTE(v32) = v147;
  v95 = v146;
LABEL_76:
  sub_10007C964(v138, v92, type metadata accessor for HeadphoneModel);
  v119 = v154;
  *(v92 + v154[25]) = v32;
  *(v92 + v119[31]) = v95;
  v120 = [v156 bleDevice];
  if (v120 && (v121 = v120, v122 = [v120 name], v121, v122))
  {
    v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v125 = v124;
  }

  else
  {
    v123 = 0;
    v125 = 0xE000000000000000;
  }

  v126 = (v92 + v154[14]);
  v127 = v126[1];

  *v126 = v123;
  v126[1] = v125;
  v128 = type metadata accessor for AAFeatures();
  v159[3] = v128;
  v159[4] = sub_10007CA2C(&qword_10011EAD0, &type metadata accessor for AAFeatures);
  v129 = sub_10007C900(v159);
  (*(*(v128 - 8) + 104))(v129, enum case for AAFeatures.chargingReminders(_:), v128);
  LOBYTE(v128) = isFeatureEnabled(_:)();
  sub_10000EA94(v159);
  if (v128)
  {

    v130 = v138[16];
    v131 = *(v92 + 128);

    *(v92 + 128) = v130;
  }

  else
  {
    v132 = *(v92 + 128);

    *(v92 + 128) = v102;
  }

  v133 = v137;
  sub_10007CAA0(v44, v92 + v154[12], &qword_10011DE28, &unk_1000D98B0);
  sub_10007C964(v92, v133, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v133);
  sub_10000E950(v44, &qword_10011DE28, &unk_1000D98B0);
  (*(v144 + 8))(v143, v47);
  sub_10007C9CC(v92, type metadata accessor for HeadphoneModel);
}

id sub_1000674EC(void *a1)
{
  v3 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37[-v5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v37[-v13];
  result = [a1 identifier];
  if (result)
  {
    v16 = result;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v18 = type metadata accessor for HeadphoneModel(0);
    sub_10000E88C(v17 + *(v18 + 48), v6, &qword_10011DE28, &unk_1000D98B0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      (*(v8 + 8))(v14, v7);
      return sub_10000E950(v6, &qword_10011DE28, &unk_1000D98B0);
    }

    else
    {
      (*(v8 + 32))(v12, v6, v7);
      if (static UUID.== infix(_:_:)())
      {
        v19 = *(v17 + 136);
        if (v19 <= 0xE && ((1 << v19) & 0x6700) != 0)
        {
          v40 = v1;
          if (qword_10011C6C0 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for Logger();
          sub_10000A570(v20, qword_10011E7A0);
          v21 = a1;
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v41 = v39;
            *v24 = 136315138;
            v25 = v21;
            v26 = [v25 description];
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v38 = v23;
            v28 = v27;
            v30 = v29;

            v31 = sub_100078978(v28, v30, &v41);

            *(v24 + 4) = v31;
            _os_log_impl(&_mh_execute_header, v22, v38, "Auto dismiss on lost device %s", v24, 0xCu);
            sub_10000EA94(v39);
          }

          v32 = v40;
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_100047C68();
            v32 = v40;
            swift_unknownObjectRelease();
          }

          v33 = v32 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v34 = *(v33 + 8);
            ObjectType = swift_getObjectType();
            (*(v34 + 8))(0, ObjectType, v34);
            swift_unknownObjectRelease();
          }
        }
      }

      v36 = *(v8 + 8);
      v36(v12, v7);
      return (v36)(v14, v7);
    }
  }

  return result;
}

uint64_t sub_10006792C(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000661DC(a1);
  }

  return result;
}

id sub_1000679A4(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  result = swift_beginAccess();
  if ((*(v7 + *(v3 + 176)) & 1) == 0)
  {
    result = [a1 btAddressData];
    if (result)
    {
      v64 = v1;
      v9 = result;
      v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v65[0] = sub_100065790(v10, v12);
      sub_100008438(&qword_10011EA70, &unk_1000D8810);
      sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810);
      BidirectionalCollection<>.joined(separator:)();

      v13 = String.lowercased()();

      if (!*(v7 + 152))
      {
        sub_100022640(v10, v12);
      }

      v14 = *(v7 + 144);
      v15 = String.lowercased()();
      if (v13._countAndFlagsBits == v15._countAndFlagsBits && v13._object == v15._object)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v63 = v10;
      if (([a1 gapaFlags] & 1) == 0)
      {
        if (([a1 gapaFlags] & 2) != 0)
        {
          if (qword_10011C6C0 != -1)
          {
            swift_once();
          }

          v40 = type metadata accessor for Logger();
          sub_10000A570(v40, qword_10011E7A0);
          v41 = a1;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          v44 = os_log_type_enabled(v42, v43);
          v61 = v12;
          if (v44)
          {
            v45 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v65[0] = v62;
            *v45 = 136315138;
            v46 = v41;
            v47 = [v46 description];
            v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            v51 = sub_100078978(v48, v50, v65);

            *(v45 + 4) = v51;
            _os_log_impl(&_mh_execute_header, v42, v43, "CB Device, device is not genuine  %s", v45, 0xCu);
            sub_10000EA94(v62);
          }

          v52 = v64;
          *(v7 + *(v3 + 176)) = 1;
          v53 = v52 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v54 = *(v53 + 8);
            ObjectType = swift_getObjectType();
            sub_10007C964(v7, v6, type metadata accessor for HeadphoneModel);
            (*(v54 + 24))(v6, ObjectType, v54);
            v52 = v64;
            swift_unknownObjectRelease();
            sub_10007C9CC(v6, type metadata accessor for HeadphoneModel);
          }

          v57 = *(v52 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
          v56 = *(v52 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
          v58 = swift_getObjectType();
          v59 = *(v56 + 192);
          swift_unknownObjectRetain();
          v59(v58, v56);
          swift_unknownObjectRelease();
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_10004ABCC();
            swift_unknownObjectRelease();
          }

          v17 = v63;
          v39 = v61;
          return sub_100022640(v17, v39);
        }

        v17 = v63;
LABEL_20:
        v39 = v12;
        return sub_100022640(v17, v39);
      }

      if (qword_10011C6C0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000A570(v18, qword_10011E7A0);
      v19 = a1;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      LODWORD(v62) = v21;
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v65[0] = v60;
        *v22 = 136315138;
        v23 = v19;
        v24 = [v23 description];
        v25 = v12;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = v26;
        v12 = v25;
        v30 = sub_100078978(v29, v28, v65);

        *(v22 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v20, v62, "CB Device, device is genuine %s", v22, 0xCu);
        sub_10000EA94(v60);
      }

      v10 = v63;
      v31 = v64;
      *(v7 + *(v3 + 176)) = 1;
      v32 = v31 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v33 = *(v32 + 8);
        v34 = v12;
        v35 = swift_getObjectType();
        sub_10007C964(v7, v6, type metadata accessor for HeadphoneModel);
        v36 = *(v33 + 24);
        v37 = v35;
        v12 = v34;
        v38 = v33;
        v10 = v63;
        v36(v6, v37, v38);
        swift_unknownObjectRelease();
        sub_10007C9CC(v6, type metadata accessor for HeadphoneModel);
      }

      sub_10006FC54();
LABEL_19:
      v17 = v10;
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_100068068(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

id sub_1000680DC(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  result = swift_beginAccess();
  if (*(v10 + *(v3 + 176)))
  {
    return result;
  }

  result = [a1 btAddressData];
  if (!result)
  {
    return result;
  }

  v45 = v7;
  v48 = v1;
  v12 = result;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v49 = sub_100065790(v13, v15);
  sub_100008438(&qword_10011EA70, &unk_1000D8810);
  sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810);
  BidirectionalCollection<>.joined(separator:)();

  v16 = String.lowercased()();

  if (!*(v10 + 152))
  {
    sub_100022640(v13, v15);
  }

  v46 = v13;
  v47 = v15;
  v17 = *(v10 + 144);
  v18 = String.lowercased()();
  if (v16._countAndFlagsBits == v18._countAndFlagsBits && v16._object == v18._object)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      return sub_100022640(v46, v47);
    }
  }

  v20 = [a1 name];
  if (!v20)
  {
    return sub_100022640(v46, v47);
  }

  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25 || v22 == 0xD000000000000010 && 0x80000001000E0BF0 == v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (sub_100071C24() & 1) == 0)
  {

    return sub_100022640(v46, v47);
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000A570(v26, qword_10011E7A0);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v44 = v28;
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v30 = 136315138;
    v31 = v27;
    v32 = [v31 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_100078978(v42, v34, &v49);

    *(v30 + 4) = v35;
    v36 = v44;
    _os_log_impl(&_mh_execute_header, v44, v29, "Friendly Name: Found Device with Details %s", v30, 0xCu);
    sub_10000EA94(v43);
  }

  else
  {
  }

  v37 = v47;
  v38 = v46;
  [*(v48 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery) setDiscoveryFlags:0];
  sub_10007C964(v10, v9, type metadata accessor for HeadphoneModel);
  v39 = &v9[*(v3 + 60)];
  v40 = v39[1];

  *v39 = v22;
  v39[1] = v24;
  v41 = v45;
  sub_10007C964(v9, v45, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v41);
  sub_100022640(v38, v37);
  return sub_10007C9CC(v9, type metadata accessor for HeadphoneModel);
}

uint64_t sub_1000685C4(void *a1)
{
  v1 = [a1 bluetoothAddress];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = String.lowercased()();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
  }

  v4 = Strong + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (!*(v4 + 152))
  {
  }

  v5 = *(v4 + 144);

  v6 = String.lowercased()();

  if (v2._countAndFlagsBits == v6._countAndFlagsBits && v2._object == v6._object)
  {

    goto LABEL_12;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_12:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    dispatch thunk of AADBatteryInfoVM.updateBatteryInfo(_:)();
  }

  return result;
}

uint64_t sub_1000687B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10006886C();
  }

  return result;
}

void sub_10006886C()
{
  v0 = type metadata accessor for HeadphoneModel(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = __chkstk_darwin(v0 - 8);
  v63 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v62 = v61 - v4;
  v5 = type metadata accessor for HeadphoneBatteryInfo(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C6C0 != -1)
  {
LABEL_31:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000A570(v10, qword_10011E7A0);

  v65 = v11;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v70 = v15;
    *v14 = 136315138;
    v16 = dispatch thunk of AADBatteryInfoVM.debugDescription.getter();
    v18 = sub_100078978(v16, v17, &v70);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Battery: [INCOMING VM] handleBatteryUpdate: batteryInfo %s", v14, 0xCu);
    sub_10000EA94(v15);
  }

  v19 = v66 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  countAndFlagsBits = *(v19 + 144);
  v20 = *(v19 + 152);
  v64 = v19;
  if (v20)
  {
    v22 = String.lowercased()();
    countAndFlagsBits = v22._countAndFlagsBits;
    object = v22._object;
  }

  else
  {
    object = 0;
  }

  dispatch thunk of AADBatteryInfoVM.bluetoothAddress.getter();
  v24 = String.lowercased()();

  if (!object)
  {

    goto LABEL_23;
  }

  if (countAndFlagsBits == v24._countAndFlagsBits && object == v24._object)
  {

    goto LABEL_13;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
LABEL_23:

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v69 = v42;
      *v41 = 136315138;
      v43 = *(v64 + 152);
      v68[0] = *(v64 + 144);
      v68[1] = v43;

      sub_100008438(&qword_10011E010, &unk_1000D8870);
      v44 = String.init<A>(reflecting:)();
      v46 = sub_100078978(v44, v45, &v69);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "handleBatteryUpdate: btAddress don't match %s or no underlying device", v41, 0xCu);
      sub_10000EA94(v42);
    }

    return;
  }

LABEL_13:
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5240;
  *(inited + 32) = dispatch thunk of AADBatteryInfoVM.batteryLeft.getter();
  v61[1] = inited + 32;
  *(inited + 40) = dispatch thunk of AADBatteryInfoVM.batteryRight.getter();
  *(inited + 48) = dispatch thunk of AADBatteryInfoVM.batteryCase.getter();
  *(inited + 56) = dispatch thunk of AADBatteryInfoVM.batteryMain.getter();
  *(inited + 64) = dispatch thunk of AADBatteryInfoVM.batteryCombinedLeftRight.getter();
  v68[0] = _swiftEmptyArrayStorage;
  sub_1000CD644(0, 5, 0);
  v27 = 0;
  v28 = v68[0];
  v67 = inited & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v27 >= *(v67 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      v29 = *(inited + 8 * v27 + 32);
    }

    v30 = v29;
    v31 = [v29 type];
    if (v31 >= 6)
    {
      v60 = v31;
      type metadata accessor for AABatteryType(0);
      v69 = v60;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    v32 = 0x40201000203uLL >> (8 * v31);
    [v30 level];
    v34 = v33;
    v35 = [v30 state] == 2;
    v36 = &v9[*(v5 + 28)];
    AABattery.batteryIconStyle.getter();
    *v9 = v34;
    v9[8] = v35;
    v9[9] = v32;
    *&v9[*(v5 + 32)] = v30;
    v68[0] = v28;
    v38 = *(v28 + 16);
    v37 = *(v28 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1000CD644(v37 > 1, v38 + 1, 1);
      v28 = v68[0];
    }

    ++v27;
    *(v28 + 16) = v38 + 1;
    sub_10000A4B8(v9, v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v38);
  }

  while (v27 != 5);
  swift_setDeallocating();
  v47 = *(inited + 16);
  swift_arrayDestroy();
  v48 = v62;
  sub_10007C964(v64, v62, type metadata accessor for HeadphoneModel);
  v49 = *(v48 + 128);

  *(v48 + 128) = v28;

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68[0] = v54;
    *v53 = 136315138;
    v55 = Array.description.getter();
    v57 = v56;

    v58 = sub_100078978(v55, v57, v68);

    *(v53 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "handleBatteryUpdate: batteries added %s", v53, 0xCu);
    sub_10000EA94(v54);
  }

  else
  {
  }

  v59 = v63;
  sub_10007C964(v48, v63, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v59);
  sub_10007C9CC(v48, type metadata accessor for HeadphoneModel);
}

id sub_10006901C()
{
  v1 = v0;
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Live Translation: fetchTranslationAssets", v5, 2u);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    v10 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v11 = *(v10 + 120);
    aBlock = *(v10 + 112);
    v29 = v11;
    sub_10007C0D4(aBlock);
    sub_100008438(&qword_10011EAB8, &unk_1000D88D0);
    v12 = String.init<A>(reflecting:)();
    v14 = sub_100078978(v12, v13, &v27);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Live Translation: fetchTranslationAssets Current: %s", v8, 0xCu);
    sub_10000EA94(v9);
  }

  v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_translationAssetGetter;
  v16 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_translationAssetGetter);
  v32 = sub_10007C0CC;
  v33 = v1;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_10007729C;
  v31 = &unk_100106888;
  v17 = _Block_copy(&aBlock);

  v18 = v16;

  [v18 setTranslationAssetsInfoHandler:v17];
  _Block_release(v17);

  v19 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetManagementClient;
  v20 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetManagementClient);
  v32 = sub_100077340;
  v33 = 0;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100019340;
  v31 = &unk_1001068B0;
  v21 = _Block_copy(&aBlock);
  v22 = v20;
  [v22 setInterruptionHandler:v21];
  _Block_release(v21);

  v23 = *(v1 + v19);
  v32 = sub_10007734C;
  v33 = 0;
  aBlock = _NSConcreteStackBlock;
  v29 = 1107296256;
  v30 = sub_100019340;
  v31 = &unk_1001068D8;
  v24 = _Block_copy(&aBlock);
  v25 = v23;
  [v25 setInvalidationHandler:v24];
  _Block_release(v24);

  return [*(v1 + v15) getTranslationAssets];
}

uint64_t sub_1000693EC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HeadphoneModel(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  v10 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  v11 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler + 8);
  *v9 = a1;
  v9[1] = a2;
  sub_1000622D4(v10);

  sub_1000696C0();
  sub_1000699B0();
  sub_10006A740();
  if (*(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) == 1)
  {
    v12 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery);
    v26 = sub_10006AF0C;
    v27 = 0;
    aBlock = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10006AF20;
    v25 = &unk_1001069A0;
    v13 = _Block_copy(&aBlock);
    [v12 activateWithCompletion:v13];
    _Block_release(v13);
  }

  v14 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceDiscovery);
  v26 = sub_10006AF8C;
  v27 = 0;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_10006AF20;
  v25 = &unk_100106978;
  v15 = _Block_copy(&aBlock);
  [v14 activateWithCompletion:v15];
  _Block_release(v15);
  if (qword_10011C750 != -1)
  {
    swift_once();
  }

  v16 = qword_1001231E0;
  v17 = v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  *(v17 + *(v5 + 172)) = sub_1000A566C(*(v17 + *(v5 + 136)), v16) & 1;
  v18 = v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    sub_10007C964(v17, v8, type metadata accessor for HeadphoneModel);
    (*(v20 + 24))(v8, ObjectType, v20);
    swift_unknownObjectRelease();
    return sub_10007C9CC(v8, type metadata accessor for HeadphoneModel);
  }

  return result;
}

uint64_t sub_1000696C0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_workingQueue);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_10007CF9C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100106AB8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void sub_1000699B0()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v92 - v4;
  v6 = sub_100008438(&qword_10011EA88, &qword_1000D8880);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v10 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v92 - v11;
  v13 = type metadata accessor for Date();
  v104 = *(v13 - 8);
  v14 = *(v104 + 64);
  __chkstk_darwin(v13);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v18 = type metadata accessor for HeadphoneModel(0);
  if (*(v17 + *(v18 + 84)) == 1)
  {
    v19 = v18;
    v102 = v13;
    v98 = *(v17 + 160);
    v99 = v7;
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v100 = v8;
    v20 = type metadata accessor for Logger();
    v103 = sub_10000A570(v20, qword_10011E7A0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Fetching assets", v23, 2u);
    }

    v101 = v16;
    Date.init()();
    v24 = *(v17 + *(v19 + 136));
    v96 = *(v17 + 162);
    v97 = v24;
    v25 = v17 + *(v19 + 64);
    v27 = *v25;
    v26 = *(v25 + 8);
    if (v26 >> 60 == 15)
    {
      goto LABEL_7;
    }

    v37 = v26 >> 62;
    if ((v26 >> 62) > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_43;
      }

      v39 = v27[2];
      v38 = v27[3];
      v40 = v38 - v39;
      if (!__OFSUB__(v38, v39))
      {
LABEL_28:
        sub_10007CE0C(v27, v26);
        sub_10007B8A8(v27, v26);
        if (v40 != 17)
        {
LABEL_17:
          if (v37 == 2)
          {
            v56 = v27[2];
            v55 = v27[3];
            v57 = __OFSUB__(v55, v56);
            v58 = v55 - v56;
            if (v57)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            if (v58 != 18)
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v37 == 1)
            {
              if (!__OFSUB__(HIDWORD(v27), v27))
              {
                if (HIDWORD(v27) - v27 != 18)
                {
                  goto LABEL_43;
                }

                goto LABEL_34;
              }

              goto LABEL_57;
            }

            if (BYTE6(v26) != 18)
            {
LABEL_43:
              sub_10007CE0C(v27, v26);
              sub_10007B8A8(v27, v26);
              v80 = Logger.logObject.getter();
              v81 = static os_log_type_t.error.getter();
              if (!os_log_type_enabled(v80, v81))
              {
                sub_100047878(v27, v26);
                sub_100047878(v27, v26);

                sub_100047878(v27, v26);
LABEL_7:
                v28 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
                (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
LABEL_38:
                v68 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_prePairingAssetInfo;
                swift_beginAccess();
                sub_10007CAA0(v12, v1 + v68, &qword_10011EA88, &qword_1000D8880);
                swift_endAccess();
                v69 = type metadata accessor for TaskPriority();
                (*(*(v69 - 8) + 56))(v5, 1, 1, v69);
                v70 = swift_allocObject();
                swift_weakInit();
                sub_10000E88C(v12, v10, &qword_10011EA88, &qword_1000D8880);
                v71 = (*(v99 + 80) + 72) & ~*(v99 + 80);
                v72 = swift_allocObject();
                *(v72 + 16) = 0;
                *(v72 + 24) = 0;
                *(v72 + 32) = v70;
                v73 = v96;
                *(v72 + 40) = v97;
                *(v72 + 44) = v73;
                *(v72 + 48) = v98;
                *(v72 + 56) = v27;
                *(v72 + 64) = v26;
                sub_10007CC60(v10, v72 + v71);
                sub_10007CE0C(v27, v26);
                sub_100065B00(0, 0, v5, &unk_1000D8918, v72);

                sub_10000E950(v5, &qword_10011CAA8, &unk_1000D85A0);
                v74 = Logger.logObject.getter();
                v75 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v74, v75))
                {
                  v76 = swift_slowAlloc();
                  *v76 = 0;
                  _os_log_impl(&_mh_execute_header, v74, v75, "Fetching assets finished", v76, 2u);
                }

                v77 = v101;
                Date.timeIntervalSinceNow.getter();
                v79 = v78;
                sub_100047878(v27, v26);
                sub_10000E950(v12, &qword_10011EA88, &qword_1000D8880);
                (*(v104 + 8))(v77, v102);
                *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetFetchDuration) = -v79;
                return;
              }

              v93 = v81;
              v94 = v80;
              v82 = swift_slowAlloc();
              v95 = v82;
              v92 = swift_slowAlloc();
              v107 = v92;
              *v82 = 136315394;
              v106 = sub_100065790(v27, v26);
              sub_100008438(&qword_10011EA70, &unk_1000D8810);
              sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810);
              v83 = BidirectionalCollection<>.joined(separator:)();
              v85 = v84;

              v86 = sub_100078978(v83, v85, &v107);
              v87 = v95;

              *(v87 + 4) = v86;
              *(v87 + 6) = 2048;
              if (v37 > 1)
              {
                if (v37 != 2)
                {
                  sub_100047878(v27, v26);
                  v88 = 0;
                  goto LABEL_55;
                }

                v90 = v27[2];
                v89 = v27[3];
                sub_100047878(v27, v26);
                v88 = v89 - v90;
                if (!__OFSUB__(v89, v90))
                {
                  goto LABEL_55;
                }

                __break(1u);
              }

              else if (!v37)
              {
                sub_100047878(v27, v26);
                v88 = BYTE6(v26);
LABEL_55:
                v91 = v94;
                *(v87 + 14) = v88;
                sub_100047878(v27, v26);
                _os_log_impl(&_mh_execute_header, v91, v93, "#Expected 18 bytes for pairingEngravingData: %s, but %ld bytes received.", v87, 0x16u);
                sub_10000EA94(v92);

                sub_100047878(v27, v26);

                goto LABEL_7;
              }

              sub_100047878(v27, v26);
              LODWORD(v88) = HIDWORD(v27) - v27;
              if (!__OFSUB__(HIDWORD(v27), v27))
              {
                v88 = v88;
                goto LABEL_55;
              }

LABEL_59:
              __break(1u);
              return;
            }
          }

LABEL_34:
          sub_10007B8A8(v27, v26);
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();
          sub_100047878(v27, v26);
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v94 = v61;
            v95 = swift_slowAlloc();
            v107 = v95;
            LODWORD(v61->isa) = 136315138;
            v106 = sub_100065790(v27, v26);
            v93 = v60;
            sub_100008438(&qword_10011EA70, &unk_1000D8810);
            sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810);
            v62 = BidirectionalCollection<>.joined(separator:)();
            v64 = v63;

            v65 = sub_100078978(v62, v64, &v107);

            v66 = v94;
            *(&v94->isa + 4) = v65;
            _os_log_impl(&_mh_execute_header, v59, v93, "pairingEngravingData with 18 bytes for asset request: %s.", v66, 0xCu);
            sub_10000EA94(v95);
          }

          PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)();
LABEL_37:
          v67 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
          (*(*(v67 - 8) + 56))(v12, 0, 1, v67);
          goto LABEL_38;
        }

LABEL_29:
        v107 = v27;
        v108 = v26;
        sub_10007CE0C(v27, v26);
        v41 = sub_10007C488(&off_100102BB8);
        v43 = v42;
        Data.append(_:)();
        sub_100022640(v41, v43);
        v44 = v107;
        v45 = v108;
        sub_10007B8A8(v107, v108);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        sub_100022640(v44, v45);
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v94 = v46;
          v49 = v48;
          v92 = v48;
          v95 = swift_slowAlloc();
          v106 = v95;
          *v49 = 136315138;
          v105 = sub_100065790(v44, v45);
          v93 = v47;
          sub_100008438(&qword_10011EA70, &unk_1000D8810);
          sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810);
          v50 = BidirectionalCollection<>.joined(separator:)();
          v52 = v51;

          v53 = sub_100078978(v50, v52, &v106);

          v54 = v92;
          *(v92 + 4) = v53;
          v46 = v94;
          _os_log_impl(&_mh_execute_header, v94, v93, "pairingEngravingData with 18 bytes for asset request: %s.", v54, 0xCu);
          sub_10000EA94(v95);
        }

        swift_beginAccess();
        sub_10007B8A8(v107, v108);
        PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)();
        sub_100047878(v27, v26);
        sub_100022640(v107, v108);
        goto LABEL_37;
      }

      __break(1u);
    }

    else if (!v37)
    {
      if (BYTE6(v26) != 17)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }

    if (__OFSUB__(HIDWORD(v27), v27))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v40 = HIDWORD(v27) - v27;
    goto LABEL_28;
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A570(v29, qword_10011E7A0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Device is unsupported, not looking up assets", v32, 2u);
  }

  v33 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler;
  v34 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  if (v34)
  {
    v35 = *(v33 + 8);

    v34(v36);
    sub_1000622D4(v34);
  }
}