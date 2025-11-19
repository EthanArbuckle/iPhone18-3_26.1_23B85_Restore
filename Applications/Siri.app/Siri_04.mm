uint64_t sub_1000C7C30(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000C7E58(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000C7EE4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_1000C7F2C()
{
  result = qword_10018EE60;
  if (!qword_10018EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE60);
  }

  return result;
}

unint64_t sub_1000C7F84()
{
  result = qword_10018EE68;
  if (!qword_10018EE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE68);
  }

  return result;
}

unint64_t sub_1000C7FDC()
{
  result = qword_10018EE70;
  if (!qword_10018EE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE70);
  }

  return result;
}

unint64_t sub_1000C8034()
{
  result = qword_10018EE78;
  if (!qword_10018EE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EE78);
  }

  return result;
}

void sub_1000C808C()
{
  v1 = v0;
  v50 = type metadata accessor for UUID();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_requesterID];
  v53 = &v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_requesterID];
  strcpy(&v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_requesterID], "com.apple.siri");
  v5[15] = -18;
  v6 = &v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_siriSettingsPath];
  *v6 = 0xD000000000000011;
  *(v6 + 1) = 0x800000010011B3A0;
  v7 = &v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_bannerTitle];
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v57._object = 0xEC000000656C7469;
  v57._countAndFlagsBits = 0x542072656E6E6142;
  v10._countAndFlagsBits = 0xD00000000000001CLL;
  v10._object = 0x800000010011B3C0;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v57);

  v52 = v7;
  *v7 = v12;
  v13 = &v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_bannerSubtitle];
  v14 = [v8 mainBundle];
  v58._object = 0xEF656C7469746275;
  v58._countAndFlagsBits = 0x532072656E6E6142;
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  v15._object = 0x800000010011B3E0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v58);

  v51 = v13;
  *v13 = v17;
  v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_isBannerPresent] = 0;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v2 + 8))(v4, v50);
  v21 = &v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_requestID];
  *v21 = v18;
  v21[1] = v20;
  v22 = String._bridgeToObjectiveC()();
  v23 = objc_opt_self();
  v24 = [v23 _systemImageNamed:v22];

  v25 = [objc_allocWithZone(UIImageView) initWithImage:v24];
  v26 = objc_opt_self();
  v27 = [v26 systemGrayColor];
  [(Swift::String *)v25 setTintColor:v27];

  v28 = String._bridgeToObjectiveC()();
  v29 = [v23 _systemImageNamed:v28];

  v30 = [objc_allocWithZone(UIImageView) initWithImage:v29];
  v31 = [v26 systemGrayColor];
  [v30 setTintColor:v31];

  v32 = objc_allocWithZone(PLPillContentItem);

  v33 = String._bridgeToObjectiveC()();

  v34 = [v32 initWithText:v33 style:1];

  object = v51->_object;
  countAndFlagsBits = v51->_countAndFlagsBits;
  v56 = object;
  sub_1000C45D0();
  StringProtocol.localizedCapitalized.getter();
  v36 = objc_allocWithZone(PLPillContentItem);
  v37 = String._bridgeToObjectiveC()();

  v38 = [v36 initWithText:v37 style:2];

  v39 = objc_allocWithZone(PLPillView);
  v52 = v25;
  v40 = [v39 initWithLeadingAccessoryView:v25 trailingAccessoryView:v30];
  v41 = OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_pillView;
  *&v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_pillView] = v40;
  sub_100093B6C(&qword_10018E930);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000F7D00;
  *(v42 + 32) = v34;
  *(v42 + 40) = v38;
  sub_10000A238(0, &unk_10018EF80);
  v43 = v40;
  v44 = v34;
  v45 = v38;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 setCenterContentItems:isa];

  [*&v1[v41] setAutoresizingMask:18];

  v47 = String._bridgeToObjectiveC()();

  v48 = [objc_opt_self() bannerSourceForDestination:0 forRequesterIdentifier:v47];

  if (v48)
  {
    *&v1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_bannerSource] = v48;
    v49 = type metadata accessor for SRAssetsDownloadBannerViewController();
    v54.receiver = v1;
    v54.super_class = v49;
    objc_msgSendSuper2(&v54, "initWithNibName:bundle:", 0, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000C86E8()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"openSettings:"];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addGestureRecognizer:v1];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 addSubview:*&v0[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_pillView]];
}

uint64_t sub_1000C88DC(double a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_isBannerPresent) & 1) == 0)
  {
    sub_10000A238(0, &qword_10018EAE0);
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = a1;
    aBlock[4] = sub_1000CA0F4;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007C78;
    aBlock[3] = &unk_10016A828;
    v14 = _Block_copy(aBlock);
    v15 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000CA094();
    sub_100093B6C(&unk_10018EAF0);
    sub_1000BA610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_1000C8B90(char *a1, double a2)
{
  v4 = *&a1[OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_bannerSource];
  v39 = 0;
  v5 = [v4 layoutDescriptionWithError:&v39];
  if (v5)
  {
    v6 = v5;
    v7 = v39;
    [v6 presentationSize];
    v9 = v8;
    v11 = v10;
    [v6 containerSize];
    [a1 preferredContentSizeWithPresentationSize:v9 containerSize:{v11, v12, v13}];
    [a1 setPreferredContentSize:?];
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100006160(v14, qword_10018EE28);
    v15 = static os_log_type_t.info.getter();
    v39 = 0xD000000000000010;
    v40 = 0x800000010011B2C0;
    v16 = sub_100006198(0x80000000uLL);
    if (v17)
    {
      v41._countAndFlagsBits = 32;
      v41._object = 0xE100000000000000;
      String.append(_:)(*&v16);

      String.append(_:)(v41);
    }

    if (("ssets download banner" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v41._countAndFlagsBits = 32;
      v41._object = 0xE100000000000000;
      v18._countAndFlagsBits = 0xD00000000000001ELL;
      v18._object = 0x800000010011B310;
      String.append(_:)(v18);
      String.append(_:)(v41);
    }

    v20 = v39;
    v19 = v40;
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, v15))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v41._countAndFlagsBits = v23;
      *v22 = 136315138;
      v24 = sub_1000075D4(v20, v19, &v41._countAndFlagsBits);

      *(v22 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v21, v15, "%s", v22, 0xCu);
      sub_100006114(v23);
    }

    else
    {
    }

    v39 = 0;
    if ([v4 postPresentable:a1 options:1 userInfo:0 error:&v39])
    {
      v26 = v39;
      sub_1000C91B4(a2);

      return;
    }

    v27 = v39;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  else
  {
    v25 = v39;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_100006160(v28, qword_10018EE28);
  v29 = static os_log_type_t.error.getter();
  v39 = 0xD000000000000010;
  v40 = 0x800000010011B2C0;
  v30 = sub_100006198(0x80000000uLL);
  if (v31)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    String.append(_:)(*&v30);

    String.append(_:)(v41);
  }

  if (("showBanner(for:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    v32._countAndFlagsBits = 0xD000000000000025;
    v32._object = 0x800000010011B2E0;
    String.append(_:)(v32);
    String.append(_:)(v41);
  }

  v34 = v39;
  v33 = v40;
  v35 = Logger.logObject.getter();
  if (os_log_type_enabled(v35, v29))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41._countAndFlagsBits = v37;
    *v36 = 136315138;
    v38 = sub_1000075D4(v34, v33, &v41._countAndFlagsBits);

    *(v36 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v35, v29, "%s", v36, 0xCu);
    sub_100006114(v37);
  }

  else
  {
  }
}

uint64_t sub_1000C91B4(double a1)
{
  v30 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for DispatchTime();
  v12 = *(v25 - 8);
  v13 = __chkstk_darwin(v25);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  sub_10000A238(0, &qword_10018EAE0);
  v18 = static OS_dispatch_queue.main.getter();
  result = static DispatchTime.now()();
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    *v11 = a1;
    (*(v9 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v8);
    + infix(_:_:)();
    (*(v9 + 8))(v11, v8);
    v30 = *(v12 + 8);
    v20 = v25;
    (*&v30)(v15, v25);
    v21 = swift_allocObject();
    v22 = v26;
    *(v21 + 16) = v26;
    aBlock[4] = sub_1000CA0EC;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007C78;
    aBlock[3] = &unk_10016A788;
    v23 = _Block_copy(aBlock);
    v24 = v22;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000CA094();
    sub_100093B6C(&unk_10018EAF0);
    sub_1000BA610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v29 + 8))(v4, v2);
    (*(v27 + 8))(v7, v28);
    return (*&v30)(v17, v20);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000C9650(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_isBannerPresent) == 1)
  {
    sub_10000A238(0, &qword_10018EAE0);
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    aBlock[4] = sub_1000CA6AC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007C78;
    aBlock[3] = &unk_10016A7D8;
    v13 = _Block_copy(aBlock);
    v14 = a1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000CA094();
    sub_100093B6C(&unk_10018EAF0);
    sub_1000BA610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_1000C98F8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_isBannerPresent) == 1)
  {
    sub_10000A238(0, &qword_10018EAE0);
    v10 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    aBlock[4] = sub_1000CA08C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007C78;
    aBlock[3] = &unk_10016A738;
    v12 = _Block_copy(aBlock);
    v13 = v0;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000CA094();
    sub_100093B6C(&unk_10018EAF0);
    sub_1000BA610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_1000C9BA0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_bannerSource);
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v18 = 0;
  v4 = [v1 revokePresentableWithRequestIdentifier:v2 reason:v3 animated:1 userInfo:0 error:&v18];

  if (v4)
  {
    v5 = v18;
  }

  else
  {
    v6 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10018D798 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006160(v7, qword_10018EE28);
    v8 = static os_log_type_t.error.getter();
    v18 = 0x427373696D736964;
    v19 = 0xEF292872656E6E61;
    v9 = sub_100006198(0x80000000uLL);
    if (v10)
    {
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      String.append(_:)(*&v9);

      String.append(_:)(v20);
    }

    if (("T{UIEdgeInsets=dddd},N,R" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      v11._object = 0x800000010011B290;
      v11._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v11);
      String.append(_:)(v20);
    }

    v13 = v18;
    v12 = v19;
    v14 = Logger.logObject.getter();
    if (os_log_type_enabled(v14, v8))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20._countAndFlagsBits = v16;
      *v15 = 136315138;
      v17 = sub_1000075D4(v13, v12, &v20._countAndFlagsBits);

      *(v15 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v14, v8, "%s", v15, 0xCu);
      sub_100006114(v16);
    }

    else
    {
    }
  }
}

id sub_1000C9EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRAssetsDownloadBannerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000CA000()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

unint64_t sub_1000CA094()
{
  result = qword_10018EF50;
  if (!qword_10018EF50)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018EF50);
  }

  return result;
}

void sub_1000CA100()
{
  v1 = v0 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_requesterID;
  strcpy((v0 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_requesterID), "com.apple.siri");
  *(v1 + 15) = -18;
  v2 = (v0 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_siriSettingsPath);
  *v2 = 0xD000000000000011;
  v2[1] = 0x800000010011B3A0;
  v3 = (v0 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_bannerTitle);
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v14._object = 0xEC000000656C7469;
  v14._countAndFlagsBits = 0x542072656E6E6142;
  v6._countAndFlagsBits = 0xD00000000000001CLL;
  v6._object = 0x800000010011B3C0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v14);

  *v3 = v8;
  v9 = (v0 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_bannerSubtitle);
  v10 = [v4 mainBundle];
  v15._object = 0xEF656C7469746275;
  v15._countAndFlagsBits = 0x532072656E6E6142;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v11._object = 0x800000010011B3E0;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v15);

  *v9 = v13;
  *(v0 + OBJC_IVAR____TtC4Siri36SRAssetsDownloadBannerViewController_isBannerPresent) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000CA2E0()
{
  v0 = sub_100093B6C(&unk_10018E310);
  __chkstk_darwin(v0 - 8);
  v2 = &v23 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10009E588(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  if (qword_10018D798 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006160(v8, qword_10018EE28);
  v9 = static os_log_type_t.info.getter();
  v24 = 0xD000000000000010;
  v25 = 0x800000010011B360;
  v10 = sub_100006198(0x80000000uLL);
  if (v11)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    String.append(_:)(*&v10);

    String.append(_:)(v23);
  }

  if (("openSettings(_:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v23._countAndFlagsBits = 32;
    v23._object = 0xE100000000000000;
    v12._countAndFlagsBits = 0xD00000000000001CLL;
    v12._object = 0x800000010011B380;
    String.append(_:)(v12);
    String.append(_:)(v23);
  }

  v14 = v24;
  v13 = v25;
  v15 = Logger.logObject.getter();
  if (os_log_type_enabled(v15, v9))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23._countAndFlagsBits = v17;
    *v16 = 136315138;
    v18 = sub_1000075D4(v14, v13, &v23._countAndFlagsBits);

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v15, v9, "%s", v16, 0xCu);
    sub_100006114(v17);
  }

  else
  {
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v20 = result;
    URL._bridgeToObjectiveC()(v19);
    v22 = v21;
    [v20 openSensitiveURL:v21 withOptions:0];

    sub_1000C98F8();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for SRCarPlaySiriUnavailableViewController()
{
  result = qword_10018F050;
  if (!qword_10018F050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000CA800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SRCarPlaySiriUnavailableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000CA874(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "+[SRErrorUtility userStringForError:modeProvider:reflectionDialogWasPlayed:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s #errorHandling received unhandled error: %{public}@", &v2, 0x16u);
}

void sub_1000CAAE8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRSystemAssistantExperienceViewController _siriRequestCommittedFromSuggestionToolInvocation:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s #suggestions encoded tool invocation data is nil, not executing suggestion", &v1, 0xCu);
}

void sub_1000CAC5C(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SRSystemAssistantExperienceViewController siriViewControllerEffectiveBundleForCoreLocation:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s #compact Returning nil for controller %{public}@", &v2, 0x16u);
}

void sub_1000CADD8(char a1, char a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[SRSystemAssistantExperienceViewController dismissSiriResults]";
  v5 = 1024;
  v6 = a1 & 1;
  v7 = 1024;
  v8 = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s dismissSiriResults was called when not in speech or text modality, or  while not presenting VisualIntelligenceCamera. isPresentingVisualIntelligenceCamera: %d, inputTypeTamale: %d", &v3, 0x18u);
}

void sub_1000CAE78(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRSystemAssistantExperienceViewController completedOnboardingFlowWithEnablementResult:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s #generativeAssistantOnboarding: Did not call onboarding completion", &v1, 0xCu);
}

void sub_1000CAF88(void *a1)
{
  v1 = a1;
  v2 = SUICStringForAutoDismissalReason();
  v3 = 136315394;
  v4 = "[SRCompactAutoDismissController _requestDismissalWithReason:]";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s #autodismiss Requesting dismissal with reason %@", &v3, 0x16u);
}

void sub_1000CB47C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained userAttentionController];
  v8 = 136315650;
  v9 = "[SRCompactAutoDismissController _startUserAttentionControllerIfNeededForTypes:]_block_invoke";
  v10 = 2114;
  v11 = v7;
  v12 = 2114;
  v13 = a3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s #autodismiss Failed to start user attention controller: %{public}@, error: %{public}@", &v8, 0x20u);
}

void sub_1000CB558(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 136315650;
  v5 = "[SRCompactAutoDismissController _stopUserAttentionControllerIfNeeded]";
  v6 = 2114;
  v7 = v3;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s #autodismiss Failed to stop user attention controller: %{public}@, error: %{public}@", &v4, 0x20u);
}

void sub_1000CB608(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRCompactAutoDismissController _handleUserTouchInteractionTimeout]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s #autodismiss Reseting UserInteractedWithTouchScreen to NO so that auto-dismissal may resume", &v1, 0xCu);
}

void sub_1000CB68C(os_log_t log)
{
  v1 = 136315394;
  v2 = "+[SRAssetsUtilities setupBackgroundAssetCheck]";
  v3 = 2112;
  v4 = @"com.apple.siri.CheckAssetStatus";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Failed to register background task with identifier %@", &v1, 0x16u);
}

void sub_1000CB724(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 136315394;
  v6 = "+[SRAssetsUtilities _scheduleAssetCheckWithEarliestBeginDate:]";
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Failed to submit background task request: %@", &v5, 0x16u);
}

void sub_1000CB7E0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRBarSlideNavigationTransitionController configureWithNavigationController:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Navigation controller should be SiriUINavigationController", &v1, 0xCu);
}

void sub_1000CB864(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SRGuideViewController collectionView:numberOfItemsInSection:]";
  v4 = 2050;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s More than three sections in Guide is invalid: %{public}ld", &v2, 0x16u);
}

void sub_1000CB904(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SRCompactViewController siriViewControllerEffectiveBundleForCoreLocation:]";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s #compact Returning nil for controller %{public}@", &v2, 0x16u);
}

void sub_1000CB990(void *a1, void *a2)
{
  v3 = a1;
  [a2 requestSource];
  sub_10000F990();
  sub_10000F908(&_mh_execute_header, v4, v5, "%s #tipKitSignalEmitter Unsupported requestSource: %ld", v6, v7, v8, v9, 2u);
}

void sub_1000CBA24(void *a1, void *a2)
{
  v3 = a1;
  [a2 requestSource];
  sub_10000F990();
  sub_10000F908(&_mh_execute_header, v4, v5, "%s #tipKitSignalEmitter Unsupported bluetooth car requestSource: %ld", v6, v7, v8, v9, 2u);
}

void sub_1000CBAB8(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRSystemAssistantExperiencePresentation configureForRequestOptions:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s #networkAvailability Siri Not available. Dismissing Siri and posting notification", &v1, 0xCu);
}

void sub_1000CBB3C(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SRSystemAssistantExperiencePresentation siriWillProcessAppLaunchWithBundleIdentifier:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s Siri will process app launch for %@", &v2, 0x16u);
}

void sub_1000CBC40(void *a1)
{
  v1 = a1;
  v2 = SiriSharedUIGestureEventDescription();
  v3 = SiriSharedUIGestureEventRegionDescription();
  v4 = 136315650;
  v5 = "[SRSystemAssistantExperiencePresentation didDetectGestureEvent:inRegion:]";
  v6 = 2112;
  v7 = v2;
  v8 = 2112;
  v9 = v3;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%s #dismissal Detected gesture event %@ in region %@", &v4, 0x20u);
}

void sub_1000CBF40(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRCompactPresentation didReceiveBugButtonLongPress]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #SiriTTR didReceiveBugButtonLongPress", &v1, 0xCu);
}

void sub_1000CBFC4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRCompactPresentation didReceiveReportBugAction]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #SiriTTR didReceiveReportBugAction", &v1, 0xCu);
}

uint64_t sub_1000CC048()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1000CC06C(v0);
}

void sub_1000CC06C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRUserUtteranceViewController speechAlternativeHighlightListWithScore:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s No utterance text existed for base utterance!!", &v1, 0xCu);
}

void sub_1000CC0F0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRSystemAssistantExperienceNavigationTransitionController configureWithNavigationController:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Navigation controller should be SiriUINavigationController", &v1, 0xCu);
}

void sub_1000CC174(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SRSystemAssistantExperienceNavigationTransitionController animateTransition:]";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s Navigation transition %@ is animating without an associated operation!", &v2, 0x16u);
}

void sub_1000CC200(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[SRModeProvider internalModeOverride]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s #modes Invalid mode override value: %@", &v2, 0x16u);
}

void sub_1000CC28C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_10000F8D8();
  sub_10000F928(&_mh_execute_header, v5, v6, "%s Notification not supported; returning nil { notificationName: %@ }", v7, v8, v9, v10, 2u);
}

void sub_1000CC32C()
{
  v1[0] = 136315394;
  sub_10000F8D8();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s Unexpectedly passed a notification that is not a known keyboard notification. Returning _SRKeyboardNotificationOrderBefore. { notification: %@ }", v1, 0x16u);
}

void sub_1000CC3AC(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 name];
  sub_10000F8D8();
  sub_10000F928(&_mh_execute_header, v5, v6, "%s Notification not supported; returning nil { notificationName: %@ }", v7, v8, v9, v10, 2u);
}

void sub_1000CC44C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRCompactKeyboardAnimation initWithKeyboardNotification:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s Returning nil because the duration in the notification is 0, so there is no animation occurring", &v1, 0xCu);
}

void sub_1000CC4D0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 136315650;
  v4 = "[SRFullScreenEffects _fullscreenEffectMap]_block_invoke";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Couldn't enumerate %@: %@", &v3, 0x20u);
}

void sub_1000CC5E8()
{
  sub_100075570(__stack_chk_guard);
  sub_1000754E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_1000CC67C()
{
  sub_100075534();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000CC710()
{
  sub_1000754CC();
  sub_100075544();
  sub_1000754E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000CC950(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 144);
  v5 = a2;
  v6 = [NSNumber numberWithDouble:v4];
  v7 = [NSNumber numberWithDouble:*(a3 + 40)];
  v8[0] = 136315650;
  sub_1000754BC();
  v9 = v6;
  sub_100075528();
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Type2Siri: keyboard height %@=>%@", v8, 0x20u);
}

void sub_1000CCBCC()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CCC48(void *a1, void *a2)
{
  v3 = a1;
  SiriSharedUIGestureEventDescription();
  objc_claimAutoreleasedReturnValue();
  sub_100075550();
  v4 = SiriSharedUIGestureEventRegionDescription();
  v5[0] = 136315650;
  sub_1000754BC();
  v6 = a2;
  sub_100075528();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s #dismissal SpringBoard has notified us of gesture event %@, in region %@", v5, 0x20u);
}

void sub_1000CCD9C(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SRSiriViewController pressesBegan:withEvent:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #dismissal Detected escape button pressed, dismissing Siri", buf, 0xCu);
}

void sub_1000CCEF8()
{
  sub_1000754BC();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CCF7C()
{
  sub_10000F8D8();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CCFF8()
{
  sub_10000F8D8();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CD0F4(void *a1)
{
  v2 = a1;
  v3 = [sub_100075550() turnIdentifier];
  sub_10000F8D8();
  sub_1000754FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000CD198(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 aceId];
  v5 = [a2 refId];
  v6[0] = 136315650;
  sub_1000754BC();
  v7 = v4;
  sub_100075528();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s Received an empty SAUIAssistantUtteranceView with no dialog from a SAUIAddViews with aceID:%@ refID:%@. Marking command as SACommandSucceeded", v6, 0x20u);
}

void sub_1000CD270(void *a1)
{
  v2 = [a1 aceId];
  v3 = [a1 refId];
  sub_1000754BC();
  sub_100075528();
  sub_1000754FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1000CD3C4()
{
  sub_10000F8D8();
  sub_100075544();
  sub_1000754E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000CD444(void *a1)
{
  v2 = a1;
  sub_100075550();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sub_10000F8D8();
  sub_1000754FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_1000CD4EC(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315394;
  *(a2 + 4) = "[SRSiriViewController _configuredSpeakableUtteranceParserForCommand:context:speakableText:subCompletion:speakPreparation:speakCompletion:]";
  *(a2 + 12) = 2112;
  *(a2 + 14) = a1;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s context is not of expected type AceObject, but is %@", a2, 0x16u);
}

void sub_1000CD56C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_100075534();
  sub_100075518();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);
}

void sub_1000CD638(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  sub_100075534();
  sub_1000754FC();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000CD6F8()
{
  sub_1000754BC();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CD77C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SRUIFSpeechSynthesisResultGetName();
  sub_10007555C();
  sub_100075518();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1000CD848(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SRUIFSpeechSynthesisResultGetName();
  sub_10007555C();
  sub_100075518();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1000CD918()
{
  sub_100075528();
  sub_1000754E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000CD9A8()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CDAA4()
{
  sub_100075570(__stack_chk_guard);
  sub_1000754CC();
  sub_1000754E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000CDB28()
{
  sub_10000F8D8();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CDBA4()
{
  sub_10000F8D8();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CDC20()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CDC9C()
{
  sub_100075570(__stack_chk_guard);
  sub_1000754CC();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CDD18()
{
  sub_100075570(__stack_chk_guard);
  sub_1000754CC();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CDD94()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CDE10()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CDF8C()
{
  sub_10000F8D8();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE008(void *a1, void *a2)
{
  v3 = a1;
  AFUIBulletinReadoutResultGetName();
  objc_claimAutoreleasedReturnValue();
  sub_100075550();
  v4 = AFUIBulletinReadoutResultGetName();
  sub_1000754BC();
  sub_100075528();
  sub_100075518();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000CE0D4()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE150()
{
  sub_10000F8D8();
  sub_10007550C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE1CC()
{
  sub_10000F8D8();
  sub_10007550C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE2C8()
{
  sub_1000754CC();
  sub_10007550C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE3DC()
{
  sub_10000F8D8();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE4E4()
{
  sub_1000754CC();
  sub_100075544();
  sub_1000754E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000CE56C(void *a1)
{
  v2 = a1;
  v3 = [sub_100075550() description];
  sub_10000F8D8();
  sub_1000754FC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000CE610()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE68C()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE708()
{
  sub_10000F948();
  sub_1000754F0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1000CE784()
{
  sub_10000F8D8();
  sub_100075544();
  sub_1000754E0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1000CE8AC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRWindowSceneDelegate scene:willConnectToSession:options:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Scene connecting without window", &v1, 0xCu);
}

void sub_1000CE944(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_10000F9A4();
  v3 = v2;
  sub_10000F908(&_mh_execute_header, v4, v5, "%s expected stored bundle identifier to be a string, but it was a %{public}@", v6, v7, v8, v9, 2u);
}

void sub_1000CE9E8(void *a1)
{
  v1 = a1;
  objc_opt_class();
  sub_10000F9A4();
  v3 = v2;
  sub_10000F908(&_mh_execute_header, v4, v5, "%s expected stored bundle path to be a string, but it was a %{public}@", v6, v7, v8, v9, 2u);
}

void sub_1000CEA8C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _URL];
  sub_10000F9A4();
  sub_10000F95C();
  sub_1000783E8(&_mh_execute_header, v5, v6, "%s %{public}@ unable to read property list from data at %{public}@: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000CEB3C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _URL];
  sub_10000F9A4();
  sub_10000F95C();
  sub_1000783E8(&_mh_execute_header, v5, v6, "%s %{public}@ unable to read on-disk cache at %{public}@: %{public}@", v7, v8, v9, v10, 2u);
}

void sub_1000CED48(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRCardStackNavigationTransitionContext completeTransition:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s Transition is already completed; returning", &v1, 0xCu);
}

void sub_1000CEDCC()
{
  v1[0] = 136315394;
  sub_10000F8D8();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s Navigation transition %@ is animating without an associated operation!", v1, 0x16u);
}

void sub_1000CEE4C()
{
  v1[0] = 136315394;
  sub_10000F8D8();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s Navigation transition %@ is animating without an associated operation!", v1, 0x16u);
}

void sub_1000CEECC()
{
  v1[0] = 136315394;
  sub_10000F8D8();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s #presynthesize setPreSynthesizeTTSCommand:%@", v1, 0x16u);
}

void sub_1000CEF4C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136315394;
  v4 = "[SRPreSynthesisTask replyAceCommand]";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s #presynthesize PreSynthesizeTTS command (%@) failed", &v3, 0x16u);
}

void sub_1000CEFDC(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRPreSynthesisTask handlePreSynthesisCommandWithError:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #presynthesize handlePreSynthesisCommandWithError", &v1, 0xCu);
}

void sub_1000CF060(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[SRPreSynthesisTask handlePreSynthesisCommandWithError:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s #presynthesize Presynthesizing failed: No speakable text", buf, 0xCu);
}

void sub_1000CF218()
{
  v1[0] = 136315394;
  sub_10000F8D8();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s #presynthesize didFinishSynthesisRequest:withInstrumentMetrics:error:%@", v1, 0x16u);
}

void sub_1000CF298(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *a2;
  v4 = 136315650;
  v5 = "[SRPreSynthesisTask didFinishSynthesisRequest:withInstrumentMetrics:error:]_block_invoke";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s #presynthesize Unable to determine dialog string duration for %@, error: %@", &v4, 0x20u);
}

void sub_1000CF3D4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 dictionary];
  v5 = 136315394;
  v6 = "[SRPlayContentViewController initWithPlayContent:]";
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s No player from SAVCSPlayContent\n    Play content command: %@", &v5, 0x16u);
}

void sub_1000CF4A4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SiriEyesFreePresentation didReceiveReportBugAction]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s #SiriTTR didReceiveReportBugAction - invoking DI for filing a radar", &v1, 0xCu);
}

void sub_1000CF528(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[AceObject(MapsSession) _afui_updateMapsAnalytics]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s Missing values for extSessionGuid or extSessionGuidCreatedTimestamp from %@", &v2, 0x16u);
}

void sub_1000CF5B4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRViewController setUpViews]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Too many uncleaned up SRSiriViewControllers. Resetting counter.", &v1, 0xCu);
}

void sub_1000CF638(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 aceId];
  v5[0] = 136315394;
  sub_10000F8D8();
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s #modes Invalid AddViews (aceId = %@). Both AssistantUtteranceView and Dialog on the same AddViews is unsupported.", v5, 0x16u);
}

void sub_1000CF6E8()
{
  v1[0] = 136315394;
  sub_10000F8D8();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s #modes Failed to load configuration file: %@", v1, 0x16u);
}

void sub_1000CF768(os_log_t log)
{
  v1 = 136315138;
  v2 = "[SRAppDelegate _updateDeferral]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s window lacked contextID, sending back 0", &v1, 0xCu);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t Response.init(_:backgrounds:ornaments:hideRedactedElements:)()
{
  return Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
}

{
  return Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
}

Swift::String __swiftcall Character.uppercased()()
{
  v0 = Character.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}